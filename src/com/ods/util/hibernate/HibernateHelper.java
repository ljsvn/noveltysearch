/**
 *copyright(C)2009
 *陕西Ods信息技术软件有限公司软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.hibernate;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import com.ods.util.hibernate.query.OrderEntry;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryPageJavaBean;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.type.NumberUtil;
import com.ods.util.type.ObjectUtil;
import com.ods.util.type.StringUtil;

/**
 *<b>系统名称:</b><b> &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *Hibernate通用Dao系统</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>子系统名：</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *Hibernate通用条件类<br>
 * 
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>文件名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *HibernateHelperNew.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *HibernateHelperNew类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *HibernateHelperNew类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *1：根据QueryCondition组合HQl的条件<br>
 *2：通过Hibernate查询或修改或删除或保存实体对象<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2009-8-29, 99999, 10325431@qq.com, 新建<br>
 * 
 *@author :10325431@qq.com
 *@since :2009-8-29
 *@version:1.0
 */
public class HibernateHelper {

    // 执行批量编辑
    public static final void batchUpdateHqlByQueryCondition(Session session,
            Class<?> clazz, QueryCondition qc) throws Throwable {
        String alias = toAlias(clazz);
        // 获取组合的条件
        String condition = buildConditionByQueryCondition(clazz,alias, qc).toString();
        String hql = buildUpdateHql(clazz, alias, qc, condition);
        Query query = session.createQuery(hql);
        query.executeUpdate();
    }

    // 执行批量删除
    public static final void batchDeleteHqlByQueryCondition(Session session,
            Class<?> clazz, QueryCondition qc) throws Throwable {
        String alias = toAlias(clazz);
        // 获取组合的条件
        String condition = buildConditionByQueryCondition( clazz,alias, qc).toString();
        String hql = buildDeleteHql(clazz, alias, condition);
        Query query = session.createQuery(hql);
        query.executeUpdate();
    }

    // 字符串主键执行批量删除
    public static final void batchDeleteHqlByStringPkQueryCondition(
            Session session, Class<?> clazz, QueryCondition qc) {
        String alias = toAlias(clazz);
        // 获取组合的条件
        Map<String, Object> batchDelteStringMap = qc.getBatchDelteStringMap();
        StringBuilder builder=new StringBuilder();
        for(Iterator<Map.Entry<String, Object>> it = batchDelteStringMap
                .entrySet().iterator(); it.hasNext();) {
            Map.Entry<String, Object> entry = (Map.Entry<String, Object>) it
                    .next();
            String condKey = entry.getKey();
            Object condVal = entry.getValue();
            if(null != condVal) {
                String[] pkValues=(String[])condVal;
                for(int i = 0; i < pkValues.length; i++) {
                    String pkValue = pkValues[i];
                    if(i==0){
                        builder.append(" and ");
                    } else{
                        builder.append(" or ");    
                    }
                    
                    builder.append(" ").append(alias).append(".").append(
                            condKey);
                    builder.append(" ").append("='").append(pkValue).append("'");
                } 
            }
        } 
        if(builder.length()>0){ 
            String hql = buildDeleteHql(clazz, alias, builder.toString());
            Query query = session.createQuery(hql);
            query.executeUpdate();
        }
    }

    // 使用原生的标准数据库sql
    @SuppressWarnings("unchecked")
    public static final void selectDbSql(Session session, Class clazz,
            QueryCondition qc, QueryResult qr, String dbSql, String countSql)
            throws HibernateException {
        Query query = session.createSQLQuery(dbSql).addEntity(clazz);
        // 设置翻页
        QueryPageJavaBean queryPageJavaBean = qc.getQueryPageJavaBean();
        setQueryPage(query, queryPageJavaBean);
        //
        List<Query> listQuery = query.list();
        qr.addAll(listQuery);
        // 总数查询
        if(queryPageJavaBean.isQueryTotalCount()) {
            Query queryCount = session.createSQLQuery(countSql);
            List totalCountlList=queryCount.list(); 
            if(totalCountlList!=null&&totalCountlList.size()>0){
                queryPageJavaBean.setTotalCount(NumberUtil.toInt(String.valueOf(totalCountlList.get(0)),0));
            } else{
                queryPageJavaBean.setTotalCount(0);
            }
           
            qr.setQueryPageJavaBean(queryPageJavaBean);
        }
    }

