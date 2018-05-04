/**
 * 包名：com.ods.util.type
 * 类名：NumberUtil
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.type;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.regex.Pattern;

/**
 * 功能：对Java中的数字处理进行封装 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */
public class NumberUtil {

    /**
     * 数字格式化对象
     */
    private final static NumberFormat theNumberFormatter = NumberFormat.getNumberInstance();

    // /////////////////////////////////////////////////////////////////
    /**
     * 判断一个字符串是否为long型
     * 
     * @param str 被判断的字符串
     * @return =true 是long型的字符串 =false 不是long型的字符串
     */
    public static boolean isLong(String str) {
        @SuppressWarnings("unused")
        long l;
        try {
            l = Long.parseLong(str);
        } catch(Exception e) {
            return false;
        }
        return true;
    }

    /**
     * 判断一个字符串是否为int型
     * 
     * @param str 被判断的字符串
     * @return =true 是int型的字符串 =false 不是int型的字符串
     */
    public static boolean isInteger(String str) {
        try {
            Integer.parseInt(str);
        } catch(Exception e) {
            return false;
        }
        return true;
    }

    /**
     * 把浮点型转换成含有指定小数点位数的字符串
     * 
     * @param num 浮点型数字
     * @param fractionDigit 小数点位数
     * @return 带指定小树位数的浮点字符串
     */
    public static String toString(double num, int fractionDigit) {
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumIntegerDigits(1);
        nf.setMinimumFractionDigits(fractionDigit);
        nf.setMaximumFractionDigits(fractionDigit);

        return nf.format(num);
    }

    /**
     * 把一个浮点型数字转换成字符串
     * 
     * @param num 要转换的浮点型数值
     * @return 带小数点的字符串
     */
    public static String toString(double num) {
        NumberFormat f = NumberFormat.getInstance();
        if(f instanceof DecimalFormat) {
            ((DecimalFormat) f).setDecimalSeparatorAlwaysShown(true);
        }
        f.setParseIntegerOnly(true);
        return f.format(num);
    }

    // /////////////////////////////////////////////////////////////////
    /**
     * 把一个字符串转换成整数
     * 
     * @param str 整型字符串
     * @return 整型数字
     */
    public static int toInt(String str) {
        return toInt(str, 0);
    }

    /**
     * 把一个字符串转换成整数對象
     * 
     * @param str 整型字符串
     * @return 整型数字
     */
    public static Integer toIntObject(String str) {
        return new Integer(str);
    }

    /**
     * 把一个字符串转换成整数，如果字符串為空就返回指定整形值
     * 
     * @param str 整型字符串
     * @param defaultValue 默認的整型值
     * @return 整型数字
     */
    public static int toInt(String str, int defaultValue) {
        if(StringUtil.empty(str)) {
            return defaultValue;
        }
        try {
            if(!isInteger(str)) {
                return defaultValue;
            }
            return toRawInt(str);
        } catch(Exception e) {
            e.printStackTrace();
            return defaultValue;
        }
    }

    /**
     * 把一个字符串转换成整数
     * 
     * @param str 要转换的字符串
     * @return 整数
     * @throws java.lang.Exception 转换错误的返回值
     */
    public static int toRawInt(String str) throws Exception {
        return Integer.parseInt(str.trim());
    }

    public static int toFormattedInt(String str) {
        return toFormattedInt(str, 0);
    }

    /**
     * 把一个字符串转换成整数，如果字符串为空或转换错误就返回缺省值
     * 
     * @param str 被转换的字符串
     * @param defaultValue 缺省值
     * @return 转换后的整数
     */
    public static int toFormattedInt(String str, int defaultValue) {
        if(StringUtil.empty(str)) {
            return defaultValue;
        }
        try {
            return toRawFormattedInt(str);
        } catch(Exception e) {
            e.printStackTrace();
            return defaultValue;
        }
    }

    /**
     * 把一个字符串转换成整数
     * 
     * @param str 被转换的字符串
     * @return 转换后的整数
     * @throws java.lang.Exception 转换错误
     */
    public static int toRawFormattedInt(String str) throws Exception {
        return Integer.parseInt(theNumberFormatter.parse(str.trim()).toString());
    }

    // /////////////////////////////////////////////////////////////////
    /**
     * 把字符串转换为long型，转换失败就返回0L
     * 
     * @param str 需要转换的字符串
     * @return 转换后的Long型数字
     */
    public static long toLong(String str) {
        return toLong(str, 0L);
    }

