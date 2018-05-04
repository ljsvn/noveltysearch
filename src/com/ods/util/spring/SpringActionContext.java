/**
 * 包名：com.ods.util.spring
 * 类名：SpringActionContext
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.spring;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ods.util.spring.httpmap.ApplicationMap;
import com.ods.util.spring.httpmap.CookieMap;
import com.ods.util.spring.httpmap.ParameterMap;
import com.ods.util.spring.httpmap.RequestMap;
import com.ods.util.spring.httpmap.SessionMap;

/**
 * 功能：该工具类封装了request 、response、form parameters、 request attributes、session
 * attributes和 application attributes中 的数据存取操作，简单而线程安全 创建者: 10325431@qq.com
 * 修改者 修改时间
 * 
 */
@SuppressWarnings("unchecked")
public class SpringActionContext {

    /**
     * 线程
     */
    private static final ThreadLocal localContext = new ThreadLocal();

    /**
     * 请求
     */
    private HttpServletRequest request;

    /**
     * 响应
     */
    private HttpServletResponse response;

    /**
     * Cookie集合
     */
    private Map cookieMap;

    /**
     * spring常数集合
     */
    private Map parameterMap;

    /**
     * spring请求集合
     */
    private Map<String, String> requestMap;

    /**
     * session应用上下文集合
     */
    private Map sessionMap;

    /**
     * spring应用集合
     */
    private Map applicationMap;

    /**
     * 构造函数
     */
    private SpringActionContext() {
    }

    /**
     * 初始化
     * 
     * @param request 请求
     * @param response 响应
     */
    public static void initialize(HttpServletRequest request, HttpServletResponse response) {
        SpringActionContext ctx = getActionContext();
        ctx.request = request;
        ctx.response = response;
        ctx.cookieMap = null;
        ctx.parameterMap = null;
        ctx.requestMap = null;
        ctx.sessionMap = null;
        ctx.applicationMap = null;
    }

    public void setSimpleMessage(String message) {
        getRequestMap().put("message", message);
    }

    public void addSimpleError(String message) {
        List errors = (List) getRequestMap().get("errors");
        if(errors == null) {
            errors = new ArrayList();
            getRequestMap().put("errors", errors);
        }
        errors.add(message);
    }

    public boolean isSimpleErrorsExist() {
        List errors = (List) getRequestMap().get("errors");
        return errors != null && errors.size() > 0;
    }

    public Map getCookieMap() {
        if(cookieMap == null) {
            cookieMap = new CookieMap(request);
        }
        return cookieMap;
    }

    public Map getParameterMap() {
        if(parameterMap == null) {
            parameterMap = new ParameterMap(request);
        }
        return parameterMap;
    }

    public Map getRequestMap() {
        if(requestMap == null) {
            requestMap = new RequestMap(request);
        }
        return requestMap;
    }

    public Map getSessionMap() {
        if(sessionMap == null) {
            sessionMap = new SessionMap(request);
        }
        return sessionMap;
    }

    public Map getApplicationMap() {
        if(applicationMap == null) {
            applicationMap = new ApplicationMap(request);
        }
        return applicationMap;
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public HttpServletResponse getResponse() {
        return response;
    }

    public static SpringActionContext getActionContext() {
        SpringActionContext ctx = (SpringActionContext) localContext.get();
        if(ctx == null) {
            ctx = new SpringActionContext();
            localContext.set(ctx);
        }
        return ctx;
    }
}
