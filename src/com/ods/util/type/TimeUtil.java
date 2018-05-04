/**
 * 包名：com.ods.util.type
 * 类名：TimeUtil
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.type;
 
import java.text.DateFormat;
import java.text.FieldPosition;
import java.text.ParsePosition;
import java.text.SimpleDateFormat; 
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap; 
import java.util.Map;
 

/**
 * 功能：对Java中的时间处理进行封装 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */
public class TimeUtil {

    /**
     * 秒的定义
     */
    public static final long SECOND = 1000;

    /**
     * 分的定义
     */
    public static final long MINUTE = SECOND * 60;

    /**
     * 小时的定义
     */
    public static final long HOUR = MINUTE * 60;

    /**
     * 日的定义
     */
    public static final long DAY = HOUR * 24;

    /**
     * 周的定义
     */
    public static final long WEEK = DAY * 7;

    /**
     * 时间格式：yyyy-MM-dd HH:mm:ss。
     */
    public final static String theTimeFormat = "yyyy-MM-dd HH:mm:ss";

    /**
     * 时间格式：yyyy-MM-dd HH:mm:ss。
     */
    public final static String theShortTimeFormat = "HH:mm:ss";
    
    /**
     * 时间格式：yyyyMMddHHmmss。
     */
    public final static String otherTimeFormat = "yyyyMMddHHmmss";

    /**
     * 时间格式：yyyyMMddHHmmss。
     */
    public final static String yearMonthTimeFormat = "yyyyMM";

    /**
     * 时间格式：yyyyMMddHHmmss。
     */
    public final static String yearMonthDayTimeFormat = "yyyyMMdd";
    
    /**
     * 时间格式：yyyy-MM-dd。
     */
    public final static String yearMonthDayFormat = "yyyy-MM-dd";

    /**
     * 是否使用存放各种时间格式的集合自定义标志
     */
    public static final boolean useFastDateFormatter = true;

    /**
     * 格式化和解析日期的对象
     */
    private final static SimpleDateFormat theTimeFormator = new SimpleDateFormat(theTimeFormat);

    /**
     * 存放各种时间格式的集合自定义
     */
    private static Map<String, Object> theFastTimeFormatterMap = new HashMap<String, Object>();
    /**
     * 存放各种时间格式的集合设值
     */

    static {
        theFastTimeFormatterMap.put("yyyyMMddHHmmss", new FastDateFormatOfyyyyMMddHHmmss()); // new
        // SimpleDateFormat("yyyyMMddHHmmss")
        // );
        theFastTimeFormatterMap.put("yyyy-MM-dd HH:mm:ss", new FastDateFormatOfyyyy_MM_dd_HH_mm_ss()); // new
        // SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
        // );
        theFastTimeFormatterMap.put("yyyy/MM/dd HH:mm:ss", new FastDateFormatOfyyyy__MM__dd_HH_mm_ss()); // new
        // SimpleDateFormat("yyyy/MM/dd HH:mm:ss")
        // );
        theFastTimeFormatterMap.put("yyyyMMdd", new FastDateFormatOfyyyyMMdd()); // new
        // SimpleDateFormat("yyyyMMdd")
        // );
        theFastTimeFormatterMap.put("yyyy-MM-dd", new FastDateFormatOfyyyy_MM_dd()); // new
        // SimpleDateFormat("yyyy-MM-dd")
        // );
        theFastTimeFormatterMap.put("yyyy/MM/dd", new FastDateFormatOfyyyy__MM__dd()); // new
        // SimpleDateFormat("yyyy/MM/dd")
        // );
        theFastTimeFormatterMap.put("HHmmss", new FastDateFormatOfHHmmss()); // new
        // SimpleDateFormat("HHmmss")
        // );
        theFastTimeFormatterMap.put("HH:mm:ss", new FastDateFormatOfHH_mm_ss()); // new
        // SimpleDateFormat("HH:mm:ss")
        // );
        theFastTimeFormatterMap.put("HH", new FastDateFormatOfHH()); // new
        // SimpleDateFormat("HH")
        // );
    }

    /**
     * 日期/时间格式化子类对象的实现
     * 
     * @param format 时间格式
     * @return 日期/时间格式化子类对象
     */
    public static final DateFormat getTimeFormatter(String format) {
        if(useFastDateFormatter) {
            DateFormat sdf = (DateFormat) theFastTimeFormatterMap.get(format);
            if(sdf != null) {
                return sdf;
            }
        }

        return new SimpleDateFormat(format);
    }

    // /////////////////////////////////////////////////////////////////

    /**
     * 格式化和解析日期的对象获取
     * 
     * @param format 时间格式
     * @return 格式化和解析日期的对象
     */
    public static SimpleDateFormat newTimeFormatter(String format) {
        return new SimpleDateFormat(format);
    }

    /**
     * 判断时间是否相等。 由于系统中的时间不需要很高的精度，因此我们提供了特定的比较方法。
     * 
     * @param c1 判断时间对象是否相等的第1个参数
     * @param c2 判断时间对象是否相等的第2个参数
     * @return =true：相等 =false：不相等
     */
    public static boolean equals(Calendar c1, Calendar c2) {
        if(c1 == c2) {
            return true;
        }
        if((null == c1) || (null == c2)) {
            return false;
        }

        final long t1 = c1.getTime().getTime() / 1000;
        final long t2 = c2.getTime().getTime() / 1000;
        return (t1 == t2);
    }