    /**
     * 把字符串转换为Long型
     * 
     * @param str 需要转换的字符串
     * @return 转换后的long型数字
     */
    public static Long toLongObject(String str) {
        return new Long(str.trim());
    }

    /**
     * 把字符串转换为Long型，转换失败就返回指定缺省值
     * 
     * @param str 需要转换的字符串
     * @param defaultValue 指定的缺省字符串
     * @return 转换后的Long型数字
     */
    public static Long toLongObject(String str, long defaultValue) {
        if(StringUtil.empty(str)) {
            return new Long(defaultValue);
        }
        return new Long(str.trim());
    }

    /**
     * 把字符串转换为long型，转换失败就返回指定缺省值
     * 
     * @param str 需要转换的字符串
     * @param defaultValue 指定的缺省字符串
     * @return 转换后的long型数字
     */
    public static long toLong(String str, long defaultValue) {
        if(StringUtil.empty(str)) {
            return defaultValue;
        }
        try {
            return toRawLong(str);
        } catch(Exception e) {
            e.printStackTrace();
            return defaultValue;
        }
    }

    /**
     * 把字符串转换成long型
     * 
     * @param str 需要转换的字符串
     * @return 转换后的long型数字
     * @throws java.lang.Exception 转换失败错误
     */
    public static long toRawLong(String str) throws Exception {
        return Long.parseLong(str.trim());
    }

    /**
     * 把字符串转换为long型，转换错误就返回0L
     * 
     * @param str 需要转换的字符串
     * @return 转换后的字符串
     */
    public static long toFormattedLong(String str) {
        return toFormattedLong(str, 0L);
    }

    /**
     * 把字符串转换成long型，转换错误就返回指定的缺省值
     * 
     * @param str 需要转换的字符串
     * @param defaultValue 指定的缺省值
     * @return 转换后的long型数字
     */
    public static long toFormattedLong(String str, long defaultValue) {
        if(StringUtil.empty(str)) {
            return defaultValue;
        }
        try {
            return toRawFormattedLong(str);
        } catch(Exception e) {
            e.printStackTrace();
            return defaultValue;
        }
    }

    /**
     * 把字符串转换成long型
     * 
     * @param str 转换的字符串
     * @return 转换后的long型数字
     * @throws java.lang.Exception 转换失败的错误
     */
    public static long toRawFormattedLong(String str) throws Exception {
        return Long.parseLong(theNumberFormatter.parse(str.trim()).toString());
    }

    // /////////////////////////////////////////////////////////////////
    /**
     * 把字符串转换成浮点型数字，转换失败就返回0.0
     * 
     * @param str 转换的字符串
     * @return 转换后的浮点数字
     */
    public static double toDouble(String str) {
        return toDouble(str, 0.0);
    }

    /**
     * 指定给定的double的小数位数
     * 
     * @param num 浮点数
     * @param fractionDigit 小数位数
     * @return 指定小数位数的浮点数
     */
    public static double toDouble(double num, int fractionDigit) {
        String d = toString(num, fractionDigit);
        return toDouble(d, 0.00);
    }

    /**
     * 把字符串转换为浮点型，转换失败就返回指定缺省值
     * 
     * @param str 需转换的字符串
     * @param defaultValue 指定的缺省值
     * @return 转换好的浮点数字
     */
    public static double toDouble(String str, double defaultValue) {
        if(StringUtil.empty(str)) {
            return defaultValue;
        }
        try {
            return toRawDouble(str);
        } catch(Exception e) {
            e.printStackTrace();
            return defaultValue;
        }
    }

    /**
     * 把字符串转换成浮点型数字
     * 
     * @param str 转换的字符串
     * @return 转换后的浮点数字
     * @throws Exception 转换失败错误
     */
    public static double toRawDouble(String str) throws Exception {
        return Double.parseDouble(str.trim());
    }

    /**
     * 把字符串转换成浮点型数字，转换失败就返回0.0
     * 
     * @param str 转换的字符串
     * @return 转换后的浮点数字
     */
    public static double toFormattedDouble(String str) {
        return toFormattedDouble(str, 0.0);
    }

    /**
     * 把字符串转换为浮点型数字，转换失败就返回缺省值
     * 
     * @param str 需要转换的字符串
     * @param defaultValue 转换的缺省值
     * @return 转换后的浮点型数字
     */
    public static double toFormattedDouble(String str, double defaultValue) {
        if(StringUtil.empty(str)) {
            return defaultValue;
        }
        try {
            return toRawFormattedDouble(str);
        } catch(Exception e) {
            e.printStackTrace();
            return defaultValue;
        }
    }

