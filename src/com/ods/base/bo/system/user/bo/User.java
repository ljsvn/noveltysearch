/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.bo.system.user.bo;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * User.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * User类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * User类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 注册用户实体类<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-1-4, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-1-4
 * @version:1.0
 */
public class User {

    public final static int USER_TREE_ROOT_NODE_PK = -1;

    /**
     *属性名：USERSTATE_0、类型：int、作成日：2011-1-8.<br>
     *含义：启用
     */
    public static final int USERSTATE_0 = 0;

    /**
     *属性名：USERSTATE_1、类型：int、作成日：2011-1-8.<br>
     *含义：禁用
     */
    public static final int USERSTATE_1 = 1;

    public static final int NUMBER_0 = 0;

    public static final int NUMBER_1 = 1;

    /**
     *属性名：DEFAULTPASSWORD、类型：String、作成日：2009-9-6.<br>
     *含义：用户初始密码
     */
    public static final String DEFAULTPASSWORD = "123456";

    /**
     * 属性名：userPk、类型：String、作成日：2011-1-4.<br>
     * 含义：主键
     */

    private String userPk;

    private String parentUserPk;

    private String orgPk;

    private String allOrgPk;

    private String firstOrgPk;

    private String userLoginName;

    private String userRealName;

    private String userSex;

    private String userDutyName;

    private String userEducation;

    private String userBirthday;

    private String userNative;

    private String userPhone;

    private int isSystemUser;

    private int userMaritalStatus;

    private String userPassword;

    private String beforeLoginTime;
    
    private String memo;
    
    private int orgClassify;

    private String createOrgPk;

    private String createUserPk;

    private String createTime;

    private int deleteType;
    /**
     *属性名：userNo、类型：int、作成日：2010-12-16.<br>
     *含义：用户编号
     */
    private int userNo;

    /**
     *属性名：strOldPass、类型：String、作成日：2009-8-28.<br>
     *含义：保存的旧密码
     */
    private String strOldPass;

    // /////////////////////////////////
    // 后面用，在数据库中不存有该字段，主要是业务用起方便
    private String orgName;

    private String parentUserName;

    private String firstOrgName;

    private String firstOrgNameShort;

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
     *parentUserPk的获取.
     * 
     * @return parentUserPk值返回.
     */
    public String getParentUserPk() {
        return parentUserPk;
    }

    /**
     *parentUserPk的值设定
     * 
     * @param parentUserPk 设定parentUserPk的值.
     */
    public void setParentUserPk(String parentUserPk) {
        this.parentUserPk = parentUserPk;
    }

    /**
     *orgPk的获取.
     * 
     * @return orgPk值返回.
     */
    public String getOrgPk() {
        return orgPk;
    }

    /**
     *orgPk的值设定
     * 
     * @param orgPk 设定orgPk的值.
     */
    public void setOrgPk(String orgPk) {
        this.orgPk = orgPk;
    }

    /**
     *allOrgPk的获取.
     * 
     * @return allOrgPk值返回.
     */
    public String getAllOrgPk() {
        return allOrgPk;
    }

    /**
     *allOrgPk的值设定
     * 
     * @param allOrgPk 设定allOrgPk的值.
     */
    public void setAllOrgPk(String allOrgPk) {
        this.allOrgPk = allOrgPk;
    }

    /**
     *userDutyName的获取.
     * 
     * @return userDutyName值返回.
     */
    public String getUserDutyName() {
        return userDutyName;
    }

    /**
     *userDutyName的值设定
     * 
     * @param userDutyName 设定userDutyName的值.
     */
    public void setUserDutyName(String userDutyName) {
        this.userDutyName = userDutyName;
    }

    /**
     *userLoginName的获取.
     * 
     * @return userLoginName值返回.
     */
    public String getUserLoginName() {
        return userLoginName;
    }

    /**
     *userLoginName的值设定
     * 
     * @param userLoginName 设定userLoginName的值.
     */
    public void setUserLoginName(String userLoginName) {
        this.userLoginName = userLoginName;
    }

    /**
     *userPassword的获取.
     * 
     * @return userPassword值返回.
     */
    public String getUserPassword() {
        return userPassword;
    }

    /**
     *userPassword的值设定
     * 
     * @param userPassword 设定userPassword的值.
     */
    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    /**
     *userRealName的获取.
     * 
     * @return userRealName值返回.
     */
    public String getUserRealName() {
        return userRealName;
    }

    /**
     *userRealName的值设定
     * 
     * @param userRealName 设定userRealName的值.
     */
    public void setUserRealName(String userRealName) {
        this.userRealName = userRealName;
    }

    /**
     *userSex的获取.
     * 
     * @return userSex值返回.
     */
    public String getUserSex() {
        return userSex;
    }

    /**
     *userSex的值设定
     * 
     * @param userSex 设定userSex的值.
     */
    public void setUserSex(String userSex) {
        this.userSex = userSex;
    }

    /**
     *beforeLoginTime的获取.
     * 
     * @return beforeLoginTime值返回.
     */
    public String getBeforeLoginTime() {
        return beforeLoginTime;
    }

