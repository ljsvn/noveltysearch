/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.action.system.excelfileimport;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date; 
import java.util.HashMap;
import java.util.List; 
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.ods.base.bo.system.excelfileimport.ExeclFileImportInfo; 
import com.ods.util.config.bean.xml.fileImport.FileImport;
import com.ods.util.config.bean.xml.fileImport.FileImports;
import com.ods.util.config.bean.xml.fileImport.FileImportsDataCache;
import com.ods.util.db.DBHelper;
import com.ods.util.db.DBIExecutePlsql;
import com.ods.util.guid.GuidGender; 
import com.ods.util.spring.SpringBeanFactory; 
import com.ods.util.type.ChinseFullWidthToHalfWidth;
import com.ods.util.type.StringUtil;
import com.ods.util.type.TimeUtil;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * ExcelFileImportUtil.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * ExcelFileImportUtil类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * ExcelFileImportUtil类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * excel文件导入数据库帮助类<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-3-6, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-3-6
 * @version:1.0
 */
public class ExcelFileImportUtil extends ExcelFileImportInsert {
    /**
     * 导入Excel文件内容到t_execl_file_import_temp_content中.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.excelfileimport<br>
     * 方法名:importExcelFileContentInfoTempTable方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2011-3-6
     * @param fileName :带路径的文件名
     * @throws Throwable
     */
    public void importExcelFileContentInfoTempTable(ExeclFileImportInfo execlFileImportInfo) throws Throwable {
        File excelFile = new File(execlFileImportInfo.getExeclFileName());
        // 错误内容载体
        StringBuilder errorContent = new StringBuilder();
        //增加非excel导入
        if (!excelFile.getName().endsWith("xlsx") && !excelFile.getName().endsWith("xls") ){
            getendNote(execlFileImportInfo);
            inserDataToOperationTable(execlFileImportInfo, errorContent,null);
            return;
        }
        boolean fileFlag = !excelFile.getName().endsWith("xlsx");// 表示是Excel2003，否者是2007
        
        Workbook wb = getWorkbook(fileFlag, execlFileImportInfo.getExeclFilePath());
        if(wb == null) {
            appendError(errorContent, 1, 1, 1, "", "文件内容不能为空");
        } else {
            // sheet
            // for(int i = 0; i < wb.getNumberOfSheets(); i++) {
            // Sheet sheet = wb.getSheetAt(i);
            Sheet sheet = wb.getSheetAt(0);
            if(sheet != null) {
                //标题Map
                Map<Integer,String> titleMap=new HashMap<Integer, String>();
                // 解析sheet数据并存入临时表中
                int columnNum = parseSheetData(0, execlFileImportInfo, errorContent, sheet,titleMap);
                if(columnNum > -1) {
                    // 以下把存入临时表的数据导入到正式表中
                    inserDataToOperationTable(execlFileImportInfo, errorContent,titleMap);
                }
            }
            // }
            // 把导入文件的错误内容写入t_execl_file_import_info表中
            DBIExecutePlsql dbiExecutePlsql = new DBIExecutePlsql();
            Object[] args = { "update t_execl_file_import_info set execl_file_import_error_content='" + (errorContent
                    .indexOf("]") > 0 ? errorContent.toString().substring(0, errorContent.length() - 1): errorContent) + "' where execl_file_import_pk='" + execlFileImportInfo
                    .getExeclFileImportPk() + "'" };
            dbiExecutePlsql.doSpringCallProcedure("p_exec_sql_util", args);
            // 删除本次临时表的数据
            Object[] argsdelete = { "delete from t_execl_file_import_temp_content where execl_file_import_pk='" + execlFileImportInfo
                    .getExeclFileImportPk() + "'" };
            dbiExecutePlsql.doSpringCallProcedure("p_exec_sql_util", argsdelete);
        }
    }
    