    // Hql查询
    @SuppressWarnings("unchecked")
    public static final void selectHqlByQueryCondition(Session session,
            Class clazz, QueryCondition qc, QueryResult qr)
            throws Throwable {

        String alias = toAlias(clazz);
        // 获取组合的条件
        String condition = buildConditionByQueryCondition(clazz,alias, qc).toString();
        String hql = buildQueryHql(clazz, alias, condition);
        hql += addOrderby(qc, alias).toString();
        Query query = session.createQuery(hql);
        // 设置翻页
        QueryPageJavaBean queryPageJavaBean = qc.getQueryPageJavaBean();
        setQueryPage(query, queryPageJavaBean);
        List<Query> listQuery = query.list();
        qr.addAll(listQuery);
        // 总数查询
        if(queryPageJavaBean.isQueryTotalCount()) {
            hql = "select count(*) from " + clazz.getName() + " as " + alias + " where 1=1" + condition;
            Query queryCount = session.createQuery(hql);
            Long totalCountl = (Long) queryCount.iterate().next();
            int totalCount = totalCountl.intValue();
            queryPageJavaBean.setTotalCount(totalCount);
            qr.setQueryPageJavaBean(queryPageJavaBean);
        }
    }

    // Count查询
    @SuppressWarnings("unchecked")
    public static final int selectCountHqlByQueryCondition(Session session,
            Class clazz, QueryCondition qc) throws Throwable {

        String alias = toAlias(clazz);
        // 获取组合的条件
        String condition = buildConditionByQueryCondition(clazz,alias, qc).toString();
        String hql = buildQueryHql(clazz, alias, condition);
        hql += addOrderby(qc, alias).toString();
        // 总数查询
        hql = "select count(*) from " + clazz.getName() + " as " + alias + " where 1=1" + condition;
        Query queryCount = session.createQuery(hql);
        Long totalCountl = (Long) queryCount.iterate().next();
        int totalCount = totalCountl.intValue();
        return totalCount;
    }

    // // 设置查询页
    // public static final void setQueryPage(Query query,
    // QueryPageJavaBean queryPageJavaBean) {
    // if(null != queryPageJavaBean) {
    // int startIndex = queryPageJavaBean.getStartIndex();
    // int eachPageShowRows = queryPageJavaBean.getEachPageShowRows();
    // // 小于0表示全选
    // if(eachPageShowRows >= 0) {
    // query.setMaxResults(eachPageShowRows);
    // }
    //
    // // 由于web传入的参数是1起始的，而hibernate是0起始的，因此进行减1处理。
    // startIndex--;
    // if(startIndex < 0) {
    // startIndex = 0;
    // }
    // query.setFirstResult(startIndex);
    // }
    //
    // }
    // 设置查询页
    public static final void setQueryPage(Query query,
            QueryPageJavaBean queryPageJavaBean) {
        if(null != queryPageJavaBean) {
            int startIndex = queryPageJavaBean.getStartIndex();
            int eachPageShowRows = queryPageJavaBean.getEachPageShowRows();
            // 小于0表示全选
            if(eachPageShowRows >= 0) {
                query.setMaxResults(eachPageShowRows);
            }

            // 由于web传入的参数是1起始的，而hibernate是0起始的，因此进行减1处理。

            // startIndex--;
            if(startIndex <= 1) {
                startIndex = 0;
            }
            query.setFirstResult(startIndex);
        }

    }

