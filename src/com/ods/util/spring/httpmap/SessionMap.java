/**
 * 包名：com.ods.util.spring.httpmap
 * 类名：SessionMap
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.spring.httpmap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Enumeration;

/**
 * 功能：存放HttpSession值 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */
@SuppressWarnings("unchecked")
public class SessionMap extends BaseHttpMap {

    private HttpSession session;

    public SessionMap(HttpServletRequest request) {
        this.session = request.getSession();
    }

    protected Enumeration getNames() {
        return session.getAttributeNames();
    }

    protected Object getValue(Object key) {
        return session.getAttribute(String.valueOf(key));
    }

    protected void putValue(Object key, Object value) {
        session.setAttribute(String.valueOf(key), value);
    }

    protected void removeValue(Object key) {
        session.removeAttribute(String.valueOf(key));
    }
}
