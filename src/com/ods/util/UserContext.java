/**
 *copyright(C)2009
 *Ods信息技术软件有限公司& Service Corporation All rights reserved
 */
package com.ods.util;
 
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

import com.ods.base.bo.system.user.bo.User;


/**
 *<b>系统名称:</b><b> &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *权限管理系统</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>子系统名：</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *用户session信息JavaBean<br>
 * 
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>文件名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *UserContext.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *UserContext类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *UserContext类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *1：登录用户session产生，消亡<br>
 *2：保存用户登录的相关信息<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2009-6-11, 99999, 10325431@qq.com, 新建<br>
 * 
 *@author :10325431@qq.com
 *@since :2009-6-11
 *@version:1.0
 */

public class UserContext implements HttpSessionBindingListener{

    /**
     *属性名：NAME、类型：String、作成日：2009-6-11.<br>
     *含义：session名称
     */
    public static final String NAME = UserContext.class.getName() + ".NAME";

    /**
     *属性名：userRequestIp、类型：String、作成日：2009-6-11.<br>
     *含义：用户请求的Ip
     */
    private String userRequestIp;
    
    /**
    *属性名：pageParameters、类型：String、作成日：2011-4-21.<br>
    *含义：解决页面之间不能传参的问题
    */
    private String pageParameters;

    /**
     *属性名：user、类型：User、作成日：2009-6-11.<br>
     *含义：登录用户对象
     */
    private User user;
     
    
    /**
    *属性名：hiddenButtonList、类型：List<String>、作成日：2011-1-6.<br>
    *含义：用户无权限的隐藏按钮
    */
    private List<String> hiddenButtonList; 

    /**
     *hiddenButtonList的获取.
     *@return hiddenButtonList值返回.
     */
    public List<String> getHiddenButtonList() {
        return hiddenButtonList;
    }

    /**
     *hiddenButtonList的值设定
     *@param hiddenButtonList 设定hiddenButtonList的值.
     */
    public void setHiddenButtonList(List<String> hiddenButtonList) {
        this.hiddenButtonList = hiddenButtonList;
    } 
    /**
     *按照请求进行登录用户的session实例化.<br>
     *工程名:odscati<br>
     *包名:com.ods.rbac<br>
     *方法名:getUserContext方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2009-6-11
     *@param request:客户端请求
     *@return 含有请求session登录用户对象
     */
    public static UserContext getUserContext(HttpServletRequest request) {
        if(request == null) {
            return null;
        }
        HttpSession session = request.getSession();
        // HTTP的会话session。通过cookies实现的
        UserContext uc = (UserContext) session.getAttribute(UserContext.NAME);
        return uc;
    }

    /**
     *添加登录用户到session中.<br>
     *工程名:odscati<br>
     *包名:com.ods.rbac<br>
     *方法名:addUserContext方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2009-6-11
     *@param request request:客户端请求
     *@param uc 含有登录用户信息的Session
     */
    public static void addUserContext(HttpServletRequest request, UserContext uc) {
        if(request == null) {
            return;
        } 
        HttpSession session = request.getSession();
        // HTTP的会话session。通过cookies实现的
        session.setAttribute(NAME, uc);
    }


    /**
     *从session中删除登录用户.<br>
     *工程名:odscati<br>
     *包名:com.ods.rbac<br>
     *方法名:removeUserContext方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2009-6-11
     *@param request 客户端请求
     *@return 被删除指定登录用户的session
     */
    public static void removeUserContext(HttpServletRequest request) {
        if(request != null) {
            request.getSession().invalidate(); 
        }
         
    }

    /**
     *userRequestIp的获取.
     * 
     * @return userRequestIp值返回.
     */
    public String getUserRequestIp() {
        return userRequestIp;
    }

    /**
     *userRequestIp的值设定
     * 
     * @param userRequestIp 设定userRequestIp的值.
     */
    public void setUserRequestIp(String userRequestIp) {
        this.userRequestIp = userRequestIp;
    }

    /**
     *user的获取.
     * 
     * @return user值返回.
     */
    public User getUser() {
        return user;
    }

    /**
     *user的值设定
     * 
     * @param user 设定user的值.
     */
    public void setUser(User user) {
        this.user = user;
    }

    /**
     *pageParameters的获取.
     *@return pageParameters值返回.
     */
    public String getPageParameters() {
        return pageParameters;
    }

    /**
     *pageParameters的值设定
     *@param pageParameters 设定pageParameters的值.
     */
    public void setPageParameters(String pageParameters) {
        this.pageParameters = pageParameters;
    } 

    // //////////////////////////////////////////////////////////////////////////////
    // 以下可以写一些业务逻辑

    /**
     *session数据绑定.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.util.session<br>
     *方法名:valueBound方法.<br>
     *
     *{@inheritDoc}
     *author :10325431@qq.com
     *@see javax.servlet.http.HttpSessionBindingListener#valueBound(javax.servlet.http.HttpSessionBindingEvent)
     *@param arg0
    */
    @Override
    public void valueBound(HttpSessionBindingEvent event) {
        HttpSession session = event.getSession(); 
        ServletContext application = session.getServletContext(); 
        // 把登录用户放入全局列表 
        @SuppressWarnings("unchecked")
        List<User> loginUserList = (List<User>) application.getAttribute("loginUserList"); 
        // 第一次使用前，需要初始化 
        if (loginUserList == null) { 
            loginUserList = new ArrayList<User>(); 
            application.setAttribute("loginUserList", loginUserList); 
        } 
        loginUserList.add(user); 

        for(Iterator iterator = loginUserList.iterator(); iterator.hasNext();) {
            User user = (User) iterator.next();
            System.out.println("当前登录用户为："+user.getUserLoginName());
        }
        
    }

    /**
     *取消session数据绑定.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.util.session<br>
     *方法名:valueUnbound方法.<br>
     *
     *{@inheritDoc}
     *author :10325431@qq.com
     *@see javax.servlet.http.HttpSessionBindingListener#valueUnbound(javax.servlet.http.HttpSessionBindingEvent)
     *@param arg0
    */
    @Override
    public void valueUnbound(HttpSessionBindingEvent event) {
        HttpSession session = event.getSession(); 
        ServletContext application = session.getServletContext(); 
  
        // 从列表中删除登录用户 
        @SuppressWarnings("unchecked")
        List<User> loginUserList = (List<User> ) application.getAttribute("loginUserList"); 
        loginUserList.remove(this.user);
       
        
    }
}
