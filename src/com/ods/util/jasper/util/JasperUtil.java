/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.jasper.util;

import java.io.File;
import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JRParameter;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.export.JRCsvExporter;
import net.sf.jasperreports.engine.export.JRHtmlExporter;
import net.sf.jasperreports.engine.export.JRHtmlExporterParameter;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.engine.export.JRXlsExporter;
import net.sf.jasperreports.engine.export.JRXlsExporterParameter;
import net.sf.jasperreports.engine.export.ooxml.JRXlsxExporter;
import net.sf.jasperreports.engine.util.JRLoader;

import com.ods.base.bo.system.user.bo.User;
import com.ods.util.UserContext;
import com.ods.util.db.DBHelper;
import com.ods.util.jasper.bo.JasperShowBean;
import com.ods.util.jasper.bo.xml.Parameter;
import com.ods.util.jasper.bo.xml.ReportDataCache;
import com.ods.util.log.LogUtil;
import com.ods.util.spring.SpringBeanFactory;
import com.ods.util.type.FileUtil;
import com.ods.util.type.NumberUtil;
import com.ods.util.type.StringUtil;
import com.ods.util.type.TimeUtil;
import com.ods.util.web.WebContext;

public class JasperUtil {
    // //////////////////////////////////////
    public static JasperShowBean jasperHtmlBuilder(HttpServletRequest request, String reportId, String pageNo, String formElement) {
        JasperShowBean jasperShowBean = new JasperShowBean();
        try {
            List<Parameter> parameterList = setParameterValue(formElement, reportId, pageNo);
            JasperPrint jasperPrint = jasperPrintBuilder(request, parameterList, jasperShowBean, reportId);
            
            StringBuffer sbuffer = getJasperHtmlContent(request, jasperPrint);
            // //////////////////////////////////////////
            int page_no = NumberUtil.toInt(pageNo, 1);
            int page_row = jasperShowBean.getPage_row();
            int querySumCount = jasperShowBean.getQuerySumCount();
            int page_count = (querySumCount % page_row) == 0 ? querySumCount / page_row: (querySumCount / page_row) + 1;
            StringBuilder turnofPageBuilder = new StringBuilder("<br>");
            // if(querySumCount == 0) {
            // jasperShowBean.setShowContent("<center><font color=red>该报表无数据！</font></center>");
            // jasperShowBean.setPage_no(0);
            // } else {
            jasperShowBean.setShowContent(sbuffer.toString());
            jasperShowBean.setPage_no(NumberUtil.toInt(pageNo, 1));

            if(page_no > 1) {
                turnofPageBuilder.append(" <a href=\"#\" onclick=\"javaScript:onClickTurnOfPage(1);\" style=\"text-decoration: underline;\">首页</a>&nbsp;");
                turnofPageBuilder.append(" <a href=\"#\" onclick=\"javaScript:onClickTurnOfPage(" + (page_no - 1) + ");\" style=\"text-decoration: underline;\">上一页</a>&nbsp;");
            } else {
                turnofPageBuilder.append("<label style=\"color:gray;\">首页&nbsp;上一页&nbsp;</label>");

            }
            turnofPageBuilder.append("第<input type=\"text\" value=\"" + page_no + "\" size=\"2\" id=\"turnoffNumberId\" >");
            turnofPageBuilder.append("<input type=\"button\" onClick='javascript:onClickInputTurnOfPage();' value=\"GO\" style=\"vertical-align: middle;FONT-WEIGHT: bold;font-family:宋体;font-size: 14px; repeat-x;border: solid 0px #ffffff;color: #007AB5;width:35px;height: 25px;background: url(" + request.getContextPath() + "/image/turnofPage.gif) no-repeat;\">&nbsp;");
            turnofPageBuilder.append("页,共" + page_count + "页 &nbsp; ");

            if(page_no < page_count) {
                turnofPageBuilder.append("<a href=\"#\"  onclick=\"javaScript:onClickTurnOfPage(" + (page_no + 1) + ");\"  style=\"text-decoration: underline;\">下一页</a>&nbsp;");
                turnofPageBuilder.append("<a href=\"#\"  onclick=\"javaScript:onClickTurnOfPage(" + page_count + ");\" style=\"text-decoration: underline;\">末页</a>&nbsp;");
            } else {
                turnofPageBuilder.append("<label style=\"color:gray;\">下一页&nbsp;末页&nbsp;</label>");
            }
            // }
            jasperShowBean.setTurnOffPage(turnofPageBuilder.toString());
        } catch(Throwable e) {
            e.printStackTrace();

        }
        return jasperShowBean;
    }