    /**
     * Calendar对象克隆。
     * 
     * @param cal 原始时间对象
     * @return 已经克隆好的时间对象
     */
    public static Calendar clone(Calendar cal) {
        Calendar c = Calendar.getInstance();
        c.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), cal.get(Calendar.DAY_OF_MONTH), cal.get(Calendar.HOUR_OF_DAY), cal.get(Calendar.MINUTE), cal.get(Calendar.SECOND));
        c.set(Calendar.MILLISECOND, cal.get(Calendar.MILLISECOND));
        return c;
    }

    // /////////////////////////////////////////////////////////////////
    /**
     * 按照formator格式，把cal对象转换成字符串
     * 
     * @param cal 需要转换的时间对象
     * @param formator 转换的时间格式
     * @return 时间对象的格式字符串
     */
    public static String toString(Calendar cal, DateFormat formator) {
        if(null == cal) {
            return "";
        }
        return formator.format(cal.getTime());
    }

    /**
     * 按照formator格式，把cal对象转换成字符串
     * 
     * @param cal 需要转换的时间对象
     * @param format 转换的时间格式
     * @return 时间对象的格式字符串
     */
    public static String toString(Calendar cal, String format) {
        if(null == cal) {
            return "";
        }
        return toString(cal, getTimeFormatter(format));
    }

    /**
     * 按照formator格式，把date对象转换成字符串
     * 
     * @param date 需要转换的时间对象
     * @param formator 转换的时间格式
     * @return 时间对象的格式字符串
     */
    public static String toString(Date date, DateFormat formator) {
        if(null == date) {
            return "";
        }
        return formator.format(date);
    }

    /**
     * 按照format格式，把date对象转换成字符串
     * 
     * @param date 需要转换的时间对象
     * @param format 转换的时间格式
     * @return 时间对象的格式字符串
     */
    public static String toString(Date date, String format) {
        if(null == date) {
            return "";
        }
        if(StringUtil.empty(format)) {
            format = "yyyy-MM-dd";
        }
        return toString(date, getTimeFormatter(format));
    }

    /**
     * 把系统当前时间按照指定的时间格式进行转换
     * 
     * @param format 时间格式
     * @return 当前时间格式字符串
     */
    public static String toString(String format) {
        return toString(Calendar.getInstance(), format);
    }

    /**
     * 把指定时间从一种格式转换成指定的另外一种时间格式
     * 
     * @param time 指定的时间
     * @param fromFormat 元时间格式
     * @param toFormat 目标时间格式
     * @return 已经转换成目标时间格式的字符串
     * @throws Exception 转换失败错误
     */
    public static String toString(String time, String fromFormat, String toFormat) {
        try {
            return toString(toCalendar(time, fromFormat), toFormat);
        } catch(Exception e) {
            return time;
        }
    }

    /**
     * 把时间对象转换成yyyy-MM-dd HH:mm:ss格式
     * 
     * @param cal 转换的时间
     * @return 时间格式是yyyy-MM-dd HH:mm:ss的字符串
     */
    public static String toString(Calendar cal) {
        return toString(cal, theTimeFormator);
    }

    /**
     * 把时间对象转换成yyyy-MM-dd HH:mm:ss格式
     * 
     * @param date 转换的时间
     * @return 时间格式是yyyy-MM-dd HH:mm:ss的字符串
     */
    public static String toString(Date date) {
        return toString(date, theTimeFormator);
    }

    /**
     * 把毫秒对象转换成yyyy-MM-dd HH:mm:ss格式
     * 
     * @param millSeconds 转换的毫秒
     * @return 时间格式是yyyy-MM-dd HH:mm:ss的字符串
     */
    public static String toString(long millSeconds) {
        Date date = new Date(millSeconds);
        return toString(date);
    }

    /**
     * 把毫秒按照指定的格式进行时间转换
     * 
     * @param millSeconds 转换的毫秒
     * @param format 指定的时间格式
     * @return 时间格式是指定的字符串
     */
    public static String toString(long millSeconds, String format) {
        Date date = new Date(millSeconds);
        return toString(date, format);
    }

    // /////////////////////////////////////////////////////////////////
    /**
     * 将时间对象转化为数字
     * 
     * @param cal 转换的数字
     * @param format 格式，例如"yyyyMMddHH"
     * @return 类型是数字的时间格式
     */
    public static long toNumber(Calendar cal, String format) {
        String time = toString(cal, format);
        return Long.parseLong(time);
    }

    /**
     * 将时间对象转化为数字
     * 
     * @param strTime 转换的时间字符串
     * @param timeFormat 格式，例如"yyyyMMddHH"
     * @param numberFormat 要转换的数字格式
     * @return 类型是数字的时间格式
     * @throws Exception 转换失败错误
     */
    public static long toNumber(String strTime, String timeFormat, String numberFormat) throws Exception {
        return toNumber(toCalendar(strTime, timeFormat), numberFormat);
    }

    /**
     * 把Calendar对象转换成长整形数字
     * 
     * @param time 时间对象
     * @return 长整型时间数字对象
     */
    public static Long toLong(Calendar time) {
        try {
            return new Long(time.getTime().getTime());
        } catch(Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 把Date对象转换成长整形数字
     * 
     * @param time 时间对象
     * @return 长整型时间数字对象
     */
    public static Long toLong(Date time) {
        try {
            return new Long(time.getTime());
        } catch(Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 将Date型转换为指定格式的long型
     * 
     * @param time Date型对象
     * @param format 指定格式
     * @return 转换后的时间值
     */
    public static long toLong(Date time, String format) {
        String str = toString(time, format);
        return NumberUtil.toLong(str);
    }

    /**
     * 获取Calendar对象的年、月、日
     * 
     * @param cal 时间对象
     * @return 已经转换后的long型数字
     */
    public static long toNumberOfyyyyMMdd(Calendar cal) {
        return (cal.get(Calendar.YEAR) * 100 + cal.get(Calendar.MONTH) + 1) * 100 + cal.get(Calendar.DAY_OF_MONTH);
    }

    // /////////////////////////////////////////////////////////////////
    /**
     * 将字符串转化为时间对象
     * 
     * @param time 转换的时间
     * @param formator 指定格式
     * @return 带指定格式的Calendar时间对象
     * @throws Exception 转换失败错误
     */
    public static Calendar toRawCalendar(String time, DateFormat formator) throws Exception {
        Calendar cal = Calendar.getInstance();
        java.util.Date d = formator.parse(time);
        cal.setTime(d);
        cal.set(Calendar.MILLISECOND, 0);
        return cal;
    }

    /**
     * 把字符串按照指定的转换格式转换为Calendar
     * 
     * @param time 时间字符串
     * @param formator 指定的格式
     * @return 带指定格式的Calendar对象
     */
    public static Calendar toCalendar(String time, DateFormat formator) {

        try {
            return toRawCalendar(time, formator);
        } catch(Exception ex) {
            ex.printStackTrace();
            return Calendar.getInstance();
        }
    }

    /**
     * 把字符串按照指定的转换格式转换为Calendar
     * 
     * @param time 时间字符串
     * @param format 指定的格式
     * @return 带指定格式的Calendar对象
     * @throws Exception 转换失败错误
     */
    public static Calendar toRawCalendar(String time, String format) throws Exception {
        return toRawCalendar(time, getTimeFormatter(format));
    }

    /**
     * 把字符串按照指定的转换格式转换为Calendar
     * 
     * @param time 时间字符串
     * @param format 指定的格式
     * @return 带指定格式的Calendar对象
     * @throws Exception 转换失败错误
     */
    public static Calendar toCalendar(String time, String format) throws Exception {
        return toRawCalendar(time, getTimeFormatter(format));
    }

    /**
     * 把long型数字按照指定格式转换为Calendar对象
     * 
     * @param time 时间数字
     * @param format 指定的格式
     * @return 带指定格式的Calendar对象
     * @throws java.lang.Exception 转换失败错误
     */
    public static Calendar toRawCalendar(long time, String format) throws Exception {
        return toRawCalendar(String.valueOf(time), getTimeFormatter(format));
    }

    /**
     * 把long型时间按照指定格式转换为Calendar对象
     * 
     * @param time long型时间值
     * @param format 指定的格式
     * @return 带指定格式的Calendar对象
     */
    public static Calendar toCalendar(long time, String format) {
        return toCalendar(String.valueOf(time), getTimeFormatter(format));
    }

    /**
     * 把字符串转换为yyyy-MM-dd HH:mm:ss格式的Calendar对象
     * 
     * @param time 字符串时间
     * @return 带指定格式的Calendar对象
     * @throws java.lang.Exception 转换错误
     */
    public static Calendar toRawCalendar(String time) throws Exception {
        return toRawCalendar(time, theTimeFormator);
    }

    /**
     * 把字符串转换为yyyy-MM-dd HH:mm:ss格式的Calendar对象
     * 
     * @param time 字符串时间
     * @return 带指定格式的Calendar对象
     */
    public static Calendar toCalendar(String time) {
        return toCalendar(time, theTimeFormator);
    }

    /**
     * 生成位于所有参数范围之内的时间。 同时，调整参数以保证时间的语义符合参数语义，例如month为6而day为31时，将调整day为30。
     * 
     * @param year 2000~2010
     * @param month 1~12
     * @param day 1~31
     * @param hour 0~23
     * @param minute 0~59
     * @param second 0~59
     * @return
     */
    public static Calendar toBoundaryCalendar(int year, int month, int day, int hour, int minute, int second) {
        Calendar cal = Calendar.getInstance();
        cal.set(Calendar.YEAR, NumberUtil.adjustRange(year, 2000, 2010));
        cal.set(Calendar.MONTH, NumberUtil.adjustRange(month, 1, 12) - 1);
        cal.set(Calendar.DAY_OF_MONTH, NumberUtil.adjustRange(day, 1, cal.getActualMaximum(Calendar.DAY_OF_MONTH)));
        cal.set(Calendar.HOUR_OF_DAY, NumberUtil.adjustRange(hour, 0, 23));
        cal.set(Calendar.MINUTE, NumberUtil.adjustRange(minute, 0, 59));
        cal.set(Calendar.SECOND, NumberUtil.adjustRange(second, 0, 59));
        cal.set(Calendar.MILLISECOND, 0);
        return cal;
    }

    /**
     * 把字符串时间按照指定的分隔符分隔
     * 
     * @param time 字符串时间
     * @param delim 分割符
     * @return Date型时间对象
     * @throws Exception 转换失败错误
     */
    public static Date toRawStartRegularBoundaryDate(String time, String delim) throws Exception {
        return toRawRegularBoundaryDate(time, delim, 2000, 1, 1, 0, 0, 0);
    }

    /**
     * 把字符串时间按照指定的分隔符分隔
     * 
     * @param time 字符串时间
     * @param delim 分割符
     * @return Date型时间对象
     * @throws Exception 转换失败错误
     */
    public static Date toRawEndRegularBoundaryDate(String time, String delim) throws Exception {
        try {
            return toRawRegularBoundaryDate(time, delim, 2010, 12, 31, 23, 59, 59);
        } catch(Exception e) {
            throw new Exception("toRawRegularStartDate, failure, exception = " + e);
        }
    }

    /**
     * 把字符串时间按照指定的分隔符分隔
     * 
     * @param time 字符串时间
     * @param delim 分割符
     * @param year 年
     * @param month 月
     * @param day 日
     * @param hour 小时
     * @param minute 分钟
     * @param second 秒
     * @return Date型时间对象
     * @throws java.lang.Exception 转换失败错误
     */
    public static Date toRawRegularBoundaryDate(String time, String delim, int year, int month, int day, int hour, int minute, int second) throws Exception {
        String[] set = StringUtil.split(time, delim);
        if(set.length <= 0) {
            throw new Exception("time format illegal, time = " + time + ", delim = " + delim);
        }

        if(set.length >= 1) {
            year = NumberUtil.toRawInt(set[0]);
        }
        if(set.length >= 2) {
            month = NumberUtil.toRawInt(set[1]);
        }
        if(set.length >= 3) {
            day = NumberUtil.toRawInt(set[2]);
        }

        Calendar cal = toBoundaryCalendar(year, month, day, hour, minute, second);
        return cal.getTime();
    }

    // /////////////////////////////////////////////////////////////////
    /**
     * 比较两个Calendar时间大小，并返回较小的时间值对象
     * 
     * @param time1 第一个Calendar
     * @param time2 第2个Calendar
     * @return 较小的Calendar时间对象
     */
    public static Calendar minTime(Calendar time1, Calendar time2) {
        if((null == time1) || (time1.after(time2))) {
            return time2;
        }
        return time1;
    }

    /**
     * 比较两个Date时间大小，并返回较小的时间值对象
     * 
     * @param time1 第一个Date
     * @param time2 第2个Date
     * @return 较小的Date时间对象
     */
    public static Date minTime(Date time1, Date time2) {
        if((null == time1) && (null == time2)) {
            return null;
        }
        if((null == time1) && (null != time2)) {
            return time2;
        }
        if((null != time1) && (null == time2)) {
            return time1;
        }
        if(time1.after(time2)) {
            return time2;
        }
        return time1;
    }

    /**
     * 比较两个Calendar时间大小，并返回较大的时间值对象
     * 
     * @param time1 第一个Calendar
     * @param time2 第2个Calendar
     * @return 较大的Calendar时间对象
     */
    public static Calendar maxTime(Calendar time1, Calendar time2) {
        if((null == time1) || (time1.before(time2))) {
            return time2;
        }
        return time1;
    }

    /**
     * 比较两个Date时间大小，并返回较大的时间值对象
     * 
     * @param time1 第一个Date
     * @param time2 第2个Date
     * @return 较大的Date时间对象
     */
    public static Date maxTime(Date time1, Date time2) {
        if((null == time1) && (null == time2)) {
            return null;
        }
        if((null == time1) && (null != time2)) {
            return time2;
        }
        if((null != time1) && (null == time2)) {
            return time1;
        }
        if(time1.before(time2)) {
            return time2;
        }
        return time1;
    }

    /**
     * 判断第1个Calendar对象时间是否在第2个Calendar时间对象之后
     * 
     * @param time1 第一个Calendar时间对象
     * @param time2 第2个时间对象
     * @return =true：第1个时间对象不在第2个时间对象之后 =false：第1个时间对象在第2个时间对象之后
     */
    public static boolean notAfter(Calendar time1, Calendar time2) {
        if((null != time1) && (null == time2)) {
            return false;
        }
        if((null == time1) && (null != time2)) {
            return false;
        }
        if((null != time1) && (null != time2) && (time1.after(time2))) {
            return false;
        }
        return true;
    }

    /**
     * 判断第1个Date对象时间是否在第2个Date间对象之后
     * 
     * @param time1 第一1个Date时间对象
     * @param time2 第2个时间对象
     * @return =true：第1个时间对象不在第2个时间对象之后 =false：第1个时间对象在第2个时间对象之后
     */
    public static boolean notAfter(Date time1, Date time2) {
        if((null != time1) && (null == time2)) {
            return false;
        }
        if((null == time1) && (null != time2)) {
            return false;
        }
        if((null != time1) && (null != time2) && (time1.after(time2))) {
            return false;
        }
        return true;
    }

    /**
     * 判断某个时间是否在一个时间区间范围内
     * 
     * @param time 需要判断的时间对象
     * @param start 区间开始时间
     * @param end 区间结束时间
     * @return =true 指定时间在这个区间内 =false 指定时间不再这个区间内
     */
    public static boolean equalOrBetween(Calendar time, Calendar start, Calendar end) {
        return (notAfter(start, time) && notAfter(time, end));
    }

    /**
     * 判断某个时间是否在一个时间区间范围内
     * 
     * @param time 需要判断的时间对象
     * @param start 区间开始时间
     * @param end 区间结束时间
     * @return =true 指定时间在这个区间内 =false 指定时间不再这个区间内
     */
    public static boolean equalOrBetween(Date time, Date start, Date end) {
        return (notAfter(start, time) && notAfter(time, end));
    }

    /**
     * 实现时间之间的分钟差.<br>
     * 工程名:odscati<br>
     * 包名:com.ods.util.type<br>
     * 方法名:getTwoTimeMinute方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2009-8-14
     * @param stratTime：开始时间：yyyyMMddHHmmss
     * @param endTime:结束时间：yyyyMMddHHmmss
     * @return 返回两个时间的分钟差
     */
    public static String getTwoTimeMinute(String stratTime, String endTime) {
        SimpleDateFormat myFormatter = new SimpleDateFormat(otherTimeFormat);
        long minute = 0;
        long second = 0;
        try {
            java.util.Date date = myFormatter.parse(stratTime);
            java.util.Date mydate = myFormatter.parse(endTime);
            minute = (date.getTime() - mydate.getTime()) / (60 * 1000);
            second = ((date.getTime() - mydate.getTime()) / 1000) - minute * 60;
        } catch(Exception e) {
            return "";
        }
        return minute + "分钟" + second + "秒";
    }

    /**
     * 实现时间之间的秒差.<br>
     * 工程名:odscati<br>
     * 包名:com.ods.util.type<br>
     * 方法名:getTwoTimeMinute方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2009-8-14
     * @param stratTime：开始时间：yyyyMMddHHmmss
     * @param endTime:结束时间：yyyyMMddHHmmss
     * @return 返回两个时间的秒差
     */
    public static String getTwoTimeSecond(String stratTime, String endTime, String timeFormat) {
        SimpleDateFormat myFormatter = new SimpleDateFormat(timeFormat);
        long second = 0;
        try {
            java.util.Date date = myFormatter.parse(stratTime);
            java.util.Date mydate = myFormatter.parse(endTime);
            second = ((mydate.getTime() - date.getTime()) / 1000);
        } catch(Exception e) {
            return "0";
        }
        if(second == 0) {
            return "0";
        } else {
            return String.valueOf(second);
        }
    }

    /**
     * 
     * 获得当前时间精确到月和当前时间的前一个月时间<br>
     * 工程名:projectmodel<br>
     * 包名:com.ods.util.type<br>
     * 方法名:getCurrenyAndBeforeTimeYYYYMM方法.<br>
     * 
     * @author:xidf
     * @since :1.0:2010-7-10
     * @return字符串数组第一个是当前时间格式:yyyy-mm 第二个是当前时间的前一个月格式:yyyy-mm
     */
    public static String[] getCurrenyAndBeforeTimeYYYYMM() {
        Calendar calendar = Calendar.getInstance();
        Calendar beforeCalendar = Calendar.getInstance();
        beforeCalendar.add(Calendar.MONTH, -1);
        String currenyYYYYMM = toString(calendar, "yyyy-MM");
        String beforeYYYYMM = toString(beforeCalendar, "yyyy-MM");
        return new String[] { currenyYYYYMM, beforeYYYYMM };
    }

    /**
     * 
     * 获得当前时间精确到天和当前时间的前一个月时间的第一天<br>
     * 工程名:projectmodel<br>
     * 包名:com.ods.util.type<br>
     * 方法名:getCurrenyAndBeforeTimeYYYYMMDD方法.<br>
     * 
     * @author:xidf
     * @since :1.0:2010-7-10
     * @return字符串数组第一个是当前时间格式:yyyy-mm-dd 第二个是当前时间的前一个月的第一天格式:yyyy-mm-dd
     */
    public static String[] getCurrenyAndBeforeTimeYYYYMMDD() {
        Calendar calendar = Calendar.getInstance();
        Calendar beforeCalendar = Calendar.getInstance();
        beforeCalendar.add(Calendar.MONTH, -1);
        String currenyYYYYMMdd = toString(calendar, "yyyy-MM-dd");
        String beforeYYYYMMdd = toString(beforeCalendar, "yyyy-MM") + "-01";
        return new String[] { currenyYYYYMMdd, beforeYYYYMMdd };
    }

    /**
     * 
     * 获得当前时间精确到時分秒和当前时间的前一个月时间的第一天的开始时间<br>
     * 工程名:projectmodel<br>
     * 包名:com.ods.util.type<br>
     * 方法名:getCurrenyAndBeforeTimeYYYYMMDDHHmmSS方法.<br>
     * 
     * @author:xidf
     * @since :1.0:2010-7-10
     * @returnreturn字符串数组第一个是当前时间格式:yyyy-mm-dd hh:mm:ss
     *                                         第二个是当前时间前一天的开始时间格式:yyyy-mm-dd
     *                                         hh:mm:ss
     */
    public static String[] getCurrenyAndBeforeTimeYYYYMMDDHHmmSS() {
        Calendar calendar = Calendar.getInstance();
        Calendar beforeCalendar = Calendar.getInstance();
        beforeCalendar.add(Calendar.DATE, -1);
        String currenyYYYYMMdd = toString(calendar, "yyyy-MM-dd HH:mm:ss");
        String beforeYYYYMMdd = toString(beforeCalendar, "yyyy-MM-dd ") + "00:00:00";
        return new String[] { currenyYYYYMMdd, beforeYYYYMMdd };
    }

    /**
     * 获取是本年第几周.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.util.type<br>
     * 方法名:getWeekYearNo方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2011-2-11
     * @param year
     * @param month
     * @param day
     * @return
     */
    public static int getWeekYearNo(int year, int month, int day) {
        Calendar cal = Calendar.getInstance();
        cal.set(Calendar.YEAR, year);
        cal.set(Calendar.MONTH, month - 1);
        cal.set(Calendar.DAY_OF_MONTH, day);
        return cal.get(Calendar.WEEK_OF_YEAR);
    }

    /**
     * 获取是本月第几周.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.util.type<br>
     * 方法名:getWeekMonthNo方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2011-2-11
     * @param year
     * @param month
     * @param day
     * @return
     */
    public static int getWeekMonthNo(int year, int month, int day) {
        Calendar cal = Calendar.getInstance();
        cal.set(Calendar.YEAR, year);
        cal.set(Calendar.MONTH, month - 1);
        cal.set(Calendar.DAY_OF_MONTH, day);
        return cal.get(Calendar.WEEK_OF_MONTH);
    }
    //根据月份值获取季度值，如果月份错误，返回0
    public static int getQuarterValueByMonth(int monthValue){
        int quarterValue=0;
        if (monthValue >0 && monthValue < 13)
        {
            if (monthValue >= 1 && monthValue <= 3){
                quarterValue=1;   
            } else if (monthValue >= 4 && monthValue <= 6){
                quarterValue=2;   
            } else if (monthValue >= 7 && monthValue <= 9){
                quarterValue=3;   
            } else if (monthValue >= 10 && monthValue <= 12){
                quarterValue=4;   
            } 
        } 
        return quarterValue;

    }
    //根据季度值获取返回的3个月
    public static int[] getMonthValueByQuarter(int quarterValue){
        int[] months= {0,0,0};
        if(quarterValue>0 && quarterValue<5){
            switch (quarterValue) {
                case 1:
                    months[0]=1;
                    months[1]=2;
                    months[2]=3;
                    break;
                case 2: 
                    months[0]=4;
                    months[1]=5;
                    months[2]=6;
                    break;
                case 3:
                    months[0]=7;
                    months[1]=8;
                    months[2]=9;
                    break;
                case 4:
                    months[0]=10;
                    months[1]=11;
                    months[2]=12;
                    break; 
            }
        }
        return months;

    }
    public static void main(String[] args) {
        String s="from com.ods.data.''bommanager.bo.production.table.Parts as parts where 1=1 and parts.partsCode ='301/01-42'''' and parts.firstOrgPk ='77907AB2-2487-4ADF-A139-9C2E49247044' and parts.partsPk <>'6D4284EB-2F37-4C9A-8ED1-86F740DB0EFF'";
        String b=StringUtil.replace(s, "''","'''");
        System.out.println(b);
    }

    public static int[] getWeekDays(Calendar calendar, int weekNum) {
        int[] weekDays = new int[7];
        calendar.set(Calendar.WEEK_OF_MONTH, weekNum);

        for(int i = Calendar.SUNDAY; i <= Calendar.SATURDAY; i++) {
            weekDays[i - 1] = calendar.get(Calendar.DAY_OF_MONTH);
            calendar.add(Calendar.DAY_OF_MONTH, 1);
        }

        return weekDays;
    }

}

// format : yyyyMMddHHmmss
// format : yyyy-MM-dd HH:mm:ss
class FastDateFormatOfyyyyMMddHHmmss extends DateFormat {

    /**
     * 序列化时为了保持版本的兼容性，即在版本升级时反序列化仍保持对象的唯一性
     */
    private static final long serialVersionUID = -1L;

    protected final String pattern = "yyyyMMddHHmmss";

    @SuppressWarnings("deprecation")
    public StringBuilder format(Date date, StringBuilder toAppendTo, FieldPosition fieldPosition) {
        toAppendTo.append(date.getYear() + 1900);
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMonth() + 1)));
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getDate())));
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getHours())));
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMinutes())));
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getSeconds())));
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(14);
        return toAppendTo;
    }

    @SuppressWarnings("deprecation")
    public Date parse(String text, ParsePosition pos) {
        if(StringUtil.zero(text)) {
            return null;
        }
        if(text.length() != pattern.length()) {
            return null;
        }
        Date d = new Date();
        d.setYear(Integer.parseInt(text.substring(0, 4)) - 1900);
        d.setMonth(Integer.parseInt(text.substring(4, 6)) - 1);
        d.setDate(Integer.parseInt(text.substring(6, 8)));
        d.setHours(Integer.parseInt(text.substring(8, 10)));
        d.setMinutes(Integer.parseInt(text.substring(10, 12)));
        d.setSeconds(Integer.parseInt(text.substring(12, 14)));
        pos.setIndex(14);
        return d;
    }

    @SuppressWarnings("deprecation")
    @Override
    public StringBuffer format(Date date, StringBuffer toAppendTo, FieldPosition fieldPosition) {
        toAppendTo.append(date.getYear() + 1900);
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMonth() + 1)));
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getDate())));
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getHours())));
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMinutes())));
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getSeconds())));
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(14);
        return toAppendTo;
    }
}

