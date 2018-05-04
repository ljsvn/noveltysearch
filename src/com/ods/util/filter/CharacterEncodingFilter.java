/**
 * 包名：com.ods.util.filter
 * 类名：CharacterEncodingFilter
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * 功能：发送请求的编码格式设置
 * 创建者: 10325431@qq.com
 * 修改者                   修改时间
 * 
 */
public class CharacterEncodingFilter implements Filter {

    /**
     * 设置的编码格式
     */
    private static String characterEncoding = "UTF-8";

    public static String getCharacterEncoding() {
        return characterEncoding;
    }

    /**
     * 初试化
     * @param filterConfig 过滤对象
     * @throws javax.servlet.ServletException 初始化失败错误
     */
    public void init(FilterConfig filterConfig) throws ServletException {
        CharacterEncodingFilter.characterEncoding = filterConfig.getInitParameter("characterEncoding");
    }

    public void destroy() {
    }

    /**
     * 设置请求编码格式
     * @param request 请求对象
     * @param response 接受服务器对象
     * @param chain 过滤调整器对象
     * @throws java.io.IOException 输入输出错误
     * @throws javax.servlet.ServletException ServletException错误
     */
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain)
            throws IOException, ServletException {
        request.setCharacterEncoding(characterEncoding);
        chain.doFilter(request, response);
    }
}