    public static JasperShowBean allJapserReportFileContent(HttpServletRequest request, String reportId, String formElement) {
        JasperShowBean jasperShowBean = new JasperShowBean();
        try {
            List<Parameter> parameterList = setParameterValue(formElement, reportId, "1");
            String pageRowTemp = "20";
            for(Parameter parameter : parameterList) {
                if(StringUtil.equals(parameter.getName(), "page_row")) {
                    pageRowTemp = parameter.getValue();
                    parameter.setValue("10000000");
                    break;
                }
            }
            JasperPrint jasperPrint = jasperPrintBuilder(request, parameterList, jasperShowBean, reportId);
            for(Parameter parameter : parameterList) {
                if(StringUtil.equals(parameter.getName(), "page_row")) {
                    parameter.setValue(pageRowTemp);
                    break;
                }
            }
            StringBuffer showContent = getJasperHtmlContent(request, jasperPrint);
            jasperShowBean.setShowContent(showContent.toString());
        } catch(Throwable e) {
            e.printStackTrace();
        }
        return jasperShowBean;
    }

    private static StringBuffer getJasperHtmlContent(HttpServletRequest request, JasperPrint jasperPrint) throws JRException {
        StringBuffer sbuffer = new StringBuffer();
        JRHtmlExporter exporter = new JRHtmlExporter();
        exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
        exporter.setParameter(JRExporterParameter.OUTPUT_STRING_BUFFER, sbuffer);
        exporter.setParameter(JRHtmlExporterParameter.IMAGES_URI, request.getContextPath() + "/image/");
        exporter.setParameter(JRHtmlExporterParameter.IS_USING_IMAGES_TO_ALIGN, Boolean.TRUE); 
        //exporter.setParameter(JRHtmlExporterParameter.SIZE_UNIT,"pt");
        // exporter.setParameter(JRExporterParameter.OUTPUT_WRITER,
        // out);IS_OUTPUT_IMAGES_TO_DIR
        exporter.setParameter(JRHtmlExporterParameter.HTML_HEADER, "<div id=\"reportContentHtmlId\">");
        exporter.setParameter(JRHtmlExporterParameter.BETWEEN_PAGES_HTML, "");
        exporter.setParameter(JRHtmlExporterParameter.HTML_FOOTER, "</div>");
        exporter.setParameter(JRHtmlExporterParameter.IS_REMOVE_EMPTY_SPACE_BETWEEN_ROWS, Boolean.TRUE); // Boolean.FALSE);
        exporter.setParameter(JRHtmlExporterParameter.IS_WHITE_PAGE_BACKGROUND, Boolean.TRUE);
        exporter.exportReport();
        int  replaceStartIndex=sbuffer.indexOf("img_0_");
        String result="";
        if(replaceStartIndex>0){
            int  replaceEndIndex=sbuffer.indexOf("\"",replaceStartIndex); 
             result=sbuffer.substring(0,replaceStartIndex)+"kunlunreportlog.gif"+sbuffer.substring(replaceEndIndex); 
        } else{
            result= sbuffer.toString();
        }
        if(StringUtil.empty(result)){
            result="<center><font color=red>暂无数据</font></center>";
        }
        
        return new StringBuffer(result);
    }

