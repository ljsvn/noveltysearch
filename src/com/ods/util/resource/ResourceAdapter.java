/**
 * 包名：com.ods.util.resource
 * 类名：ResourceAdapter
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.resource;

import com.ods.util.type.StringUtil;
import java.text.MessageFormat;
import org.apache.avalon.excalibur.i18n.Resources;

/**
 * 功能：资源实现裁剪器
 * 创建者: 10325431@qq.com
 * 创建时间:2009-4-5 13:46:57
 * 修改者                   修改时间
 *
 */
public class ResourceAdapter {
    
    public static String resourcePrefix = ResourceManager.RESOURCES;

    public static String getResourcePrefix() {
        return resourcePrefix;
    }

    public static void setResourcePrefix(String resourcePrefix) {
        ResourceAdapter.resourcePrefix = resourcePrefix;
    }

    ///////////////////////////////////////////////////////////////////
    public static Resources getResources() {
        return ResourceManager.getBaseResources(resourcePrefix);
    }

    public static String getResourceString(String key) {
        return getResourceString(key, null);
    }

    public static String getResourceString(String key,
            Object arg1) {
        return getResourceString(key, new Object[]{arg1});
    }

    public static String getResourceString(String key,
            Object arg1, Object arg2) {
        return getResourceString(key, new Object[]{arg1, arg2});
    }

    public static String getResourceString(String key,
            Object arg1, Object arg2, Object arg3) {
        return getResourceString(key, new Object[]{arg1, arg2, arg3});
    }

    public static String getResourceString(String key,
            Object arg1, Object arg2, Object arg3, Object arg4) {
        return getResourceString(key, new Object[]{arg1, arg2, arg3, arg4});
    }

    public static String getResourceString(String key,
            Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) {
        return getResourceString(key, new Object[]{arg1, arg2, arg3, arg4, arg5});
    }

    public static String getResourceString(String key, Object[] args) {
        if (StringUtil.empty(key)) {
            return "";
        }
        String str = "";
        try {
            if (args != null) {
                for (int i = 0; i < args.length; i++) {
                    Object arg = args[i];
                    if (arg == null) {
                        args[i] = "";
                    }
                }
            }
            str = getResources().getString(key);
        } catch (Throwable e) {
            str = "";
        }
        // 去掉前后的空格
        if (!StringUtil.empty(str)) {
            str = str.trim();
        }
        // 带有参数的getResources()方法在没有找到资源时，不抛出异常，而是返回如下开头的字符串。这里进行过滤。
        if (!StringUtil.zero(str)) {
            if (str.startsWith("Unknown resource. Bundle: ")) {
                str = "";
            }
        }
        try {
            return MessageFormat.format(str, args);
        } catch (Exception e) {
            return str;
        }
    }

}