    // 批量修改
    @SuppressWarnings("unchecked")
    private static final String buildUpdateHql(Class<?> clazz, String alias,
            QueryCondition qc, String condition) throws Throwable, Throwable {
        StringBuilder hql = new StringBuilder();
        // 组合修改的内容
        Map<String, Object> batchUpdateMap = qc.getBatchUpdateMap();
        int i = 0;
        if(null != batchUpdateMap && batchUpdateMap.size() > 0) {
            hql.append("update ");
            hql.append(clazz.getName());
            hql.append(" as ");
            hql.append(alias);
            hql.append(" set ");
            for(Iterator<Map.Entry<String, Object>> it = batchUpdateMap
                    .entrySet().iterator(); it.hasNext();) {
                Map.Entry<String, Object> entry = (Map.Entry<String, Object>) it
                        .next();
                String condKey = entry.getKey();
                Object condVal =ObjectUtil.getFieldReturnType(clazz,condKey,entry.getValue());
                hql.append(condKey);
                if(condVal instanceof String){
                    hql.append("= '");
                } else{
                    hql.append("= ");
                }
                
                hql.append(condVal);
                if(i != batchUpdateMap.size() - 1) {
                    if(condVal instanceof String){
                        hql.append("',");
                    } else{
                        hql.append(",");
                    }
                    
                } else {
                    if(condVal instanceof String){
                        hql.append("'");
                    }
                    
                }
                i++;
            }

            if(!StringUtil.empty(condition) && condition.length() > 0) {
                hql.append(" where 1=1").append(condition);
            }
        }

        return hql.toString();
    }

    // 批量删除
    @SuppressWarnings("unchecked")
    private static final String buildDeleteHql(Class clazz, String alias,
            String condition) {
        StringBuilder hql = new StringBuilder();
        hql.append("delete ");
        hql.append(clazz.getName());
        hql.append(" as ");
        hql.append(alias);
        if(!StringUtil.empty(condition) && condition.length() > 0) {
            hql.append(" where 1=1").append(condition);
        }

        return hql.toString();
    }

    // 查询Hql
    private static final String buildQueryHql(Class<?> clazz, String alias,
            String condition) {
        StringBuilder hql = new StringBuilder();
        hql.append("   from ");
        hql.append(clazz.getName());
        hql.append(" as ");
        hql.append(alias);
        if(!StringUtil.empty(condition) && condition.length() > 0) {
            hql.append(" where 1=1").append(condition);
        }

        return hql.toString();
    }

    // 类名的别名生成
    private static final String toAlias(Class<?> clazz) {
        String alias = ObjectUtil.getBaseClassName(clazz.getName())
                .toLowerCase();
        return alias;
    }

    // 组合Hql的条件
    private static final StringBuilder buildConditionByQueryCondition( Class<?> clazz,
            String objectAlias, QueryCondition qc) throws Throwable {
        StringBuilder builder = new StringBuilder();
        // //////////////////////////////////////////////////
        // 模糊等于
        addLikeEquals(qc, objectAlias, builder);
        // 等于
        addEquals(qc, objectAlias, builder);
        // 不等于
        addNotEquals(qc, objectAlias, builder);
        // 大于
        addGreate(qc, objectAlias, builder);
        // 大于等于
        addGreateEquals(qc, objectAlias, builder);
        // 小于
        addLess(qc, objectAlias, builder);
        // 小于等于
        addLessEquals(qc, objectAlias, builder);
        // 值为空
        addNull(qc, objectAlias, builder);
        // 值非空
        addNotNull(qc, objectAlias, builder);
        // 等于列表中的某个值
        addIn(clazz,qc, objectAlias, builder);
        // 不等于列表中的任意一个值
        addNotIn(qc, objectAlias, builder);
        // 大于等于某个值并且小于等于另外一个值
        addBetweenIn(qc, objectAlias, builder);
        // 小于开始值或者大于结束值
        addNotBetweenIn(qc, objectAlias, builder);

        // //////////////////////////////////////////////////
        return builder;
    }

    // 排序
    private static final String addOrderby(QueryCondition qc, String objectAlias) {
        List<OrderEntry> orderList = qc.getOrderby();
        StringBuffer buffer = new StringBuffer("");
        if(null != orderList) {
            buffer.append(" order by ");
            for(int i = 0; i < orderList.size(); i++) {
                OrderEntry orderEntry = (OrderEntry) orderList.get(i);
                String orderKey = (String) orderEntry.getKey();
                if(StringUtil.empty(orderKey)) {
                    continue;
                }
                if(i > 0) {
                    buffer.append(", ");
                }
                // if (OrderEntry.ORDER_ORACLE_FUNCTION ==
                // orderEntry.getDirection()) {//表示是oracle 的函数，不用转换，直接作为sql排序条件
                // buffer.append(orderKey);
                // } else
                if(OrderEntry.ORDER_DESC == orderEntry.getDirection()) {
                    buffer.append(objectAlias);
                    buffer.append(".");
                    buffer.append(orderKey);
                    buffer.append(" ");
                    buffer.append(" desc");
                    buffer.append(" ");
                    // criteria.addOrder(Order.desc(orderKey));
                } else if(OrderEntry.ORDER_ASC == orderEntry.getDirection()) {
                    buffer.append(objectAlias);
                    buffer.append(".");
                    buffer.append(orderKey);
                    buffer.append(" ");
                    buffer.append(" asc ");
                } 
            }
        }
        return buffer.toString();
    }

