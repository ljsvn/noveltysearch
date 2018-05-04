/**
 * 包名：com.ods.util.spring.httpmap
 * 类名：ParameterMap
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.spring.httpmap;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;

/**
 * 功能：存放参数值 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */
@SuppressWarnings("unchecked")
public class ParameterMap extends BaseHttpMap {

    private HttpServletRequest request;

    public ParameterMap(HttpServletRequest request) {
        this.request = request;
    }

    protected Enumeration getNames() {
        return request.getParameterNames();
    }

    protected Object getValue(Object key) {
        return request.getParameter(String.valueOf(key));
    }

    protected Object[] getValues(Object key) {
        return request.getParameterValues(String.valueOf(key));
    }

    protected void putValue(Object key, Object value) {
        throw new UnsupportedOperationException("Cannot put value to ParameterMap.");
    }

    protected void removeValue(Object key) {
        throw new UnsupportedOperationException("Cannot remove value from ParameterMap.");
    }

}
