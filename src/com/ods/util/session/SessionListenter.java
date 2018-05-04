/**
*copyright(C)2012
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.util.session;

import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
 

import com.ods.base.bo.system.user.bo.User;
import com.ods.util.UserContext;

/**
 *<b>系统名称:</b><b>
 *武警遵义支队按纲建队系统
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 *<b>文件名:</b><br>
 *
 *SessionListenter.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *SessionListenter类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *SessionListenter类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *sessionListenter接口的实现<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2012-1-13,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :10325431@qq.com
 *@since  :2012-1-13
 *@version:1.0
 */
public class SessionListenter implements HttpSessionListener{

    /**
     *监听session的新建.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.util.session<br>
     *方法名:sessionCreated方法.<br>
     *
     *{@inheritDoc}
     *author :10325431@qq.com
     *@see javax.servlet.http.HttpSessionListener#sessionCreated(javax.servlet.http.HttpSessionEvent)
     *@param arg0
    */
    @Override
    public void sessionCreated(HttpSessionEvent arg0) {         
    }

    /**
     *监听session的销毁.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.util.session<br>
     *方法名:sessionDestroyed方法.<br>
     *
     *{@inheritDoc}
     *author :10325431@qq.com
     *@see javax.servlet.http.HttpSessionListener#sessionDestroyed(javax.servlet.http.HttpSessionEvent)
     *@param arg0
    */
    @Override
    public void sessionDestroyed(HttpSessionEvent event) {
       //HttpSession session = event.getSession(); 
       // ServletContext application = session.getServletContext(); 
//        // 取得登录的用户 
//        UserContext uc = (UserContext) session.getAttribute(UserContext.NAME);
//        // 从在线列表中删除用户名 
//        @SuppressWarnings("unchecked")
//        List<User> loginUserList = (List<User> ) application.getAttribute("loginUserList"); 
//        if(uc.getUser()!=null&&loginUserList.size()>0){
//            loginUserList.remove(uc.getUser()); 
//        }
//        
//        for(Iterator iterator = loginUserList.iterator(); iterator.hasNext();) {
//            User user = (User) iterator.next();
//            System.out.println("当前登录用户为："+user.getUserLoginName());
//        }

        
    }

}
