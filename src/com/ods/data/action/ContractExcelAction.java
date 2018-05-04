/**
*copyright(C)2014
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.data.action;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import jxl.Workbook;
import jxl.format.Border;
import jxl.format.Colour;
import jxl.format.VerticalAlignment;
import jxl.write.Label;
import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;
import jxl.write.WriteException;

import com.ods.base.action.system.excelfileimport.ReportDefineInterface;
import com.ods.data.bo.contract.Contract;
import com.ods.util.UserContext;
import com.ods.util.action.ActionView;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.resource.ResourceUtil;
import com.ods.util.type.EncodingUtil;
import com.ods.util.type.FileUtil;
import com.ods.util.type.NumberUtil;
import com.ods.util.type.StringUtil;

/**
 *<b>系统名称:</b><b>
 *
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 *<b>文件名:</b><br>
 *
 *DepartmentOfficeworkAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *DepartmentOfficeworkAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *DepartmentOfficeworkAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *机关工作推进
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2014年12月22日,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :10325431@qq.com
 *@since  :2014年12月22日
 *@version:1.0
 */
public class ContractExcelAction  extends ActionView{

    /**
    *属性名：serialVersionUID、类型：long、作成日：2014年12月22日.<br>
    *含义：
    */
    private static final long serialVersionUID = 197420055540673494L;
    
    Contract contract = new Contract();
    

    
    
    
    
    public QueryCondition getQc() {
        QueryCondition qc = newQueryConditionOfTable(getRequest());
        
        //工作情况
        String memo = getRequest().getParameter("memo");
        if(!StringUtil.empty(memo)) {
            qc.put("memo", memo);
        }
        //
        String completionState = getRequest().getParameter("completionState");
        if(!StringUtil.empty(completionState)) {
            qc.put("completionState", completionState);
        }
        
        // 时间
        String createTimeS = getRequest().getParameter("createTimeS");
        if(!StringUtil.empty(createTimeS)) {
            qc.greateEquals("createTime", createTimeS + " 00:00:00");
        }
        String createTimeE = getRequest().getParameter("createTimeE");
        if(!StringUtil.empty(createTimeE)) {
            qc.lessEquals("createTime", createTimeE + " 59:59:59");
        }
        //
        int iclass =Integer.valueOf( getRequest().getParameter("iClass"));
        if(iclass == 0){
            qc.put("departmentOfficeworkClass", "每周工作");
        }else if(iclass == 1){
            qc.put("departmentOfficeworkClass", "每月工作");
        }else if(iclass == 3){
            qc.put("departmentOfficeworkClass", "季度工作");
        }else {
            qc.put("departmentOfficeworkClass", "每日工作");
            //可操作de部门
            List<Object> allOrgName = new ArrayList<Object>();
            allOrgName = getAllHaveOrgMap(getNonceUser().getUserPk());
            if(!allOrgName.isEmpty()) {
                qc.in("createOrgPk", allOrgName);
            }
        }
        
       
        qc.equals("createOrgPk", getNonceOrgPk());
        qc.equals("deleteType", NUM_0);
        qc.orderDesc("createTime");
        return qc;
    }
    
    /**
     *列表.<br>
     *工程名:wjbuild<br>
     *包名:com.ods.data.action.departmentofficework<br>
     *方法名:listInfo方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2014年12月20日
     *@return
    */
    public String listInfo() {
        QueryResult qr = null;
        QueryCondition qc = getQc();
        try {
            qr = getSpringHibernate().select(qc, Contract.class);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            qr = null;
        }
        getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
        String[] fields = {"departmentOfficeworkPk","orgPk","orgName","createUserName","departmentOfficeworkClass",
                "workingSituation","completionState","memo","createOrgPk",
                "createUserPk","createTime","deleteType"};
        getRequest().setAttribute(SHOW_TABLE_COLMUN_NAME, fields);
        return SUCCESS;
    }
    
   
    
