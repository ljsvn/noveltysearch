/**
 * 包名：com.ods.util.spring
 * 类名：TransactionalFunction
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.spring;

/**
 * 功能：在spring中执行事物的接口 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */
public interface TransactionalFunction {

    public Object doAction(Object[] obj) throws Throwable;
}
