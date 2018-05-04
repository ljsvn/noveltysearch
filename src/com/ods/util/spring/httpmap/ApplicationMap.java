/**
 * 包名：com.ods.util.spring.httpmap
 * 类名：ApplicationMap
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.spring.httpmap;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;

/**
 * 功能：对上下文存值 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */
@SuppressWarnings("unchecked")
public class ApplicationMap extends BaseHttpMap {

    private ServletContext context;

    public ApplicationMap(HttpServletRequest request) {
        context = request.getSession().getServletContext();
    }

    protected Enumeration getNames() {
        return context.getAttributeNames();
    }

    protected Object getValue(Object key) {
        return context.getAttribute(String.valueOf(key));
    }

    protected void putValue(Object key, Object value) {
        context.setAttribute(String.valueOf(key), value);
    }

    protected void removeValue(Object key) {
        context.removeAttribute(String.valueOf(key));
    }

}
