/**
 *copyright(C)2015
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.data.bo.subjectclass;

/**
 * <b>系统名称:</b><b> 昆仑厂MES生产管理系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 * <b>文件名:</b><br>
 *
 * SubjectClass.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 *
 * SubjectClass类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 * SubjectClass类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 * 主题词和分类表<br>
 *
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2015年4月22日, cause, 10325431@qq.com, 新建<br>
 *
 * @author :10325431@qq.com
 * @since :2015年4月22日
 * @version:1.0
 */
public class SubjectClass {
    // "subjectClassPk","fatherPk","fatherPkAll","subjectClassName","aliasName1","aliasName2","aliasName3","subjectClassEname","aliasEname1","aliasEname2","aliasEname3","aliasEname4","aliasEname5","retain1","retain2","isKeyWord","state","orderNo","memo","createOrgPk","createUserPk","createTime","deleteType","aliasName4","aliasName5","aliasName6","aliasEname6","aliasEname7","aliasEname8","aliasEname9","retain3"
    public final static String ROOT_NODE_PK = "00000000-0000-0000-0000-000000000001";

    public final static String ROOT = "-1";

    public final static int NUM_0 = 0;

    public final static int NUM_1 = 1;

    /**
     * 属性名：subjectClassPk、类型：String、作成日：2015-4-22<br>
     * 含义：
     */
    private String subjectClassPk;

    private String[] subjectClassPks;

    /**
     * 属性名：fatherPk、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String fatherPk;

    /**
     * 属性名：fatherPkAll、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String fatherPkAll;

    /**
     * 属性名：subjectClassName、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String subjectClassName;

    /**
     * 属性名：aliasName1、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String aliasName1;

    /**
     * 属性名：aliasName2、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String aliasName2;

    /**
     * 属性名：aliasName3、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String aliasName3;

    /**
     * 属性名：subjectClassEname、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String subjectClassEname;

    /**
     * 属性名：aliasEname1、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String aliasEname1;

    /**
     * 属性名：aliasEname2、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String aliasEname2;

    /**
     * 属性名：aliasEname3、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String aliasEname3;

    /**
     * 属性名：aliasEname4、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String aliasEname4;

    /**
     * 属性名：aliasEname5、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String aliasEname5;

    /**
     * 属性名：retain1、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String retain1;

    /**
     * 属性名：retain2、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String retain2;

    /**
     * 属性名：isKeyWord、类型：int、作成日：2016-7-14<br>
     * 含义：
     */
    private int isKeyWord;

    /**
     * 属性名：state、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String state;

    /**
     * 属性名：orderNo、类型：int、作成日：2016-7-14<br>
     * 含义：
     */
    private int orderNo;

    /**
     * 属性名：memo、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String memo;

    /**
     * 属性名：createOrgPk、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String createOrgPk;

    /**
     * 属性名：createUserPk、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String createUserPk;

    /**
     * 属性名：createTime、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String createTime;

    /**
     * 属性名：deleteType、类型：int、作成日：2016-7-14<br>
     * 含义：
     */
    private int deleteType;

    /**
     * 属性名：aliasName4、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String aliasName4;

    /**
     * 属性名：aliasName5、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String aliasName5;

    /**
     * 属性名：aliasName6、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String aliasName6;

    /**
     * 属性名：aliasEname6、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String aliasEname6;

    /**
     * 属性名：aliasEname7、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String aliasEname7;

    /**
     * 属性名：aliasEname8、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String aliasEname8;

    /**
     * 属性名：aliasEname9、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String aliasEname9;

    /**
     * 属性名：retain3、类型：String、作成日：2016-7-14<br>
     * 含义：
     */
    private String retain3;

    /**
     * subjectClassPk的获取.
     * 
     * @return subjectClassPk值返回.
     */
    public String getSubjectClassPk() {
        return subjectClassPk;
    }

    /**
     * subjectClassPk的值设定
     * 
     * @param subjectClassPk 设定subjectClassPk的值.
     */
    public void setSubjectClassPk(String subjectClassPk) {
        this.subjectClassPk = subjectClassPk;
    }

    /**
     * subjectClassPks的获取.
     * 
     * @return subjectClassPks值返回.
     */
    public String[] getSubjectClassPks() {
        return subjectClassPks;
    }

    /**
     * subjectClassPks的值设定
     * 
     * @param subjectClassPks 设定subjectClassPks的值.
     */
    public void setSubjectClassPks(String[] subjectClassPks) {
        this.subjectClassPks = subjectClassPks;
    }

    /**
     * fatherPk的获取.
     * 
     * @return fatherPk值返回.
     */
    public String getFatherPk() {
        return fatherPk;
    }

    /**
     * fatherPk的值设定
     * 
     * @param fatherPk 设定fatherPk的值.
     */
    public void setFatherPk(String fatherPk) {
        this.fatherPk = fatherPk;
    }

