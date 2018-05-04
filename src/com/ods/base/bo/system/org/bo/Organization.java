/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.bo.system.org.bo;

/**
 *<b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 *<b>文件名:</b><br>
 * 
 *Organization.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *Organization类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *Organization类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *组织机构实体类<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2011-1-4, cause, 10325431@qq.com, 新建<br>
 * 
 *@author :pu_xiaolong
 *@since :2011-1-4
 *@version:1.0
 */
public class Organization {

    /**
     *属性名：ROOT_NODE_PK、类型：String、作成日：2011-1-8.<br>
     *含义：组织机构根节点
     */
    public final static String ROOT_NODE_PK = "00000000-0000-0000-0000-000000000000";

    public final static String ROOT = "-1";

    public final static int NUM_0 = 0;

    public final static int NUM_1 = 1;

    public final static String FIRST_ORGPK = "77907AB2-2487-4ADF-A139-9C2E49247044";

    public final static String SECOND_ORGPK = "87E4ECB8-CCCE-4D8A-84FB-9CE73EF16142";

    public final static String THIRD_ORGPK = "61244278-E352-4A3F-A762-6AA20B797ABF";

    public final static String FOURTH_ORGPK = "DC9775E4-E6F3-4897-8B69-52DFB9BD878C";

    public final static String FIFTH_ORGPK = "DC9350CF-D4C1-4174-A170-0C9ED823C4E3";

    /**
     *属性名：orgPk、类型：String、作成日：2011-1-4.<br>
     *含义：主键
     */
    private String orgPk;

    /**
     *属性名：fatherOrgPk、类型：String、作成日：2011-1-4.<br>
     *含义：父主键
     */
    private String fatherOrgPk;

    /**
     *属性名：firstOrgPk、类型：String、作成日：2011-3-22.<br>
     *含义：1级组织机构主键
     */
    private String firstOrgPk;

    /**
     *属性名：fatherOrgPkAll、类型：String、作成日：2011-1-4.<br>
     *含义：所有父主键 每个之间用"_"分割
     */
    private String fatherOrgPkAll;

    /**
     *属性名：orgName、类型：String、作成日：2011-1-4.<br>
     *含义：组织机构名称
     */
    private String orgName;

    /**
     *属性名：orgNameShort、类型：String、作成日：2011-1-13.<br>
     *含义：组织机构简称 -行政区
     */
    private String orgNameShort;

    /**
     *属性名：orgType、类型：String、作成日：2011-1-4.<br>
     *含义：组织机构类型 -科所队
     */
    private String orgType;

    // 首字母拼音码
    private String firstAlphabet;

    // 全部拼音码
    private String fullAlphabet;

    // 在同级节点下的顺序
    private int nodeOrderby;

    // 组织结构分类
    private int orgClassify;

    /**
     *属性名：deleteType、类型：int、作成日：2011-1-4.<br>
     *含义：删除状态(0:表示没有删除，1：表示删除)
     */
    private int deleteType;

    /**
     *属性名：createUserPk、类型：String、作成日：2011-1-4.<br>
     *含义：创建人主键
     */
    private String createUserPk;

    /**
     *属性名：createTime、类型：String、作成日：2011-1-4.<br>
     *含义：创建时间
     */
    private String createTime;

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
     *fatherOrgPk的获取.
     * 
     * @return fatherOrgPk值返回.
     */
    public String getFatherOrgPk() {
        return fatherOrgPk;
    }

    /**
     *fatherOrgPk的值设定
     * 
     * @param fatherOrgPk 设定fatherOrgPk的值.
     */
    public void setFatherOrgPk(String fatherOrgPk) {
        this.fatherOrgPk = fatherOrgPk;
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
     *fatherOrgPkAll的获取.
     * 
     * @return fatherOrgPkAll值返回.
     */
    public String getFatherOrgPkAll() {
        return fatherOrgPkAll;
    }

    /**
     *fatherOrgPkAll的值设定
     * 
     * @param fatherOrgPkAll 设定fatherOrgPkAll的值.
     */
    public void setFatherOrgPkAll(String fatherOrgPkAll) {
        this.fatherOrgPkAll = fatherOrgPkAll;
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
     *orgType的值设定
     * 
     * @param orgType 设定orgType的值.
     */
    public void setOrgType(String orgType) {
        this.orgType = orgType;
    }

    /**
     *orgType的获取.
     * 
     * @return orgType值返回.
     */
    public String getOrgType() {
        return orgType;
    }

    /**
     *orgNameShort的值设定
     * 
     * @param orgNameShort 设定orgNameShort的值.
     */
    public void setOrgNameShort(String orgNameShort) {
        this.orgNameShort = orgNameShort;
    }

    /**
     *orgNameShort的获取.
     * 
     * @return orgNameShort值返回.
     */
    public String getOrgNameShort() {
        return orgNameShort;
    }

    /**
     *firstAlphabet的获取.
     * 
     * @return firstAlphabet值返回.
     */
    public String getFirstAlphabet() {
        return firstAlphabet;
    }

    /**
     *firstAlphabet的值设定
     * 
     * @param firstAlphabet 设定firstAlphabet的值.
     */
    public void setFirstAlphabet(String firstAlphabet) {
        this.firstAlphabet = firstAlphabet;
    }

    /**
     *fullAlphabet的获取.
     * 
     * @return fullAlphabet值返回.
     */
    public String getFullAlphabet() {
        return fullAlphabet;
    }

    /**
     *fullAlphabet的值设定
     * 
     * @param fullAlphabet 设定fullAlphabet的值.
     */
    public void setFullAlphabet(String fullAlphabet) {
        this.fullAlphabet = fullAlphabet;
    }

    /**
     *nodeOrderby的获取.
     * 
     * @return nodeOrderby值返回.
     */
    public int getNodeOrderby() {
        return nodeOrderby;
    }

    /**
     *nodeOrderby的值设定
     * 
     * @param nodeOrderby 设定nodeOrderby的值.
     */
    public void setNodeOrderby(int nodeOrderby) {
        this.nodeOrderby = nodeOrderby;
    }

    /**
     *orgClassify的获取.
     * 
     * @return orgClassify值返回.
     */
    public int getOrgClassify() {
        return orgClassify;
    }

    /**
     *orgClassify的值设定
     * 
     * @param orgClassify 设定orgClassify的值.
     */
    public void setOrgClassify(int orgClassify) {
        this.orgClassify = orgClassify;
    }

}
