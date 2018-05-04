/**
 * 包名：com.ods.util.spring
 * 类名：DBSpringHibernate
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.spring;

import com.ods.util.hibernate.HibernateHelper;
import com.ods.util.hibernate.SpringHibernate;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.type.ObjectUtil;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.HibernateTransactionManager; 
import org.springframework.orm.hibernate4.SessionFactoryUtils;
import org.springframework.transaction.support.TransactionTemplate;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.TransactionStatus;

/**
 * 功能：提供使用Hibernate操作持久层的实现方法,在业务方法中调用该类的方法操作持久层 创建者: 10325431@qq.com 修改者
 * 修改时间
 * 
 */
public class DBSpringHibernate implements SpringHibernate {

    /**
     * Spring和HIbernate整合并封装对实体数据的操作接口
     */
    private SpringHibernate springHibernate;
    
    private SessionFactory sessionFactory;

    public SpringHibernate getSpringHibernate() {
        return springHibernate;
    }

    public void setSpringHibernate(SpringHibernate springHibernate) {
        this.springHibernate = springHibernate;
    }
 

    /**
     *sessionFactory的获取.
     *@return sessionFactory值返回.
     */
    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    /**
     *sessionFactory的值设定
     *@param sessionFactory 设定sessionFactory的值.
     */
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    /**
     * Spring中进行手动事务处理的方法
     * 
     * @param obj 实体名称
     * @param tf 事务
     * @return 处理的对象
     */
    public Object transactionalAction(final Object[] obj, final TransactionalFunction tf) {
        HibernateTransactionManager tm = (HibernateTransactionManager) SpringBeanFactory.getBean("transactionManager");
        TransactionTemplate tt = new TransactionTemplate(tm);
        return tt.execute(new TransactionCallback() {
            public Object doInTransaction(TransactionStatus transactionStatus) {
                try {
                    return tf.doAction(obj);
                } catch(Throwable ex) {
                    throw new RuntimeException(ex);
                }
            }
        });
    }

    // ////////////////////////////////
    // 保存
    public Object save(Object obj) {
        Session session =  SessionFactoryUtils.openSession(sessionFactory);
        try {
            return session.save(obj);
        } finally {
            //SessionFactoryUtils.closeSession(session);
            session.flush();
            session.clear();
            session.close();
        } 
       // return getHibernateTemplate().save(obj);
    }

    // ////////////////////////////////
    // 单一对象修改
    public void update(Object obj) {
        // hibernate2.17中使用insertOrUpdate()方法
        // hibernate3.0以上使用merge()来合并两个session中的同一对象

        // getHibernateTemplate().update(obj);
        
        Session session =  SessionFactoryUtils.openSession(sessionFactory);
        try {
            session.merge(obj);
        } finally {
            //SessionFactoryUtils.closeSession(session);
            session.flush();
            session.clear();
            session.close();
        } 
       // getHibernateTemplate().merge(obj);
    }

    // 批量修改
    public void batchUpdate(QueryCondition qc, Class<?> clazz) throws Throwable {

       // Session session = getHibernateTemplate().getSessionFactory().openSession();
        Session session =  SessionFactoryUtils.openSession(sessionFactory);
        try {
            HibernateHelper.batchUpdateHqlByQueryCondition(session, clazz, qc);
        } finally {
            //SessionFactoryUtils.closeSession(session);
            session.flush();
            session.clear();
            session.close();
        }

    }

    // ///////////////////////////////
    // 根据主键进行删除
    public void delete(String pkName, Object pkValue, Class<?> clazz) throws Throwable {
        QueryCondition qc = new QueryCondition();
        qc.equals(pkName, pkValue);
        batchDeleteByIntPk(qc, clazz);
    }

    // 单一对象删除
    public void delete(Object obj) {
        Session session =  SessionFactoryUtils.openSession(sessionFactory);
        try {
            session.delete(obj);
        } finally {
            //SessionFactoryUtils.closeSession(session);
            session.flush();
            session.clear();
            session.close();
        } 
       
       // getHibernateTemplate().delete(obj);

    }

    // 数值主键执行批量删除
    public void batchDeleteByIntPk(QueryCondition cond, Class<?> clazz) throws Throwable {
       // Session session = getHibernateTemplate().getSessionFactory().openSession();
        Session session =  SessionFactoryUtils.openSession(sessionFactory);
        try {
            HibernateHelper.batchDeleteHqlByQueryCondition(session, clazz, cond);
        } finally {
            //SessionFactoryUtils.closeSession(session);
            session.flush();
            session.clear();
            session.close();
        }
    }

