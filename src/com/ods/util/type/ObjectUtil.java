/**
 * 包名：com.ods.util.type
 * 类名：ObjectUtil
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.type;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.apache.avalon.excalibur.util.StackIntrospector;
import org.apache.commons.beanutils.PropertyUtils;
 
import com.ods.util.web.WebUtil;

/**
 * 功能：一些通用的与对象相关的操作。 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */
public class ObjectUtil {

    /**
     * 访问调用栈的顶层索引。 使用Excalibure包中的scriptchpad中的StackIntrospector类。
     * 方法索引中，调用栈顶层的部分是StackIntrospector的内部信息，为2层；
     * 再加上调用getCallerMethodName()方法的一层，共需要减去3层。
     */
    private final static int INDEX_CALLER_METHOD = 3;

    // /////////////////////////////////////////////////////////////////
    /**
     * 判别两个对象是否相同。
     * 
     * @param o1 被判断的第1个对象
     * @param o2 被判断的第2个对象
     * @return =true 相等 =false 不相等
     */
    public static boolean equals(Object o1, Object o2) {
        return ((o1 == o2) || ((o1 != null) && (o1.equals(o2))));
    }

    public static boolean empty(Object o1) {
        return (null == o1 ? true: StringUtil.empty(o1.toString()));
    }

    /**
     * 获取不含有包名称的类名称
     * 
     * @param className 带包名的类名称
     * @return 类名
     */
    public static String getBaseClassName(String className) {
        return StringUtil.getLastSuffix(className, ".");
    }

    /**
     * 获取调用的包名称
     * 
     * @param className 类名称
     * @return 包名称
     */
    public static String getPackageName(String className) {
        return StringUtil.getLastPrefix(className, ".");
    }

    /**
     * 获取方法名称
     * 
     * @param whole 带类名的方法名称
     * @return 方法名
     */
    public static String getMethodName(String whole) {
        return StringUtil.getLastSuffix(whole, ".");
    }

    /**
     * 获取对象的hash码。
     * 
     * @param o 需要获取hash码的对象
     * @return =0 对象为空，否则为hash码
     */
    public static int hashCode(Object o) {
        return ((null == o) ? 0: o.hashCode());
    }

    // /////////////////////////////////////////////////////////////////
    // /////////////////////////////////////////////////////////////////
    /**
     * 获取调用的类名
     * 
     * @param clazz 类
     * @return 类名称
     */
    public static String toCallerClassName(Class<?> clazz) {
        String name = "";
        Class<?> caller = StackIntrospector.getCallerClass(clazz);
        if(null != caller) {
            name = caller.getName();
        }
        return name;
    }

    /**
     * 获取调用的方法名称
     * 
     * @return 方法名称
     */
    public static String getCallerMethodName() {
        String name = StackIntrospector.getCallerMethod(INDEX_CALLER_METHOD);
        if(null != name) {
            // 去掉结尾的参数
            name = name.substring(0, name.indexOf("("));
            // 去掉开头的包名
            name = name.substring(name.lastIndexOf(".") + 1);
        }
        return name;
    }

    /**
     * 拷贝对象属性，不抛出异常。
     * 
     * @param dest 目标对象
     * @param src 元对象
     */
    public static void copyPropertiesSafe(Object dest, Object src) {
        if((null == src) || (null == dest)) {
            return;
        }
        try {
            PropertyUtils.copyProperties(dest, src);
        } catch(Throwable e) {
            e.printStackTrace();
        }
    }

