package com.ods.util.jasper.bo.xml;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.digester.Digester;
import org.apache.commons.digester.xmlrules.DigesterLoader;

import com.ods.util.type.StringUtil;

public class ReportDataCache {
    private Reports reports;

    private static ReportDataCache cache;

    /**
     * reports的获取.
     * 
     * @return reports值返回.
     */
    public Reports getReports() {
        if(reports == null) {
            getInstance();
        }
        return reports;
    }

    /**
     * reports的值设定
     * 
     * @param reports 设定reports的值.
     */
    public void setReports(Reports reports) {
        this.reports = reports;
    }

    public synchronized static ReportDataCache getInstance() {
        if(cache == null) {
            cache = new ReportDataCache();
            init();
        }
        return cache;
    }

    private static void init() {
        try {
            String fileAllPath = java.net.URLDecoder.decode(
                    ReportDataCache.class.getResource("/").getPath() + "odsconfig/jasper/", "UTF-8");
            fileAllPath = fileAllPath.replace("%20", " ");
            if(fileAllPath.startsWith("/")) {
                fileAllPath = fileAllPath.substring(1);
            }
            if(fileAllPath.startsWith("/")) {
                fileAllPath = fileAllPath.substring(1);
            }
            File rule = new File(fileAllPath + "report-define-rule.xml");
            Digester digester = DigesterLoader.createDigester(rule.toURI().toURL());
            // 多个配置文件的解决
            File filePath = new File(fileAllPath);
            String[] files = filePath.list();
            Reports reports = new Reports();
            for(int i = 0; i < files.length; i++) {
                if(!StringUtil.equals(files[i], "report-define-rule.xml")) {
                    Reports reportsFile = (Reports) digester.parse(new File(fileAllPath + files[i]));
                    if(reports.getReportList() != null) {
                        reports.getReportList().addAll(reportsFile.getReportList());
                    }
                    if(reportsFile.getCommon() != null) {
                        reports.setCommon(reportsFile.getCommon());
                    }
                }
            }
            cache.setReports(reports);
        } catch(Exception e) {
            e.printStackTrace();
            cache.setReports(new Reports());
        }
    }

    public String getJrxmlName(String reportId) {
        Reports reportsLocal = cache.getReports();
        List<Report> reportList = reportsLocal.getReportList();
        for(Report report : reportList) {
            if(StringUtil.equals(report.getId(), reportId)) {
                return report.getJasperFile();
            }
        }
        return "";
    }

    public String getJasperReportName(String reportId) {
        Reports reportsLocal = cache.getReports();
        List<Report> reportList = reportsLocal.getReportList();
        for(Report report : reportList) {
            if(StringUtil.equals(report.getId(), reportId)) {
                return report.getName();
            }
        }
        return "";
    }

    public String getJasperReportDetailColorStart(String reportId) {
        Reports reportsLocal = cache.getReports();
        List<Report> reportList = reportsLocal.getReportList();
        for(Report report : reportList) {
            if(StringUtil.equals(report.getId(), reportId)) {
                return report.getDetailColorStart();
            }
        }
        return "";
    }

    public List<Parameter> getReportQueryParameter(String reportId) {
        List<Parameter> parameterList = new ArrayList<Parameter>();
        List<Parameter> commonParameterList = cache.getReports().getCommon().getQuery().getParameterList();

        Reports reportsLocal = cache.getReports();
        List<Report> reportList = reportsLocal.getReportList();
        for(Report report : reportList) {
            if(StringUtil.equals(report.getId(), reportId)) {
                if(report.getQuery().getParameterList() != null) {
                    parameterList = report.getQuery().getParameterList();
                }
                break;
            }
        }

        List<String> parameterReportNameList = new ArrayList<String>();
        for(Parameter reportParameter : parameterList) {
            parameterReportNameList.add(reportParameter.getName());
        }

        for(Parameter commonParameter : commonParameterList) {
            if(!parameterReportNameList.contains(commonParameter.getName())) {
                parameterList.add(commonParameter);
            }
        }
        return parameterList;
    }

    // 获取报表数据源名称
    public String getReportdataSourceSrc(String reportId) {
        Reports reportsLocal = cache.getReports();
        List<Report> reportList = reportsLocal.getReportList();
        for(Report report : reportList) {
            if(StringUtil.equals(report.getId(), reportId)) {
                return report.getDataSourceSrc();
            }
        }
        return "";
    }

    // 获取报表数据库名称
    public String getReportDBName(String reportId) {
        Reports reportsLocal = cache.getReports();
        List<Report> reportList = reportsLocal.getReportList();
        for(Report report : reportList) {
            if(StringUtil.equals(report.getId(), reportId)) {
                return report.getDbName();
            }
        }
        return "";
    }

    public void destoryCache() {
        if(cache != null) {
            reports = null;
            cache = null;
        }
    }
}