// format : yyyy/MM/dd HH:mm:ss
class FastDateFormatOfyyyy_MM_dd_HH_mm_ss extends DateFormat {

    private static final long serialVersionUID = -2L;

    protected final String pattern = "yyyy-MM-dd HH:mm:ss";

    @SuppressWarnings("deprecation")
    public StringBuilder format(Date date, StringBuilder toAppendTo, FieldPosition fieldPosition) {
        toAppendTo.append(date.getYear() + 1900);
        toAppendTo.append("-");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMonth() + 1)));
        toAppendTo.append("-");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getDate())));
        toAppendTo.append(" ");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getHours())));
        toAppendTo.append(":");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMinutes())));
        toAppendTo.append(":");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getSeconds())));
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(19);
        return toAppendTo;
    }

    @SuppressWarnings("deprecation")
    public Date parse(String text, ParsePosition pos) {
        if(StringUtil.zero(text)) {
            return null;
        }
        if(text.length() != pattern.length()) {
            return null;
        }
        Date d = new Date();
        d.setYear(Integer.parseInt(text.substring(0, 4)) - 1900);
        d.setMonth(Integer.parseInt(text.substring(5, 7)) - 1);
        d.setDate(Integer.parseInt(text.substring(8, 10)));
        d.setHours(Integer.parseInt(text.substring(11, 13)));
        d.setMinutes(Integer.parseInt(text.substring(14, 16)));
        d.setSeconds(Integer.parseInt(text.substring(17, 19)));
        pos.setIndex(19);
        return d;
    }

    @SuppressWarnings("deprecation")
    @Override
    public StringBuffer format(Date date, StringBuffer toAppendTo, FieldPosition fieldPosition) {
        toAppendTo.append(date.getYear() + 1900);
        toAppendTo.append("-");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMonth() + 1)));
        toAppendTo.append("-");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getDate())));
        toAppendTo.append(" ");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getHours())));
        toAppendTo.append(":");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMinutes())));
        toAppendTo.append(":");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getSeconds())));
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(19);
        return toAppendTo;
    }
}

