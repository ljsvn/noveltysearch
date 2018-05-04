/**
 *copyright(C)2009
 *陕西Ods信息技术软件有限公司软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.type;

/**
 * 功能：提供布尔值方法类 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */
public class BooleanUtil {

    // /////////////////////////////////////////////////////////////////

    public static boolean toBoolean(String str) {
        return toBoolean(str, false);
    }

    public static boolean toBoolean(String str, boolean defaultValue) {
        if(StringUtil.empty(str))
            return defaultValue;
        try {
            return toRawBoolean(str);
        } catch(Exception e) {
            e.printStackTrace();
            return defaultValue;
        }
    }

    public static boolean toRawBoolean(String str) throws Exception {
        return "true".equalsIgnoreCase(str.trim());
    }
}
