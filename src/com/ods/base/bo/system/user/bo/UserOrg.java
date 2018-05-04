/**
 *copyright(C)2009
 *Ods信息技术软件有限公司& Service Corporation All rights reserved
 */
package com.ods.base.bo.system.user.bo;
 
 
/**
 *<b>系统名称:</b><b>
 *特情刑嫌管理
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 *<b>文件名:</b><br>
 *
 *UserOrg.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *UserOrg类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *UserOrg类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *用户组织机构视图集合实体类<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2010-12-25,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :pu_xiaolong
 *@since  :2010-12-25
 *@version:1.0
*/
public class UserOrg {
 

    /**
     *属性名：userPk、类型：int、作成日：2009-6-9. 含义：主键
     */
    private String userPk;
    
    /**
    *属性名：userNo、类型：int、作成日：2010-12-16.<br>
    *含义：用户编号
    */
    private int userNo;

    /**
     *属性名：orgPk、类型：int、作成日：2009-6-9. 含义：组织机构主键
     */
    private String orgPk;
    
    /**
    *属性名：all_org_pk、类型：String、作成日：2010-12-16.<br>
    *含义：所有组织机构父节点
    */
    private String allOrgPk;

    /**
     *属性名：dutyPk、类型：int、作成日：2009-6-9. 含义：职务主键
     */
    private String dutyPk;

    /**
     *属性名：fatherUserPk、类型：int、作成日：2009-6-11.<br>
     *含义：上级领导
     */
    private String fatherUserPk;

    /**
     *属性名：userLoginName、类型：String、作成日：2009-6-11.<br>
     *含义：登录名称
     */
    private String userLoginName;

    /**
     *属性名：userPassword、类型：String、作成日：2009-6-11.<br>
     *含义：登录密码
     */
    private String userPassword;

    /**
     *属性名：userState、类型：int、作成日：2009-6-11.<br>
     *含义：登录状态 0:启用 1：禁用
     */
    private int userState;

    /**
     *属性名：userRealname、类型：String、作成日：2009-6-11.<br>
     *含义：用户姓名
     */
    private String userRealname;

    /**
     *属性名：userSex、类型：int、作成日：2009-9-6.<br>
     *含义：用户姓别 0=女,1=男
     */
    private int userSex;

    /**
     *属性名：userPhone、类型：String、作成日：2009-9-6.<br>
     *含义：手机号码
     */
    private String userPhone;

    /**
     *属性名：officeTele、类型：String、作成日：2009-9-6.<br>
     *含义：办公电话
     */
    private String officeTele;

    /**
     *属性名：userEmail、类型：String、作成日：2009-9-6.<br>
     *含义：邮箱
     */
    private String userEmail;

    /**
     *属性名：userFax、类型：String、作成日：2009-9-6.<br>
     *含义：传真
     */
    private String userFax;

    /**
     *属性名：userQq、类型：String、作成日：2009-9-6.<br>
     *含义：联系电话
     */
    private String userQq;

    /**
     *属性名：deleteType、类型：int、作成日：2009-9-6.<br>
     *含义：删除状态(0:表示没有删除，1：表示删除)
     */
    private int deleteType;

    private String createUserPk; 
    /**
     *属性名：createTime、类型：String、作成日：2009-9-6.<br>
     *含义：创建时间
     */
    private String createTime;
    
    /**
    *属性名：orgWardNo、类型：String、作成日：2010-12-25.<br>
    *含义：行政区划
    */
    private String  orgWardNo;
    
    /**
    *属性名：orgPoliceTeam、类型：String、作成日：2010-12-25.<br>
    *含义：科所队
    */
    private String  orgPoliceTeam;
    
    /**
    *属性名：orgName、类型：String、作成日：2010-12-25.<br>
    *含义：组织机构名称
    */
    private String orgName;

    /**
     *userPk的获取.
     *@return userPk值返回.
     */
    public String getUserPk() {
        return userPk;
    }