// format : yyyyMMdd
class FastDateFormatOfyyyy__MM__dd_HH_mm_ss extends DateFormat {

    private static final long serialVersionUID = -3L;

    protected final String pattern = "yyyy/MM/dd HH:mm:ss";

    @SuppressWarnings("deprecation")
    public StringBuilder format(Date date, StringBuilder toAppendTo, FieldPosition fieldPosition) {
        toAppendTo.append(date.getYear() + 1900);
        toAppendTo.append("/");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMonth() + 1)));
        toAppendTo.append("/");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getDate())));
        toAppendTo.append(" ");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getHours())));
        toAppendTo.append(":");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMinutes())));
        toAppendTo.append(":");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getSeconds())));
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(19);
        return toAppendTo;
    }

    @SuppressWarnings("deprecation")
    public Date parse(String text, ParsePosition pos) {
        if(StringUtil.zero(text)) {
            return null;
        }
        if(text.length() != pattern.length()) {
            return null;
        }
        Date d = new Date();
        d.setYear(Integer.parseInt(text.substring(0, 4)) - 1900);
        d.setMonth(Integer.parseInt(text.substring(5, 7)) - 1);
        d.setDate(Integer.parseInt(text.substring(8, 10)));
        d.setHours(Integer.parseInt(text.substring(11, 13)));
        d.setMinutes(Integer.parseInt(text.substring(14, 16)));
        d.setSeconds(Integer.parseInt(text.substring(17, 19)));
        pos.setIndex(19);
        return d;
    }

    @SuppressWarnings("deprecation")
    @Override
    public StringBuffer format(Date date, StringBuffer toAppendTo, FieldPosition fieldPosition) {
        toAppendTo.append(date.getYear() + 1900);
        toAppendTo.append("-");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMonth() + 1)));
        toAppendTo.append("-");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getDate())));
        toAppendTo.append(" ");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getHours())));
        toAppendTo.append(":");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMinutes())));
        toAppendTo.append(":");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getSeconds())));
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(19);
        return toAppendTo;
    }
}

