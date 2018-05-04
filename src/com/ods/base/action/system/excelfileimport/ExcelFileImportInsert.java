/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.action.system.excelfileimport;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ods.base.bo.system.excelfileimport.ExeclFileImportInfo;
import com.ods.base.bo.system.excelfileimport.ExeclFileImportTempContent;
import com.ods.util.config.bean.xml.fileImport.FileImport;
import com.ods.util.config.bean.xml.fileImport.FileImports;
import com.ods.util.config.bean.xml.fileImport.FileImportsDataCache;
import com.ods.util.db.DBHelper;
import com.ods.util.guid.GuidGender;
import com.ods.util.hibernate.SpringHibernate;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.spring.SpringBeanFactory;
import com.ods.util.type.ObjectUtil;
import com.ods.util.type.StringUtil;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * ExcelFileImportInsert.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * ExcelFileImportInsert类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * ExcelFileImportInsert类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-3-8, cause, hou.manyuan@163.com, 新建<br>
 * 
 * @author :cui_wenke
 * @since :2011-3-8
 * @version:1.0
 */
public class ExcelFileImportInsert {

    // 加载错误信息
    public void appendError(StringBuilder sb, int sheet, int row, int colmun, String value, String msg) {
        sb.append("[\"第").append(row).append("行\",\"第").append(colmun).append("列\",\"").append(value).append("\",\"").append(msg)
                .append("\"],");
    }

    // 校验导入值
    @SuppressWarnings("unused")
    private void checkImportExcelFileDataValidate(StringBuilder errorContent, String execlFileImportTypeId, int sheetNo,
            int rowNum1, int columnNum1, String cellValue) {
        int rowNum = rowNum1;
        int columnNum = columnNum1;
        // 获取检验标准
        Map<String, String> checkRuleMap = getCheckCellDataRule(execlFileImportTypeId);
        if(checkRuleMap.size() > 0) {
            // 获取行号和列号及其校验规则
            String singleValidateRule = checkRuleMap.get(columnNum + "");
            // String[] singleValidateRules =
            // StringUtil.split(singleValidateRuleValue, "-");
            // for(String singleValidateRule : singleValidateRules) {
            // 校验值规则值
            // notNull：表示非空,int：表示是整数,long:表示是长整数,double:表示是浮点数
            if(StringUtil.equalsIgnoreCase(singleValidateRule, "notNull") && StringUtil.empty(cellValue)) {// 非空验证
                appendError(errorContent, sheetNo + 1, rowNum, columnNum, "", "内容为空");
                // break;
            } else if(StringUtil.equalsIgnoreCase(singleValidateRule, "int")) {// 整数验证
                try {
                    new Integer(cellValue);
                } catch(Throwable e) {
                    appendError(errorContent, sheetNo + 1, rowNum, columnNum, cellValue, "内容值不是整数");
                    // break;
                }
            } else if(StringUtil.equalsIgnoreCase(singleValidateRule, "null-int")) {// 可以为空，
                // 如果有值，那么必须是整数
                try {
                    if(!StringUtil.empty(cellValue)) {
                        new Integer(cellValue);
                    }
                } catch(Throwable e) {
                    appendError(errorContent, sheetNo + 1, rowNum, columnNum, cellValue, "内容值不是整数");
                    // break;
                }
            } else if(StringUtil.equalsIgnoreCase(singleValidateRule, "notnull-int")) {// 可以为空，
                // 如果有值，那么必须是整数
                try {
                    new Integer(cellValue);
                } catch(Throwable e) {
                    appendError(errorContent, sheetNo + 1, rowNum, columnNum, cellValue, "内容值不是整数");
                    // break;
                }
            } else if(StringUtil.equalsIgnoreCase(singleValidateRule, "long")) {// 整数验证
                try {
                    new Long(cellValue);
                } catch(Throwable e) {
                    appendError(errorContent, sheetNo + 1, rowNum, columnNum, cellValue, "内容值不是长整数");
                    // break;
                }
            } else if(StringUtil.equalsIgnoreCase(singleValidateRule, "null-long")) {// 可以为空，
                // 如果有值，那么必须是整数
                try {
                    if(!StringUtil.empty(cellValue)) {
                        new Long(cellValue);
                    }
                } catch(Throwable e) {
                    appendError(errorContent, sheetNo + 1, rowNum, columnNum, cellValue, "内容值不是长整数");
                    // break;
                }
            } else if(StringUtil.equalsIgnoreCase(singleValidateRule, "notnull-long")) {// 可以为空，
                // 如果有值，那么必须是整数
                try {
                    new Long(cellValue);
                } catch(Throwable e) {
                    appendError(errorContent, sheetNo + 1, rowNum, columnNum, cellValue, "内容值不是长整数");
                    // break;
                }
            } else if(StringUtil.equalsIgnoreCase(singleValidateRule, "double")) {// 浮点数验证
                try {
                    new Double(cellValue);
                } catch(Throwable e) {
                    appendError(errorContent, sheetNo + 1, rowNum, columnNum, cellValue, "内容值不是浮点数");
                    // break;
                }
            } else if(StringUtil.equalsIgnoreCase(singleValidateRule, "null-double")) {// 可以为空，
                // 如果有值，那么必须是浮点数
                try {
                    if(!StringUtil.empty(cellValue)) {
                        new Double(cellValue);
                    }
                } catch(Throwable e) {
                    appendError(errorContent, sheetNo + 1, rowNum, columnNum, cellValue, "内容值不是浮点数");
                    // break;
                }
            } else if(StringUtil.equalsIgnoreCase(singleValidateRule, "notnull-double")) {// 不可以为空，
                // 如果有值，那么必须是浮点数
                try {
                    new Double(cellValue);
                } catch(Throwable e) {
                    appendError(errorContent, sheetNo + 1, rowNum, columnNum, cellValue, "内容值不是浮点数");
                    // break;
                }
            }
        }
        // }
    }