    /**
     *beforeLoginTime的值设定
     * 
     * @param beforeLoginTime 设定beforeLoginTime的值.
     */
    public void setBeforeLoginTime(String beforeLoginTime) {
        this.beforeLoginTime = beforeLoginTime;
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
     *strOldPass的值设定
     * 
     * @param strOldPass 设定strOldPass的值.
     */
    public void setStrOldPass(String strOldPass) {
        this.strOldPass = strOldPass;
    }

    /**
     *strOldPass的获取.
     * 
     * @return strOldPass值返回.
     */
    public String getStrOldPass() {
        return strOldPass;
    }

    /**
     *firstOrgPk的获取.
     * 
     * @return firstOrgPk值返回.
     */
    public String getFirstOrgPk() {
        return firstOrgPk;
    }

    /**
     *firstOrgPk的值设定
     * 
     * @param firstOrgPk 设定firstOrgPk的值.
     */
    public void setFirstOrgPk(String firstOrgPk) {
        this.firstOrgPk = firstOrgPk;
    }

    /**
     *firstOrgName的获取.
     * 
     * @return firstOrgName值返回.
     */
    public String getFirstOrgName() {
        return firstOrgName;
    }

    /**
     *firstOrgName的值设定
     * 
     * @param firstOrgName 设定firstOrgName的值.
     */
    public void setFirstOrgName(String firstOrgName) {
        this.firstOrgName = firstOrgName;
    }

    /**
     *firstOrgNameShort的获取.
     * 
     * @return firstOrgNameShort值返回.
     */
    public String getFirstOrgNameShort() {
        return firstOrgNameShort;
    }

    /**
     *firstOrgNameShort的值设定
     * 
     * @param firstOrgNameShort 设定firstOrgNameShort的值.
     */
    public void setFirstOrgNameShort(String firstOrgNameShort) {
        this.firstOrgNameShort = firstOrgNameShort;
    }

    /**
     *userEducation的获取.
     * 
     * @return userEducation值返回.
     */
    public String getUserEducation() {
        return userEducation;
    }

    /**
     *userEducation的值设定
     * 
     * @param userEducation 设定userEducation的值.
     */
    public void setUserEducation(String userEducation) {
        this.userEducation = userEducation;
    }

    /**
     *userBirthday的获取.
     * 
     * @return userBirthday值返回.
     */
    public String getUserBirthday() {
        return userBirthday;
    }

    /**
     *userBirthday的值设定
     * 
     * @param userBirthday 设定userBirthday的值.
     */
    public void setUserBirthday(String userBirthday) {
        this.userBirthday = userBirthday;
    }

    /**
     *userNative的获取.
     * 
     * @return userNative值返回.
     */
    public String getUserNative() {
        return userNative;
    }

    /**
     *userNative的值设定
     * 
     * @param userNative 设定userNative的值.
     */
    public void setUserNative(String userNative) {
        this.userNative = userNative;
    }

    /**
     *isSystemUser的获取.
     * 
     * @return isSystemUser值返回.
     */
    public int getIsSystemUser() {
        return isSystemUser;
    }

    /**
     *isSystemUser的值设定
     * 
     * @param isSystemUser 设定isSystemUser的值.
     */
    public void setIsSystemUser(int isSystemUser) {
        this.isSystemUser = isSystemUser;
    }

    /**
     *userMaritalStatus的获取.
     * 
     * @return userMaritalStatus值返回.
     */
    public int getUserMaritalStatus() {
        return userMaritalStatus;
    }

    /**
     *userMaritalStatus的值设定
     * 
     * @param userMaritalStatus 设定userMaritalStatus的值.
     */
    public void setUserMaritalStatus(int userMaritalStatus) {
        this.userMaritalStatus = userMaritalStatus;
    }

    /**
     *parentUserName的获取.
     * 
     * @return parentUserName值返回.
     */
    public String getParentUserName() {
        return parentUserName;
    }

    /**
     *parentUserName的值设定
     * 
     * @param parentUserName 设定parentUserName的值.
     */
    public void setParentUserName(String parentUserName) {
        this.parentUserName = parentUserName;
    }

    /**
     *orgName的获取.
     * 
     * @return orgName值返回.
     */
    public String getOrgName() {
        return orgName;
    }

    /**
     *orgName的值设定
     * 
     * @param orgName 设定orgName的值.
     */
    public void setOrgName(String orgName) {
        this.orgName = orgName;
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
     *userPhone的获取.
     * 
     * @return userPhone值返回.
     */
    public String getUserPhone() {
        return userPhone;
    }

    /**
     *userPhone的值设定
     * 
     * @param userPhone 设定userPhone的值.
     */
    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    /**
     *memo的获取.
     *@return memo值返回.
     */
    public String getMemo() {
        return memo;
    }

    /**
     *memo的值设定
     *@param memo 设定memo的值.
     */
    public void setMemo(String memo) {
        this.memo = memo;
    }

    /**
     *orgClassify的获取.
     *@return orgClassify值返回.
     */
    public int getOrgClassify() {
        return orgClassify;
    }

    /**
     *orgClassify的值设定
     *@param orgClassify 设定orgClassify的值.
     */
    public void setOrgClassify(int orgClassify) {
        this.orgClassify = orgClassify;
    }

    /**
     *userNo的获取.
     *@return userNo值返回.
     */
    public int getUserNo() {
        return userNo;
    }

    /**
     *userNo的值设定
     *@param userNo 设定userNo的值.
     */
    public void setUserNo(int userNo) {
        this.userNo = userNo;
    }

}