// format : yyyy-MM-dd
class FastDateFormatOfyyyyMMdd extends DateFormat {

    private static final long serialVersionUID = -4L;

    protected final String pattern = "yyyyMMdd";

    @SuppressWarnings("deprecation")
    public StringBuilder format(Date date, StringBuilder toAppendTo, FieldPosition fieldPosition) {
        toAppendTo.append(date.getYear() + 1900);
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMonth() + 1)));
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getDate())));
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(8);
        return toAppendTo;
    }

    @SuppressWarnings("deprecation")
    public Date parse(String text, ParsePosition pos) {
        if(StringUtil.zero(text)) {
            return null;
        }
        if(text.length() != pattern.length()) {
            return null;
        }
        Date d = new Date();
        d.setYear(Integer.parseInt(text.substring(0, 4)) - 1900);
        d.setMonth(Integer.parseInt(text.substring(4, 6)) - 1);
        d.setDate(Integer.parseInt(text.substring(6, 8)));
        d.setHours(0);
        d.setMinutes(0);
        d.setSeconds(0);
        pos.setIndex(8);
        return d;
    }

    @SuppressWarnings("deprecation")
    @Override
    public StringBuffer format(Date date, StringBuffer toAppendTo, FieldPosition fieldPosition) {
        toAppendTo.append(date.getYear() + 1900);
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMonth() + 1)));
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getDate())));
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(8);
        return toAppendTo;
    }
}

