/**
 * 包名：com.ods.util.resource
 * 类名：ResourceUtil
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.resource;

import com.ods.util.type.StringUtil;
import com.ods.util.web.html.BaseHtmlOption;
import java.util.*;
import org.apache.avalon.excalibur.i18n.Resources;

/**
 * 功能：读取资源公用类
 * 创建者: 10325431@qq.com
 * 创建时间:2009-4-5 13:41:52
 * 修改者                   修改时间
 *
 */
public class ResourceUtil {

    public static final String SEPERATOR = ".";

    private static Resources getResources() {
        return ResourceAdapter.getResources();
    }

    public static String getResourceString(String key) {
        return ResourceAdapter.getResourceString(key);
    }

    public static String getResourceString(String key,
            Object arg1) {
        return ResourceAdapter.getResourceString(key, arg1);
    }

    public static String getResourceString(String key,
            Object[] arg) {
        return ResourceAdapter.getResourceString(key, arg);
    }

    public static String getResourceString(String key,
            Object arg1, Object arg2) {
        return ResourceAdapter.getResourceString(key, arg1, arg2);
    }

    public static String getResourceString(String key,
            Object arg1, Object arg2, Object arg3) {
        return ResourceAdapter.getResourceString(key, arg1, arg2, arg3);
    }

    public static String getResourceString(String key,
            Object arg1, Object arg2, Object arg3, Object arg4) {
        return ResourceAdapter.getResourceString(key, arg1, arg2, arg3, arg4);
    }

    public static String getResourceString(String key,
            Object arg1, Object arg2, Object arg3, Object arg4, Object arg5) {
        return ResourceAdapter.getResourceString(key, arg1, arg2, arg3, arg4, arg5);
    }

    ///////////////////////////////////////////////////////////////////
    /**
     * 返回定义了以“object对象附加上subkey为主键”的资源的key。如果本类没有，则一直找到父类为止
     * @param object
     * @param subkey
     * @param defaultKey
     * @return
     */
    public static String getObjectFieldResourceKey(Object object, String subkey, String defaultKey) {
        String key = defaultKey;
        Class<?> clazz = object.getClass();

        // 循环寻找父类
        String resouceString;
        resouceString = getResourceString(clazz.getName() + subkey);
        while (StringUtil.empty(resouceString)) {
            clazz = clazz.getSuperclass();
            if (null == clazz) {
                break;
            }
            resouceString = getResourceString(clazz.getName() + subkey);
        }

        if (!StringUtil.empty(resouceString)) {
            key = clazz.getName() + subkey;
        }

        return key;
    }

    /**
     * 返回object对象附加上subkey为主键的资源定义。如果object没有该取值，则一直找到父类为止
     * @param object
     * @param subkey
     * @return
     */
    public static String getObjectFieldResource(Object object, String subkey) {
        Class<?> clazz;
        if (object instanceof Class) {
            clazz = (Class<?>) object;
        } else {
            clazz = object.getClass();
        }

        // 循环寻找父类
        String resouceString;
        resouceString = getResourceString(clazz.getName() + subkey);
        while (StringUtil.empty(resouceString)) {
            clazz = clazz.getSuperclass();
            if (null == clazz) {
                break;
            }
            resouceString = getResourceString(clazz.getName() + subkey);
        }

        if (StringUtil.empty(resouceString)) {
            return "";
        }

        return resouceString;
    }

    /**
     * 返回object对象为主键的资源定义。如果object没有该取值，则一直找到父类为止
     * @param object
     * @return
     */
    public static String getObjectClassResource(Object object) {
        Class<?> clazz;
        if (object instanceof Class) {
            clazz = (Class<?>) object;
        } else {
            clazz = object.getClass();
        }

        // 循环寻找父类
        String resouceString;
        resouceString = getResourceString(clazz.getName());
        //???? TODO 这种实现限制了不允许资源中设置空串
        while (StringUtil.empty(resouceString)) {
            clazz = clazz.getSuperclass();
            if (null == clazz) {
                break;
            }
            resouceString = getResourceString(clazz.getName());
        }

        if (StringUtil.empty(resouceString)) {
            return "";
        }

        return resouceString;
    }

    public static String getClassFieldValueResource(Class<?> clazz, String field) {
        return getObjectFieldResource(clazz, SEPERATOR + field);
    }

    public static String getClassFieldValueResource(Class<?> clazz, String field, String value) {
        return getObjectFieldResource(clazz, SEPERATOR + field + SEPERATOR + value);
    }