    // 获取指定文件的校验规则
    private Map<String, String> getCheckCellDataRule(String execlFileImportTypeId) {
        FileImportsDataCache fileImportsDataCache = FileImportsDataCache.getInstance();
        FileImports fileImports = fileImportsDataCache.getFileImports();
        List<FileImport> fileImportList = fileImports.getFileImportList();
        Map<String, String> checkRuleMap = new HashMap<String, String>();
        for(FileImport fileImport : fileImportList) {
            if(StringUtil.equals(execlFileImportTypeId, fileImport.getId())) {
                String validateRule = fileImport.getCheckCellDataRule();
                String[] validateAllRowColRules = StringUtil.split(validateRule, "|");
                for(String string : validateAllRowColRules) {
                    String[] validateRowColRules = StringUtil.split(string, ",");
                    if(validateRowColRules != null && validateRowColRules.length > 1) {
                        checkRuleMap.put(validateRowColRules[0], validateRowColRules[1]);
                    }
                }
                break;
            }
        }
        return checkRuleMap;
    }

    // 通讯录导入
    public void insertAddresslistData(ExeclFileImportInfo execlFileImportInfo, StringBuilder errorContentBuilder)
            throws Throwable {
        // 返回本次导入的所有数据
        SpringHibernate springHibernate = (SpringHibernate) SpringBeanFactory.getBean("DAOProxy");
        QueryCondition qc = new QueryCondition();
        // 分组名称-主键之间的关系
        Map<String, String> teamMap = new HashMap<String, String>();
        // 获取通讯录分组信息
        getAddressTeam(execlFileImportInfo, teamMap);
        // 本次导入的所有数据
        qc.equals("execlFileImportPk", execlFileImportInfo.getExeclFileImportPk());
        QueryResult qr = springHibernate.select(qc, ExeclFileImportTempContent.class);
        if(qr == null) {
            return;
        }
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            // 开始导入到业务表中
            connection = SpringBeanFactory.getConnection();
            statement = connection
                    .prepareStatement("insert into t_address_list (address_pk,team_pk,show_type,linkman_name,linkman_tel1,linkman_tel2,linkman_tel3,linkman_address,memo,first_org_pk,create_org_pk,create_user_pk,create_time,delete_type) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ExeclFileImportTempContent temp = null;
            StringBuilder errorBuilderTemp = new StringBuilder();
            for(int k = 0; k < qr.size(); k++) {
                temp = (ExeclFileImportTempContent) qr.get(k);
                // 根据检验规则检查
                if(!StringUtil.empty(temp.getFileColmun1())) {
                    if(errorBuilderTemp.length() > 0) {
                        errorContentBuilder.append(errorBuilderTemp.toString());
                        errorBuilderTemp.delete(0, errorBuilderTemp.length());
                        return;
                    } else if(!teamMap.containsKey(temp.getFileColmun1().toUpperCase())) {
                        appendError(errorContentBuilder, temp.getSheetNo(), temp.getRowNo(), 1, temp.getFileColmun1()
                                .toUpperCase(), "导入文件的分组名称在系统中不存在，请先添加对应的分组信息！");
                        continue;
                    }
                    errorBuilderTemp.delete(0, errorBuilderTemp.length());
                }

                if(StringUtil.empty(temp.getFileColmun1()) && StringUtil.empty(temp.getFileColmun2()) && StringUtil.empty(temp
                        .getFileColmun4()) && StringUtil.empty(temp.getFileColmun7())) {
                    appendError(errorContentBuilder, temp.getSheetNo(), temp.getRowNo(), 0, temp.getFileColmun2(), "该行内容为空!");
                    continue;
                }
                statement.setObject(1, new GuidGender(true).toString()); // 主键
                statement.setString(2, teamMap.get((String) ObjectUtil.getProperty(temp, "fileColmun" + 1)));// 分组主键
                if(StringUtil.contains(temp.getFileColmun7(), "公共")) {// 显示类型
                    statement.setInt(3, 0);
                } else if(StringUtil.contains(temp.getFileColmun7(), "私有")) {
                    statement.setInt(3, 1);
                }
                statement.setString(4, temp.getFileColmun2());// 联系人名称
                statement.setString(5, temp.getFileColmun4());// 联系人电话1
                statement.setString(6, temp.getFileColmun5());// 联系人电话2
                statement.setString(7, temp.getFileColmun6());// 联系人电话3
                statement.setString(8, temp.getFileColmun3());// 联系人地址
                statement.setString(9, temp.getFileColmun8());// 备注
                statement.setString(10, execlFileImportInfo.getFirstOrgPk());// 一级组织机构主键
                statement.setString(11, execlFileImportInfo.getCreateOrgPk());// 创建人组织机构主键
                statement.setString(12, execlFileImportInfo.getCreateUserPk());// 创建人主键
                statement.setString(13, execlFileImportInfo.getCreateTime());// 创建时间
                statement.setInt(14, 0); // 软删除标识 0未删除 1已删除
                statement.addBatch();
            }

            statement.executeBatch();
            connection.commit();

        } finally {
            DBHelper.closeStatement(statement);
            DBHelper.closeConnection(connection);
        }
    }