// format : yyyy/MM/dd
class FastDateFormatOfyyyy_MM_dd extends DateFormat {

    private static final long serialVersionUID = -5L;

    protected final String pattern = "yyyy-MM-dd";

    @SuppressWarnings("deprecation")
    public StringBuilder format(Date date, StringBuilder toAppendTo, FieldPosition fieldPosition) {
        toAppendTo.append(date.getYear() + 1900);
        toAppendTo.append("-");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMonth() + 1)));
        toAppendTo.append("-");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getDate())));
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(10);
        return toAppendTo;
    }

    @SuppressWarnings("deprecation")
    public Date parse(String text, ParsePosition pos) {
        if(StringUtil.zero(text)) {
            return null;
        }
        if(text.length() != pattern.length()) {
            return null;
        }
        Date d = new Date();
        d.setYear(Integer.parseInt(text.substring(0, 4)) - 1900);
        d.setMonth(Integer.parseInt(text.substring(5, 7)) - 1);
        d.setDate(Integer.parseInt(text.substring(8, 10)));
        d.setHours(0);
        d.setMinutes(0);
        d.setSeconds(0);
        pos.setIndex(10);
        return d;
    }

    @SuppressWarnings("deprecation")
    @Override
    public StringBuffer format(Date date, StringBuffer toAppendTo, FieldPosition fieldPosition) {
        toAppendTo.append(date.getYear() + 1900);
        toAppendTo.append("-");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMonth() + 1)));
        toAppendTo.append("-");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getDate())));
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(10);
        return toAppendTo;
    }
}

