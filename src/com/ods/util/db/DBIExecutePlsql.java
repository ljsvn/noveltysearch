/**
 * 包名：com.ods.util.db
 * 类名：DBIExecutePlsql
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.db;

import com.ods.util.spring.SpringBeanFactory;
import com.ods.util.type.ArrayUtil;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * 功能：持久层操作的封装 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */
public class DBIExecutePlsql {

    /**
     * 调用数据库存储过程
     * 
     * @param name 存储过程名
     * @param args 存储过程参数
     * @return Java 编程语言中long值的形式获取JDBC BIGINT参数的值
     * @throws SQLException :调用存储过程例外
     */
    public Boolean doSpringCallProcedure(final String name, Object[] args)
            throws SQLException {
        return doSpringCallProcedureReturnLong(name, args);
    }

    /**
     * 调用数据库存储过程
     * 
     * @param name 存储过程名
     * @param args 存储过程参数
     * @return Java 编程语言中long值的形式获取JDBC BIGINT参数的值
     * @throws SQLException :调用存储过程例外
     */
    public Boolean doSpringCallProcedureReturnLong(final String name,
            Object[] args) throws SQLException {
        Connection conn = SpringBeanFactory.getConnection();
        String sql = toExecSqlWithResult(name, args);
        try {
            return execPlsql(conn, sql, args, java.sql.Types.NUMERIC);
        } finally {
            DBHelper.closeConnection(conn);
        }
    }

    /**
     * 调用数据库存储过程
     * 
     * @param name 存储过程名
     * @param args 存储过程参数
     * @return Java 编程语言中String值的形式获取JDBC BIGINT参数的值
     * @throws SQLException :调用存储过程例外
     */
    public Boolean doSpringCallProcedureReturnString(final String name,
            Object[] args) throws SQLException {
        Connection conn = SpringBeanFactory.getConnection();
        String sql = toExecSqlWithResult(name, args);
        CallableStatement stmt = null;
        try {
            return execPlsql(conn, sql, args, java.sql.Types.VARCHAR);
        } finally {
            DBHelper.closeStatement(stmt);
            DBHelper.closeConnection(conn);
        }
    }

    /**
     * 执行数据库存储过程
     * 
     * @param conn 数据库连接
     * @param sql sql语句
     * @param args 存储过程参数
     * @param outParamType 输出参数类型
     * @return 执行存储过程对象
     * @throws java.sql.SQLException 调用失败错误
     */
    private Boolean execPlsql(Connection conn, String sql, Object[] args,
            int outParamType) throws SQLException {
        CallableStatement stmt = conn.prepareCall(sql);
        for(int i = 0; i < args.length; i++) {
            Object arg = args[i];
            stmt.setObject(i + 1, arg);
        }
        return stmt.execute();
    }

    /**
     * 组合调用存储过程参数
     * 
     * @param name 存储过程名称
     * @param args 存储过程参数
     * @return 存储过程sql语句
     */
    private String toExecSqlWithResult(String name, Object[] args) {
        String sql = "{ call " + name + "( ";
        if(!ArrayUtil.empty(args)) {
            sql += "?";
            for(int i = 1; i < args.length; i++) {
                sql += ", ?";
            }
        }
        sql += " ) }";
        return sql;
    }
}