    // 字符串主键执行批量删除
    public void batchDeleteByStringPk(QueryCondition cond, Class<?> clazz) throws Throwable {
      //  Session session = getHibernateTemplate().getSessionFactory().openSession();
        Session session =  SessionFactoryUtils.openSession(sessionFactory);
        try {
            HibernateHelper.batchDeleteHqlByStringPkQueryCondition(session, clazz, cond);
        } finally {
            //SessionFactoryUtils.closeSession(session);
            session.flush();
            session.clear();
            session.close();
        }
    }

    // //////////////////////////////
    // 根据主键查询数据库
    public Object selectByPk(String pkName, long pkValue, Class<?> clazz) {

        Session session =  SessionFactoryUtils.openSession(sessionFactory);
        try {
            return selectByPk(pkName, new Long(pkValue), clazz);
        } finally {
            SessionFactoryUtils.closeSession(session);
            //session.flush();
            //session.clear();
            //session.close();
        }  
    }

    // 根据主键查询数据库
    public Object selectByPk(String pkName, Object pkValue, Class<?> clazz) {

        String className = ObjectUtil.getBaseClassName(clazz.getName()); // HibernateHelper.toAlias(clazz);
        String hql = "from  " + className + " c  where   c." + pkName + "='" + pkValue + "'";
        //List<?> list = getHibernateTemplate().find(hql);

        Session session =  SessionFactoryUtils.openSession(sessionFactory);
        try { 
            List<?> list =session.createQuery(hql).list();
            if(list.size() > 0) {
                return list.get(0);
            } else {
                return null;
            }
        } finally {
            SessionFactoryUtils.closeSession(session);
            //session.flush();
            //session.clear();
            //session.close();
        } 
    }

    // 根据qc的组合条件进行结果集查询
    public QueryResult select(QueryCondition cond, Class<?> clazz) throws Throwable {
        QueryResult qr = new QueryResult();

       // Session session = getHibernateTemplate().getSessionFactory().openSession();
        //Session session =  sessionFactory.getCurrentSession();
        Session session = SessionFactoryUtils.openSession(sessionFactory);
        try {
            HibernateHelper.selectHqlByQueryCondition(session, clazz, cond, qr);
        } finally {
            SessionFactoryUtils.closeSession(session);
            //session.flush();
            //session.clear();
            //session.close();
        }
        return qr;
    }

    // 使用原生的数据库sql进行查询
    public QueryResult select(QueryCondition cond, Class<?> clazz, String dbSql, String countDbSql) throws Throwable {
        QueryResult qr = new QueryResult();

        //Session session = getHibernateTemplate().getSessionFactory().openSession();
        Session session =  SessionFactoryUtils.openSession(sessionFactory);
        try {
            HibernateHelper.selectDbSql(session, clazz, cond, qr, dbSql, countDbSql);
        } finally {
            SessionFactoryUtils.closeSession(session);
            //session.flush();
            //session.clear();
            //session.close();
        }

        return qr;
    }

    // 通过hql直接查询
    @SuppressWarnings("unchecked")
    public QueryResult select(String hql) throws Throwable {
       // Session session = getHibernateTemplate().getSessionFactory().openSession();
        Session session =  SessionFactoryUtils.openSession(sessionFactory);
        try { 
            Query query = session.createQuery(hql);
            List<Query> listQuery = query.list();
            QueryResult qr = new QueryResult();
            qr.addAll(listQuery);
            return qr;
        } finally { 
            SessionFactoryUtils.closeSession(session);
            //session.flush();
            //session.clear();
            //session.close();
        }
    }

    // 根据qc的组合条件进行结果集查询
    public int selectCount(QueryCondition cond, Class<?> clazz) throws Throwable {
        int countValue = 0;
        //Session session = getHibernateTemplate().getSessionFactory().openSession();
        Session session =  SessionFactoryUtils.openSession(sessionFactory);
        try {
            countValue = HibernateHelper.selectCountHqlByQueryCondition(session, clazz, cond);
        } finally {
            SessionFactoryUtils.closeSession(session);
            //session.flush();
            //session.clear();
            //session.close();
        }
        return countValue;
    }

}