// format : HHmmss
class FastDateFormatOfyyyy__MM__dd extends DateFormat {

    private static final long serialVersionUID = -6L;

    protected final String pattern = "yyyy/MM/dd";

    @SuppressWarnings("deprecation")
    public StringBuilder format(Date date, StringBuilder toAppendTo, FieldPosition fieldPosition) {
        toAppendTo.append(date.getYear() + 1900);
        toAppendTo.append("/");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMonth() + 1)));
        toAppendTo.append("/");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getDate())));
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(10);
        return toAppendTo;
    }

    @SuppressWarnings("deprecation")
    public Date parse(String text, ParsePosition pos) {
        if(StringUtil.zero(text)) {
            return null;
        }
        if(text.length() != pattern.length()) {
            return null;
        }
        Date d = new Date();
        d.setYear(Integer.parseInt(text.substring(0, 4)) - 1900);
        d.setMonth(Integer.parseInt(text.substring(5, 7)) - 1);
        d.setDate(Integer.parseInt(text.substring(8, 10)));
        d.setHours(0);
        d.setMinutes(0);
        d.setSeconds(0);
        pos.setIndex(10);
        return d;
    }

    @SuppressWarnings("deprecation")
    @Override
    public StringBuffer format(Date date, StringBuffer toAppendTo, FieldPosition fieldPosition) {
        toAppendTo.append(date.getYear() + 1900);
        toAppendTo.append("/");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMonth() + 1)));
        toAppendTo.append("/");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getDate())));
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(10);
        return toAppendTo;
    }
}

