/**
 * 包名：com.ods.util.hibernate
 * 类名：DBHibernateLazyAction
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.hibernate;

import com.ods.util.hibernate.query.QueryResult;

/**
 * 功能：在hibernate中执行惰性结果集处理的接口
 * 创建者: 10325431@qq.com
 * 修改者                   修改时间
 * 
 */
public interface DBHibernateLazyAction {

    public void doAction(QueryResult qr);
}
