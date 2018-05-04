package com.ods.base.bo.system.excelfileimport;

import java.io.File;

public class ExeclFileImportInfo {

    // 年计划
    public static final String EXECL_FILE_IMPORT_1 = "addresslistImportId";
    public static final String EXECL_FILE_IMPORT_1_NAME = "通讯录信息导入模板.xls";
    
    // 导入endnote
    public static final String EXECL_FILE_IMPORT_2 = "searchResultImportId";
    public static final String EXECL_FILE_IMPORT_2_NAME = "检索结果导入模板.xls";
    
    /**
     *属性名：file、类型：File、作成日：2009-10-19.<br>
     *含义：上传文件域对象
     */
    private File file;

    /**
     *属性名：fileContentType、类型：String、作成日：2009-10-19.<br>
     *含义：上传文件类型
     */
    private String fileContentType;

    /**
     *属性名：fileFileName、类型：String、作成日：2011-3-7.<br>
     *含义：上传文件名
     */
    private String fileFileName;

    /**
     * 属性名：execlFileImportPk、类型：String*、作成日：2011-3-6 含义：
     */
    private String execlFileImportPk;

    /**
     * 属性名：execlFileImportTypeId、类型：String*、作成日：2011-3-6 含义：
     */
    private String execlFileImportTypeId;
    
    private int importFileMethod;
    /**
     * 属性名：execlFileName、类型：String*、作成日：2011-3-6 含义：
     */
    private String execlFileName;

    /**
     * 属性名：execlFilePath、类型：String*、作成日：2011-3-6 含义：
     */
    private String execlFilePath;

    /**
     * 属性名：execlFileImportErrorContent、类型：String*、作成日：2011-3-6 含义：
     */
    private String execlFileImportErrorContent;


    private String firstOrgPk;
    /**
     * 属性名：createOrgPk、类型：String*、作成日：2011-3-6 含义：
     */
    private String createOrgPk;

    /**
     * 属性名：createUserPk、类型：String*、作成日：2011-3-6 含义：
     */
    private String createUserPk;

    /**
     * 属性名：createTime、类型：String*、作成日：2011-3-6 含义：
     */
    private String createTime;

    /**
     * 属性名：deleteType、类型：int*、作成日：2011-3-6 含义：
     */
    private int deleteType;

    /**
     *file的获取.
     * 
     * @return file值返回.
     */
    public File getFile() {
        return file;
    }

    /**
     *file的值设定
     * 
     * @param file 设定file的值.
     */
    public void setFile(File file) {
        this.file = file;
    }

    /**
     *fileContentType的获取.
     * 
     * @return fileContentType值返回.
     */
    public String getFileContentType() {
        return fileContentType;
    }

    /**
     *fileContentType的值设定
     * 
     * @param fileContentType 设定fileContentType的值.
     */
    public void setFileContentType(String fileContentType) {
        this.fileContentType = fileContentType;
    }

    /**
     *fileFileName的获取.
     * 
     * @return fileFileName值返回.
     */
    public String getFileFileName() {
        return fileFileName;
    }

    /**
     *fileFileName的值设定
     * 
     * @param fileFileName 设定fileFileName的值.
     */
    public void setFileFileName(String fileFileName) {
        this.fileFileName = fileFileName;
    }

    /**
     * execlFileImportPk的获取.
     * 
     * @return execlFileImportPk值返回.
     */
    public String getExeclFileImportPk() {
        return execlFileImportPk;
    }

    /**
     * execlFileImportPk的值设定.
     * 
     * @param execlFileImportPk 设定execlFileImportPk的值.
     */
    public void setExeclFileImportPk(String execlFileImportPk) {
        this.execlFileImportPk = execlFileImportPk;
    }
 
 

    /**
     *execlFileImportTypeId的获取.
     *@return execlFileImportTypeId值返回.
     */
    public String getExeclFileImportTypeId() {
        return execlFileImportTypeId;
    }

    /**
     *execlFileImportTypeId的值设定
     *@param execlFileImportTypeId 设定execlFileImportTypeId的值.
     */
    public void setExeclFileImportTypeId(String execlFileImportTypeId) {
        this.execlFileImportTypeId = execlFileImportTypeId;
    }

    /**
     * execlFileName的获取.
     * 
     * @return execlFileName值返回.
     */
    public String getExeclFileName() {
        return execlFileName;
    }

    /**
     * execlFileName的值设定.
     * 
     * @param execlFileName 设定execlFileName的值.
     */
    public void setExeclFileName(String execlFileName) {
        this.execlFileName = execlFileName;
    }

    /**
     * execlFilePath的获取.
     * 
     * @return execlFilePath值返回.
     */
    public String getExeclFilePath() {
        return execlFilePath;
    }

    /**
     * execlFilePath的值设定.
     * 
     * @param execlFilePath 设定execlFilePath的值.
     */
    public void setExeclFilePath(String execlFilePath) {
        this.execlFilePath = execlFilePath;
    }

    /**
     * execlFileImportErrorContent的获取.
     * 
     * @return execlFileImportErrorContent值返回.
     */
    public String getExeclFileImportErrorContent() {
        return execlFileImportErrorContent;
    }

    /**
     * execlFileImportErrorContent的值设定.
     * 
     * @param execlFileImportErrorContent 设定execlFileImportErrorContent的值.
     */
    public void setExeclFileImportErrorContent(String execlFileImportErrorContent) {
        this.execlFileImportErrorContent = execlFileImportErrorContent;
    }

    /**
     * createOrgPk的获取.
     * 
     * @return createOrgPk值返回.
     */
    public String getCreateOrgPk() {
        return createOrgPk;
    }

    /**
     * createOrgPk的值设定.
     * 
     * @param createOrgPk 设定createOrgPk的值.
     */
    public void setCreateOrgPk(String createOrgPk) {
        this.createOrgPk = createOrgPk;
    }

    /**
     * createUserPk的获取.
     * 
     * @return createUserPk值返回.
     */
    public String getCreateUserPk() {
        return createUserPk;
    }

    /**
     * createUserPk的值设定.
     * 
     * @param createUserPk 设定createUserPk的值.
     */
    public void setCreateUserPk(String createUserPk) {
        this.createUserPk = createUserPk;
    }

    /**
     * createTime的获取.
     * 
     * @return createTime值返回.
     */
    public String getCreateTime() {
        return createTime;
    }

    /**
     * createTime的值设定.
     * 
     * @param createTime 设定createTime的值.
     */
    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    /**
     * deleteType的获取.
     * 
     * @return deleteType值返回.
     */
    public int getDeleteType() {
        return deleteType;
    }

    /**
     * deleteType的值设定.
     * 
     * @param deleteType 设定deleteType的值.
     */
    public void setDeleteType(int deleteType) {
        this.deleteType = deleteType;
    }

    /**
     *firstOrgPk的获取.
     *@return firstOrgPk值返回.
     */
    public String getFirstOrgPk() {
        return firstOrgPk;
    }

    /**
     *firstOrgPk的值设定
     *@param firstOrgPk 设定firstOrgPk的值.
     */
    public void setFirstOrgPk(String firstOrgPk) {
        this.firstOrgPk = firstOrgPk;
    }

    /**
     *importFileMethod的获取.
     *@return importFileMethod值返回.
     */
    public int getImportFileMethod() {
        return importFileMethod;
    }

    /**
     *importFileMethod的值设定
     *@param importFileMethod 设定importFileMethod的值.
     */
    public void setImportFileMethod(int importFileMethod) {
        this.importFileMethod = importFileMethod;
    }

}