    // //////////////////////////////////////
    private static String jasperCompileById(String reportId) throws Throwable {
        String filPath = java.net.URLDecoder.decode(ReportDataCache.class.getResource("/").getPath() + "jasper/", "UTF-8");
        filPath = filPath.replace("%20", " ");
        if(filPath.startsWith("/")) {
            filPath = filPath.substring(1);
        }
        if(filPath.startsWith("/")) {
            filPath = filPath.substring(1);
        }
        String jasperFilePathName = "";
        ReportDataCache reportDataCache = ReportDataCache.getInstance();
        String reportFileName = reportDataCache.getJrxmlName(reportId);
        String reportFileNameXml = reportFileName + ".jrxml";
        List<String> filelist = new ArrayList<String>();
        FileUtil.toFileNamePathList(filPath, filelist, ".jrxml");
        for(String pathFileName : filelist) {
            if(StringUtil.equals(new File(pathFileName).getName(), reportFileNameXml)) {
                File jrxmlFileName = new File(pathFileName);
                jasperFilePathName = jrxmlFileName.getParent() + File.separator + reportFileName + ".jasper";
                File jasperFileName = new File(jasperFilePathName);
                if(!jasperFileName.exists()) {
                    JasperCompileManager.compileReportToFile(pathFileName);
                } else {
                    if(jasperFileName.lastModified() < jrxmlFileName.lastModified()) {
                        FileUtil.deleteFile(jasperFilePathName);
                        JasperCompileManager.compileReportToFile(pathFileName);
                    }
                }
                break;
            }
        }

        return jasperFilePathName;
    }

    private static String jasperCompileByName(String reportName) throws Throwable {
        String filPath = java.net.URLDecoder.decode(ReportDataCache.class.getResource("/").getPath() + "jasper/", "UTF-8");
        filPath = filPath.replace("%20", " ");
        if(filPath.startsWith("/")) {
            filPath = filPath.substring(1);
        }
        if(filPath.startsWith("/")) {
            filPath = filPath.substring(1);
        }
        String jasperFilePathName = "";
        String reportFileNameXml = reportName + ".jrxml";
        List<String> filelist = new ArrayList<String>();
        FileUtil.toFileNamePathList(filPath, filelist, ".jrxml");
        for(String pathFileName : filelist) {
            if(StringUtil.equals(new File(pathFileName).getName(), reportFileNameXml)) {
                File jrxmlFileName = new File(pathFileName);
                jasperFilePathName = jrxmlFileName.getParent() + File.separator + reportName + ".jasper";
                File jasperFileName = new File(jasperFilePathName);
                if(!jasperFileName.exists()) {
                    JasperCompileManager.compileReportToFile(pathFileName);
                } else {
                    if(jasperFileName.lastModified() < jrxmlFileName.lastModified()) {
                        FileUtil.deleteFile(jasperFilePathName);
                        JasperCompileManager.compileReportToFile(pathFileName);
                    }
                }
                break;
            }
        }

        return jasperFilePathName;
    }

    // ////////////////////////////////////
    public static List<Parameter> setParameterValue(String formElement, String reportId, String pageNo) {
        ReportDataCache reportDataCache = ReportDataCache.getInstance();
        List<Parameter> parameterList = reportDataCache.getReportQueryParameter(reportId);
        String name;
        if(StringUtil.empty(formElement)) {
            return parameterList;
        }
        //为了解决业务上通过超链接传参，特写下以下语句
        String[] formElements = StringUtil.split(formElement, ",");
        Map<String, String> formElementMap = new HashMap<String, String>();
        for(int i = 0; i < formElements.length; i++) {
            String[] formElementValue = StringUtil.split(formElements[i], ":");
            if(formElementValue.length == 2) {
                if(StringUtil.empty(formElementValue[1])) {
                    formElementValue[1] = "";
                }
                formElementMap.put(formElementValue[0], formElementValue[1]);
            }else{
                formElementMap.put(formElementValue[0], "");
            }

        }
        //以下是把业务上传的参数进行相关处理
        for(Parameter parameter : parameterList) {
            name = parameter.getName();
            //不是业务上传的参数
            if(parameter.isOperation()) {
                if(!StringUtil.empty(name)) {
                    if(StringUtil.empty(formElementMap.get(name))) {
                        parameter.setValue("");
                    } else {
                        parameter.setValue(formElementMap.get(name));
                    }

                }
            } else {
                if(StringUtil.equals(parameter.getName(), "page_no")) { 
                    parameter.setValue(pageNo);
                } else  if(formElementMap.containsKey(name)){//在业务传参中含有该参数，那么应该把值给换掉
                    parameter.setValue(formElementMap.get(name));
                } 
            }

        }
        return parameterList;
    }

