/**
 * 包名：com.ods.util.spring
 * 类名：SpringDBTransaction
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.spring;

import org.springframework.jdbc.datasource.DataSourceUtils;

import javax.sql.DataSource;
import java.sql.Connection;

/**
 * 功能：利用Spring的编程式事务管理，用于程序中需要手动提交的事务管理
 * 主要还是利用了Spring配置文件中的事务管理
 * 创建者: 10325431@qq.com
 * 修改者                   修改时间
 * 
 */
public class SpringDBTransaction {

    /**
     * 数据源
     */
    private DataSource dbDataSource;
    /**
     * 数据连接
     */
    private Connection theConnection;

    /**
     * 事务开始
     * @throws Exception 事务开始出现错误
     */
    public synchronized void begin() throws Exception {
        init();
    }

    /**
     *初始化连接
     * @throws Exception 初始化连接出现错误
     */
    protected synchronized void init() throws Exception {
        initConnection();
    }

    /**
     * 初始化连接
     * @throws Exception 初始化连接出现错误
     */
    private void initConnection()
            throws Exception {

        if (null == this.theConnection) {
            this.theConnection = createConnection(this.dbDataSource);
            this.theConnection.setAutoCommit(false);
        }
    }

    /**
     * 事务提交
     * @throws Exception 事务提交出现错误
     */
    public synchronized void commit()
            throws Exception {
        if (this.theConnection != null) {
            this.theConnection.commit();
        }
        end();

    }

    /**
     * 事务回滚
     * @throws Exception 事务回滚出现错去
     */
    public synchronized void rollback() throws Exception // throws DatabaseException
    {
        if (this.theConnection != null) {
            this.theConnection.rollback();
        }
        end();
    }

    /**
     * 事务结束
     * @throws Exception 事务结束出现错误
     */
    public synchronized void end() throws Exception //throws DatabaseException
    {
        fini();
    }

    /**
     * 关闭事务连接
     * @throws java.lang.Exception 关闭连接出现错误
     */
    protected synchronized void fini()
            throws Exception {
        finiConnection();
    }

    /**
     * 关闭连接
     * @throws java.lang.Exception 关闭连接出现错误
     */
    private void finiConnection()
            throws Exception {
        if (this.theConnection != null) {
            this.theConnection.close();
            this.theConnection = null;
        }
    }

    /**
     * 利用Spring的 org.springframework.jdbc.datasource.DataSourceUtils类产生连接
     *
     * @param dataSource 数据源
     * @return 数据库连接
     * @throws Exception 获取连接出现错误
     */
    protected Connection createConnection(DataSource dataSource)
            throws Exception {
        return DataSourceUtils.getConnection(dataSource);
    }

    public Connection getTheConnection() {
        return theConnection;
    }

    public DataSource getDbDataSource() {
        return dbDataSource;
    }

    public void setDbDataSource(DataSource dbDataSource) {
        this.dbDataSource = dbDataSource;
    }
}