// format : HH:mm:ss
class FastDateFormatOfHHmmss extends DateFormat {

    private static final long serialVersionUID = -7L;

    protected final String pattern = "HHmmss";

    @SuppressWarnings("deprecation")
    public StringBuilder format(Date date, StringBuilder toAppendTo, FieldPosition fieldPosition) {
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getHours())));
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMinutes())));
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getSeconds())));
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(6);
        return toAppendTo;
    }

    @SuppressWarnings("deprecation")
    public Date parse(String text, ParsePosition pos) {
        if(StringUtil.zero(text)) {
            return null;
        }
        if(text.length() != pattern.length()) {
            return null;
        }
        Date d = new Date();
        d.setYear(0);
        d.setMonth(0);
        d.setDate(0);
        d.setHours(Integer.parseInt(text.substring(0, 2)));
        d.setMinutes(Integer.parseInt(text.substring(2, 4)));
        d.setSeconds(Integer.parseInt(text.substring(4, 6)));
        pos.setIndex(6);
        return d;
    }

    @SuppressWarnings("deprecation")
    @Override
    public StringBuffer format(Date date, StringBuffer toAppendTo, FieldPosition fieldPosition) {
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getHours())));
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMinutes())));
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getSeconds())));
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(6);
        return toAppendTo;
    }
}

// format : HH
class FastDateFormatOfHH_mm_ss extends DateFormat {

    private static final long serialVersionUID = -8L;

    protected final String pattern = "HH:mm:ss";

    @SuppressWarnings("deprecation")
    public StringBuilder format(Date date, StringBuilder toAppendTo, FieldPosition fieldPosition) {
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getHours())));
        toAppendTo.append(":");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMinutes())));
        toAppendTo.append(":");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getSeconds())));
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(8);
        return toAppendTo;
    }

    @SuppressWarnings("deprecation")
    public Date parse(String text, ParsePosition pos) {
        if(StringUtil.zero(text)) {
            return null;
        }
        if(text.length() != pattern.length()) {
            return null;
        }
        Date d = new Date();
        d.setYear(0);
        d.setMonth(0);
        d.setDate(0);
        d.setHours(Integer.parseInt(text.substring(0, 2)));
        d.setMinutes(Integer.parseInt(text.substring(3, 5)));
        d.setSeconds(Integer.parseInt(text.substring(6, 8)));
        pos.setIndex(8);
        return d;
    }

    @SuppressWarnings("deprecation")
    @Override
    public StringBuffer format(Date date, StringBuffer toAppendTo, FieldPosition fieldPosition) {
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getHours())));
        toAppendTo.append(":");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getMinutes())));
        toAppendTo.append(":");
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getSeconds())));
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(8);
        return toAppendTo;
    }
}

class FastDateFormatOfHH extends DateFormat {

    private static final long serialVersionUID = -9L;

    protected final String pattern = "HH";

    @SuppressWarnings("deprecation")
    public StringBuilder format(Date date, StringBuilder toAppendTo, FieldPosition fieldPosition) {
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getHours())));
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(2);
        return toAppendTo;
    }

    @SuppressWarnings("deprecation")
    public Date parse(String text, ParsePosition pos) {
        if(StringUtil.zero(text)) {
            return null;
        }
        if(text.length() != pattern.length()) {
            return null;
        }
        Date d = new Date();
        d.setYear(0);
        d.setMonth(0);
        d.setDate(0);
        d.setHours(Integer.parseInt(text.substring(0, 2)));
        d.setMinutes(0);
        d.setSeconds(0);
        pos.setIndex(2);
        return d;
    }

    @SuppressWarnings("deprecation")
    @Override
    public StringBuffer format(Date date, StringBuffer toAppendTo, FieldPosition fieldPosition) {
        toAppendTo.append(StringUtil.leftPadding(2, '0', String.valueOf(date.getHours())));
        fieldPosition.setBeginIndex(0);
        fieldPosition.setEndIndex(2);
        return toAppendTo;
    }

}
