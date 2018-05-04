/**
 * 包名：com.ods.util.db
 * 类名：DBHelper
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.db;

import com.ods.util.log.LogUtil;
import com.ods.util.type.StringUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * 功能：是一个数据库访问的公共类,完成数据库的一些相关公共操作 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */
public class DBHelper {

    // /////////////////////////////////////////////////////////////////
    /**
     * 数据库连接关闭
     * 
     * @param conn 数据库连接对象
     */
    public final static void closeConnection(Connection conn) {
        if(null != conn) {
            try {
                conn.close();
            } catch(Exception e) {
                LogUtil.writeLog(e);
            }
        }
    }

    /**
     * 关闭执行静态sql语句对象
     * 
     * @param stmt 执行静态sql语句对象
     */
    public final static void closeStatement(Statement stmt) {
        if(null != stmt) {
            try {
                stmt.close();
            } catch(Exception e) {
                LogUtil.writeLog(e);
            }
        }
    }

    /**
     * 关闭执行静态sql语句对象
     * 
     * @param stmt 执行静态sql语句对象
     */
    public final static void closeStatement(PreparedStatement stmt) {
        if(null != stmt) {
            try {
                stmt.close();
            } catch(Exception e) {
                LogUtil.writeLog(e);
            }
        }
    }

    /**
     * 关闭数据库结果集
     * 
     * @param result 数据库结果集
     */
    public final static void closeResultSet(ResultSet result) {
        if(null != result) {
            try {
                result.close();
            } catch(Exception e) {
                LogUtil.writeLog(e);
            }
        }
    }

    // /////////////////////////////////////////////////////////////////

    public static int insertValues(Connection connection, ResultSet result,
            String sqlInsert, int colCount) throws SQLException {
        int count = 0;
        PreparedStatement ps = null;
        try {
            ps = connection.prepareStatement(sqlInsert);
            ps.clearBatch();
            while (result.next()) {
                //
                for(int i = 1; i <= colCount; i++) {
                    Object o = result.getObject(i);
                    ps.setObject(i, o);
                }
                //
                ps.addBatch();
                count++;
                // 定长插入部分
                if(count % 5000 == 0) {
                    ps.executeBatch();
                    ps.clearBatch();
                }
            }
            // 最后插入部分
            ps.executeBatch();
        } catch(SQLException e) {
            throw e;
        } finally {
            closeStatement(ps);
        }
        return count;
    }

    /**
     * Sqlserver获取查询的sql.<br>
     *工程名:8801890<br>
     *包名:com.ods.report.db<br>
     *方法名:getSQlServerQuerySql方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2009-12-20
     *@param currenPageNumber：当前页
     *@param eachPageNumber：每页显示的条数
     *@param querySql：查询的sql
     *@param countSql：查询总数的sql
     *@param sbQueryColmun：显示查询的列存储
     *@param sbQueryWhereColmun：查询的where列
     *@param sbOrderBy：排序存储
     *@param tableName：表名
     */
    public static void getSQlServerQuerySql(int currenPageNumber,
            int eachPageNumber, StringBuilder querySql, StringBuilder countSql,
            StringBuilder sbQueryColmun, StringBuilder sbQueryWhereColmun,
            StringBuilder sbOrderBy, String tableName,
            String reportGroupByString) {
        // 查询的子语句，查询总数和查询的显示内容都要用
        StringBuilder childSql = new StringBuilder();
        childSql.append(" select row_number() over (order by " + sbOrderBy
                .toString() + ") row_number1");
        if(sbQueryColmun.length() > 0) {
            childSql.append(",");
            childSql.append(sbQueryColmun.toString());
        }
        childSql.append(" from ");
        childSql.append(tableName);
        // 如果有查询条件
        if(sbQueryWhereColmun.length() > 0) {
            childSql.append(" where 1=1" + sbQueryWhereColmun.toString());
        }
        // 判断是否要对查询的SQl进行添加GroupBy语句
        if(StringUtil.empty(reportGroupByString)) {
            childSql.append(" ");
            childSql.append(reportGroupByString);
        }
        // /////////////////////////////////////////////////////////////////////////////
        // 按照条件显示的总数sql
        countSql.append("select count(*) count from ( ");
        countSql.append(childSql.toString());
        countSql.append(" ) countResult");
        // /////////////////////////////////////////////////
        // 每页显示的内容sql

        //

        querySql
                .append("select resource.row_number1-(" + (currenPageNumber - 1) + "*" + eachPageNumber + ") row_number,");
        querySql.append("* from ( ");
        querySql.append(childSql.toString());
        querySql.append(" ) resource ");
        querySql.append("where row_number1 between ");
        querySql.append(eachPageNumber);
        querySql.append("*(");
        querySql.append(currenPageNumber);
        querySql.append("-1)+1 and ");
        querySql.append(currenPageNumber);
        querySql.append("*");
        querySql.append(eachPageNumber);
        /**
         * select resource.row_number1-((1-1)*20) row_number,* from ( select
         * row_number() over (order by id) row_number1, * from ods_jz_person
         * --where resource_name like '%'+cast($P{resourceName} AS
         * varchar(100))+'%' ) resource where row_number1 between 20*(1-1)+1 and
         * 1*20
         */
    }

