/**
 *copyright(C)2009
 *陕西Ods信息技术软件有限公司软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.web;
 
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;  

/**
 * 功能：应用程序启动时,首先执行该类,用于初始化一些数据或加载一些应用数据到缓存中 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */

public class ContextManager implements ServletContextListener {

    /**
     * 应用程序启动时,信息加载
     * 
     * @param sce 用于通知web应用程序中servlet上下文的改变
     */
    public void contextInitialized(ServletContextEvent sce) {

        // 1:进入系统提示
        System.out.println("☆  START:开始进入系统"); 
    }
 

    /**
     * 停止应用程序时系统自动调用该方法
     * 
     * @param sce 用于通知web应用程序中servlet上下文的改变
     */
    public void contextDestroyed(ServletContextEvent sce) {

        // 1:退出系统提示
        System.out.println("☆  START:开始退出系统"); 
    }

}