    /**
     *userPk的值设定
     *@param userPk 设定userPk的值.
     */
    public void setUserPk(String userPk) {
        this.userPk = userPk;
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

    /**
     *orgPk的获取.
     *@return orgPk值返回.
     */
    public String getOrgPk() {
        return orgPk;
    }

    /**
     *orgPk的值设定
     *@param orgPk 设定orgPk的值.
     */
    public void setOrgPk(String orgPk) {
        this.orgPk = orgPk;
    }

    /**
     *allOrgPk的获取.
     *@return allOrgPk值返回.
     */
    public String getAllOrgPk() {
        return allOrgPk;
    }

    /**
     *allOrgPk的值设定
     *@param allOrgPk 设定allOrgPk的值.
     */
    public void setAllOrgPk(String allOrgPk) {
        this.allOrgPk = allOrgPk;
    }

    /**
     *dutyPk的获取.
     *@return dutyPk值返回.
     */
    public String getDutyPk() {
        return dutyPk;
    }

    /**
     *dutyPk的值设定
     *@param dutyPk 设定dutyPk的值.
     */
    public void setDutyPk(String dutyPk) {
        this.dutyPk = dutyPk;
    }

    /**
     *fatherUserPk的获取.
     *@return fatherUserPk值返回.
     */
    public String getFatherUserPk() {
        return fatherUserPk;
    }

    /**
     *fatherUserPk的值设定
     *@param fatherUserPk 设定fatherUserPk的值.
     */
    public void setFatherUserPk(String fatherUserPk) {
        this.fatherUserPk = fatherUserPk;
    }

    /**
     *userLoginName的获取.
     *@return userLoginName值返回.
     */
    public String getUserLoginName() {
        return userLoginName;
    }

    /**
     *userLoginName的值设定
     *@param userLoginName 设定userLoginName的值.
     */
    public void setUserLoginName(String userLoginName) {
        this.userLoginName = userLoginName;
    }

    /**
     *userPassword的获取.
     *@return userPassword值返回.
     */
    public String getUserPassword() {
        return userPassword;
    }

    /**
     *userPassword的值设定
     *@param userPassword 设定userPassword的值.
     */
    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    /**
     *userState的获取.
     *@return userState值返回.
     */
    public int getUserState() {
        return userState;
    }

    /**
     *userState的值设定
     *@param userState 设定userState的值.
     */
    public void setUserState(int userState) {
        this.userState = userState;
    }

    /**
     *userRealname的获取.
     *@return userRealname值返回.
     */
    public String getUserRealname() {
        return userRealname;
    }

    /**
     *userRealname的值设定
     *@param userRealname 设定userRealname的值.
     */
    public void setUserRealname(String userRealname) {
        this.userRealname = userRealname;
    }

    /**
     *userSex的获取.
     *@return userSex值返回.
     */
    public int getUserSex() {
        return userSex;
    }

    /**
     *userSex的值设定
     *@param userSex 设定userSex的值.
     */
    public void setUserSex(int userSex) {
        this.userSex = userSex;
    }

    /**
     *userPhone的获取.
     *@return userPhone值返回.
     */
    public String getUserPhone() {
        return userPhone;
    }

    /**
     *userPhone的值设定
     *@param userPhone 设定userPhone的值.
     */
    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    /**
     *officeTele的获取.
     *@return officeTele值返回.
     */
    public String getOfficeTele() {
        return officeTele;
    }

    /**
     *officeTele的值设定
     *@param officeTele 设定officeTele的值.
     */
    public void setOfficeTele(String officeTele) {
        this.officeTele = officeTele;
    }

    /**
     *userEmail的获取.
     *@return userEmail值返回.
     */
    public String getUserEmail() {
        return userEmail;
    }

    /**
     *userEmail的值设定
     *@param userEmail 设定userEmail的值.
     */
    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    /**
     *userFax的获取.
     *@return userFax值返回.
     */
    public String getUserFax() {
        return userFax;
    }

    /**
     *userFax的值设定
     *@param userFax 设定userFax的值.
     */
    public void setUserFax(String userFax) {
        this.userFax = userFax;
    }

    /**
     *userQq的获取.
     *@return userQq值返回.
     */
    public String getUserQq() {
        return userQq;
    }

    /**
     *userQq的值设定
     *@param userQq 设定userQq的值.
     */
    public void setUserQq(String userQq) {
        this.userQq = userQq;
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
     *orgWardNo的获取.
     *@return orgWardNo值返回.
     */
    public String getOrgWardNo() {
        return orgWardNo;
    }

    /**
     *orgWardNo的值设定
     *@param orgWardNo 设定orgWardNo的值.
     */
    public void setOrgWardNo(String orgWardNo) {
        this.orgWardNo = orgWardNo;
    }

    /**
     *orgPoliceTeam的获取.
     *@return orgPoliceTeam值返回.
     */
    public String getOrgPoliceTeam() {
        return orgPoliceTeam;
    }

    /**
     *orgPoliceTeam的值设定
     *@param orgPoliceTeam 设定orgPoliceTeam的值.
     */
    public void setOrgPoliceTeam(String orgPoliceTeam) {
        this.orgPoliceTeam = orgPoliceTeam;
    }

    /**
     *orgName的获取.
     *@return orgName值返回.
     */
    public String getOrgName() {
        return orgName;
    }

    /**
     *orgName的值设定
     *@param orgName 设定orgName的值.
     */
    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }
    
}
