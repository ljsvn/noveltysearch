/**
*copyright(C)2009
*陕西Ods信息技术软件有限公司软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.util.listener;
import java.io.File;
import java.util.Enumeration;
import java.util.Properties;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.logicalcobwebs.proxool.ProxoolException;
import org.logicalcobwebs.proxool.ProxoolFacade;
import org.logicalcobwebs.proxool.configuration.JAXPConfigurator;
import org.logicalcobwebs.proxool.configuration.PropertyConfigurator;

import com.ods.util.log.LogUtil;



/**
*<b>系统名称:</b><b>
*&nbsp;&nbsp;&nbsp;&nbsp;
*
*Cati调查管理问卷系统</b>
*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
*
*<b>子系统名：</b><br>
*&nbsp;&nbsp;&nbsp;&nbsp;
*
*proxool连接池监听初始化配置文件<br>
*
*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
*
*<b>文件名:</b><br>
*&nbsp;&nbsp;&nbsp;&nbsp;
*
*ProxoolListener.java<br>
*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
*
*<b>类名:</b><br>
*&nbsp;&nbsp;&nbsp;&nbsp;
*
*ProxoolListener类.<br>
*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
*
*<br>
*<b>概要说明</b><br>
*&nbsp;&nbsp;&nbsp;&nbsp;
*
*
*ProxoolListener类的概要说明<br>
**&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
*
*初始化proxool连接池数据<br>
*
*<b>***History*** </b/><br>
*更新年月日， 更改原因，   姓名，              更新内容<br>
*2009-6-11,    99999,    10325431@qq.com,   新建<br>
*
*@author :10325431@qq.com
*@since  :2009-6-11
*@version:1.0
*/
public class ProxoolListener implements ServletContextListener
{
    //
    
    /**
    *属性名：XML_FILE_PROPERTY、类型：String、作成日：2009-6-11.<br>
    *含义：proxool的xml配置文件
    */
    private static final String XML_FILE_PROPERTY = "xmlFile";
//
    
    /**
    *属性名：PROPERTY_FILE_PROPERTY、类型：String、作成日：2009-6-11.<br>
    *含义：proxool以资源文件作为配置文件
    */
    private static final String PROPERTY_FILE_PROPERTY = "propertyFile";
//
    
    /**
    *属性名：AUTO_SHUTDOWN_PROPERTY、类型：String、作成日：2009-6-11.<br>
    *含义：proxool自动关闭常数
    */
    private static final String AUTO_SHUTDOWN_PROPERTY = "autoShutdown";
    //
    
    /**
    *属性名：autoShutdown、类型：boolean、作成日：2009-6-11.<br>
    *含义：proxool自动关闭标志
    */
    @SuppressWarnings("unused")
    private boolean autoShutdown = true;
    //
    
    /**
    *停止服务器时开始关闭数据库连接池.<br>
    *工程名:odscati<br>
    *包名:com.ods.util.listener<br>
    *方法名:contextDestroyed方法.<br>
    *
    *{@inheritDoc}
    *author :10325431@qq.com
    *@see javax.servlet.ServletContextListener#contextDestroyed(javax.servlet.ServletContextEvent)
    *@param arg0
    */
    public void contextDestroyed(ServletContextEvent arg0)
    {
        System.out.println("☆  START:数据库连接池关闭开始");
        ProxoolFacade.shutdown(1);
        System.out.println("☆  START:数据库连接池关闭结束");
    }
//
    
    /**
    *启动服务器时进行连接池配置文件的读入.<br>
    *工程名:odscati<br>
    *包名:com.ods.util.listener<br>
    *方法名:contextInitialized方法.<br>
    *
    *{@inheritDoc}
    *author :10325431@qq.com
    *@see javax.servlet.ServletContextListener#contextInitialized(javax.servlet.ServletContextEvent)
    *@param contextEvent
    */
    @SuppressWarnings("unchecked")
    public void contextInitialized(ServletContextEvent contextEvent)
    {
       
        ServletContext context = contextEvent.getServletContext(); 
        String appDir = contextEvent.getServletContext().getRealPath("/"); 
        Properties properties = new Properties();

        Enumeration names = context.getInitParameterNames();
        while (names.hasMoreElements()) {
            String name = (String) names.nextElement();
            String value = context.getInitParameter(name); 
            //如果是xml配置文件
            if (name.equals(XML_FILE_PROPERTY)) {
                try {
                    File file = new File(value);
                    if (file.isAbsolute()) {
                        JAXPConfigurator.configure(value, false);
                    } else {
                        JAXPConfigurator.configure(appDir + File.separator + value, false);
                    }
                } catch (ProxoolException e) {
                    LogUtil.writeLog(e);
                }
            } else if (name.equals(PROPERTY_FILE_PROPERTY)) {//如果是资源文件
                try {
                    File file = new File(value);
                    if (file.isAbsolute()) {
                        PropertyConfigurator.configure(value);
                    } else {
                        PropertyConfigurator.configure(appDir + File.separator + value);
                    }
                } catch (ProxoolException e) {
                    LogUtil.writeLog(e);
                }
            } else if (name.equals(AUTO_SHUTDOWN_PROPERTY)) {
                autoShutdown = Boolean.valueOf(value).booleanValue();
            } else if (name.startsWith("jdbc")) { 
                properties.setProperty(name, value);
            }
        }

        if (properties.size() > 0) {
            try {
                PropertyConfigurator.configure(properties);
            } catch (ProxoolException e) {
                LogUtil.writeLog(e);
            }
        }
    }

}