    // //////////////////////////////////////////////
    private static JasperPrint jasperPrintBuilder(HttpServletRequest request, List<Parameter> parameterList, JasperShowBean jasperShowBean, String reportId) throws Throwable {

        Map<String, Object> parameters = new HashMap<String, Object>();
        String jasperFilePath = JasperUtil.jasperCompileById(reportId);
        JasperReport jasperReport = (JasperReport) JRLoader.loadObject(jasperFilePath);
        String queryCountSql = jasperReport.getQuery().getText();
        queryCountSql = StringUtil.replace(queryCountSql, "$P{page_row}", "10000000");
        queryCountSql = StringUtil.replace(queryCountSql, "$P{page_no}", "0");
        String page_row = "50";
        for(Parameter parameter : parameterList) {
            if(StringUtil.equals(parameter.getType(), Parameter.TYPE_BR) || StringUtil.equals(parameter.getType(), Parameter.TYPE_CHARACTER)) {
                continue;
            }
            // 如果是Session参数，现在就赋值
            if(StringUtil.equals(parameter.getType(), Parameter.TYPE_SESSION)) {
                try {
                    User user = UserContext.getUserContext(request).getUser();
                    Method method = user.getClass().getMethod("get" + StringUtil.upperFirst(parameter.getName()));
                    String sessionValue = (String) method.invoke(user, new Object[] {});
                    parameter.setValue(sessionValue);
                    parameters.put(parameter.getName(), sessionValue);
                    queryCountSql = StringUtil.replace(queryCountSql, "$P{" + parameter.getName() + "}", "'" + sessionValue + "'");
                } catch(Throwable e) {
                    //e.printStackTrace();
                    parameter.setValue("");
                }
            } else if(StringUtil.equals(parameter.getVtype(), Parameter.VTYPE_BOOLEAN)) {
                parameters.put(parameter.getName(), new Boolean(parameter.getValue()));
            } else if(StringUtil.equals(parameter.getVtype(), Parameter.VTYPE_DOUBLE)) {
                queryCountSql = StringUtil.replace(queryCountSql, "$P{" + parameter.getName() + "}", parameter.getValue());
                parameters.put(parameter.getName(), NumberUtil.toDouble(parameter.getValue(), 0));
            } else if(StringUtil.equals(parameter.getVtype(), Parameter.VTYPE_INT)) {
                if(StringUtil.equals(parameter.getName(), "page_row")) {
                    page_row = parameter.getValue();
                }
                queryCountSql = StringUtil.replace(queryCountSql, "$P{" + parameter.getName() + "}", parameter.getValue());
                parameters.put(parameter.getName(), NumberUtil.toInt(parameter.getValue(), 0));
            } else if(StringUtil.equals(parameter.getVtype(), Parameter.VTYPE_LONG)) {
                queryCountSql = StringUtil.replace(queryCountSql, "$P{" + parameter.getName() + "}", parameter.getValue());
                parameters.put(parameter.getName(), NumberUtil.toLong(parameter.getValue(), 0));
            } else if(StringUtil.equals(parameter.getVtype(), Parameter.VTYPE_STRING)) {
                parameters.put(parameter.getName(), parameter.getValue());
                queryCountSql = StringUtil.replace(queryCountSql, "$P{" + parameter.getName() + "}", "'" + parameter.getValue() + "'");
            }

        }
        JasperPrint jasperPrint = getJasperPrint(reportId,parameters, jasperReport);
        int querySumCount = getQueryCount(reportId,queryCountSql);
        jasperShowBean.setQuerySumCount(querySumCount);
        jasperShowBean.setPage_row(NumberUtil.toInt(page_row, 1));
        return jasperPrint;
    }

