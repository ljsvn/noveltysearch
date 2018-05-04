/**
 * 包名：com.ods.util.hibernate
 * 类名：SpringHibernate
 * Ods信息技术软件有限公司研发中心
 */

package com.ods.util.hibernate;

import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.spring.TransactionalFunction;

/**
 * 功能：Spring和Hibernate整合并封装对实体数据的操作接口 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */
public interface SpringHibernate {
    // //////////////////////事务处理////////////////////////////////////
    Object transactionalAction(Object[] obj, TransactionalFunction tf) throws Throwable;

    // /////////////////////保存////////////////////////////////////////
    Object save(Object obj) throws Throwable;

    // //////////////////修改///////////////////////////
    void update(Object obj) throws Throwable;

    void batchUpdate(QueryCondition cond, Class<?> clazz) throws Throwable;

    // ////////////////////删除//////////////////////////
    void delete(String pkName, Object pkValue, Class<?> clazz) throws Throwable;

    void delete(Object obj) throws Throwable;

    void batchDeleteByIntPk(QueryCondition cond, Class<?> clazz) throws Throwable;

    void batchDeleteByStringPk(QueryCondition cond, Class<?> clazz) throws Throwable;

    // //////////////////////查询////////////////////////
    Object selectByPk(String pkName, long pkValue, Class<?> clazz) throws Throwable;

    Object selectByPk(String pkName, Object pkValue, Class<?> clazz) throws Throwable;

    QueryResult select(QueryCondition cond, Class<?> clazz) throws Throwable;

    QueryResult select(QueryCondition cond, Class<?> clazz, String dbSql, String countSql) throws Throwable;

    QueryResult select(String hql) throws Throwable;

    int selectCount(QueryCondition cond, Class<?> clazz) throws Throwable;

}
