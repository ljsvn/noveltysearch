/**
 *copyright(C)2012
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.bo.system.bulletin;

import com.ods.base.bo.system.user.bo.User;
import com.ods.util.hibernate.SpringHibernate;
import com.ods.util.spring.SpringBeanFactory;

/**
 *<b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 *<b>文件名:</b><br>
 * 
 *BulletinViewInfo.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *BulletinViewInfo类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *BulletinViewInfo类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *公告接收信息视图<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2012-1-13, cause, wang_zr, 新建<br>
 * 
 *@author :wang_zr
 *@since :2012-1-13
 *@version:1.0
 */
public class BulletinViewInfo {

    private String viewPk;

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

    private String receivePk;

    private String userPk;

    private String userName;

    private int bulletinIsread;

    private String receiveOrgPk;

    private String receiveUserPk;

    /**
    *createUserName的获取.
    *@return createUserName值返回.
    */
    public String getCreateUserName() {
        String UserName ="";
        SpringHibernate springHibernate = (SpringHibernate) SpringBeanFactory.getBean("DAOProxy");

        try {
            User user = (User) springHibernate.selectByPk("userPk", createUserPk, User.class);
            UserName = user.getUserRealName();
        } catch(Throwable e) {
           
        }
        return UserName;
    }

    /**
    *createUserName的值设定
    *@param createUserName 设定createUserName的值.
    */
    public void setCreateUserName(String createUserName) {
        this.createUserName = createUserName;
    }

    private int receiveDeleteType;

    private String receiveCreateTime;
    
    private String createUserName;

    /**
     *viewPk的获取.
     * 
     * @return viewPk值返回.
     */
    public String getViewPk() {
        return viewPk;
    }

    /**
     *viewPk的值设定
     * 
     * @param viewPk 设定viewPk的值.
     */
    public void setViewPk(String viewPk) {
        this.viewPk = viewPk;
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
     *receivePk的获取.
     * 
     * @return receivePk值返回.
     */
    public String getReceivePk() {
        return receivePk;
    }

    /**
     *receivePk的值设定
     * 
     * @param receivePk 设定receivePk的值.
     */
    public void setReceivePk(String receivePk) {
        this.receivePk = receivePk;
    }

    /**
     *userPk的获取.
     * 
     * @return userPk值返回.
     */
    public String getUserPk() {
        return userPk;
    }

    /**
     *userPk的值设定
     * 
     * @param userPk 设定userPk的值.
     */
    public void setUserPk(String userPk) {
        this.userPk = userPk;
    }

    /**
     *userName的获取.
     * 
     * @return userName值返回.
     */
    public String getUserName() {
        return userName;
    }

    /**
     *userName的值设定
     * 
     * @param userName 设定userName的值.
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     *bulletinIsread的获取.
     * 
     * @return bulletinIsread值返回.
     */
    public int getBulletinIsread() {
        return bulletinIsread;
    }

    /**
     *bulletinIsread的值设定
     * 
     * @param bulletinIsread 设定bulletinIsread的值.
     */
    public void setBulletinIsread(int bulletinIsread) {
        this.bulletinIsread = bulletinIsread;
    }

    /**
     *receiveOrgPk的获取.
     * 
     * @return receiveOrgPk值返回.
     */
    public String getReceiveOrgPk() {
        return receiveOrgPk;
    }

    /**
     *receiveOrgPk的值设定
     * 
     * @param receiveOrgPk 设定receiveOrgPk的值.
     */
    public void setReceiveOrgPk(String receiveOrgPk) {
        this.receiveOrgPk = receiveOrgPk;
    }

    /**
     *receiveUserPk的获取.
     * 
     * @return receiveUserPk值返回.
     */
    public String getReceiveUserPk() {
        return receiveUserPk;
    }

    /**
     *receiveUserPk的值设定
     * 
     * @param receiveUserPk 设定receiveUserPk的值.
     */
    public void setReceiveUserPk(String receiveUserPk) {
        this.receiveUserPk = receiveUserPk;
    }

    /**
     *receiveDeleteType的获取.
     * 
     * @return receiveDeleteType值返回.
     */
    public int getReceiveDeleteType() {
        return receiveDeleteType;
    }

    /**
     *receiveDeleteType的值设定
     * 
     * @param receiveDeleteType 设定receiveDeleteType的值.
     */
    public void setReceiveDeleteType(int receiveDeleteType) {
        this.receiveDeleteType = receiveDeleteType;
    }

    /**
     *receiveCreateTime的获取.
     * 
     * @return receiveCreateTime值返回.
     */
    public String getReceiveCreateTime() {
        return receiveCreateTime;
    }

    /**
     *receiveCreateTime的值设定
     * 
     * @param receiveCreateTime 设定receiveCreateTime的值.
     */
    public void setReceiveCreateTime(String receiveCreateTime) {
        this.receiveCreateTime = receiveCreateTime;
    }

}
