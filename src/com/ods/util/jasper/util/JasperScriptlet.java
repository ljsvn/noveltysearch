/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.jasper.util;

import java.util.Calendar;

import com.ods.util.type.EncodingUtil;
import com.ods.util.type.NumberUtil;
import com.ods.util.type.StringUtil;
import com.ods.util.type.TimeUtil;

import net.sf.jasperreports.engine.JRDefaultScriptlet;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * JasperScriptlet.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * JasperScriptlet类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * JasperScriptlet类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 报表文件调用的Java类<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-2-8, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-2-8
 * @version:1.0
 */
public class JasperScriptlet extends JRDefaultScriptlet {
    
    public String toEncoding(String str, String srcEnc, String dstEnc) {
        //new String(str.getBytes(),"UTF-8");
        return EncodingUtil.convert(str, srcEnc, dstEnc);
    }
    
    /**
     * 
     * 报表产生时间获取.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.util.jasper.util<br>
     * 方法名:getReportBuildTime方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2011-2-9
     * @return
     */
    public String getReportBuildTime() {
        Calendar calendar = Calendar.getInstance();
        return TimeUtil.toString(calendar, "yyyy-MM-dd");
    }

    // 获得系统当前月
    public String getNowMonthYYMM() {
        Calendar calendar = Calendar.getInstance();
        String nowYyyyyMM = calendar.get(Calendar.YEAR) + "年" + (calendar.get(Calendar.MONTH) + 1) + "月";
        return nowYyyyyMM;
    }

    // 获得系统当前日期
    public String getNowMonthYmd() {
        Calendar calendar = Calendar.getInstance();
        String nowYmd = calendar.get(Calendar.YEAR) + "年" + (calendar.get(Calendar.MONTH) + 1) + "月" + (calendar
                .get(Calendar.DATE)) + "日";
        return nowYmd;
    }

    // 传入yyyy-MM 返回yyyy年mm月
    public String getYYYYMMFormat(String yyyyMM) {
        String[] yearMMs = StringUtil.split(yyyyMM, "-");
        return yearMMs[0] + "年" + yearMMs[1] + "月";
    }

    // 获取考勤情况名称
    // /出勤 <迟到 ∧早退 X旷工 K出差 O病假 T事假 A产假 E哺乳假 ¢工伤 ∨ 婚假 B丧假 F探亲 S换休 Z知休假 H年休假
    public String getAttendanceName(String absenceContent) {
        if(StringUtil.equals(absenceContent, "/")) {
            absenceContent = "出勤(/)";
        } else if(StringUtil.equals(absenceContent, "<")) {
            absenceContent = "迟到(<)";
        } else if(StringUtil.equals(absenceContent, "∧")) {
            absenceContent = "早退(∧)";
        } else if(StringUtil.equals(absenceContent, "X")) {
            absenceContent = "旷工(X)";
        } else if(StringUtil.equals(absenceContent, "K")) {
            absenceContent = "出差(K)";
        } else if(StringUtil.equals(absenceContent, "O")) {
            absenceContent = "病假(O)";
        } else if(StringUtil.equals(absenceContent, "T")) {
            absenceContent = "事假(T)";
        } else if(StringUtil.equals(absenceContent, "A")) {
            absenceContent = "产假(A)";
        } else if(StringUtil.equals(absenceContent, "E")) {
            absenceContent = "哺乳假(E)";
        } else if(StringUtil.equals(absenceContent, "¢")) {
            absenceContent = "工伤(¢)";
        } else if(StringUtil.equals(absenceContent, "∨")) {
            absenceContent = "婚假(∨)";
        } else if(StringUtil.equals(absenceContent, "B")) {
            absenceContent = "丧假(B)";
        } else if(StringUtil.equals(absenceContent, "F")) {
            absenceContent = "探亲(F)";
        } else if(StringUtil.equals(absenceContent, "S")) {
            absenceContent = "换休(S)";
        } else if(StringUtil.equals(absenceContent, "Z")) {
            absenceContent = "知休假(Z)";
        } else {
            absenceContent = "年休假(H)";
        }
        return absenceContent;
    }

    // 获取考勤日期
    public String getAttendanceTime(String attendanceYyyyMM, String absenceTime) {
        String yyyyMMdd = "";
        for(int i = 1; i < 32; i++) {
            if(StringUtil.equals(absenceTime, "attendance_am_" + i) || StringUtil.equals(absenceTime, "attendance_pm_" + i)) {
                yyyyMMdd = attendanceYyyyMM + "-" + i;
                break;
            }
        }
        return yyyyMMdd;
    }

    // 做图像时取两位小数点
    public double getChartTwoDot(double oldNumber) {
        return NumberUtil.toDouble(oldNumber, 2);
    }

    // 做图像时取两位小数点
    public double getChartTwoDot(double oldNumber, int dot) {
        if(dot == 0) {
            dot = 2;
        }
        return NumberUtil.toDouble(oldNumber, dot);
    }

}