    public static String getClassFieldValueResource(Class<?> clazz, String field, String value, String subvalue) {
        return getObjectFieldResource(clazz, SEPERATOR + field + SEPERATOR + value + SEPERATOR + subvalue);
    }

    public static String getClassFieldValueResource(Class<?> clazz, String field, String value, int subvalue) {
        return getObjectFieldResource(clazz, SEPERATOR + field + SEPERATOR + value + SEPERATOR + subvalue);
    }

    public static String getClassFieldValueResource(Class<?> clazz, String field, int value) {
        return getObjectFieldResource(clazz, SEPERATOR + field + SEPERATOR + value);
    }

    public static String getClassFieldValueResource(Class<?> clazz, String field, int value, int subvalue) {
        return getObjectFieldResource(clazz, SEPERATOR + field + SEPERATOR + value + SEPERATOR + subvalue);
    }


    ///////////////////////////////////////////////////////////////////////////
    /**
     * 获得在资源文件中定义的clazz类对应的field属性的所有枚举取值的列表。
     * @param clazz
     * @param field
     * @return 元素类型为BaseHtmlOption， 其中的label是资源中定义的描述，value是资源中定义的枚举取值
     */
    public static List<BaseHtmlOption> getClassFieldValueResourceList(Class<?> clazz, String field) {
        return getClassFieldValueResourceList(clazz, field, (String[]) null);
    }

    public static List<BaseHtmlOption> getClassFieldValueResourceList(Class<?> clazz, String field, String[] excludeValueSet) {
        // 按照value进行排序
        TreeSet<BaseHtmlOption> set = new TreeSet<BaseHtmlOption>();
        final String prefix = clazz.getName() + SEPERATOR + field + SEPERATOR;
        ResourceBundle rb = getResources().getBundle();
        Enumeration<?> keys = rb.getKeys();
        while (keys.hasMoreElements()) {
            String key = (String) keys.nextElement();
            if (key.startsWith(prefix) && (key.length() > prefix.length())) {
                String value = key.substring(prefix.length());
                // 过滤掉下一级
                int sepIndex = value.indexOf(SEPERATOR);
                if (sepIndex > 0) {
                    continue;
                }
                //
                boolean add = true;
                if (excludeValueSet != null) {
                    for (int i = 0; i < excludeValueSet.length; i++) {
                        String v = excludeValueSet[i];
                        if (value.equals(v)) {
                            add = false;
                            break;
                        }
                    }
                }
                if (add) {
                    String label = rb.getString(key);
                    BaseHtmlOption bho = new BaseHtmlOption(label, value);
                    set.add(bho);
                }
            }
        }

        List<BaseHtmlOption> list = new ArrayList<BaseHtmlOption>();
        for (Iterator<BaseHtmlOption> it = set.iterator(); it.hasNext();) {
            BaseHtmlOption bho = (BaseHtmlOption) it.next();
            list.add(bho);
        }
        return list;
    }

    public static List<BaseHtmlOption> getClassFieldValueResourceList(Class<?> clazz, String field, String value) {
        return getClassFieldValueResourceList(clazz, field + SEPERATOR + value);
    }

    /**
     * 获得在资源文件中定义的suffix后缀结尾的所有的前缀资源的列表
     * @param suffix 结束后缀
     * @return 元素类型为BaseHtmlOption， 其中的label是资源中定义的描述，value是资源中定义的枚举取值
     */
    public static List<BaseHtmlOption> getPrefixOfSuffixResourceList(String suffix) {
        suffix = SEPERATOR + suffix;

        // 按照value进行排序
        TreeSet<BaseHtmlOption> set = new TreeSet<BaseHtmlOption>();
        ResourceBundle rb = getResources().getBundle();
        Enumeration<?> keys = rb.getKeys();
        while (keys.hasMoreElements()) {
            String key = (String) keys.nextElement();
            if (key.endsWith(suffix) && (key.length() > suffix.length())) {
                String value = key.substring(0, key.length() - suffix.length());
                // 过滤掉下一级
                String label = rb.getString(value);
                BaseHtmlOption bho = new BaseHtmlOption(label, value);
                set.add(bho);
            }
        }

        List<BaseHtmlOption> list = new ArrayList<BaseHtmlOption>();
        for (Iterator<BaseHtmlOption> it = set.iterator(); it.hasNext();) {
            BaseHtmlOption bho = (BaseHtmlOption) it.next();
            list.add(bho);
        }
        return list;
    }
}