    //获取Jasper参数
    private static JasperPrint getJasperPrint(String reportId,Map<String, Object> parameters, JasperReport jasperReport) throws Throwable, JRException {
        Connection connection = null;
        JasperPrint jasperPrint = null;
        try {
            connection = getReportConnction(reportId);
            JRParameter[] jrParameters = jasperReport.getParameters();
            for(JRParameter jrParameter : jrParameters) {//子报表处理 
                if(StringUtil.equals(jrParameter.getName(), "SUBREPORT_DIR")) {
                    String parameterValue = jrParameter.getDefaultValueExpression().getText();
                    String subReportFileName = StringUtil.replace(parameterValue, ".jasper", "");
                    subReportFileName = StringUtil.replace(subReportFileName, "\"", "");
                    String jasperFilePathName = jasperCompileByName(subReportFileName);
                    parameters.put("SUBREPORT_DIR", jasperFilePathName + "/");
                    break;
                }
            } 
            for(JRParameter jrParameter : jrParameters) { //有公司标志等图像的相对路径处理
                if(StringUtil.equals(jrParameter.getName(), "IMAGE_DIR")) { 
                    parameters.put("IMAGE_DIR", WebContext.toHomeRootPath());
                    break;
                }
            }
            Object tempObject=0;
            ReportDataCache reportDataCache = ReportDataCache.getInstance();
            //获取该报表的数据库名称，主要是解决各个数据库的翻页条件不一样
            if(StringUtil.equalsIgnoreCase(reportDataCache.getReportDBName(reportId),"mysql")){
                //由于Mysql的limit采用的是行数，显示条数规则，故在这里进行转换
                tempObject=parameters.get("page_no"); 
                //计算开始的行数
                int startRow=NumberUtil.toInt(parameters.get("page_row")+"", 1)* (NumberUtil.toInt(tempObject+"", 0)-1);
                parameters.put("page_no", startRow);
            }
            jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, connection);
            parameters.put("page_no",tempObject);
        } finally {
            DBHelper.closeConnection(connection);
        }
        return jasperPrint;
    }

    // ////////////////////////////////////
    private static int getQueryCount(String reportId,String querySql) {
        int count = 0;
        Connection connection = null;
        Statement statement = null;
        ResultSet result = null;
        if(StringUtil.empty(querySql)) {
            return count;
        }
        try {
            connection = getReportConnction(reportId);
            statement = connection.createStatement();
            result = statement.executeQuery("select count(*)  from (" + querySql + ") t");
            // result = statement.executeQuery("select count(*) from t_user");
            result.next();
            count = result.getInt(1);
        } catch(Exception e) {
            e.printStackTrace();
        } finally {
            DBHelper.closeResultSet(result);
            DBHelper.closeStatement(statement);
            DBHelper.closeConnection(connection);
        }
        return count;
    }

    // ////////////////////////////////////
    public static JasperPrint getDownLoadJasperPrint(HttpServletRequest request,String reportId,String formElementValue) throws Throwable {
        String jasperFilePath = JasperUtil.jasperCompileById(reportId);
        JasperReport jasperReport = (JasperReport) JRLoader.loadObject(jasperFilePath);
        Map<String, Object> parameters = new HashMap<String, Object>(); 
        List<Parameter> parameterList = setParameterValue(formElementValue, reportId, "1");
        for(Parameter parameter : parameterList) {
            if(StringUtil.equals(parameter.getType(), Parameter.TYPE_BR) || StringUtil.equals(parameter.getType(), Parameter.TYPE_CHARACTER)) {
                continue;
            }
            // 如果是Session参数，现在就赋值
            if(StringUtil.equals(parameter.getType(), Parameter.TYPE_SESSION)) {
                try {
                    User user = UserContext.getUserContext(request).getUser();
                    Method method = user.getClass().getMethod("get" + StringUtil.upperFirst(parameter.getName()));
                    String sessionValue = (String) method.invoke(user, new Object[] {});
                    parameter.setValue(sessionValue);
                    parameters.put(parameter.getName(), sessionValue);
                } catch(Throwable e) {
                    e.printStackTrace();
                    parameter.setValue("");
                }
            } else if(StringUtil.equals(parameter.getVtype(), Parameter.VTYPE_BOOLEAN)) {
                parameters.put(parameter.getName(), new Boolean(parameter.getValue()));
            } else if(StringUtil.equals(parameter.getVtype(), Parameter.VTYPE_DOUBLE)) {
                parameters.put(parameter.getName(), NumberUtil.toDouble(parameter.getValue(), 0));
            } else if(StringUtil.equals(parameter.getVtype(), Parameter.VTYPE_INT)) {
                if(StringUtil.equals(parameter.getName(), "page_row")) {
                    parameters.put(parameter.getName(), NumberUtil.toInt("10000000"));
                } else {
                    parameters.put(parameter.getName(), NumberUtil.toInt(parameter.getValue(), 0));
                }

            } else if(StringUtil.equals(parameter.getVtype(), Parameter.VTYPE_LONG)) {
                parameters.put(parameter.getName(), NumberUtil.toLong(parameter.getValue(), 0));
            } else if(StringUtil.equals(parameter.getVtype(), Parameter.VTYPE_STRING)) {
                parameters.put(parameter.getName(), parameter.getValue());
            }

        } 
        return getJasperPrint(reportId,parameters, jasperReport); 

    }

    // ////////////////////////////////////
    public static String downloadJasperFile(HttpServletRequest request,String reportId, String downloadType, String userPk, HttpServletResponse response,String formElementValue) throws Throwable {
        String destFilPath = java.net.URLDecoder.decode(ReportDataCache.class.getResource("/").getPath() + "jasper/", "UTF-8") + "/temp/" + userPk + "/";
        destFilPath = destFilPath.replace("%20", " ");
        if(destFilPath.startsWith("/")) {
            destFilPath = destFilPath.substring(1);
        }
        if(destFilPath.startsWith("/")) {
            destFilPath = destFilPath.substring(1);
        }
        JasperPrint jasperPrint = getDownLoadJasperPrint(request,reportId,formElementValue);
        FileUtil.touchPath(destFilPath); 
        //FileUtil.deleteDirectory(destFilPath,false);
        ReportDataCache reportDataCache = ReportDataCache.getInstance();
        String jasperReportName = reportDataCache.getJasperReportName(reportId);
        File destFile = new File(destFilPath, jasperReportName + "_" + timeInstance() + "." + downloadType);
        if(StringUtil.equals(downloadType, "csv")) {
            JRCsvExporter exporter = new JRCsvExporter();
            //
            exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
            exporter.setParameter(JRExporterParameter.OUTPUT_FILE_NAME, destFile.toString());
            exporter.setParameter(JRExporterParameter.CHARACTER_ENCODING, "GB2312");
            exporter.exportReport();
        } else if(StringUtil.equals(downloadType, "xls")) {
            // xls
            JRXlsExporter exporter = new JRXlsExporter();

            exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
            exporter.setParameter(JRExporterParameter.OUTPUT_FILE_NAME, destFile.toString());
            exporter.setParameter(JRXlsExporterParameter.IS_ONE_PAGE_PER_SHEET, Boolean.FALSE);
            exporter.setParameter(JRXlsExporterParameter.IS_REMOVE_EMPTY_SPACE_BETWEEN_ROWS, Boolean.TRUE); // 删除记录最下面的空行
            exporter.setParameter(JRXlsExporterParameter.IS_ONE_PAGE_PER_SHEET, Boolean.FALSE);// 删除多余的ColumnHeader
            exporter.setParameter(JRXlsExporterParameter.IS_WHITE_PAGE_BACKGROUND, Boolean.FALSE);// 显示边框
            exporter.setParameter(JRExporterParameter.CHARACTER_ENCODING, "GB2312");
            exporter.exportReport();
        } else if(StringUtil.equals(downloadType, "xlsx")) {

            JRXlsxExporter exporter = new JRXlsxExporter();

            exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
            exporter.setParameter(JRExporterParameter.OUTPUT_FILE_NAME, destFile.toString());
            exporter.setParameter(JRXlsExporterParameter.IS_ONE_PAGE_PER_SHEET, Boolean.FALSE);
            exporter.setParameter(JRXlsExporterParameter.IS_REMOVE_EMPTY_SPACE_BETWEEN_ROWS, Boolean.TRUE); // 删除记录最下面的空行
            exporter.setParameter(JRXlsExporterParameter.IS_ONE_PAGE_PER_SHEET, Boolean.FALSE);// 删除多余的ColumnHeader
            exporter.setParameter(JRXlsExporterParameter.IS_WHITE_PAGE_BACKGROUND, Boolean.FALSE);// 显示边框
            exporter.setParameter(JRExporterParameter.CHARACTER_ENCODING, "GB2312");
            exporter.exportReport();
        } else if(StringUtil.equals(downloadType, "pdf")) {
            JRPdfExporter exporter = new JRPdfExporter();
            exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
            exporter.setParameter(JRExporterParameter.OUTPUT_FILE, destFile);
            // exporter.setParameter(JRPdfExporterParameter.IS_ENCRYPTED,
            // Boolean.TRUE);
            // exporter.setParameter(JRPdfExporterParameter.IS_128_BIT_KEY,
            // Boolean.TRUE);
            // exporter.setParameter(JRPdfExporterParameter.USER_PASSWORD,
            // "jasper");
            // exporter.setParameter(JRPdfExporterParameter.OWNER_PASSWORD,
            // "reports");
            // exporter.setParameter(
            // JRPdfExporterParameter.PERMISSIONS,
            // new Integer(PdfWriter.ALLOW_COPY | PdfWriter.ALLOW_PRINTING)
            // );

            exporter.exportReport();
        } else if(StringUtil.equals(downloadType, "html")) {
            JasperExportManager.exportReportToHtmlFile(jasperPrint, destFile.toString());
        }
        return destFile.getPath();
    }
 

    public synchronized  static String chartJasperFileMake(String reportId, String userPk, HttpServletRequest request,String formElementValue) throws Throwable {
        String destFilPath = WebContext.toHomeRootPath() + "jsp/jasper/temp/" + userPk + "/";
        destFilPath = destFilPath.replace("%20", " ");
        if(destFilPath.startsWith("/")) {
            destFilPath = destFilPath.substring(1);
        }
        if(destFilPath.startsWith("/")) {
            destFilPath = destFilPath.substring(1);
        }
        
        JasperPrint jasperPrint = getDownLoadJasperPrint(request,reportId,formElementValue);
        FileUtil.touchPath(destFilPath); 
       // FileUtil.deleteDirectory(destFilPath,false);
        String destFileName=destFilPath+reportId + timeInstance() + ".html";
       // File destFile = new File(destFilPath, reportId + timeInstance() + ".html");
        JRHtmlExporter exporter = new JRHtmlExporter();
        //JRHtmlExporterParameter.HTML_HEADER
        exporter.setParameter(JRHtmlExporterParameter.HTML_HEADER, "<div id=\""+reportId+"Id\">");
        exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
        exporter.setParameter(JRExporterParameter.OUTPUT_FILE_NAME, destFileName);
        exporter.exportReport();
        //JasperExportManager.exportReportToHtmlFile(jasperPrint, destFile.toString());
        //return destFileName;
        return  "/jsp/jasper/temp/" + userPk + "/" + reportId + timeInstance() + ".html";
    }

    // ////////////////////////////////////
    private static String timeInstance() {
        Calendar calendar = Calendar.getInstance();
        return TimeUtil.toString(calendar, TimeUtil.yearMonthDayTimeFormat);
    }
    //获取报表数据源链接
    public static Connection getReportConnction(String reportId){ 
        try {
           String dataSourceSrc= ReportDataCache.getInstance().getReportdataSourceSrc(reportId);
           if(StringUtil.equals(dataSourceSrc,"dataSourceCti")){
               return SpringBeanFactory.getCtiConnection();
           }if(StringUtil.equals(dataSourceSrc,"dataSourceWebSite")){
               return SpringBeanFactory.getWebSiteConnection();
           } else{
               return SpringBeanFactory.getConnection();
           }
           
        } catch(Exception e) {
            LogUtil.writeLog(e);
            return null;
        }
            
    }
}
