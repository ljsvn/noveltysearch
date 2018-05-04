/**
 *copyright(C)2009
 *陕西Ods信息技术软件有限公司软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.hibernate.query;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

/**
 * <b>系统名称:</b><b> &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * Hibernate通用Dao</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>子系统名：</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * Hibernate通用条件类<br>
 * 
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>文件名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * QueryConditionNew.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * QueryConditionNew类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * QueryConditionNew类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 根据用户的设置条件承载设置条件<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2009-8-29, 99999, pu_xiaolong@sina.com, 新建<br>
 * 
 * @author :pu_xiaolong@sina.com
 * @since :2009-8-29
 * @version:1.0
 */
public class QueryCondition {

    // 翻页信息JavaBean
    private QueryPageJavaBean queryPageJavaBean = new QueryPageJavaBean();

    // 模糊等于
    private Map<String, Object> likeEqualsMap;

    // 等于
    private Map<String, Object> equalsMap;

    // 不等于
    private Map<String, Object> notEqualsMap;

    // 大于
    private Map<String, Object> greateMap;

    // 大于等于
    private Map<String, Object> greateEqualsMap;

    // 小于
    private Map<String, Object> lessMap;

    // 小于等于
    private Map<String, Object> lessEqualsMap;

    // 值为空
    private Map<String, Object> nullMap;

    // 值非空
    private Map<String, Object> notNullMap;

    // 等于列表中的某个值
    private Map<String, List<Object>> inMap;

    // 不等于列表中的任意一个值
    private Map<String, List<Object>> notInMap;

    // 大于等于某个值并且小于等于另外一个值
    private Map<String, Object> betweenInMap;

    // 小于开始值或者大于结束值
    private Map<String, Object> notBetweenInMap;

    // 排序
    private List<OrderEntry> orderby;

    // 批量编辑数据库
    private Map<String, Object> batchUpdateMap;

    // 根据字符串主键进行批量删除
    private Map<String, Object> batchDelteStringMap;

    // ///////////////////////////////////////////////////////
    /**
     * 构造函数
     */
    public QueryCondition() {
        this(null);
    }

    public QueryCondition(HttpServletRequest request) {
        if(request == null) {
            return;
        }
    }
    

    /**
     * likeEqualsMap的获取.
     * 
     * @return likeEqualsMap值返回.
     */
    public Map<String, Object> getLikeEqualsMap() {
        return likeEqualsMap;
    }

    /**
     * batchDelteStringMap的获取.
     * 
     * @return batchDelteStringMap值返回.
     */
    public Map<String, Object> getBatchDelteStringMap() {
        return batchDelteStringMap;
    }

    /**
     * orderby的获取.
     * 
     * @return orderby值返回.
     */
    public List<OrderEntry> getOrderby() {
        return orderby;
    }

    /**
     * queryPageJavaBean的获取.
     * 
     * @return queryPageJavaBean值返回.
     */
    public QueryPageJavaBean getQueryPageJavaBean() {
        return queryPageJavaBean;
    }

    /**
     * queryPageJavaBean的值设定
     * 
     * @param queryPageJavaBean 设定queryPageJavaBean的值.
     */
    public void setQueryPageJavaBean(QueryPageJavaBean queryPageJavaBean) {
        this.queryPageJavaBean = queryPageJavaBean;
    }

    /**
     * equalsMap的获取.
     * 
     * @return equalsMap值返回.
     */
    public Map<String, Object> getEqualsMap() {
        return equalsMap;
    }

    /**
     * notEqualsMap的获取.
     * 
     * @return notEqualsMap值返回.
     */
    public Map<String, Object> getNotEqualsMap() {
        return notEqualsMap;
    }

    /**
     * greateMap的获取.
     * 
     * @return greateMap值返回.
     */
    public Map<String, Object> getGreateMap() {
        return greateMap;
    }

    /**
     * greateEqualsMap的获取.
     * 
     * @return greateEqualsMap值返回.
     */
    public Map<String, Object> getGreateEqualsMap() {
        return greateEqualsMap;
    }

    /**
     * lessMap的获取.
     * 
     * @return lessMap值返回.
     */
    public Map<String, Object> getLessMap() {
        return lessMap;
    }

    /**
     * lessEqualsMap的获取.
     * 
     * @return lessEqualsMap值返回.
     */
    public Map<String, Object> getLessEqualsMap() {
        return lessEqualsMap;
    }

    /**
     * nullMap的获取.
     * 
     * @return nullMap值返回.
     */
    public Map<String, Object> getNullMap() {
        return nullMap;
    }

    /**
     * notNullMap的获取.
     * 
     * @return notNullMap值返回.
     */
    public Map<String, Object> getNotNullMap() {
        return notNullMap;
    }

    /**
     * inMap的获取.
     * 
     * @return inMap值返回.
     */
    public Map<String, List<Object>> getInMap() {
        return inMap;
    }

