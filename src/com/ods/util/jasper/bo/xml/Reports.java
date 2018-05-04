package com.ods.util.jasper.bo.xml;

import java.util.ArrayList;
import java.util.List;

public class Reports {

    private Common common;
    private List<Report> reportList;
    /**
     *common的获取.
     *@return common值返回.
     */
    public Common getCommon() {
        return common;
    }
    /**
     *common的值设定
     *@param common 设定common的值.
     */
    public void setCommon(Common common) {
        this.common = common;
    }
    /**
     *reportList的获取.
     *@return reportList值返回.
     */
    public List<Report> getReportList() {
        if(reportList==null){
            reportList=new ArrayList<Report>();
        }
        return reportList;
    }
    /**
     *reportList的值设定
     *@param reportList 设定reportList的值.
     */
    public void setReportList(List<Report> reportList) {
        if(reportList==null){
            reportList=new ArrayList<Report>();
        }
        this.reportList = reportList;
    }
    
    public void addCommon(Common common){
        this.common=common;
    }
    public void addReportList(Report report){
        if(reportList==null){
            reportList=new ArrayList<Report>();
        }
        reportList.add(report); 
    }
}
