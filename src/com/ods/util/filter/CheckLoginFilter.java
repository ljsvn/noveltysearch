/**
 *copyright(C)2009
 *陕西Ods信息技术软件有限公司软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ods.util.UserContext;

/**
 * <b>系统名称:</b><b> &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 南平广电呼叫中心系统</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>子系统名：</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 验证用户是否登录<br>
 * 
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>文件名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * CheckLoginFilter.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * CheckLoginFilter类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * CheckLoginFilter类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 用于检测用户是否登录的过滤器，如果未登录，则指向信息提示页面，之后返回登录页面<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2009-6-22, 99999, 10325431@qq.com, 新建<br>
 * 
 * @author :10325431@qq.com
 * @since :2009-6-22
 * @version:1.0
 */
public class CheckLoginFilter implements Filter {

    /**
     * 属性名：redirectURL、类型：String、作成日：2009-6-22.<br>
     * 含义：登录转向页面
     */
    private String redirectURL = null;

    /**
     * 属性名：notCheckURLList、类型：List<String>、作成日：2009-6-22.<br>
     * 含义：不用判断是否登录的页面转向等
     */
    private List<String> notCheckURLList = new ArrayList<String>();

    public void init(FilterConfig arg0) throws ServletException {

        redirectURL = "/nosession.ods";
        notCheckURLList.add("/index.ods");
        notCheckURLList.add("/relogin.ods");
        notCheckURLList.add("/nosession.ods");
        notCheckURLList.add(arg0.getServletContext().getContextPath() + "/nosessionlogin.ods");
        notCheckURLList.add("/main/login.ods");
        notCheckURLList.add("/system/filemanage/file_download.ods");
        notCheckURLList.add("/init.jsp");
        notCheckURLList.add("/jsp/psptest.jsp");
        notCheckURLList.add("/jsp/message/message_box.jsp");
        notCheckURLList.add("/index.jsp");
        notCheckURLList.add("/jsp/common/image.jsp");
        notCheckURLList.add("/jsp/common/logout.jsp");
        notCheckURLList.add("/jsp/common/error/nosession.jsp");
        notCheckURLList.add("/jsp/common/error/ajax_nosession.jsp");
        notCheckURLList.add("/jsp/touchsystem/workingseqdrawing/workingseq_drawing_page.jsp");

        notCheckURLList.add("/jsp/login/login_manager.jsp"); 
        notCheckURLList.add("/jsp/login/login_station.jsp"); 
        notCheckURLList.add("/jsp/login/login_gov.jsp"); 
    }

    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException,
            ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        // 清楚页面缓存
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Cache-Control", "no-store");
        response.setDateHeader("Expires", 0);
        response.setCharacterEncoding("utf-8");

        UserContext uc = UserContext.getUserContext(request);
        if(checkRequestURIIntNotFilterList(request)) {
            chain.doFilter(request, response);
            return;
        }
        // if (request.getHeader("x-requested-with") != null
        // && request.getHeader("x-requested-with").equalsIgnoreCase( //ajax超时处理
        // "XMLHttpRequest")) {
        // response.addHeader("sessionstatus", "timeout");
        // }else{//http超时的处理
        // }
        if((null == uc || uc.getUser() == null)) { 
            if(request.getHeader("x-requested-with") != null && request.getHeader("x-requested-with").equalsIgnoreCase(
                    "XMLHttpRequest")) {
                response.setHeader("sessionstatus", "timeout");
            } else{
                redirectURL = request.getContextPath() + "/jsp/common/error/nosession.jsp";
                response.sendRedirect(redirectURL);
            }
            return;
        }
        chain.doFilter(request, response);
    }

    public void destroy() {
    }

    private boolean checkRequestURIIntNotFilterList(HttpServletRequest request) {
        String servletPath = request.getServletPath();

        String uri = servletPath + (request.getPathInfo() == null ? "": request.getRequestURI());

        return notCheckURLList.contains(uri);
    }
}