    // 小于开始值或者大于结束值
    private static final void addNotBetweenIn(QueryCondition qc,
            String objectAlias, StringBuilder builder) {

        Map<String, Object> notBetweenMap = qc.getNotBetweenInMap();
        //
        if(null != notBetweenMap && notBetweenMap.size() > 0) {
            for(Iterator<Map.Entry<String, Object>> it = notBetweenMap
                    .entrySet().iterator(); it.hasNext();) {
                Map.Entry<String, Object> entry = (Map.Entry<String, Object>) it
                        .next();
                String condKey = entry.getKey();
                Object condVal = entry.getValue();
                Object[] condVals = StringUtil.split((String) condVal, "_");
                if(null != condVal) {
                    builder.append(" and");
                    builder.append(" ").append(objectAlias).append(".").append(
                            condKey);
                    builder.append(" not between ").append(condVals[0]);
                    builder.append(" and ").append(condVals[1]);
                }
            }
        }

    }

    // 大于等于某个值并且小于等于另外一个值
    private static final void addBetweenIn(QueryCondition qc,
            String objectAlias, StringBuilder builder) {
        Map<String, Object> betweenMap = qc.getBetweenInMap();
        //
        if(null != betweenMap && betweenMap.size() > 0) {
            for(Iterator<Map.Entry<String, Object>> it = betweenMap.entrySet()
                    .iterator(); it.hasNext();) {
                Map.Entry<String, Object> entry = (Map.Entry<String, Object>) it
                        .next();
                String condKey = entry.getKey();
                Object condVal = entry.getValue();
                Object[] condVals = StringUtil.split((String) condVal, "_");
                if(null != condVal) {
                    builder.append(" and");
                    builder.append(" ").append(objectAlias).append(".").append(
                            condKey);
                    builder.append(" between ").append(condVals[0]);
                    builder.append(" and ").append(condVals[1]);
                }
            }
        }
    }

    // 不等于列表中的任意一个值
    private static final void addNotIn(QueryCondition qc, String objectAlias,
            StringBuilder builder) {
        Map<String, List<Object>> notInMap = qc.getNotInMap();
        //
        if(null != notInMap && notInMap.size() > 0) {
            for(Iterator<Map.Entry<String, List<Object>>> it = notInMap
                    .entrySet().iterator(); it.hasNext();) {
                Map.Entry<String, List<Object>> entry = (Map.Entry<String, List<Object>>) it
                        .next();
                String condKey = entry.getKey();
                List<Object> condVal = (List<Object>) entry.getValue();
                if(null != condVal && condVal.size() > 0) {
                    builder.append(" and");
                    StringBuilder valueBuild = new StringBuilder(condVal.size());
                    for(int i = 0; i < condVal.size(); i++) {
                        valueBuild.append(condVal.get(i));
                        if(i != condVal.size() - 1) {
                            valueBuild.append(",");
                        }
                    }
                    builder.append(" ").append(objectAlias).append(".").append(
                            condKey);
                    builder.append(" not in (").append(valueBuild.toString())
                            .append(")");
                }
            }
        }

    }

