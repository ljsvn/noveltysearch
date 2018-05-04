/**
 * 包名：com.ods.util.resource
 * 类名：ResourceManager
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.resource;

import org.apache.avalon.excalibur.i18n.Resources;

import java.util.HashMap;

/**
 * 功能：资源管理类
 * 创建者: 10325431@qq.com
 * 创建时间:2009-4-5 13:47:43
 * 修改者                   修改时间
 *
 */
public class ResourceManager {

    public static final String RESOURCES = "Resources";
    private static final HashMap<Object, Object> c_resources = new HashMap<Object, Object>();

    public static final Resources getBaseResources(String baseName) {
        return getBaseResources(baseName, null);
    }

    public static final Resources getBaseResources(String baseName, ClassLoader classLoader) {
        Resources packet = (Resources) c_resources.get(baseName);
        if (null == packet) {
            packet = new Resources(baseName, classLoader);
        }
        return packet;
    }

    public static final Resources getResources(String resource) {
        return getBaseResources(resource + "." + RESOURCES);
    }

    public static final Resources getPackageResources(Class<?> clazz) {
        return getBaseResources(getPackageResourcesBaseName(clazz), clazz.getClassLoader());
    }

    public static final Resources getClassResources(Class<?> clazz) {
        return getBaseResources(getClassResourcesBaseName(clazz), clazz.getClassLoader());
    }

    public static final String getPackageResourcesBaseName(Class<?> clazz) {
        Package pkg = clazz.getPackage();
        String baseName;
        if (null == pkg) {
            String name = clazz.getName();
            if (-1 == name.lastIndexOf(".")) {
                baseName = RESOURCES;
            } else {
                baseName = name.substring(0, name.lastIndexOf(".")) + "." + RESOURCES;
            }
        } else {
            baseName = pkg.getName() + "." + RESOURCES;
        }
        return baseName;
    }

    public static final String getClassResourcesBaseName(Class<?> clazz) {
        return clazz.getName() + RESOURCES;
    }

    private ResourceManager() {
    }
}
