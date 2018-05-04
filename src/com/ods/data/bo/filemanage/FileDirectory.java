package com.ods.data.bo.filemanage;

/**
 * <b>系统名称:</b><b> 昆仑厂MES生产管理系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * EmployeeAttendance.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * s
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * EmployeeAttendance类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * EmployeeAttendance类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *  
 * 文件目录表(根目录：居家养老文件资料管理系统)
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2012-2-10, cause, pu_xiaolong@sina.com, 新建<br>
 * 
 * @author :pu_xiaolong@sina.com
 * @since :2012-2-10
 * @version:1.0
 */
public class FileDirectory {
    //"fileDirectoryPk","fatherFileDirectoryPk","directoryName","createUserPk","createTime","deleteType"
    
    /**
    *属性名：fileDirectoryPk、类型：String、作成日：2012-2-10.<br>
    *含义：主键
    */
    private String fileDirectoryPk;
    /**
    *属性名：fatherFileDirectoryPk、类型：String、作成日：2012-2-10.<br>
    *含义：父主键
    */
    private String fatherFileDirectoryPk;
    /**
    *属性名：directoryName、类型：String、作成日：2012-2-10.<br>
    *含义：名称 备注：同级目录下名称不能相同
    */
    private String directoryName;
    /**
    *属性名：createUserPk、类型：String、作成日：2012-2-10.<br>
    *含义：创建人主键
    */
    private String createUserPk;
    /**
    *属性名：createTime、类型：String、作成日：2012-2-10.<br>
    *含义：创建时间
    */
    private String createTime;
    /**
    *属性名：deleteType、类型：int、作成日：2012-2-10.<br>
    *含义：软删除标识   0未删除    1已删除
    */
    private int deleteType;
    /**
     *fileDirectoryPk的获取.
     *@return fileDirectoryPk值返回.
     */
    public String getFileDirectoryPk() {
        return fileDirectoryPk;
    }
    /**
     *fileDirectoryPk的值设定
     *@param fileDirectoryPk 设定fileDirectoryPk的值.
     */
    public void setFileDirectoryPk(String fileDirectoryPk) {
        this.fileDirectoryPk = fileDirectoryPk;
    }
    /**
     *fatherFileDirectoryPk的获取.
     *@return fatherFileDirectoryPk值返回.
     */
    public String getFatherFileDirectoryPk() {
        return fatherFileDirectoryPk;
    }
    /**
     *fatherFileDirectoryPk的值设定
     *@param fatherFileDirectoryPk 设定fatherFileDirectoryPk的值.
     */
    public void setFatherFileDirectoryPk(String fatherFileDirectoryPk) {
        this.fatherFileDirectoryPk = fatherFileDirectoryPk;
    }
    /**
     *directoryName的获取.
     *@return directoryName值返回.
     */
    public String getDirectoryName() {
        return directoryName;
    }
    /**
     *directoryName的值设定
     *@param directoryName 设定directoryName的值.
     */
    public void setDirectoryName(String directoryName) {
        this.directoryName = directoryName;
    }
    /**
     *createUserPk的获取.
     *@return createUserPk值返回.
     */
    public String getCreateUserPk() {
        return createUserPk;
    }
    /**
     *createUserPk的值设定
     *@param createUserPk 设定createUserPk的值.
     */
    public void setCreateUserPk(String createUserPk) {
        this.createUserPk = createUserPk;
    }
    /**
     *createTime的获取.
     *@return createTime值返回.
     */
    public String getCreateTime() {
        return createTime;
    }
    /**
     *createTime的值设定
     *@param createTime 设定createTime的值.
     */
    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
    /**
     *deleteType的获取.
     *@return deleteType值返回.
     */
    public int getDeleteType() {
        return deleteType;
    }
    /**
     *deleteType的值设定
     *@param deleteType 设定deleteType的值.
     */
    public void setDeleteType(int deleteType) {
        this.deleteType = deleteType;
    }
}