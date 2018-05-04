/**
 * 包名：com.ods.util.resource
 * 类名：ObjectResource
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.resource;

import com.ods.util.type.ObjectUtil;
import com.ods.util.type.StringUtil;
import com.ods.util.type.TimeUtil;
import java.text.MessageFormat;
import java.util.Calendar;

/**
 * 功能：对象资源工具
 * 创建者: 10325431@qq.com
 * 创建时间:2009-4-10 15:07:52
 * 修改者                   修改时间
 *
 */
public class ObjectResource {

    public final static String STYLE_FIELD_NAME = "field-name";
    public final static String STYLE_FIELD_VALUE = "field-value";
    public final static String STYLE_VALUE_LEFT = "{";
    public final static String STYLE_VALUE_RIGHT = "}";
    public final static String STYLE_MULTI_SEPERATOR = ";";
    public final static String STYLE_SINGLE_SEPERATOR = ":";
    public final static int CONTROL_ARGUMENT_NUM_MAX = 10;
    public final static String STYLE_FORMAT_TIME = "yyyy-MM-dd HH:mm:ss";

    public static String getControlResourceKey(String key, int argIndex) {
        return "." + key + "." + argIndex;
    }

    ///////////////////////////////////////////////////////////////////
    public static String getObjectResource(String key, Object obj) {
        String val = ResourceUtil.getResourceString(key);

        String[] arg = new String[CONTROL_ARGUMENT_NUM_MAX];
        for (int i = 0; i < CONTROL_ARGUMENT_NUM_MAX; i++) {
            arg[i] = "";

            String ctrlKey = getControlResourceKey(key, i);
            String ctrlVal = ResourceUtil.getResourceString(ctrlKey);
            if (StringUtil.empty(ctrlVal)) {
                continue;
            }

            ctrlVal = ctrlVal.substring(ctrlVal.indexOf(STYLE_VALUE_LEFT) + 1, ctrlVal.lastIndexOf(STYLE_VALUE_RIGHT));
            String[] style = StringUtil.split(ctrlVal, STYLE_MULTI_SEPERATOR);
            for (int j = 0; j < style.length; j++) {
                String[] field = StringUtil.split(style[j], STYLE_SINGLE_SEPERATOR);
                if (field.length != 2) {
                    continue;
                }
                arg[i] = getObjectField(obj, field[0].trim(), field[1].trim());
            }
        }

        return MessageFormat.format(val, (Object) arg);
    }

    ///////////////////////////////////////////////////////////////////
    private static String getObjectField(Object obj, String fieldKey, String fieldVal) {
        if (STYLE_FIELD_NAME.equalsIgnoreCase(fieldKey)) {
            return getObjectFieldName(obj, fieldVal);
        } else if (STYLE_FIELD_VALUE.equalsIgnoreCase(fieldKey)) {
            return getObjectFieldValue(obj, fieldVal);
        }
        return "";
    }

    private static String getObjectFieldName(Object obj, String field) {
        //???? TODO 本类没有定义资源时，在父类中寻找。
        //String key = obj.getClass().getName() + "." + field;
        //return ResourceUtil.getResourceString( key );
        return ResourceUtil.getObjectFieldResource(obj, "." + field);
    }

    private static String getObjectFieldValue(Object obj, String field) {
        Object val = ObjectUtil.getProperty(obj, field);
        if (null == val) {
            return "";
        }

        if (val instanceof Calendar) {
            // get time format value
            return TimeUtil.toString((Calendar) val, STYLE_FORMAT_TIME);
        } else {
            String res = ResourceUtil.getObjectFieldResource(obj, "." + field + "." + val.toString());

            if (!StringUtil.empty(res)) {
                return res;
            }
            // get real value
            return val.toString();
        }

    //return val.toString();
    }
}
