package com.ods.data.bo.filemanage;

/**
 *<b>系统名称:</b><b> 昆仑厂MES生产管理系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 *<b>文件名:</b><br>
 * 
 *CallOperations.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *CallOperations类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *CallOperations类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *来电业务信息表<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2011-12-16, cause, wang_zr, 新建<br>
 * 
 *@author :wang_zr
 *@since :2011-12-16
 *@version:1.0
 */
public class FileOperation {
    /**
     * 属性名：fileOperationPk、类型：String、作成日：2012-2-10<br>
     * 含义：主键
     */
    private String fileOperationPk;

    /**
     * 属性名：fileStorePk、类型：String、作成日：2012-2-10<br>
     * 含义：文件存储表pk
     */
    private String fileStorePk;

    /**
     * 属性名：fileOperationType、类型：int、作成日：2012-2-10<br>
     * 含义：操作类型 0：查看 1：下载 2：删除
     */
    private int fileOperationType;

    /**
     * 属性名：createUserName、类型：String、作成日：2012-2-10<br>
     * 含义：操作人
     */
    private String createUserName;

    /**
     * 属性名：createUserPk、类型：String、作成日：2012-2-10<br>
     * 含义：操作人主键（文件上传人pk）
     */
    private String createUserPk;

    /**
     * 属性名：createTime、类型：String、作成日：2012-2-10<br>
     * 含义：操作时间
     */
    private String createTime;

    /**
     * 属性名：deleteType、类型：int、作成日：2012-2-10<br>
     * 含义：软删除标识 0未删除 1已删除
     */
    private int deleteType;

    /**
     *fileOperationPk的获取.
     * 
     * @return fileOperationPk值返回.
     */
    public String getFileOperationPk() {
        return fileOperationPk;
    }

    /**
     *fileOperationPk的值设定
     * 
     * @param fileOperationPk 设定fileOperationPk的值.
     */
    public void setFileOperationPk(String fileOperationPk) {
        this.fileOperationPk = fileOperationPk;
    }

    /**
     *fileStorePk的获取.
     * 
     * @return fileStorePk值返回.
     */
    public String getFileStorePk() {
        return fileStorePk;
    }

    /**
     *fileStorePk的值设定
     * 
     * @param fileStorePk 设定fileStorePk的值.
     */
    public void setFileStorePk(String fileStorePk) {
        this.fileStorePk = fileStorePk;
    }

    /**
     *fileOperationType的获取.
     * 
     * @return fileOperationType值返回.
     */
    public int getFileOperationType() {
        return fileOperationType;
    }

    /**
     *fileOperationType的值设定
     * 
     * @param fileOperationType 设定fileOperationType的值.
     */
    public void setFileOperationType(int fileOperationType) {
        this.fileOperationType = fileOperationType;
    }

    /**
     *createUserName的获取.
     * 
     * @return createUserName值返回.
     */
    public String getCreateUserName() {
        return createUserName;
    }

    /**
     *createUserName的值设定
     * 
     * @param createUserName 设定createUserName的值.
     */
    public void setCreateUserName(String createUserName) {
        this.createUserName = createUserName;
    }

    /**
     *createUserPk的获取.
     * 
     * @return createUserPk值返回.
     */
    public String getCreateUserPk() {
        return createUserPk;
    }

    /**
     *createUserPk的值设定
     * 
     * @param createUserPk 设定createUserPk的值.
     */
    public void setCreateUserPk(String createUserPk) {
        this.createUserPk = createUserPk;
    }

    /**
     *createTime的获取.
     * 
     * @return createTime值返回.
     */
    public String getCreateTime() {
        return createTime;
    }

    /**
     *createTime的值设定
     * 
     * @param createTime 设定createTime的值.
     */
    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    /**
     *deleteType的获取.
     * 
     * @return deleteType值返回.
     */
    public int getDeleteType() {
        return deleteType;
    }

    /**
     *deleteType的值设定
     * 
     * @param deleteType 设定deleteType的值.
     */
    public void setDeleteType(int deleteType) {
        this.deleteType = deleteType;
    }
}