    // 查询通讯录分组表获得分组信息
    private void getAddressTeam(ExeclFileImportInfo execlFileImportInfo, Map<String, String> mapProducePk) throws Throwable {
        SpringHibernate springHibernate = (SpringHibernate) SpringBeanFactory.getBean("DAOProxy");
        // 查询铜须路分组信息
        QueryCondition qc = new QueryCondition();
        qc.equals("deleteType", 0);
//        QueryResult qr = springHibernate.select(qc, AddressTeam.class);
//        for(int i = 0; i < qr.size(); i++) {
//            AddressTeam addressTeam = (AddressTeam) qr.get(i);
//            if(mapProducePk != null) {
//                mapProducePk.put(addressTeam.getTeamName().toUpperCase().trim(), addressTeam.getTeamPk());
//            }
//        }
    }
    
     // 导入
    public void insertSearchResultlistData(ExeclFileImportInfo execlFileImportInfo, StringBuilder errorContentBuilder)
            throws Throwable {
   
        // 返回本次导入的所有数据
        SpringHibernate springHibernate = (SpringHibernate) SpringBeanFactory.getBean("DAOProxy");
        QueryCondition qc = new QueryCondition();
        // 分组名称-主键之间的关系
        Map<String, String> teamMap = new HashMap<String, String>();
        
        // 本次导入的所有数据
        qc.equals("execlFileImportPk", execlFileImportInfo.getExeclFileImportPk());
        QueryResult qr = springHibernate.select(qc, ExeclFileImportTempContent.class);
        if(qr == null) {
            return;
        }
       
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            // 开始导入到业务表中
            connection = SpringBeanFactory.getConnection();
            statement = connection
                    .prepareStatement("insert into t_search_result (search_result_pk,contract_pk,search_result_name,author,company,source,issn,result_abstract,keyword,result_class,order_no,create_org_pk,create_user_pk,create_time,delete_type) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            ExeclFileImportTempContent temp = null;
            StringBuilder errorBuilderTemp = new StringBuilder();
            
            ExeclFileImportInfo fileUpload = (ExeclFileImportInfo) springHibernate.selectByPk("execlFileImportPk",
                    execlFileImportInfo.getExeclFileImportPk(), ExeclFileImportInfo.class);
            
            for(int k = 0; k < qr.size(); k++) {
                temp = (ExeclFileImportTempContent) qr.get(k);
                // 根据检验规则检查
                if(!StringUtil.empty(temp.getFileColmun1())) {
                    if(errorBuilderTemp.length() > 0) {
                        errorContentBuilder.append(errorBuilderTemp.toString());
                        errorBuilderTemp.delete(0, errorBuilderTemp.length());
                        return;
                    } else if(!teamMap.containsKey(temp.getFileColmun1().toUpperCase())) {
                        appendError(errorContentBuilder, temp.getSheetNo(), temp.getRowNo(), 1, temp.getFileColmun1()
                                .toUpperCase(), "导入文件的分组名称在系统中不存在，请先添加对应的分组信息！");
                        continue;
                    }
                    errorBuilderTemp.delete(0, errorBuilderTemp.length());
                }

                if(StringUtil.empty(temp.getFileColmun1()) && StringUtil.empty(temp.getFileColmun2()) && StringUtil.empty(temp
                        .getFileColmun4()) && StringUtil.empty(temp.getFileColmun7())) {
                    appendError(errorContentBuilder, temp.getSheetNo(), temp.getRowNo(), 0, temp.getFileColmun2(), "该行内容为空!");
                    continue;
                }
                statement.setObject(1, new GuidGender(true).toString()); // 主键
                statement.setString(2, fileUpload.getFirstOrgPk());
                statement.setString(3, getnoteString(temp,"Title"));// 联系人名称
                statement.setString(4, getnoteString(temp,"Author"));// 联系人电话1
                statement.setString(5, getnoteString(temp,"Publisher"));// 联系人电话2
                statement.setString(6, getnoteString(temp,"Database"));// 
                statement.setString(7, getnoteString(temp,"ISSN"));//
                statement.setString(8, getnoteString(temp,"Abstract"));//
                statement.setString(9, getnoteString(temp,"Keywords"));// 
                statement.setString(10,"");//分类
                statement.setString(11, "0");//排序
                statement.setString(12, execlFileImportInfo.getCreateOrgPk());// 创建人组织机构主键
                statement.setString(13, execlFileImportInfo.getCreateUserPk());// 创建人主键
                statement.setString(14, execlFileImportInfo.getCreateTime());// 创建时间
                statement.setInt(15, 0); // 软删除标识 0未删除 1已删除
                statement.addBatch();
            }

            statement.executeBatch();
            connection.commit();

        } finally {
            DBHelper.closeStatement(statement);
            DBHelper.closeConnection(connection);
        }
    }
    