    /**
     * 把字符串转换为浮点型数字
     * 
     * @param str 需要转换的字符串
     * @return 浮点型数字
     * @throws java.lang.Exception 转换错误
     */
    public static double toRawFormattedDouble(String str) throws Exception {
        return Double.parseDouble(theNumberFormatter.parse(str.trim()).toString());
    }

    // /////////////////////////////////////////////////////////////////
    /**
     * 把整数数组转化成整数对象数组
     * 
     * @param set 整数数组
     * @return 证书对象数组
     */
    public static Integer[] toIntegerObjectSet(int[] set) {
        if(set == null) {
            return null;
        }
        Integer[] s = new Integer[set.length];
        for(int i = 0; i < set.length; i++) {
            s[i] = new Integer(set[i]);
        }
        return s;
    }

    // /////////////////////////////////////////////////////////////////
    /**
     * 将字符串按照delim分隔符进行分割，并转化成数组
     * 
     * @param str 字符串
     * @param delim 分隔符
     * @return 整数数组
     */
    public static int[] splitToIntSet(String str, String delim) {
        int[] intSet = new int[0];
        String[] strSet = StringUtil.split(str, delim);
        if(null == strSet) {
            return intSet;
        }
        for(int i = 0; i < strSet.length; i++) {
            try {
                intSet = ArrayUtil.addIntArray(intSet, toRawInt(strSet[i]));
            } catch(Exception e) {
            }
        }
        return intSet;
    }

    /**
     * 将set数组合并成以delim为分割符的字符串
     * 
     * @param set 整型数组
     * @param delim 分割符
     * @return 带delim分隔符的字符串
     */
    public static String join(int[] set, String delim) {
        if((null == set) || (set.length <= 0)) {
            return "";
        }
        StringBuffer sb = new StringBuffer();
        sb.append(set[0]);
        for(int i = 1; i < set.length; i++) {
            sb.append(delim);
            sb.append(set[i]);
        }
        return sb.toString();
    }

    // /////////////////////////////////////////////////////////////////

    /**
     * 调整整数的范围
     * 
     * @param old 被调整的整数值
     * @param min 调整最小值
     * @param max 调整最大值
     * @return 调整后的整数
     */
    public static final int adjustRange(int old, int min, int max) {
        if(old < min) {
            old = min;
        }
        if(old > max) {
            old = max;
        }
        return old;
    }

    /**
     * 调整整数的范围
     * 
     * @param old 被调整的整数值
     * @param min 调整最小值
     * @return 调整后的整数
     */
    public static final int adjustMinRange(int old, int min) {
        if(old < min) {
            old = min;
        }
        return old;
    }

    /**
     * 调整整数的范围
     * 
     * @param old 被调整的整数值
     * @param max 调整最大值
     * @return 调整后的整数
     */
    public static final int adjustMaxRange(int old, int max) {
        if(old > max) {
            old = max;
        }
        return old;
    }

    /**
     * 将数组转换为字符串。
     * 
     * @param array 长整型数组
     * @return 字符串
     */
    public final static String toString(long[] array) {
        if(null == array) {
            return "count=0:[]";
        }

        String s = "count=" + array.length + ":[ ";
        for(int i = 0; i < array.length; i++) {
            if(i > 0) {
                s += ", ";
            }
            s += array[i];
        }
        s += " ]";
        return s;
    }

    /**
     * 将整型数组转换成字符串
     * 
     * @param array 整型数组
     * @return 字符串
     */
    public final static String toString(int[] array) {
        if(null == array) {
            return "count=0:[]";
        }

        String s = "count=" + array.length + ":[ ";
        for(int i = 0; i < array.length; i++) {
            if(i > 0) {
                s += ", ";
            }
            s += array[i];
        }
        s += " ]";
        return s;
    }

    /**
     * 把阿拉伯数字转换成大写数字.<br>
     *工程名:odscati<br>
     *包名:com.ods.util.type<br>
     *方法名:parseNumber方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2009-7-18
     *@param num：小写阿拉伯数字
     *@return 转换后的数字
     */
    public final static String parseNumber(int num) {
        String[] digit = new String[] { "0", "一", "二", "三", "四", "五", "六", "七", "八", "九" };
        String[] unit = new String[] { "#", "十", "百", "千", "万", "十", "百", "千", "亿" };
        StringBuffer sb = new StringBuffer();
        int t, unitIndex = 0;
        while (num > 0) {
            t = num % 10;
            if(t > 0 || unitIndex % 4 == 0)
                sb.append(unit[unitIndex]);
            if(!(unitIndex == 0 && t == 0))
                sb.append(digit[t]);
            unitIndex += 1;
            num = num / 10;
        }
        return sb.reverse().toString().replaceAll("0{2,}", "0").replaceAll("0万", "万").replaceFirst("0#", "")
                .replaceFirst("#", "");
    }

