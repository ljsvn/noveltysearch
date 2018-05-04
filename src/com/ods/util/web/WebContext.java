/**
 * 包名：com.ods.util.web
 * 类名：WebContext
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.web;

import com.ods.util.type.ObjectUtil;
import com.ods.util.type.StringUtil;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.security.ProtectionDomain;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 功能：封装用户登录的session
 * 创建者: 10325431@qq.com
 * 修改者                   修改时间
 * 
 */
public class WebContext {

    /**
     * 带类名的全包名
     */
    public final static String CONTEXT = ObjectUtil.getPackageName(
            WebContext.class.getName()) + "." + "WebContext";
    /**
     * 时间格式
     */
    public final static String TIME_FORMAT = "yyyy-MM-dd HH:mm";
    /**
     * 当前点击的主菜单名称
     */
    public static final String MENU_CURRMENU = "_menu_currMenu_";
    /**
     * 当前点击的子菜单名称
     */
    public static final String MENU_SUBMENUUNDOCKABLE = "_menu_subMenuUndockable_";
   
    /**
     * 通过请求设置用户登录Session
     * @param reqeust 请求
     * @return WebContext对象
     */
    public static WebContext getWebContext(HttpServletRequest reqeust) {
        if (reqeust == null) {
            return null;
        }
        HttpSession session = reqeust.getSession();
        if (session == null) {
            return null;
        }
        WebContext wc = (WebContext) session.getAttribute(CONTEXT);
        return wc;
    }

    /**
     * 猜测程序的主目录
     * @return 应用程序运行的根目录
     */
    public static String toHomeRootPath() {
        String webRootUrl = System.getProperty("server.root");
        String theProductHome = "";
        if(!StringUtil.empty(webRootUrl)) {
            theProductHome = System.getProperty("user.dir") + File.separator+ webRootUrl+ File.separator;
        }else {
            String relativePath = ".."+ File.separator+".."+ File.separator+".."+ File.separator+".."+ File.separator+".."+ File.separator+".."+ File.separator+".."+ File.separator;
            try {
                ProtectionDomain pd = WebContext.class.getProtectionDomain();
                URL homeURL = pd.getCodeSource().getLocation();
                String homePath = homeURL.getFile();
                File homedir = new File(homePath, relativePath);
                homePath = homedir.getCanonicalPath();
                theProductHome = homePath + File.separator;
            }catch(IOException e) {
                theProductHome = "";
            }
        }
        
        return StringUtil.replace(theProductHome, "%20"," ") ;
    }
    /**
     * 猜测程序的WEB-INF目录
     * @return 应用程序运行的WEB-INF目录
     */
    public static String toHomeWEBINFPath() {
        String theProductHome=toHomeRootPath()+"WEB-INF"+File.separator;
        return theProductHome;
    }
}
