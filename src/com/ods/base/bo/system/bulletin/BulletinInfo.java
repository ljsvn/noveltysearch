/**
 *copyright(C)2009
 *Ods信息技术软件有限公司& Service Corporation All rights reserved
 */
package com.ods.base.bo.system.bulletin;

import java.io.File;

/**
 *<b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 *<b>文件名:</b><br>
 * 
 *BulletinInfo.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *BulletinInfo类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *BulletinInfo类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *公告发送表<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2012-1-12, cause, wang_zr, 新建<br>
 * 
 *@author :wang_zr
 *@since :2012-1-12
 *@version:1.0
 */
public class BulletinInfo {

    private String bulletinPk;

    private int sendType;

    private String bulletinTitle;

    private String imgPath;

    private String filePath;

    private String fileName;

    private String bulletinNote;

    private String bulletinType;

    private int isDraft;

    private String createOrgPk;

    private String createUserPk;

    private int deleteType;

    private String createTime;

    /**
     * 属性名：UPLOAD_PATH_FILENAME、类型：String、作成日：2009-9-11.<br>
     * 含义：上传文件的文件夹名称
     */
    public static final String UPLOAD_PATH_FILENAME = "upload";

    /**
     * 属性名：UPLOAD_KB_FILENAME、类型：String、作成日：2009-9-11.<br>
     * 含义：资料库上传文件的文件夹名称
     */
    public static final String UPLOAD_BULLETION_FILENAME = "BulletinInfo";

    // 附件上传
    private File upload;

    private String uploadFileName;

    private String uploadContentType;

    // 图片上传
    private File imgUpload;

    private String imgUploadFileName;

    private String imgUploadContentType;

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

    /**
     *bulletinPk的获取.
     * 
     * @return bulletinPk值返回.
     */
    public String getBulletinPk() {
        return bulletinPk;
    }

    /**
     *bulletinPk的值设定
     * 
     * @param bulletinPk 设定bulletinPk的值.
     */
    public void setBulletinPk(String bulletinPk) {
        this.bulletinPk = bulletinPk;
    }

    /**
     *sendType的获取.
     * 
     * @return sendType值返回.
     */
    public int getSendType() {
        return sendType;
    }

    /**
     *sendType的值设定
     * 
     * @param sendType 设定sendType的值.
     */
    public void setSendType(int sendType) {
        this.sendType = sendType;
    }

    /**
     *bulletinTitle的获取.
     * 
     * @return bulletinTitle值返回.
     */
    public String getBulletinTitle() {
        return bulletinTitle;
    }

    /**
     *bulletinTitle的值设定
     * 
     * @param bulletinTitle 设定bulletinTitle的值.
     */
    public void setBulletinTitle(String bulletinTitle) {
        this.bulletinTitle = bulletinTitle;
    }

    /**
     *imgPath的获取.
     * 
     * @return imgPath值返回.
     */
    public String getImgPath() {
        return imgPath;
    }

    /**
     *imgPath的值设定
     * 
     * @param imgPath 设定imgPath的值.
     */
    public void setImgPath(String imgPath) {
        this.imgPath = imgPath;
    }

    /**
     *filePath的获取.
     * 
     * @return filePath值返回.
     */
    public String getFilePath() {
        return filePath;
    }

    /**
     *filePath的值设定
     * 
     * @param filePath 设定filePath的值.
     */
    public void setFilePath(String filePath) {
        this.filePath = filePath;
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
     *bulletinNote的获取.
     * 
     * @return bulletinNote值返回.
     */
    public String getBulletinNote() {
        return bulletinNote;
    }

    /**
     *bulletinNote的值设定
     * 
     * @param bulletinNote 设定bulletinNote的值.
     */
    public void setBulletinNote(String bulletinNote) {
        this.bulletinNote = bulletinNote;
    }

    /**
     *bulletinType的获取.
     * 
     * @return bulletinType值返回.
     */
    public String getBulletinType() {
        return bulletinType;
    }

    /**
     *bulletinType的值设定
     * 
     * @param bulletinType 设定bulletinType的值.
     */
    public void setBulletinType(String bulletinType) {
        this.bulletinType = bulletinType;
    }

    /**
     *isDraft的获取.
     * 
     * @return isDraft值返回.
     */
    public int getIsDraft() {
        return isDraft;
    }

    /**
     *isDraft的值设定
     * 
     * @param isDraft 设定isDraft的值.
     */
    public void setIsDraft(int isDraft) {
        this.isDraft = isDraft;
    }

    /**
     *createOrgPk的获取.
     * 
     * @return createOrgPk值返回.
     */
    public String getCreateOrgPk() {
        return createOrgPk;
    }

    /**
     *createOrgPk的值设定
     * 
     * @param createOrgPk 设定createOrgPk的值.
     */
    public void setCreateOrgPk(String createOrgPk) {
        this.createOrgPk = createOrgPk;
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
     * upload的获取.
     * 
     * @return upload值返回.
     */
    public File getUpload() {
        return upload;
    }

    /**
     * upload的值设定
     * 
     * @param upload 设定upload的值.
     */
    public void setUpload(File upload) {
        this.upload = upload;
    }

    /**
     *imgUpload的获取.
     * 
     * @return imgUpload值返回.
     */
    public File getImgUpload() {
        return imgUpload;
    }

    /**
     *imgUpload的值设定
     * 
     * @param imgUpload 设定imgUpload的值.
     */
    public void setImgUpload(File imgUpload) {
        this.imgUpload = imgUpload;
    }

    /**
     *imgUploadFileName的获取.
     * 
     * @return imgUploadFileName值返回.
     */
    public String getImgUploadFileName() {
        return imgUploadFileName;
    }

    /**
     *imgUploadFileName的值设定
     * 
     * @param imgUploadFileName 设定imgUploadFileName的值.
     */
    public void setImgUploadFileName(String imgUploadFileName) {
        this.imgUploadFileName = imgUploadFileName;
    }

    /**
     *imgUploadContentType的获取.
     * 
     * @return imgUploadContentType值返回.
     */
    public String getImgUploadContentType() {
        return imgUploadContentType;
    }

    /**
     *imgUploadContentType的值设定
     * 
     * @param imgUploadContentType 设定imgUploadContentType的值.
     */
    public void setImgUploadContentType(String imgUploadContentType) {
        this.imgUploadContentType = imgUploadContentType;
    }

}
