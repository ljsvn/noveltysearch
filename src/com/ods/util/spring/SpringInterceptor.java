/**
 * 包名：com.ods.util.spring
 * 类名：SpringInterceptor
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.spring;

import com.ods.util.type.ObjectUtil;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 * 功能：spring的拦截器实现 创建者: 10325431@qq.com 创建时间:2009-4-13 9:03:30 修改者 修改时间
 * 
 */
public class SpringInterceptor extends HandlerInterceptorAdapter {

    /**
     * 构造函数
     */
    public SpringInterceptor() {
    }

    /**
     * 拦截器实现函数
     * 
     * @param request 请求对象
     * @param response 动态响应客户端请示,控制发送给用户的信息,并将动态生成响应对象
     * @param handler 拦截的对像
     * @return =true：继续执行操作 =false：spring拦截，不继续执行以下操作
     * @throws java.lang.Exception 拦截错误
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        System.out.println(ObjectUtil.toString(handler));
        return true;
    }
}