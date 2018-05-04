/**
 * 包名：com.ods.util
 * 类名：GenderSerialVersionUID
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util;

/**
 * 功能：产生JavaBean的序列化编号
 * 创建者: 10325431@qq.com
 * 修改者                   修改时间
 *   
 */
public class GenderSerialVersionUID {

    public static void main(String[] args) throws ClassNotFoundException {

        String strClassName="com.ods.rbac.data.login.LoginUser";

        Class<?> cl = Class.forName(strClassName.trim());
        java.io.ObjectStreamClass osc = java.io.ObjectStreamClass.lookup(cl);
        System.out.println(" /**\r\n  * 序列化时为了保持版本的兼容性，即在版本升级时反序列化仍保持对象的唯一性\r\n  */");
        System.out.println(" private static final long serialVersionUID ="+osc.getSerialVersionUID()+"L;");
    }
}