    /**
     * notInMap的获取.
     * 
     * @return notInMap值返回.
     */
    public Map<String, List<Object>> getNotInMap() {
        return notInMap;
    }

    /**
     * betweenInMap的获取.
     * 
     * @return betweenInMap值返回.
     */
    public Map<String, Object> getBetweenInMap() {
        return betweenInMap;
    }

    /**
     * notBetweenInMap的获取.
     * 
     * @return notBetweenInMap值返回.
     */
    public Map<String, Object> getNotBetweenInMap() {
        return notBetweenInMap;
    }

    /**
     * batchUpdateMap的获取.
     * 
     * @return batchUpdateMap值返回.
     */
    public Map<String, Object> getBatchUpdateMap() {
        return batchUpdateMap;
    }

    // ///////////////////////////////////////////////////////
    /**
     * 判断Map对象是否已经实例化
     * 
     * @param map 被判断的Map对象
     * @return 已经实例化的Map对象
     */
    private Map<String, Object> checkMap(Map<String, Object> map) {
        if(map == null) {
            return new HashMap<String, Object>(5);
        }
        return map;
    }

    // ////////////////////////////////////////////////
    // 模糊等于
    public void put(String key, Object value) {
        likeEqualsMap = checkMap(likeEqualsMap);
        likeEqualsMap.put(key, value);
    }

    // 等于
    public void equals(String key, Object value) {
        equalsMap = checkMap(equalsMap);
        equalsMap.put(key, value);
    }

    // 不等于
    public void notEquals(String key, Object value) {
        notEqualsMap = checkMap(notEqualsMap);
        notEqualsMap.put(key, value);
    }

    // 大于
    public void greate(String key, Object value) {
        greateMap = checkMap(greateMap);
        greateMap.put(key, value);
    }

    // 大于等于
    public void greateEquals(String key, Object value) {
        greateEqualsMap = checkMap(greateEqualsMap);
        greateEqualsMap.put(key, value);
    }

    // 小于
    public void less(String key, Object value) {
        lessMap = checkMap(lessMap);
        lessMap.put(key, value);
    }

    // 小于等于
    public void lessEquals(String key, Object value) {
        lessEqualsMap = checkMap(lessEqualsMap);
        lessEqualsMap.put(key, value);
    }

    // 值为空
    public void isNull(String key) {
        nullMap = checkMap(nullMap);
        nullMap.put(key, key);
    }

    // 值非空
    public void isNotNull(String key) {
        notNullMap = checkMap(notNullMap);
        notNullMap.put(key, key);
    }

    // 等于列表中的某个值
    public void in(String key, List<Object> value) {
        if(null == inMap) {
            inMap = new HashMap<String, List<Object>>(5);
        }
        inMap.put(key, value);
    }

    // 等于列表中的某个值
    public void in(String key, String[] value) {
        if(null == inMap) {
            inMap = new HashMap<String, List<Object>>(5);
        }
        List<Object> list = new ArrayList<Object>();
        if(value != null && value.length > 0) {
            for(int i = 0; i < value.length; i++) {
                list.add(value[i]);
            }
        }
        inMap.put(key, list);
    }

    // 不等于列表中的任意一个值
    public void notIn(String key, List<Object> value) {
        if(null == notInMap) {
            notInMap = new HashMap<String, List<Object>>(5);
        }
        notInMap.put(key, value);
    }

    // 大于等于某个值并且小于等于另外一个值
    public void between(String key, Object beginValue, Object endValue) {
        betweenInMap = checkMap(betweenInMap);
        betweenInMap.put(key, beginValue + "_" + endValue);
    }

    // 小于开始值或者大于结束值
    public void notBetween(String key, Object beginValue, Object endValue) {
        notBetweenInMap = checkMap(notBetweenInMap);
        notBetweenInMap.put(key, beginValue + "_" + endValue);
    }

    // 小于开始值或者大于结束值
    public void batchUpdate(String key, Object value) {
        batchUpdateMap = checkMap(batchUpdateMap);
        batchUpdateMap.put(key, value);
    }

    // 根据字符串主键进行相关的批量删除条件
    public void batchDeleteByStringPk(String pkKey, String[] pkValues) {
        batchDelteStringMap = checkMap(batchDelteStringMap);
        batchDelteStringMap.put(pkKey, pkValues);
    }

    // 倒序排序，先调用本方法的后排序
    public void order(String key, int direction) {
        OrderEntry oe = new OrderEntry(key, direction);
        if(orderby == null) {
            orderby = new ArrayList<OrderEntry>(5);
        }
        if(orderby.contains(oe)) {
            orderby.remove(oe);
        }
        orderby.add(0, new OrderEntry(key, direction));
    } 

    // 升序
    public void orderAsc(String key) {
        order(key, OrderEntry.ORDER_ASC);
    }

    // 降序
    public void orderDesc(String key) {
        order(key, OrderEntry.ORDER_DESC);
    }
}