    private int getendNote(ExeclFileImportInfo execlFileImportInfo){
        Connection connection = null;
        PreparedStatement statement = null;
        try {
                String encoding="GBK";
                File file=execlFileImportInfo.getFile();
                if(file.isFile() && file.exists()){ //判断文件是否存在
                    InputStreamReader read = new InputStreamReader(
                    new FileInputStream(file),encoding);//考虑到编码格式
                    BufferedReader bufferedReader = new BufferedReader(read);
                    connection =  SpringBeanFactory.getConnection();;
                  
                    StringBuilder inserSqlBuilder = new StringBuilder(
                            "insert t_execl_file_import_temp_content(execl_file_import_temp_pk,execl_file_import_pk,sheet_no,row_no");
                    
                    String lineTxt = null;
                    int i = 0;int icount =1;
                    String sql = "";String sqlfirst = "";String sqlmid= "";
                    List<String> hs = new ArrayList<String>();
                    while((lineTxt = bufferedReader.readLine()) != null){
                        // sql = "";
                        if (!lineTxt.trim().equals("")) {
                            
                            hs.add(lineTxt) ;
                            inserSqlBuilder.append(",").append("file_colmun").append(i + 1);
                            
                        }else{
                            inserSqlBuilder.append(") values (");
                            for(int h=0 ;h <hs.size()+4;h++){
                                inserSqlBuilder.append(h == hs.size() + 3 ? "?)": "?,");
                            }
                            statement = connection.prepareStatement(inserSqlBuilder.toString());
                            System.out.println(inserSqlBuilder.toString());
                            
                            statement.setObject(1, new GuidGender(true).toString());// 主键
                            statement.setString(2, execlFileImportInfo.getExeclFileImportPk());// 文件导入信息表主键
                            statement.setInt(3, 1);// 第几个sheet号
                            statement.setInt(4, icount);// sheet第几行数据
                            
                            for(int h=0 ;h <hs.size();h++){
                                statement.setString(h + 5, hs.get(h).toString());
                            }
                            statement.addBatch();
                            statement.executeBatch();
                            connection.commit();

                            sqlfirst =""; sql ="";sqlmid ="";i =0;
                            hs.clear();
                            inserSqlBuilder = new StringBuilder(
                                    "insert t_execl_file_import_temp_content(execl_file_import_temp_pk,execl_file_import_pk,sheet_no,row_no");
                            
                        }
                        i = i + 1 ;
                        icount = icount + 1;
                    }
                    
                  
                    
                    read.close(); 
                   // 
        }else{
            System.out.println("找不到指定的文件");
        }
        } catch (Exception e) {
            System.out.println("读取文件内容出错,请检查是否是endNote格式！");
            e.printStackTrace();
        } finally {
            DBHelper.closeStatement(statement);
            DBHelper.closeConnection(connection);
          
        }
        return 0;
    }
    

    // 解析sheet数据并存入临时表中
    private int parseSheetData(int sheetNo, ExeclFileImportInfo execlFileImportInfo, StringBuilder errorContentBuilder,
            Sheet sheet,Map<Integer,String> titleMap) throws SQLException {
        Row row = null;
        int columnNum = 0;
        Connection connection = null;
        PreparedStatement statement = null;
        try {
            // 得到总行数
            int rows =sheet.getLastRowNum()+1;
            // 得到开始行数
            int startRow = getImportFileStartRow(execlFileImportInfo.getExeclFileImportTypeId());
            if(rows >= startRow) {
                columnNum = getImportFileColumnSum(execlFileImportInfo.getExeclFileImportTypeId());
                if(columnNum==999){//表示列数是可变的
                    //获取标题行
                    row = sheet.getRow(startRow-2);
                    columnNum=0;
                    for(int j = 0; j < 51; j++) {
                        Cell cell = row.getCell(j);
                        // 获取ExcelSheet单元格的内容
                        if(!StringUtil.empty(getExcelSheetValue(cell).trim())){
                            titleMap.put(j+1, getExcelSheetValue(cell).trim());
                            columnNum+=1;
                        } 
                        
                    }
                }
                // 特殊值处理完毕后，把他加入到临时表中
                int sumInsertCol = columnNum;
                connection = SpringBeanFactory.getConnection();
                StringBuilder inserSqlBuilder = new StringBuilder(
                        "insert t_execl_file_import_temp_content(execl_file_import_temp_pk,execl_file_import_pk,sheet_no,row_no,");
                for(int i = 0; i < sumInsertCol; i++) {
                    inserSqlBuilder.append("file_colmun").append(i + 1).append(i == sumInsertCol - 1 ? ") ": ",");
                }
                inserSqlBuilder.append(" values (");
                for(int i = 0; i < sumInsertCol + 4; i++) {
                    inserSqlBuilder.append(i == sumInsertCol + 3 ? "?)": "?,");
                }
                statement = connection.prepareStatement(inserSqlBuilder.toString());

                for(int r = startRow - 1; r < rows; r++) {
                    // 获取每行的数据
                    row = sheet.getRow(r);
                    if(row == null) {
                        continue;
                    }
                    statement.setObject(1, new GuidGender(true).toString());// 主键
                    statement.setString(2, execlFileImportInfo.getExeclFileImportPk());// 文件导入信息表主键
                    statement.setInt(3, sheetNo + 1);// 第几个sheet号
                    statement.setInt(4, r + 1);// sheet第几行数据
                    for(int j = 0; j < columnNum; j++) {
                        Cell cell = row.getCell(j);
                        // 获取ExcelSheet单元格的内容
                        String cellValue = cell != null ? getExcelSheetValue(cell).trim(): "";
                        statement.setString(j + 5, cellValue);
                    }
                    statement.addBatch();
                }
                statement.executeBatch();
                connection.commit();
            }
        } finally {
            DBHelper.closeStatement(statement);
            DBHelper.closeConnection(connection);
        }
        return columnNum;
    }