    /**
     * 
     *不带翻页信息的sql.<br>
     *工程名:odsdc<br>
     *包名:com.ods.util.db<br>
     *方法名:getSQlServerQuerySql方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2010-7-6
     *@param sbQueryColmun：查询的列
     *@param sbQueryWhereColmun：查询的where条件
     *@param sbOrderBy：排序
     *@param tableName：表名
     *@param reportGroupByString：分组条件
     */
    public static StringBuilder getSQlServerQuerySql(
            StringBuilder sbQueryColmun, StringBuilder sbQueryWhereColmun,
            StringBuilder sbOrderBy, String tableName,
            String reportGroupByString) {
        StringBuilder querySql = new StringBuilder();
        querySql.append("select ").append(sbQueryColmun).append(" from ")
                .append(tableName);
        querySql.append(" where 1=1 ").append(sbQueryWhereColmun);
        // 判断是否要对查询的SQl进行添加GroupBy语句
        if(StringUtil.empty(reportGroupByString)) {
            querySql.append(" ");
            querySql.append(reportGroupByString);
        }
        querySql.append(" order by  ").append(sbOrderBy);
        return querySql;
    }

    /**
     * 获取Oracle的相关数据sql.<br>
     *工程名:report<br>
     *包名:com.ods.report.db<br>
     *方法名:getOracleQuerySql方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2010-6-17
     *@param currenPageNumber：当前页
     *@param eachPageNumber：每页显示的条数
     *@param querySql：查询的sql
     *@param countSql：查询总数的sql
     *@param sbQueryColmun：显示查询的列存储
     *@param sbQueryWhereColmun：查询的where列
     *@param sbOrderBy：排序存储
     *@param tableName：表名
     */
    public static void getOracleQuerySql(int currenPageNumber,
            int eachPageNumber, StringBuilder querySql, StringBuilder countSql,
            StringBuilder sbQueryColmun, StringBuilder sbQueryWhereColmun,
            StringBuilder sbOrderBy, String tableName,
            String reportGroupByString) {
        /**
         * select * from ( select rownum row_num, result.* from ( select src_id,
         * count(*)up_count from t_sms_mo where ( nvl($P{user_phone},0)=0 or
         * src_id=$P{user_phone} ) and (substr(dest_id,length('01140')+1) not in
         * ($P!{ignore_companyId})) and
         * recv_time>=to_date(to_char($P{time_yyyyMMdd_start
         * }*1000000),'yyyymmddhh24miss') and
         * recv_time<to_date(to_char($P{time_yyyyMMdd_end
         * }*1000000+235959),'yyyymmddhh24miss') group by src_id order by
         * up_count desc ) result ) where row_num>$P{index_row} and
         * row_num<=($P{index_row}+$P{index_count})
         */
        // 查询的子语句，查询总数和查询的显示内容都要用
        StringBuilder childSql = new StringBuilder();
        childSql.append(" select  ");
        if(sbQueryColmun.length() > 0) {
            childSql.append(sbQueryColmun.toString());
        } else {
            childSql.append("*");
        }
        childSql.append(" from ");
        childSql.append(tableName);
        // 如果有查询条件
        if(sbQueryWhereColmun.length() > 0) {
            childSql.append(" where 1='1'" + sbQueryWhereColmun.toString());
        }
        // 判断是否要对查询的SQl进行添加GroupBy语句
        if(null != reportGroupByString && !"".equals(reportGroupByString)) {
            childSql.append(" ");
            childSql.append(reportGroupByString);
        }
        // /////////////////////////////////////////////////////////////////////////////
        // 按照条件显示的总数sql
        countSql.append("select count(*) count from ( ");
        countSql.append(childSql.toString());
        countSql.append(" ) countResult");

        // /////////////////////////////////////////////////////////////////////////////
        // 每页显示的内容sql
        querySql.append("select * from (");
        querySql.append("select rownum row_number, result.* from ( ");
        querySql.append(childSql.toString());
        querySql.append(") result ");
        querySql.append(") ");
        querySql.append("where row_number>");
        querySql.append(eachPageNumber * (currenPageNumber - 1));
        querySql.append("and row_number<=");
        querySql.append((eachPageNumber) * currenPageNumber);
    }

    /**
     * 
     *不带翻页信息的sql.<br>
     *工程名:odsdc<br>
     *包名:com.ods.util.db<br>
     *方法名:getSQlServerQuerySql方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2010-7-6
     *@param sbQueryColmun：查询的列
     *@param sbQueryWhereColmun：查询的where条件
     *@param sbOrderBy：排序
     *@param tableName：表名
     *@param reportGroupByString：分组条件
     */
    public static StringBuilder getOracleQuerySql(StringBuilder sbQueryColmun,
            StringBuilder sbQueryWhereColmun, StringBuilder sbOrderBy,
            String tableName, String reportGroupByString) {
        StringBuilder querySql = new StringBuilder();
        querySql.append("select ").append(sbQueryColmun).append(" from ")
                .append(tableName);
        querySql.append(" where 1=1 ").append(sbQueryWhereColmun);
        // 判断是否要对查询的SQl进行添加GroupBy语句
        if(StringUtil.empty(reportGroupByString)) {
            querySql.append(" ");
            querySql.append(reportGroupByString);
        }
        querySql.append(" order by  ").append(sbOrderBy);

        return querySql;
    }
}
