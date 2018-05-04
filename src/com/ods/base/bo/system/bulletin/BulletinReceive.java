/**
 *copyright(C)2009
 *Ods信息技术软件有限公司& Service Corporation All rights reserved
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
 *BulletinReceive.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *BulletinReceive类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *BulletinReceive类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *公告接收信息表<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2012-1-12, cause, wang_zr, 新建<br>
 * 
 *@author :wang_zr
 *@since :2012-1-12
 *@version:1.0
 */
public class BulletinReceive {

    // "receivePk","bulletinPk","sendType","userPk","bulletinIsread","createOrgPk","createUserPk","deleteType","createTime"
    private String receivePk;

    private String bulletinPk;

    private int sendType;

    private String userPk;

    private String userName;

    private int bulletinIsread;

    private String createOrgPk;

    private String createUserPk;

    private int deleteType;

    private String createTime;
    
    private String createUserName;

    /**
     *receivePk的获取.
     * 
     * @return receivePk值返回.
     */
    public String getReceivePk() {
        return receivePk;
    }

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

    /**
     *receivePk的值设定
     * 
     * @param receivePk 设定receivePk的值.
     */
    public void setReceivePk(String receivePk) {
        this.receivePk = receivePk;
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

}