    /**
     * 
     *判断字符串是否全由数字组成.<br>
     *工程名:yinuojz<br>
     *包名:com.ods.util.type<br>
     *方法名:isNumber方法.<br>
     * 
     *@author:fhb
     *@since :1.0:2011-5-19
     *@param str
     *@return
     */
    public static boolean isNumber(String str) {
        if(StringUtil.empty(str)) {
            return false;
        }
        Pattern pattern = Pattern.compile("[0-9]*");
        return pattern.matcher(StringUtil.trim(str)).matches();
    }
    /**
     * 
     *把含有数字的字符串的最后一个数字加1后在返回该字符串.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.util.type<br>
     *方法名:stringAddOne方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2011-9-2
     *@param addOneStringOld：要加1的字符串
     *@param addOneStringNew：要加1的字符串
     *@param lastString：截取的字符串，调用该方法时传入""即可
     *@param stringLength：要加1的字符串长度
     *@return
     */
    //示例： String testStr = "9asdf";
    //testStr=stringAddOne(testStr,testStr,"",testStr.length());
    //System.out.println(testStr);  
    public static String stringAddOne(String addOneStringOld,String addOneStringNew,String lastString,int stringLength){
        String tempString =addOneStringNew.substring(stringLength-1,stringLength);
        if(NumberUtil.isInteger(tempString)){
            addOneStringNew= addOneStringNew.substring(0,stringLength-1)+(NumberUtil.toInt(tempString)+1);
        } else{
            lastString=tempString+lastString;
            addOneStringNew= stringAddOne(addOneStringOld,addOneStringNew,lastString, stringLength-1); 
            lastString="";
        }
        return addOneStringNew+lastString;
    }
    
    /**
     * 
     *获取字符串中右边第一次出现的连续数字，
     *如果字符串中没有数字则返回字符串空“”.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.util.type<br>
     *方法名:getStrLastNumber方法.<br>
     *
     *@author:fhb
     *@since :1.0:2011-9-2
     *@param str
     *@return
     */
    public static String getStrLastNumber(String str) {
        if (StringUtil.empty(str) || str.length() == 0) {
            return "";
        }
        char[] ches = str.toCharArray();
        int f = -1;
        int lastindex = -1;
        for (int i = ches.length - 1; i >= 0; i--) {
            if (lastindex == -1) {
                if (Character.isDigit(ches[i])) {
                    lastindex = i;
                    f = i;
                }
            } else {
                if (Character.isDigit(ches[i])) {
                    f = i;
                } else {
                    break;
                }
            }
        }

        return (f != -1 && lastindex != -1) ? str.substring(f, lastindex + 1) : "";
    }

    /**
     * 
     *计算字符串中从右边开始第一次出现的连续数字加指定数值后的新字符串.<br>
     *如果字符串中没有数字则返回原字符串+count
     *工程名:goodsmanager<br>
     *包名:com.ods.util.type<br>
     *方法名:getNextNumberSequence方法.<br>
     *
     *@author:fhb
     *@since :1.0:2011-9-2
     *@param numQuenec 原始字符串
     *@param count  需要增加的数字
     *@return
     */
    public static String getNextNumberSequence(String numQuenec,int count) {
        String numberStr = getStrLastNumber(numQuenec);
        if ( StringUtil.empty(numberStr)) {
            return numQuenec+count;
        }
        numQuenec = StringUtil.trim(numQuenec);
        String index = count+"";
        int len = numberStr.length();
        if (NumberUtil.isNumber(numberStr)) {
            index = Integer.toString(NumberUtil.toFormattedInt(numberStr, 0) + count);
        }
        while (index.length() < len) {
            index = "0" + index;
        }
        int last = numQuenec.lastIndexOf(numberStr);
        StringBuilder sb = new StringBuilder();
        sb.append(numQuenec.substring(0, last));
        sb.append(index);
        sb.append(numQuenec.substring(last + numberStr.length()));
        return sb.toString();

    }
}