    // 等于列表中的某个值
    private static final void addIn(Class<?> clazz,QueryCondition qc, String objectAlias,
            StringBuilder builder) throws Throwable, Throwable {
        Map<String, List<Object>> inMap = qc.getInMap();
        //
        if(null != inMap && inMap.size() > 0) {
            for(Iterator<Map.Entry<String, List<Object>>> it = inMap.entrySet()
                    .iterator(); it.hasNext();) {
                Map.Entry<String, List<Object>> entry = (Map.Entry<String, List<Object>>) it
                        .next();
                String condKey = entry.getKey();
                List<Object> condVal = (List<Object>) entry.getValue();
                if(null != condVal && condVal.size() > 0) {
                    builder.append(" and");
                    StringBuilder valueBuild = new StringBuilder(condVal.size());
                    for(int i = 0; i < condVal.size(); i++) {
                        String o =ObjectUtil.getFieldReturnType(clazz,condKey,condVal.get(i)).toString();
                        
                        if(o instanceof String&&!StringUtil.equals(o.substring(0,1), "'")){
                            valueBuild.append("'").append(o).append("'");
                       } else{
                            valueBuild.append(o);
                        }
                        
                        if(i != condVal.size() - 1) {
                            valueBuild.append(",");
                        }
                    }
                    builder.append(" ").append(objectAlias).append(".").append(
                            condKey);
                    builder.append(" in (").append(valueBuild.toString())
                            .append(")");
                }
            }
        }
    }

    // 值非空
    private static final void addNotNull(QueryCondition qc, String objectAlias,
            StringBuilder builder) {
        Map<String, Object> notNullMap = qc.getNotNullMap();
        //
        if(null != notNullMap && notNullMap.size() > 0) {
            for(Iterator<Map.Entry<String, Object>> it = notNullMap.entrySet()
                    .iterator(); it.hasNext();) {
                Map.Entry<String, Object> entry = (Map.Entry<String, Object>) it
                        .next();
                String condKey = entry.getKey();
                Object condVal = entry.getValue();
                if(null != condVal) {
                    builder.append(" and (");
                    builder.append(" ").append(objectAlias).append(".").append(
                            condKey);
                    //builder.append(" is not null");
                    builder.append("!=null or ");
                    builder.append(" ").append(objectAlias).append(".").append(
                            condKey); 
                    builder.append("!='' ");
                    

                    builder.append(")");
                }
            }
        }

    }

    // 值为空
    private static final void addNull(QueryCondition qc, String objectAlias,
            StringBuilder builder) {
        Map<String, Object> nullMap = qc.getNullMap();
        //
        if(null != nullMap && nullMap.size() > 0) {
            for(Iterator<Map.Entry<String, Object>> it = nullMap.entrySet()
                    .iterator(); it.hasNext();) {
                Map.Entry<String, Object> entry = (Map.Entry<String, Object>) it
                        .next();
                String condKey = entry.getKey();
                Object condVal = entry.getValue();
                if(null != condVal) {
                    builder.append(" and (");
                    builder.append(" ").append(objectAlias).append(".").append(
                            condKey);
                    //builder.append(" is null");

                    builder.append("=null or ");
                    builder.append(" ").append(objectAlias).append(".").append(
                            condKey); 
                    builder.append("='' "); 
                    builder.append(" )");
                }
            }
        }

    }

    // 小于等于
    private static final void addLessEquals(QueryCondition qc,
            String objectAlias, StringBuilder builder) {
        Map<String, Object> lessEqualsMap = qc.getLessEqualsMap();
        //
        if(null != lessEqualsMap && lessEqualsMap.size() > 0) {
            for(Iterator<Map.Entry<String, Object>> it = lessEqualsMap
                    .entrySet().iterator(); it.hasNext();) {
                Map.Entry<String, Object> entry = (Map.Entry<String, Object>) it
                        .next();
                String condKey = entry.getKey();
                Object condVal = entry.getValue();
                if(null != condVal) {
                    builder.append(" and");
                    builder.append(" ").append(objectAlias).append(".").append(
                            condKey);
                    builder.append(" ").append("<='").append(condVal).append(
                            "'");
                }
            }
        }

    }

    // 小于
    private static final void addLess(QueryCondition qc, String objectAlias,
            StringBuilder builder) {
        Map<String, Object> lessMap = qc.getLessMap();
        //
        if(null != lessMap && lessMap.size() > 0) {
            for(Iterator<Map.Entry<String, Object>> it = lessMap.entrySet()
                    .iterator(); it.hasNext();) {
                Map.Entry<String, Object> entry = (Map.Entry<String, Object>) it
                        .next();
                String condKey = entry.getKey();
                Object condVal = entry.getValue();
                if(null != condVal) {
                    builder.append(" and");
                    builder.append(" ").append(objectAlias).append(".").append(
                            condKey);
                    builder.append(" ").append("<'").append(condVal)
                            .append("'");
                }
            }
        }

    }

