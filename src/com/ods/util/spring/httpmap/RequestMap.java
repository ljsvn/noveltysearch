/**
 * 包名：com.ods.util.spring.httpmap
 * 类名：RequestMap
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.spring.httpmap;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;

/**
 * 功能：存放HttpServletRequest值 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */
@SuppressWarnings("unchecked")
public class RequestMap extends BaseHttpMap {

    private HttpServletRequest request;

    public RequestMap(HttpServletRequest request) {
        this.request = request;
    }

    protected Enumeration getNames() {
        return request.getAttributeNames();
    }

    protected Object getValue(Object key) {
        return request.getAttribute(String.valueOf(key));
    }

    protected void putValue(Object key, Object value) {
        request.setAttribute(String.valueOf(key), value);
    }

    protected void removeValue(Object key) {
        request.removeAttribute(String.valueOf(key));
    }
}
