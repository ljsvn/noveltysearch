/**
 * 包名：com.ods.util.filter
 * 类名：GZIPResponseWrapper
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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 *<b>系统名称:</b><b>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>子系统名：</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *Java EE的Filter的子类<br>
 *
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>文件名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *GZipFilter.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *GZipFilter类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *GZipFilter类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *返回请求的数据进行gzip压缩
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，              更新内容<br>
 *2009-8-18,    99999,    qq911110yufei@gmail.com,   新建<br>
 *
 *@author :qq911110yufei@gmail.com
 *@since  :2009-8-18
 *@version:1.0
 */
public class GZipFilter implements Filter {

    /**
     * 
     *返回请求的数据进行gzip压缩.<br>
     *工程名:<br>
     *包名:com.ods.util.filter<br>
     *方法名:doFilter方法.<br>
     *
     *{@inheritDoc}
     *author :qq911110yufei@gmail.com
     *@see javax.servlet.Filter#doFilter(javax.servlet.ServletRequest, javax.servlet.ServletResponse, javax.servlet.FilterChain)
     *@param req 请求对象
     *@param res 接受服务器对象
     *@param chain 过滤调整器对象
     *@throws IOException 输入输出错误
     *@throws ServletException ServletException错误
     */
    public void doFilter(ServletRequest req, ServletResponse res,
          FilterChain chain) throws IOException, ServletException {
        if (req instanceof HttpServletRequest) {
          HttpServletRequest request = (HttpServletRequest) req;
          HttpServletResponse response = (HttpServletResponse) res;
          String ae = request.getHeader(Constants.HEADER_ACCEPT_ENCODING);
          
          if (ae != null && ae.indexOf("gzip") != -1) {
            GZIPResponseWrapper wrappedResponse =
              new GZIPResponseWrapper(response);
            chain.doFilter(req, wrappedResponse);
            wrappedResponse.finishResponse();
            return;
          }
          chain.doFilter(req, res);
        } 
    }

    public void destroy() {        
    }
    
    /**
     * 初试化
     * @param filterConfig 过滤对象
     * @throws javax.servlet.ServletException 初始化失败错误
     */    
    public void init(FilterConfig arg0) throws ServletException {        
    }
}
