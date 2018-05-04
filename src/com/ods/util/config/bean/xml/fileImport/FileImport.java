/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.config.bean.xml.fileImport;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * FileImport.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * FileImport类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * FileImport类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 文件导入类配置文件JavaBean<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-6-3, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :10325431@qq.com
 * @since :2011-6-3
 * @version:1.0
 */
public class FileImport {
    private String id;

    private String name; 

    private int startRow;
    private int columnSum;
 
    
    private String checkCellDataRule;

    /**
     * id的获取.
     * 
     * @return id值返回.
     */
    public String getId() {
        return id;
    }

    /**
     * id的值设定
     * 
     * @param id 设定id的值.
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * name的获取.
     * 
     * @return name值返回.
     */
    public String getName() {
        return name;
    }

    /**
     * name的值设定
     * 
     * @param name 设定name的值.
     */
    public void setName(String name) {
        this.name = name;
    }
 

    /**
     *startRow的获取.
     *@return startRow值返回.
     */
    public int getStartRow() {
        return startRow;
    }

    /**
     *startRow的值设定
     *@param startRow 设定startRow的值.
     */
    public void setStartRow(int startRow) {
        this.startRow = startRow;
    }
 

    /**
     *checkCellDataRule的获取.
     *@return checkCellDataRule值返回.
     */
    public String getCheckCellDataRule() {
        return checkCellDataRule;
    }

    /**
     *checkCellDataRule的值设定
     *@param checkCellDataRule 设定checkCellDataRule的值.
     */
    public void setCheckCellDataRule(String checkCellDataRule) {
        this.checkCellDataRule = checkCellDataRule;
    }

    /**
     *columnSum的获取.
     *@return columnSum值返回.
     */
    public int getColumnSum() {
        return columnSum;
    }

    /**
     *columnSum的值设定
     *@param columnSum 设定columnSum的值.
     */
    public void setColumnSum(int columnSum) {
        this.columnSum = columnSum;
    }
 

}
