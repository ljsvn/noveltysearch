/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.jasper.util;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import com.ods.util.hibernate.SpringHibernate;
import com.ods.util.log.LogUtil;
import com.ods.util.spring.SpringBeanFactory;
import com.ods.util.type.NumberUtil;
import com.ods.util.type.TimeUtil;
import com.ods.util.web.html.BaseHtmlOption;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * JasperConfigData.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * JasperConfigData类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * JasperConfigData类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 配置文件调取的Java类<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-2-8, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-2-8
 * @version:1.0
 */
public class JasperConfigData {

    SpringHibernate springHibernate = (SpringHibernate) SpringBeanFactory.getBean("DAOProxy");

    // public List<BaseHtmlOption> getDemoUserDuty() {
    // List<BaseHtmlOption> baseHtmlOptionList = new
    // ArrayList<BaseHtmlOption>();
    // BaseHtmlOption baseHtmlOption1 = new BaseHtmlOption("-请选择-", "");
    // BaseHtmlOption baseHtmlOption2 = new BaseHtmlOption("工人", "工人");
    // BaseHtmlOption baseHtmlOption3 = new BaseHtmlOption("职员", "职员");
    // baseHtmlOptionList.add(baseHtmlOption1);
    // baseHtmlOptionList.add(baseHtmlOption2);
    // baseHtmlOptionList.add(baseHtmlOption3);
    // return baseHtmlOptionList;
    // }

    // 获得系统当前年
    public String getNowMonthYYYY() {
        Calendar calendar = Calendar.getInstance();
        return TimeUtil.toString(calendar, "yyyy");
    }

    // 获得系统当前年月所在的季度
    public static String getNowMonthYYYYMMQuarter() {
        int quarterValue = 1;
        Calendar calendar = Calendar.getInstance();
        switch (calendar.get(Calendar.MONTH)) {
            case Calendar.JANUARY:
            case Calendar.FEBRUARY:
            case Calendar.MARCH:
                quarterValue = 1;
                break;
            case Calendar.APRIL:
            case Calendar.MAY:
            case Calendar.JUNE:
                quarterValue = 2;
                break;
            case Calendar.JULY:
            case Calendar.AUGUST:
            case Calendar.SEPTEMBER:
                quarterValue = 3;
                break;
            case Calendar.OCTOBER:
            case Calendar.NOVEMBER:
            case Calendar.DECEMBER:
                quarterValue = 4;
                break;
            default:
                break;
        }
        ;
        return String.valueOf(quarterValue);
    }

    // 获得系统当前月
    public String getNowMonthYYMM() {
        Calendar calendar = Calendar.getInstance();
        return TimeUtil.toString(calendar, "yyyy-MM");
    }

    // 获得系统当前年月（格式"2011 年 8 月"）
    public String getNowYyyyMm() {
        Calendar calendar = Calendar.getInstance();
        String yyyy = TimeUtil.toString(calendar, "yyyy");
        String mm = TimeUtil.toString(calendar, "MM");
        return yyyy + " 年 " + NumberUtil.toInt(mm) + " 月";
    }

    // 获得系统当前时间月日
    public String getNowYYYYMMdd() {
        Calendar calendar = Calendar.getInstance();
        return TimeUtil.toString(calendar, "yyyy-MM-dd");
    }

    // 获得系统当前年第一天
    public String getNowYearFristDay() {
        Calendar calendar = Calendar.getInstance();
        return TimeUtil.toString(calendar, "yyyy") + "-01-01";
    }

    // 获得系统当前月1号
    public String getNowMonthFristDay() {
        Calendar calendar = Calendar.getInstance();
        return TimeUtil.toString(calendar, "yyyy-MM") + "-01";
    }

    // 获得系统当前时间的前1个月
    public String getbeforeYYYYMMdd() {
        Calendar calendar = Calendar.getInstance();
        calendar.add(Calendar.MONTH, -1);
        return TimeUtil.toString(calendar, "yyyy-MM-dd");
    }

    // 获得系统当前时间的后1个月
    public String getAfterYYYYMMdd() {
        Calendar calendar = Calendar.getInstance();
        calendar.add(Calendar.MONTH, 1);
        return TimeUtil.toString(calendar, "yyyy-MM-dd");
    }

    // 季度报表查询季度下拉选择框
    public List<BaseHtmlOption> getQuarterQuerySelect() {
        List<BaseHtmlOption> baseHtmlOptionList = new ArrayList<BaseHtmlOption>();
        baseHtmlOptionList.add(new BaseHtmlOption("第1季度", "1"));
        baseHtmlOptionList.add(new BaseHtmlOption("第2季度", "2"));
        baseHtmlOptionList.add(new BaseHtmlOption("第3季度", "3"));
        baseHtmlOptionList.add(new BaseHtmlOption("第4季度", "4"));
        return baseHtmlOptionList;
    }
    
    /**
     *是否援助对象下拉选择框<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.util.jasper.util<br>
     *方法名:getAidObj方法.<br>
     *
     *@author:wangpei
     *@since :1.0:2012-4-6
     *@return
    */
    public List<BaseHtmlOption> getAidObj() {
        List<BaseHtmlOption> baseHtmlOptionList = new ArrayList<BaseHtmlOption>();
        BaseHtmlOption baseHtmlOption1 = new BaseHtmlOption("-请选择-", "-1");
        baseHtmlOptionList.add(baseHtmlOption1);
        try {
            baseHtmlOptionList.add(new BaseHtmlOption("否", "0"));
            baseHtmlOptionList.add(new BaseHtmlOption("是", "1"));
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            return baseHtmlOptionList;
        }
        return baseHtmlOptionList;
    }
    
    /**
     *获得分段统计报表下拉框查询条件的分段类型<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.util.jasper.util<br>
     *方法名:getPart方法.<br>
     *
     *@author:wangpei
     *@since :1.0:2012-4-24
     *@return
    */
    public List<BaseHtmlOption> getPart() {
        List<BaseHtmlOption> baseHtmlOptionList = new ArrayList<BaseHtmlOption>();
        BaseHtmlOption baseHtmlOption1 = new BaseHtmlOption("30分钟", "0.5");
        baseHtmlOptionList.add(baseHtmlOption1);
        try {
            baseHtmlOptionList.add(new BaseHtmlOption("1小时", "1"));
            baseHtmlOptionList.add(new BaseHtmlOption("2小时", "2"));
            baseHtmlOptionList.add(new BaseHtmlOption("3小时", "3"));
            baseHtmlOptionList.add(new BaseHtmlOption("4小时", "4"));
            baseHtmlOptionList.add(new BaseHtmlOption("6小时", "6"));
            baseHtmlOptionList.add(new BaseHtmlOption("8小时", "8"));
            baseHtmlOptionList.add(new BaseHtmlOption("12小时", "12"));
            baseHtmlOptionList.add(new BaseHtmlOption("24小时", "24"));
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            return baseHtmlOptionList;
        }
        return baseHtmlOptionList;
    }
}
