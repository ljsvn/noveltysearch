/**
 * 包名：com.ods.util.spring.httpmap
 * 类名：BaseHttpMap
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.spring.httpmap;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Collection;

/**
 * 功能：对Map接口进行封装 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */
@SuppressWarnings("unchecked")
public abstract class BaseHttpMap implements Map {

    public int size() {
        return keySet().size();
    }

    public boolean isEmpty() {
        return keySet().size() == 0;
    }

    public boolean containsKey(Object key) {
        return keySet().contains(key);
    }

    public boolean containsValue(Object value) {
        return values().contains(value);
    }

    public Object get(Object key) {
        return getValue(key);
    }

    public Object put(Object key, Object value) {
        Object old = getValue(key);
        putValue(key, value);
        return old;
    }

    public Object remove(Object key) {
        Object old = getValue(key);
        removeValue(key);
        return old;
    }

    public void putAll(Map map) {
        Iterator i = map.keySet().iterator();
        while (i.hasNext()) {
            Object key = i.next();
            putValue(key, map.get(key));
        }
    }

    public void clear() {
        Iterator i = keySet().iterator();
        while (i.hasNext()) {
            removeValue(i.next());
        }
    }

    public Set keySet() {
        Set keySet = new HashSet();
        Enumeration en = getNames();
        while (en.hasMoreElements()) {
            keySet.add(en.nextElement());
        }
        return keySet;
    }

    public Collection values() {
        List list = new ArrayList();
        Enumeration en = getNames();
        while (en.hasMoreElements()) {
            list.add(getValue(en.nextElement()));
        }
        return list;
    }

    public Set entrySet() {
        return new HashSet();
    }

    protected abstract Enumeration getNames();

    protected abstract Object getValue(Object key);

    protected abstract void putValue(Object key, Object value);

    protected abstract void removeValue(Object key);
}
