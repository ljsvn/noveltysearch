/**
 * 包名：com.ods.util.hibernate.query
 * 类名：BetweenEntry
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.hibernate.query;

/**
 * 功能：查询条件范围实体类
 * 创建者: pu_xiaolong@sina.com
 * 修改者                   修改时间
 * 
 */
public class BetweenEntry {

    /**
     * 两者之间开始值对象
     */
    Object object1;
    /**
     * 两者之间最大值对象
     */
    Object object2;

    /**
     * 通过构造函数设置两者之间最大最小值对象
     * @param object1 两者之间开始值对象
     * @param object2 两者之间最大值对象
     */
    public BetweenEntry(Object object1, Object object2) {
        this.object1 = object1;
        this.object2 = object2;
    }

    public Object getObject1() {
        return object1;
    }

    public void setObject1(Object object1) {
        this.object1 = object1;
    }

    public Object getObject2() {
        return object2;
    }

    public void setObject2(Object object2) {
        this.object2 = object2;
    }
}