    /**
     * 获取对象的属性
     * 
     * @param object 对象
     * @param sProperty 对象的Bean属性
     * @return 对象的属性方法
     */
    public static Object getProperty(Object object, String sProperty) {
        if(null == object || null == sProperty) {
            return null;
        }
        try {
            return object.getClass().getMethod("get" + StringUtil.upperFirst(sProperty)).invoke(object, new Object[] {});
        } catch(Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 将对象转换成字符串输出
     * 
     * @param o 对象
     * @return 字符串
     */
    public static String toString(Object o) {
        if(null == o) {
            return "";
        }
        if(o instanceof Object[]) {
            return toArrayString((Object[]) o);
        } else if(o instanceof int[]) {
            return NumberUtil.toString((int[]) o);
        } else if(o instanceof long[]) {
            return NumberUtil.toString((long[]) o);
        } else if(o instanceof char[]) {
            return StringUtil.toString((char[]) o);
        } else if(o instanceof Calendar) {
            return TimeUtil.toString((Calendar) o);
        } else {
            return o.toString();
        }
    }

    /**
     * 将数组转换为字符串。
     * 
     * @param array 数组
     * @return 字符串
     */
    public static String toArrayString(Object[] array) {
        if(null == array) {
            return "count=0:[]";
        }

        StringBuffer s = new StringBuffer("count=").append(array.length).append(":[ ");
        for(int i = 0; i < array.length; i++) {
            if(i > 0) {
                s.append(", ");
            }
            Object obj = array[i];
            if(null == obj) {
                continue;
            } else if(obj instanceof Object[]) {
                s.append(ObjectUtil.toString((Object[]) obj));
            } else {
                s.append(obj.toString());
            }
        }
        s.append(" ]");
        return s.toString();
    }

    public static Object invokeNewObjectMethod(String objectClassName, String methodName) {
        try {
            Class<?> clazz = Class.forName(objectClassName);
            Object object = clazz.newInstance();
            Method method = clazz.getMethod(methodName, new Class[] {});
            return method.invoke(object, new Object[] {});
        } catch(Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 
     * 通过传入的参数，将相应的值通过反射设置到对应对象中.<br>
     * 工程名:odspsp<br>
     * 包名:com.ods.util.xml<br>
     * 方法名:invokeMethod方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2009-9-4
     * @param name:名称
     * @param object：节点对象
     * @param configValue:配置值
     * @throws Throwable:转化错误
     */
    public static void invokeSetGetMethod(String name, Object object, String configValue) throws Throwable {
        String methodName = "set" + Character.toUpperCase(name.charAt(0)) + name.substring(1);
        String getMethodName = "get" + Character.toUpperCase(name.charAt(0)) + name.substring(1);
        Method m = object.getClass().getMethod(getMethodName);
        Method method = object.getClass().getMethod(methodName, m.getReturnType());
        Object valueObj = typeConvert(m.getReturnType().getSimpleName(), configValue);
        method.invoke(object, valueObj);
    }

    /**
     * 系统在保存时用到的特殊字符的替换处理.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.util.type<br>
     * 方法名:saveReplaceSpecialCharacter方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2011-5-31
     * @param o
     * @throws Throwable
     * @throws
     */
    public static void saveReplaceSpecialCharacter(Object o) throws Throwable {
        Field[] fields = o.getClass().getDeclaredFields();
        String setMethodName = "";
        String getMethodName = "";
        Method getMethod = null;
        Method setMethod = null;
        List<String> specialCharacterList = null;
        String[] specialCharacters = null;
        String oldValue;
        for(Field field : fields) {
            if(StringUtil.equals("java.lang.String", field.getType().getName())) {
                setMethodName = "set" + Character.toUpperCase(field.getName().charAt(0)) + field.getName().substring(1);
                getMethodName = "get" + Character.toUpperCase(field.getName().charAt(0)) + field.getName().substring(1);
                try {
                    getMethod = o.getClass().getMethod(getMethodName);
                    setMethod = o.getClass().getMethod(setMethodName, new Class[] { String.class });
                } catch(Throwable e) {
                    continue;
                }
                oldValue = (String) getMethod.invoke(o, new Object[] {});

                if(!StringUtil.empty(oldValue)) {

                    // 特殊字符处理
                    specialCharacterList = WebUtil.getWebSystemSpecialCharacter();
                    for(String specialCharacter : specialCharacterList) {
                        specialCharacters = StringUtil.split(specialCharacter, "-");
                        oldValue = StringUtil.replace(oldValue, specialCharacters[1], specialCharacters[0]);
                        setMethod.invoke(o,
                                new Object[] { StringUtil.replace(oldValue, specialCharacters[0], specialCharacters[1]) });
                    }
                }
            }
        }
    }


    /**
     * 获取类指定属性的返回转换后的类型值.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.util.type<br>
     * 方法名:getFieldProperty方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2011-6-2
     * @param className
     * @param 
     * @return
     * @throws Throwable
     * @throws SecurityException
     */
    public static Object getFieldReturnType(Class<?> clazz, String fieldName, Object condVal) throws SecurityException, Throwable {
        String getMethodName = "get" + Character.toUpperCase(fieldName.charAt(0)) + fieldName.substring(1);
        String returnName = clazz.getMethod(getMethodName).getReturnType().getSimpleName();
        return typeConvert(returnName,String.valueOf(condVal) );
    }
    /**
     * 用于将参数的String类型的值转换为对象中需要的值.<br>
     * 工程名:odspsp<br>
     * 包名:com.ods.util.xml<br>
     * 方法名:typeConvert方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2009-8-3
     * @param className
     * @param value
     * @return Object 返回根据className转换后的value值
     */
    public static Object typeConvert(String className, String value) {
        if(className.equals("String")||className.equals("java.lang.String")) {
            return new String(value);
        } else if(className.equals("Integer") || className.equals("int")) {
            return Integer.valueOf(value);
        } else if(className.equals("long") || className.equals("Long")) {
            return Long.valueOf(value);
        } else if(className.equals("boolean") || className.equals("Boolean")) {
            return Boolean.valueOf(value);
        } else if(className.equals("Date")) {
            return new Date(NumberUtil.toLong(value, 0));
        } else if(className.equals("float") || className.equals("Float")) {
            return Float.valueOf(value);
        } else if(className.equals("double") || className.equals("Double")) {
            return Double.valueOf(value);
        } else {
            return null;
        }
    }

}