    public String downLoadExcel() {
        QueryCondition qc = new QueryCondition(getRequest());
        String createTime = getRequest().getParameter("createTimeS");
        String createTimeend =getRequest().getParameter("createTimeE");
        qc.greate("createTime", createTime+" 00:00:00");
        qc.lessEquals("createTime", createTimeend+" 23:59:59");
        qc.orderDesc("createTime");
        QueryResult qr = null;
        try {
            qr = getSpringHibernate().select(qc, Contract.class);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        Workbook wb = null;
        WritableWorkbook wwb = null;
        String downloadDescFileName = "";// 导出文件名称
        File targetFile = null;// 导出的源文件
        try {
            wb = Workbook.getWorkbook(new File(ReportDefineInterface.OFFICEWORK));
            String desFileName = ReportDefineInterface.DOWNLOADFILEPATH + File.separator + UserContext.getUserContext(getRequest()).getUser().getUserPk() + ".xls";
            if(FileUtil.isFileExisted(desFileName)) {
                FileUtil.deleteFile(desFileName);
            }
            targetFile = new File(desFileName);
            wwb = Workbook.createWorkbook(targetFile, wb);
            WritableSheet wws = wwb.getSheet(0);
            // 设置标题名称
            String titleContent = "查新工作情况汇报";
            if(!StringUtil.empty(createTime) && !StringUtil.empty(createTime)) {
                titleContent = "【" + createTime + "】查新工作情况汇报";
            }
            wws = setBasicSheet(wws, titleContent, 5);
            int i = 0, j = 0;// i=描述行，j=获取JAVA BEAN对象
            for(i = 3, j = 0; i < qr.size() + 3 && j < qr.size(); i++, j++) {
                Contract bean = (Contract) qr.get(j);
                WritableCellFormat cellFormatDeatil = null;
                cellFormatDeatil = setDefalutFormat();
                 int num=1;
                //int num = bean.getStockNum() + bean.getLoanNum() + bean.getCheckupNum() + bean.getFixNum();
                //if(1 > num) {
                   // cellFormatDeatil = setOutofFormat();
               // }
                // 序号
                String sxh = String.valueOf(i-2); 
                Label A0 = new Label(0, i,  sxh);
                wws.addCell(A0);
                A0.setCellFormat(cellFormatDeatil);
                // 接题时间
                Label B1 = new Label(1, i, bean.getCreateTime());
                wws.addCell(B1);
                B1.setCellFormat(cellFormatDeatil);
                // 委托单位
                Label C2 = new Label(2, i, bean.getCompany());
                wws.addCell(C2);
                C2.setCellFormat(cellFormatDeatil);
                // 课题名称
                Label D3 = new Label(3, i, bean.getContractName());
                wws.addCell(D3);
                D3.setCellFormat(cellFormatDeatil);
                // 承接人
                Label E4 = new Label(4, i, bean.getOfficeHolder());
                wws.addCell(E4);
                E4.setCellFormat(cellFormatDeatil);
                
                if (bean.getPurposeScope().equals("0")){
                    // 国内
                    Label F4 = new Label(5, i, "1");
                    wws.addCell(F4);
                    F4.setCellFormat(cellFormatDeatil);
                }
                
                if (bean.getPurposeScope().equals("1")){
                    // 国外
                    Label G4 = new Label(6, i, "1");
                    wws.addCell(G4);
                    G4.setCellFormat(cellFormatDeatil);
                }
                
                // 备注
                Label H5 = new Label(7, i, "");
                wws.addCell(H5);
                H5.setCellFormat(cellFormatDeatil);
              
            }
            wwb.write();// 写入Excel文件
            // 下载文件
            downloadDescFileName = wws.getName() + "_" + timeInstanceTwo() + ".xls";
            // System.getProperties()
            getRequest().setAttribute("sourceFileName", new File(desFileName).getName());
            getRequest().setAttribute("descFileName", EncodingUtil.toUtf8String(downloadDescFileName));
            getRequest().setAttribute("successState", true);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            getRequest().setAttribute("messageText", "文件下载失败！");
            getRequest().setAttribute("successState", false);
            return ERROR;
        } finally {
            if(wwb != null) {
                try {
                    wwb.close();
                } catch(Throwable e) {
                    e.printStackTrace();
                }
            }
            if(wb != null) {
                wb.close();
            }
        }
        return SUCCESS;
    }
    
    public WritableSheet setBasicSheet(WritableSheet ws, String titleContent, int row) throws WriteException {
        // 设置标题，样式
        Label A1 = new Label(0, 0, titleContent);
        WritableFont fontA1 = new WritableFont(WritableFont.createFont("宋体"), 18, WritableFont.BOLD);
        WritableCellFormat cellFormatA1 = new WritableCellFormat(fontA1);
        cellFormatA1.setBorder(Border.ALL, jxl.format.BorderLineStyle.THIN); // Border是jxl.format.Border
        cellFormatA1.setBackground(Colour.SKY_BLUE);// 设置单元格背景颜色为天蓝色
        cellFormatA1.setAlignment(jxl.format.Alignment.CENTRE);// 设置文本对其方式，左对齐还是右对齐
        A1.setCellFormat(cellFormatA1);
        ws.addCell(A1);
        // 设置统计查询的时间
        Label F2 = new Label(row, 1, timeInstance());
        WritableFont fontG2 = new WritableFont(WritableFont.createFont("宋体"), 12, WritableFont.NO_BOLD);
        WritableCellFormat cellFormatG2 = new WritableCellFormat(fontG2);
        cellFormatG2.setBorder(Border.ALL, jxl.format.BorderLineStyle.THIN); // Border是jxl.format.Border
        cellFormatG2.setBackground(Colour.SKY_BLUE);// 设置单元格背景颜色为天蓝色
        cellFormatG2.setAlignment(jxl.format.Alignment.LEFT);// 设置文本对其方式，左对齐还是右对齐
        F2.setCellFormat(cellFormatG2);
        ws.addCell(F2);
        return ws;
    }
    
    public WritableCellFormat setDefalutFormat() throws WriteException {
        WritableFont font = new WritableFont(WritableFont.createFont("宋体"), 10, WritableFont.NO_BOLD);
        WritableCellFormat cellFormat = new WritableCellFormat(font);
        cellFormat.setBorder(Border.ALL, jxl.format.BorderLineStyle.THIN); // Border是jxl.format.Border
        cellFormat.setVerticalAlignment(VerticalAlignment.CENTRE); // 垂直对齐
        cellFormat.setAlignment(jxl.format.Alignment.CENTRE);// 设置文本对其方式，左对齐还是右对齐
        return cellFormat;
    }
    
    public WritableCellFormat setOutofFormat() throws WriteException {
        WritableFont font = new WritableFont(WritableFont.createFont("宋体"), 10, WritableFont.NO_BOLD);
        WritableCellFormat cellFormat3 = new WritableCellFormat(font);
        cellFormat3.setBackground(Colour.PINK);// 设置单元格背景颜色为红色
        cellFormat3.setBorder(Border.ALL, jxl.format.BorderLineStyle.THIN); // Border是jxl.format.Border
        cellFormat3.setVerticalAlignment(VerticalAlignment.CENTRE); // 垂直对齐
        cellFormat3.setAlignment(jxl.format.Alignment.CENTRE);// 设置文本对其方式，左对齐还是右对齐
        return cellFormat3;
    }
    
    

}