    /**
     * fatherPkAll的获取.
     * 
     * @return fatherPkAll值返回.
     */
    public String getFatherPkAll() {
        return fatherPkAll;
    }

    /**
     * fatherPkAll的值设定
     * 
     * @param fatherPkAll 设定fatherPkAll的值.
     */
    public void setFatherPkAll(String fatherPkAll) {
        this.fatherPkAll = fatherPkAll;
    }

    /**
     * subjectClassName的获取.
     * 
     * @return subjectClassName值返回.
     */
    public String getSubjectClassName() {
        return subjectClassName;
    }

    /**
     * subjectClassName的值设定
     * 
     * @param subjectClassName 设定subjectClassName的值.
     */
    public void setSubjectClassName(String subjectClassName) {
        this.subjectClassName = subjectClassName;
    }

    /**
     * aliasName1的获取.
     * 
     * @return aliasName1值返回.
     */
    public String getAliasName1() {
        return aliasName1;
    }

    /**
     * aliasName1的值设定
     * 
     * @param aliasName1 设定aliasName1的值.
     */
    public void setAliasName1(String aliasName1) {
        this.aliasName1 = aliasName1;
    }

    /**
     * aliasName2的获取.
     * 
     * @return aliasName2值返回.
     */
    public String getAliasName2() {
        return aliasName2;
    }

    /**
     * aliasName2的值设定
     * 
     * @param aliasName2 设定aliasName2的值.
     */
    public void setAliasName2(String aliasName2) {
        this.aliasName2 = aliasName2;
    }

    /**
     * aliasName3的获取.
     * 
     * @return aliasName3值返回.
     */
    public String getAliasName3() {
        return aliasName3;
    }

    /**
     * aliasName3的值设定
     * 
     * @param aliasName3 设定aliasName3的值.
     */
    public void setAliasName3(String aliasName3) {
        this.aliasName3 = aliasName3;
    }

    /**
     * subjectClassEname的获取.
     * 
     * @return subjectClassEname值返回.
     */
    public String getSubjectClassEname() {
        return subjectClassEname;
    }

    /**
     * subjectClassEname的值设定
     * 
     * @param subjectClassEname 设定subjectClassEname的值.
     */
    public void setSubjectClassEname(String subjectClassEname) {
        this.subjectClassEname = subjectClassEname;
    }

    /**
     * aliasEname1的获取.
     * 
     * @return aliasEname1值返回.
     */
    public String getAliasEname1() {
        return aliasEname1;
    }

    /**
     * aliasEname1的值设定
     * 
     * @param aliasEname1 设定aliasEname1的值.
     */
    public void setAliasEname1(String aliasEname1) {
        this.aliasEname1 = aliasEname1;
    }

    /**
     * aliasEname2的获取.
     * 
     * @return aliasEname2值返回.
     */
    public String getAliasEname2() {
        return aliasEname2;
    }

    /**
     * aliasEname2的值设定
     * 
     * @param aliasEname2 设定aliasEname2的值.
     */
    public void setAliasEname2(String aliasEname2) {
        this.aliasEname2 = aliasEname2;
    }

    /**
     * aliasEname3的获取.
     * 
     * @return aliasEname3值返回.
     */
    public String getAliasEname3() {
        return aliasEname3;
    }

    /**
     * aliasEname3的值设定
     * 
     * @param aliasEname3 设定aliasEname3的值.
     */
    public void setAliasEname3(String aliasEname3) {
        this.aliasEname3 = aliasEname3;
    }

    /**
     * aliasEname4的获取.
     * 
     * @return aliasEname4值返回.
     */
    public String getAliasEname4() {
        return aliasEname4;
    }

    /**
     * aliasEname4的值设定
     * 
     * @param aliasEname4 设定aliasEname4的值.
     */
    public void setAliasEname4(String aliasEname4) {
        this.aliasEname4 = aliasEname4;
    }

    /**
     * aliasEname5的获取.
     * 
     * @return aliasEname5值返回.
     */
    public String getAliasEname5() {
        return aliasEname5;
    }

    /**
     * aliasEname5的值设定
     * 
     * @param aliasEname5 设定aliasEname5的值.
     */
    public void setAliasEname5(String aliasEname5) {
        this.aliasEname5 = aliasEname5;
    }

    /**
     * retain1的获取.
     * 
     * @return retain1值返回.
     */
    public String getRetain1() {
        return retain1;
    }

    /**
     * retain1的值设定
     * 
     * @param retain1 设定retain1的值.
     */
    public void setRetain1(String retain1) {
        this.retain1 = retain1;
    }

    /**
     * retain2的获取.
     * 
     * @return retain2值返回.
     */
    public String getRetain2() {
        return retain2;
    }

    /**
     * retain2的值设定
     * 
     * @param retain2 设定retain2的值.
     */
    public void setRetain2(String retain2) {
        this.retain2 = retain2;
    }

    /**
     * isKeyWord的获取.
     * 
     * @return isKeyWord值返回.
     */
    public int getIsKeyWord() {
        return isKeyWord;
    }