    // 大于等于
    private static final void addGreateEquals(QueryCondition qc,
            String objectAlias, StringBuilder builder) {
        Map<String, Object> greatEqualsMap = qc.getGreateEqualsMap();
        //
        if(null != greatEqualsMap && greatEqualsMap.size() > 0) {
            for(Iterator<Map.Entry<String, Object>> it = greatEqualsMap
                    .entrySet().iterator(); it.hasNext();) {
                Map.Entry<String, Object> entry = (Map.Entry<String, Object>) it
                        .next();
                String condKey = entry.getKey();
                Object condVal = entry.getValue();
                if(null != condVal) {
                    builder.append(" and");
                    builder.append(" ").append(objectAlias).append(".").append(
                            condKey);
                    builder.append(" ").append(">='").append(condVal).append(
                            "'");
                }
            }
        }

    }

    // 大于
    private static final void addGreate(QueryCondition qc, String objectAlias,
            StringBuilder builder) {
        Map<String, Object> greatMap = qc.getGreateMap();
        //
        if(null != greatMap && greatMap.size() > 0) {
            for(Iterator<Map.Entry<String, Object>> it = greatMap.entrySet()
                    .iterator(); it.hasNext();) {
                Map.Entry<String, Object> entry = (Map.Entry<String, Object>) it
                        .next();
                String condKey = entry.getKey();
                Object condVal = entry.getValue();
                if(null != condVal) {
                    builder.append(" and");
                    builder.append(" ").append(objectAlias).append(".").append(
                            condKey);
                    builder.append(" ").append(">'").append(condVal)
                            .append("'");
                }
            }
        }

    }

    // 不等于
    private static final void addNotEquals(QueryCondition qc,
            String objectAlias, StringBuilder builder) {
        Map<String, Object> notEqualsMap = qc.getNotEqualsMap();
        //
        if(null != notEqualsMap && notEqualsMap.size() > 0) {
            for(Iterator<Map.Entry<String, Object>> it = notEqualsMap
                    .entrySet().iterator(); it.hasNext();) {
                Map.Entry<String, Object> entry = (Map.Entry<String, Object>) it
                        .next();
                String condKey = entry.getKey();
                Object condVal = entry.getValue();
                if(null != condVal) {
                    builder.append(" and");
                    builder.append(" ").append(objectAlias).append(".").append(
                            condKey);
                    builder.append(" ").append("<>'").append(condVal).append(
                            "'");
                }
            }
        }

    }

    // 等于
    private static final void addEquals(QueryCondition qc, String objectAlias,
            StringBuilder builder) {
        Map<String, Object> equalsMap = qc.getEqualsMap();
        //
        if(null != equalsMap && equalsMap.size() > 0) {
            for(Iterator<Map.Entry<String, Object>> it = equalsMap.entrySet()
                    .iterator(); it.hasNext();) {
                Map.Entry<String, Object> entry = (Map.Entry<String, Object>) it
                        .next();
                String condKey = entry.getKey();
                Object condVal = entry.getValue();
                if(null != condVal) {
                    builder.append(" and");
                    builder.append(" ").append(objectAlias).append(".").append(
                            condKey);
                    builder.append(" ").append("='").append(condVal)
                            .append("'");
                }
            }
        }

    }

    // 模糊等于
    private static final void addLikeEquals(QueryCondition qc,
            String objectAlias, StringBuilder builder) {
        Map<String, Object> likeEqualsMap = qc.getLikeEqualsMap();
        //
        if(null != likeEqualsMap && likeEqualsMap.size() > 0) {
            for(Iterator<Map.Entry<String, Object>> it = likeEqualsMap
                    .entrySet().iterator(); it.hasNext();) {
                Map.Entry<String, Object> entry = (Map.Entry<String, Object>) it
                        .next();
                String condKey = entry.getKey();
                Object condVal = entry.getValue();
                if(null != condVal) {
                    builder.append(" and");
                    builder.append(" ").append(objectAlias).append(".").append(
                            condKey);
                    builder.append(" ").append("like '%").append(condVal)
                            .append("%'");
                }
            }
        }
    }

}
