package com.ods.data.bo.filemanage;

import java.io.File;

/**
 * <b>系统名称:</b><b> 昆仑厂MES生产管理系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * EmployeeAttendance.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * s <b>类名:</b><br>
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
 * 文件存储表<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2012-2-10, cause, pu_xiaolong@sina.com, 新建<br>
 * 
 * @author :pu_xiaolong@sina.com
 * @since :2012-2-10
 * @version:1.0
 */
public class FileStore {
    // "fileStorePk","fileDirectoryPk","fileName","fileNarrate","fileKeywords","fileSotreUploadPath","createUserName","createUserPk","createTime","deleteType"
    /**
     *属性名：fileStorePk、类型：String、作成日：2012-2-10.<br>
     *含义：主键
     */
    private String fileStorePk;

    /**
     *属性名：fileDirectoryPk、类型：String、作成日：2012-2-10.<br>
     *含义：文件所在目录pk
     */
    private String fileDirectoryPk;

    /**
     *属性名：fileName、类型：String、作成日：2012-2-10.<br>
     *含义：文件名称 自动截取上传文件的名称
     */
    private String fileName;

    /**
     *属性名：fileNarrate、类型：String、作成日：2012-2-10.<br>
     *含义：文件概要说明
     */
    private String fileNarrate;

    /**
     *属性名：fileKeywords、类型：String、作成日：2012-2-10.<br>
     *含义：文件搜索关键字
     */
    private String fileKeywords;

    /**
     *属性名：fileSotreUploadPath、类型：String、作成日：2012-2-10.<br>
     *含义：文件上传存储路径 备注：根目录+目录名称树形关系+本记录主键 注意如果转换成功，转换过的文件也会存在这个路径下
     */
    private String fileSotreUploadPath;

    /**
     * 属性名：fileTransition、类型：int、作成日：2012-2-10<br>
     * 含义：是否转换 0：未转换 1：已转换
     */
    private int fileTransition;

    /**
     *属性名：createUserName、类型：String、作成日：2012-2-10.<br>
     *含义：文件上传人
     */
    private String createUserName;

    /**
     *属性名：createUserPk、类型：String、作成日：2012-2-10.<br>
     *含义：创建人主键（文件上传人pk）
     */
    private String createUserPk;

    /**
     *属性名：createTime、类型：String、作成日：2012-2-10.<br>
     *含义：创建时间
     */
    private String createTime;

    /**
     *属性名：deleteType、类型：int、作成日：2012-2-10.<br>
     *含义：软删除标识 0未删除 1已删除
     */
    private int deleteType;

    /******************************* 上传文件域Start *******************************/
    /**
     *属性名：UPLOAD_FILE_NAME、类型：String、作成日：2012-2-15.<br>
     *含义：资料上传文件保存的文件夹名
     */
    public static final String UPLOAD_FILE_NAME = "fileStore";

    /**
     *属性名：BUFFER_SIZE、类型：int、作成日：2009-9-9.<br>
     *含义：缓冲区大小.
     */
    public static final long UPLOAD_KB_SIZE = 1073741824;

    /**
     *属性名：upload、类型：File、作成日：2009-10-19.<br>
     *含义：上传文件域对象
     */
    private File upload;

    /**
     *属性名：uploadFileName、类型：String、作成日：2009-10-19.<br>
     *含义：上传文件名
     */
    private String uploadFileName;

    /**
    *属性名：uploadContentType、类型：String、作成日：2012-2-15.<br>
    *含义：类型
    */
    private String uploadContentType;

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
     *fileDirectoryPk的获取.
     * 
     * @return fileDirectoryPk值返回.
     */
    public String getFileDirectoryPk() {
        return fileDirectoryPk;
    }

    /**
     *fileDirectoryPk的值设定
     * 
     * @param fileDirectoryPk 设定fileDirectoryPk的值.
     */
    public void setFileDirectoryPk(String fileDirectoryPk) {
        this.fileDirectoryPk = fileDirectoryPk;
    }

    /**
     *fileName的获取.
     * 
     * @return fileName值返回.
     */
    public String getFileName() {
        return fileName;
    }

    /**
     *fileName的值设定
     * 
     * @param fileName 设定fileName的值.
     */
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    /**
     *fileNarrate的获取.
     * 
     * @return fileNarrate值返回.
     */
    public String getFileNarrate() {
        return fileNarrate;
    }

    /**
     *fileNarrate的值设定
     * 
     * @param fileNarrate 设定fileNarrate的值.
     */
    public void setFileNarrate(String fileNarrate) {
        this.fileNarrate = fileNarrate;
    }

    /**
     *fileKeywords的获取.
     * 
     * @return fileKeywords值返回.
     */
    public String getFileKeywords() {
        return fileKeywords;
    }

    /**
     *fileKeywords的值设定
     * 
     * @param fileKeywords 设定fileKeywords的值.
     */
    public void setFileKeywords(String fileKeywords) {
        this.fileKeywords = fileKeywords;
    }

    /**
     *fileSotreUploadPath的获取.
     * 
     * @return fileSotreUploadPath值返回.
     */
    public String getFileSotreUploadPath() {
        return fileSotreUploadPath;
    }

    /**
     *fileSotreUploadPath的值设定
     * 
     * @param fileSotreUploadPath 设定fileSotreUploadPath的值.
     */
    public void setFileSotreUploadPath(String fileSotreUploadPath) {
        this.fileSotreUploadPath = fileSotreUploadPath;
    }

    /**
     *fileTransition的获取.
     * 
     * @return fileTransition值返回.
     */
    public int getFileTransition() {
        return fileTransition;
    }

    /**
     *fileTransition的值设定
     * 
     * @param fileTransition 设定fileTransition的值.
     */
    public void setFileTransition(int fileTransition) {
        this.fileTransition = fileTransition;
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

    /**
     *upload的获取.
     * 
     * @return upload值返回.
     */
    public File getUpload() {
        return upload;
    }

    /**
     *upload的值设定
     * 
     * @param upload 设定upload的值.
     */
    public void setUpload(File upload) {
        this.upload = upload;
    }

    /**
     *uploadFileName的获取.
     * 
     * @return uploadFileName值返回.
     */
    public String getUploadFileName() {
        return uploadFileName;
    }

    /**
     *uploadFileName的值设定
     * 
     * @param uploadFileName 设定uploadFileName的值.
     */
    public void setUploadFileName(String uploadFileName) {
        this.uploadFileName = uploadFileName;
    }

    /**
     *uploadContentType的获取.
     * 
     * @return uploadContentType值返回.
     */
    public String getUploadContentType() {
        return uploadContentType;
    }

    /**
     *uploadContentType的值设定
     * 
     * @param uploadContentType 设定uploadContentType的值.
     */
    public void setUploadContentType(String uploadContentType) {
        this.uploadContentType = uploadContentType;
    }
}