    /**
     * isKeyWord的值设定
     * 
     * @param isKeyWord 设定isKeyWord的值.
     */
    public void setIsKeyWord(int isKeyWord) {
        this.isKeyWord = isKeyWord;
    }

    /**
     * state的获取.
     * 
     * @return state值返回.
     */
    public String getState() {
        return state;
    }

    /**
     * state的值设定
     * 
     * @param state 设定state的值.
     */
    public void setState(String state) {
        this.state = state;
    }

    /**
     * orderNo的获取.
     * 
     * @return orderNo值返回.
     */
    public int getOrderNo() {
        return orderNo;
    }

    /**
     * orderNo的值设定
     * 
     * @param orderNo 设定orderNo的值.
     */
    public void setOrderNo(int orderNo) {
        this.orderNo = orderNo;
    }

    /**
     * memo的获取.
     * 
     * @return memo值返回.
     */
    public String getMemo() {
        return memo;
    }

    /**
     * memo的值设定
     * 
     * @param memo 设定memo的值.
     */
    public void setMemo(String memo) {
        this.memo = memo;
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
     * createOrgPk的值设定
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
     * createUserPk的值设定
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
     * createTime的值设定
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
     * deleteType的值设定
     * 
     * @param deleteType 设定deleteType的值.
     */
    public void setDeleteType(int deleteType) {
        this.deleteType = deleteType;
    }

    /**
     * aliasName4的获取.
     * 
     * @return aliasName4值返回.
     */
    public String getAliasName4() {
        return aliasName4;
    }

    /**
     * aliasName4的值设定
     * 
     * @param aliasName4 设定aliasName4的值.
     */
    public void setAliasName4(String aliasName4) {
        this.aliasName4 = aliasName4;
    }

    /**
     * aliasName5的获取.
     * 
     * @return aliasName5值返回.
     */
    public String getAliasName5() {
        return aliasName5;
    }

    /**
     * aliasName5的值设定
     * 
     * @param aliasName5 设定aliasName5的值.
     */
    public void setAliasName5(String aliasName5) {
        this.aliasName5 = aliasName5;
    }

    /**
     * aliasName6的获取.
     * 
     * @return aliasName6值返回.
     */
    public String getAliasName6() {
        return aliasName6;
    }

    /**
     * aliasName6的值设定
     * 
     * @param aliasName6 设定aliasName6的值.
     */
    public void setAliasName6(String aliasName6) {
        this.aliasName6 = aliasName6;
    }

    /**
     * aliasEname6的获取.
     * 
     * @return aliasEname6值返回.
     */
    public String getAliasEname6() {
        return aliasEname6;
    }

    /**
     * aliasEname6的值设定
     * 
     * @param aliasEname6 设定aliasEname6的值.
     */
    public void setAliasEname6(String aliasEname6) {
        this.aliasEname6 = aliasEname6;
    }

    /**
     * aliasEname7的获取.
     * 
     * @return aliasEname7值返回.
     */
    public String getAliasEname7() {
        return aliasEname7;
    }

    /**
     * aliasEname7的值设定
     * 
     * @param aliasEname7 设定aliasEname7的值.
     */
    public void setAliasEname7(String aliasEname7) {
        this.aliasEname7 = aliasEname7;
    }

    /**
     * aliasEname8的获取.
     * 
     * @return aliasEname8值返回.
     */
    public String getAliasEname8() {
        return aliasEname8;
    }

    /**
     * aliasEname8的值设定
     * 
     * @param aliasEname8 设定aliasEname8的值.
     */
    public void setAliasEname8(String aliasEname8) {
        this.aliasEname8 = aliasEname8;
    }

    /**
     * aliasEname9的获取.
     * 
     * @return aliasEname9值返回.
     */
    public String getAliasEname9() {
        return aliasEname9;
    }

    /**
     * aliasEname9的值设定
     * 
     * @param aliasEname9 设定aliasEname9的值.
     */
    public void setAliasEname9(String aliasEname9) {
        this.aliasEname9 = aliasEname9;
    }

    /**
     * retain3的获取.
     * 
     * @return retain3值返回.
     */
    public String getRetain3() {
        return retain3;
    }

    /**
     * retain3的值设定
     * 
     * @param retain3 设定retain3的值.
     */
    public void setRetain3(String retain3) {
        this.retain3 = retain3;
    }

    /**
     * rootNodePk的获取.
     * 
     * @return rootNodePk值返回.
     */
    public static String getRootNodePk() {
        return ROOT_NODE_PK;
    }

    /**
     * root的获取.
     * 
     * @return root值返回.
     */
    public static String getRoot() {
        return ROOT;
    }

    /**
     * num0的获取.
     * 
     * @return num0值返回.
     */
    public static int getNum0() {
        return NUM_0;
    }

    /**
     * num1的获取.
     * 
     * @return num1值返回.
     */
    public static int getNum1() {
        return NUM_1;
    }

}