    // 获取ExcelSheet单元格的内容
    private String getExcelSheetValue(Cell cell) {
        String cellValue = "";
        switch (cell.getCellType()) {
            case HSSFCell.CELL_TYPE_FORMULA:
                //cellValue = cell.getCellFormula().trim();
                try {
                    String tempValue=String.valueOf(cell.getNumericCellValue());
                    if(tempValue.substring(tempValue.indexOf( ".")+1,tempValue.length()).equals("0")){
                        cellValue = tempValue.substring(0,tempValue.indexOf( "."));   
                    } else{
                        cellValue =new BigDecimal(tempValue).setScale(2, BigDecimal.ROUND_HALF_UP).toString(); 
                    } 
                } catch(Exception e) {
                  
                }
                
                
                break;
            case Cell.CELL_TYPE_NUMERIC:
                if(HSSFDateUtil.isCellDateFormatted(cell)) {
                    double d = cell.getNumericCellValue();
                    Date date = HSSFDateUtil.getJavaDate(d);
                    cellValue = TimeUtil.toString(date).trim();
                } else {
                    String tempValue=String.valueOf(cell.getNumericCellValue());
                    if(tempValue.substring(tempValue.indexOf( ".")+1,tempValue.length()).equals("0")){
                        cellValue = tempValue.substring(0,tempValue.indexOf( "."));   
                    } else{
                        cellValue =new BigDecimal(tempValue).setScale(2, BigDecimal.ROUND_HALF_UP).toString(); 
                    } 
                }
                break;
            case HSSFCell.CELL_TYPE_STRING:
                cellValue = cell.getStringCellValue().trim();
                if(!StringUtil.empty(cellValue)){
                    cellValue = ChinseFullWidthToHalfWidth.chinseFullWidthToHalfWidth(cellValue.toUpperCase().trim()); 
                } 
                break;
            case HSSFCell.CELL_TYPE_BOOLEAN:
                cellValue = String.valueOf(cell.getBooleanCellValue());
                break;
        }
        return cellValue;
    }

    // 插入数据到业务表中
    public void inserDataToOperationTable(ExeclFileImportInfo execlFileImportInfo, StringBuilder errorContentBuilder,Map<Integer,String> titleMap)
            throws Throwable {
        if(StringUtil.equals(execlFileImportInfo.getExeclFileImportTypeId(), ExeclFileImportInfo.EXECL_FILE_IMPORT_1)) {
            // 
            insertAddresslistData(execlFileImportInfo, errorContentBuilder);
        }
        
        if(StringUtil.equals(execlFileImportInfo.getExeclFileImportTypeId(), ExeclFileImportInfo.EXECL_FILE_IMPORT_2)) {
            // 
            insertSearchResultlistData(execlFileImportInfo, errorContentBuilder);
        }
    }


    // 获得导入文件对象
    private Workbook getWorkbook(boolean fileFlag, String fileName) throws Exception {
        Workbook wb = null;
        FileInputStream is = null;
        POIFSFileSystem fs = null;
        if(fileFlag) {// 2003
            try {
                File f = new File(fileName);
                is = new FileInputStream(f);
                fs = new POIFSFileSystem(is);
                wb = new HSSFWorkbook(fs);
            } finally {
                if(is != null) {
                    is.close();
                }
                if(fs != null) {
                    fs = null;
                }

            }

        } else {// 2007
            wb = new XSSFWorkbook(fileName);
        }
        return wb;
    }

    // 获取导入文件开始行数
    private int getImportFileStartRow(String execlFileImportTypeId) {
        FileImportsDataCache fileImportsDataCache = FileImportsDataCache.getInstance();
        FileImports fileImports = fileImportsDataCache.getFileImports();
        List<FileImport> fileImportList = fileImports.getFileImportList();
        for(FileImport fileImport : fileImportList) {
            if(StringUtil.equals(execlFileImportTypeId, fileImport.getId())) {
                return fileImport.getStartRow();
            }
        }
        return 10000;
    }
    // 获取导入文件总列数
    private int getImportFileColumnSum(String execlFileImportTypeId) {
        FileImportsDataCache fileImportsDataCache = FileImportsDataCache.getInstance();
        FileImports fileImports = fileImportsDataCache.getFileImports();
        List<FileImport> fileImportList = fileImports.getFileImportList();
        for(FileImport fileImport : fileImportList) {
            if(StringUtil.equals(execlFileImportTypeId, fileImport.getId())) { 
                return fileImport.getColumnSum();
            }
        }
        return 1;
    }

}
