/**
*copyright(C)2009
*陕西Ods信息技术软件有限公司软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.util.dwr;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ods.util.hibernate.SpringHibernate;
import com.ods.util.spring.SpringBeanFactory;
import com.ods.util.type.TimeUtil;

/**
 *<b>系统名称:</b><b> &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *RBAC管理系统</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>子系统名：</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *Dwr共同类<br>
 * 
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>文件名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *DwrCommon.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *DwrCommon类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *DwrCommon类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *1：request的设置<br>
 *2：HIbernate操作类的设置<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2009-6-21, 99999, 10325431@qq.com, 新建<br>
 * 
 *@author :10325431@qq.com
 *@since :2009-6-21
 *@version:1.0
 */
public class DwrCommon {
    /**
     *属性名：request、类型：HttpServletRequest、作成日：2009-6-21.<br>
     *含义：页面请求的request
     */
    private HttpServletRequest request;
  
    /**
    *属性名：response、类型：HttpServletResponse、作成日：2009-8-3.<br>
    *含义：服务器端请求
    */
    private HttpServletResponse response;
    
    /**
    *属性名：springHibernate、类型：SpringHibernate、作成日：2009-6-21.<br>
    *含义：spring 的数据库操作接口
    */
    private SpringHibernate springHibernate;

    /**
     * 获取对持久层操作对象
     * @return 数据库操作接口对象
     */
    public SpringHibernate getSpringHibernate() {
        if (springHibernate == null) {
            springHibernate = (SpringHibernate) SpringBeanFactory.getBean("DAOProxy");
        }
        return springHibernate;
    }

    public void setSpringHibernate(SpringHibernate springHibernate) {
        this.springHibernate = springHibernate;
    }

    /**
     *request的获取.
     *@return request值返回.
     */
    public HttpServletRequest getRequest() {
        if(null==request){
            org.directwebremoting.WebContext wc=org.directwebremoting.WebContextFactory.get();
            request=wc.getHttpServletRequest();
        }
        return request;
    }

    /**
     *request的值设定
     *@param request 设定request的值.
     */
    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    /**
     *response的获取.
     *@return response值返回.
     */
    public HttpServletResponse getResponse() {
        if(null==response){
            org.directwebremoting.WebContext wc=org.directwebremoting.WebContextFactory.get();
            response=wc.getHttpServletResponse();
        }
        return response;
    }

    /**
     *response的值设定
     *@param response 设定response的值.
     */
    public void setResponse(HttpServletResponse response) {
        this.response = response;
    }
    
    /**
     * 获得当前系统时间 格式:yyyyMMddHHmmss
     *
     * @return 当前时间字符串
     */
    public static String timeInstance() {
        Calendar calendar = Calendar.getInstance();
        return TimeUtil.toString(calendar, TimeUtil.otherTimeFormat);
    }

}

