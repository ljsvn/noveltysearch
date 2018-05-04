/**
 * 包名：com.ods.util.spring
 * 类名：SpringBeanFactory
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.spring;

import com.ods.util.log.LogUtil; 
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware; 
import org.springframework.beans.BeansException;
import org.springframework.jdbc.datasource.DriverManagerDataSource; 

import java.sql.Connection;
import java.sql.SQLException; 

/**
 * 功能：利用的是spring framework 的BeanFactory机制,采用自定义的工具类（bean工厂类）
 * 来加载spring的配置文件
 * 创建者: 10325431@qq.com
 * 修改者                   修改时间
 * 
 */
public class SpringBeanFactory implements ApplicationContextAware{

    /**
     * spring的应用上下文
     */
    private static ApplicationContext factory = null;

 

    public static ApplicationContext getFactory() { 
        return factory;
    }

    public static void setFactory(ApplicationContext factory) {
        SpringBeanFactory.factory = factory;
    }

    /**
     * 获取spring对象方法
     *
     * @param beanName JavaBean的名称
     * @return javaBean对象
     */
    public static Object getBean(String beanName) {
        return factory.getBean(beanName);
    }

    /**
     * 获取数据库连接
     *
     * @return 数据库连接对象
     */
    public static Connection getConnection() {
        DriverManagerDataSource ds = (DriverManagerDataSource) getBean("dataSource");
        Connection con = null;
        try {
            con = ds.getConnection();
            // 不提供自动commit功能，必须手动提交，以保证事务完整性
            con.setAutoCommit(false);
        } catch (SQLException e) {
            LogUtil.writeLog(e);
        }
        return con;
    }
    /**
     * 获取WebSite数据库连接
     *
     * @return 数据库连接对象
     */
    public static Connection getWebSiteConnection() {
        DriverManagerDataSource ds = (DriverManagerDataSource) getBean("dataSourceWebSite");
        Connection con = null;
        try {
            con = ds.getConnection();
            // 不提供自动commit功能，必须手动提交，以保证事务完整性
            con.setAutoCommit(false);
        } catch (SQLException e) {
            LogUtil.writeLog(e);
        }
        return con;
    }

    /**
     * 获取Cti数据库连接
     *
     * @return 数据库连接对象
     */
    public static Connection getCtiConnection() {
        DriverManagerDataSource ds = (DriverManagerDataSource) getBean("dataSourceCti");
        Connection con = null;
        try {
            con = ds.getConnection();
            // 不提供自动commit功能，必须手动提交，以保证事务完整性
            con.setAutoCommit(false);
        } catch (SQLException e) {
            LogUtil.writeLog(e);
        }
        return con;
    } 

    /**
     *获取Spring上下文.<br>
     *工程名:MES<br>
     *包名:com.ods.util.spring<br>
     *方法名:setApplicationContext方法.<br>
     *
     *{@inheritDoc}
     *author :10325431@qq.com
     *@see org.springframework.context.ApplicationContextAware#setApplicationContext(org.springframework.context.ApplicationContext)
     *@param applicationContext
     *@throws BeansException
    */
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        setFactory(applicationContext);
        
    }
}
