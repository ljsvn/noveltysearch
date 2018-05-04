/**
 * 包名：com.ods.util.hibernate.query
 * 类名：OrderEntry
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.hibernate.query;

/**
 * 功能：Hibbernate的排序类封装
 * 创建者: pu_xiaolong@sina.com
 * 修改者                   修改时间
 * 
 */
public class OrderEntry {

    /**
     * 降序标志常数
     */
    public static final int ORDER_DESC = -1;
    /**
     * 升序标志常数
     */
    public static final int ORDER_ASC = 1;
    /**
     * 排序键
     */
    private Object key = null;
    /**
     * 默认的排序
     */
    private int order = ORDER_ASC;
  

    /**
     * 空构造函数
     */
    public OrderEntry() {
    }

    /**
     * 通过构造函数设置排序的键和排序方式
     * @param key 排序的键
     * @param order 排序方式
     */
    public OrderEntry(Object key, int order) {
        this.key = key;
        this.order = order;
    } 

    /**
     * 通过构造函数设置排序的键
     * @param key 排序的键 
     */
    public OrderEntry(Object key) {
        this(key, 0);
    }

    public void setKey(Object key) {
        this.key = key;
    }

    public Object getKey() {
        return key;
    }

    public void setDirection(int order) {
        this.order = order;
    }

    public int getDirection() {
        return order;
    }
 
    
}