    public String getnoteString(ExeclFileImportTempContent ef,String name){
        int icount = 3;
        String svalue="";
        
        if(ef.getFileColmun1() != null && ef.getFileColmun1().toString().trim().indexOf(name) >-1){
           String[] values = ef.getFileColmun1().toString().trim().split(":");
           if(values.length == 2) svalue = values[1];return svalue;
        }
        
        if(ef.getFileColmun2() != null && ef.getFileColmun2().toString().trim().indexOf(name) >-1){
            String[] values = ef.getFileColmun2().toString().trim().split(":");
            if(values.length == 2) svalue = values[1];return svalue;
        }
        
        if(ef.getFileColmun3() != null && ef.getFileColmun3().toString().trim().indexOf(name) >-1){
            String[] values = ef.getFileColmun3().toString().trim().split(":");
            if(values.length == 2) svalue = values[1];return svalue;
        }
        if(ef.getFileColmun4() != null && ef.getFileColmun4().toString().trim().indexOf(name) >-1){
            String[] values = ef.getFileColmun4().toString().trim().split(":");
            if(values.length == 2) svalue = values[1];return svalue;
        }
        
        if(ef.getFileColmun5() != null && ef.getFileColmun5().toString().trim().indexOf(name) >-1){
            String[] values = ef.getFileColmun5().toString().trim().split(":");
            if(values.length == 2) svalue = values[1];return svalue;
        }
        
        if(ef.getFileColmun6() != null && ef.getFileColmun6().toString().trim().indexOf(name) >-1){
            String[] values = ef.getFileColmun6().toString().trim().split(":");
            if(values.length == 2) svalue = values[1];return svalue;
        }
        
        if(ef.getFileColmun7() != null && ef.getFileColmun7().toString().trim().indexOf(name) >-1){
            String[] values = ef.getFileColmun7().toString().trim().split(":");
            if(values.length == 2) svalue = values[1];return svalue;
        }
        
        
        if(ef.getFileColmun8() != null && ef.getFileColmun8().toString().trim().indexOf(name) >-1){
            String[] values = ef.getFileColmun8().toString().trim().split(":");
            if(values.length == 2) svalue = values[1];return svalue;
        }
        
        
        if(ef.getFileColmun9() != null && ef.getFileColmun9().toString().trim().indexOf(name) >-1){
            String[] values = ef.getFileColmun9().toString().trim().split(":");
            if(values.length == 2) svalue = values[1];return svalue;
        }
        
        
        if(ef.getFileColmun10() != null && ef.getFileColmun10().toString().trim().indexOf(name) >-1){
            String[] values = ef.getFileColmun10().toString().trim().split(":");
            if(values.length == 2) svalue = values[1];return svalue;
        }
        
        if(ef.getFileColmun11() != null && ef.getFileColmun11().toString().trim().indexOf(name) >-1){
            String[] values = ef.getFileColmun11().toString().trim().split(":");
            if(values.length == 2) svalue = values[1];return svalue;
        }
        
        if(ef.getFileColmun12() != null && ef.getFileColmun12().toString().trim().indexOf(name) >-1){
            String[] values = ef.getFileColmun12().toString().trim().split(":");
            if(values.length == 2) svalue = values[1];return svalue;
        }
        
        
        if(ef.getFileColmun13() != null && ef.getFileColmun13().toString().trim().indexOf(name) >-1){
            String[] values = ef.getFileColmun13().toString().trim().split(":");
            if(values.length == 2) svalue = values[1];return svalue;
        }
        
        
        if(ef.getFileColmun14() != null && ef.getFileColmun14().toString().trim().indexOf(name) >-1){
            String[] values = ef.getFileColmun14().toString().trim().split(":");
            if(values.length == 2) svalue = values[1];return svalue;
        }
        
        
        
        if(ef.getFileColmun15() != null && ef.getFileColmun15().toString().trim().indexOf(name) >-1){
            String[] values = ef.getFileColmun15().toString().trim().split(":");
            if(values.length == 2) svalue = values[1];return svalue;
        }
        
        
        if(ef.getFileColmun16() != null && ef.getFileColmun16().toString().trim().indexOf(name) >-1){
            String[] values = ef.getFileColmun16().toString().trim().split(":");
            if(values.length == 2) svalue = values[1];return svalue;
        }
        
        
        if(ef.getFileColmun17() != null && ef.getFileColmun17().toString().trim().indexOf(name) >-1){
            String[] values = ef.getFileColmun17().toString().trim().split(":");
            if(values.length == 2) svalue = values[1];return svalue;
        }
        
        if(ef.getFileColmun18() != null && ef.getFileColmun18().toString().trim().indexOf(name) >-1){
            String[] values = ef.getFileColmun18().toString().trim().split(":");
            if(values.length == 2) svalue = values[1];return svalue;
        }
        
        
        if(ef.getFileColmun19() != null && ef.getFileColmun19().toString().trim().indexOf(name) >-1){
            String[] values = ef.getFileColmun19().toString().trim().split(":");
            if(values.length == 2) svalue = values[1];return svalue;
        }
        
        
        if(ef.getFileColmun20() != null && ef.getFileColmun20().toString().trim().indexOf(name) >-1){
            String[] values = ef.getFileColmun20().toString().trim().split(":");
            if(values.length == 2) svalue = values[1];return svalue;
        }
        return svalue;
    }
    
  
}
