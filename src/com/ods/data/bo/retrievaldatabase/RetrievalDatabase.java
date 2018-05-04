/**
 *copyright(C)2015
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.data.bo.retrievaldatabase;

/**
 * <b>系统名称:</b><b> 系统 </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 * <b>文件名:</b><br>
 *
 * RetrievalDatabase.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 *
 * RetrievalDatabase类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 * RetrievalDatabase类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 * 检索数据库类<br>
 *
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2015年6月14日, cause, 10325431@qq.com, 新建<br>
 *
 * @author :10325431@qq.com
 * @since :2015年6月14日
 * @version:1.0
 */
public class RetrievalDatabase {
    // ,"retrievalDatabasePk","contractPk","retrievalDatabaseName","url","ageLimit","searchStrategy","retain1","retain2","orderNo","memo","createOrgPk","createUserPk","createTime","deleteType"
    /**
     * 属性名：retrievalDatabasePk、类型：String、作成日：2015-6-14<br>
     * 含义：
     */
    private String retrievalDatabasePk;

    private String[] retrievalDatabasePks;

    /**
     * 属性名：contractPk、类型：String、作成日：2015-6-14<br>
     * 含义：
     */
    private String contractPk;

    /**
     * 属性名：retrievalDatabaseName、类型：String、作成日：2015-6-14<br>
     * 含义：
     */
    private String retrievalDatabaseName;

    /**
     * 属性名：url、类型：String、作成日：2015-6-14<br>
     * 含义：
     */
    private String url;

    /**
     * 属性名：ageLimit、类型：String、作成日：2015-6-14<br>
     * 含义：
     */
    private String ageLimit;

    /**
     * 属性名：searchStrategy、类型：String、作成日：2015-6-14<br>
     * 含义：
     */
    private String searchStrategy;

    /**
     * 属性名：retain1、类型：String、作成日：2015-6-14<br>
     * 含义：
     */
    private String retain1;

    /**
     * 属性名：retain2、类型：String、作成日：2015-6-14<br>
     * 含义：
     */
    private String retain2;

    /**
     * 属性名：orderNo、类型：int、作成日：2015-6-14<br>
     * 含义：
     */
    private int orderNo;

    /**
     * 属性名：memo、类型：String、作成日：2015-6-14<br>
     * 含义：
     */
    private String memo;

    /**
     * 属性名：createOrgPk、类型：String、作成日：2015-6-14<br>
     * 含义：
     */
    private String createOrgPk;

    /**
     * 属性名：createUserPk、类型：String、作成日：2015-6-14<br>
     * 含义：
     */
    private String createUserPk;

    /**
     * 属性名：createTime、类型：String、作成日：2015-6-14<br>
     * 含义：
     */
    private String createTime;

    /**
     * 属性名：deleteType、类型：int、作成日：2015-6-14<br>
     * 含义：
     */
    private int deleteType;

    /**
     * retrievalDatabasePk的获取.
     *
     * @return retrievalDatabasePk值返回.
     */
    public String getRetrievalDatabasePk() {
        return retrievalDatabasePk;
    }

    /**
     * retrievalDatabasePk的值设定
     *
     * @param retrievalDatabasePk 设定retrievalDatabasePk的值.
     */
    public void setRetrievalDatabasePk(String retrievalDatabasePk) {
        this.retrievalDatabasePk = retrievalDatabasePk;
    }

    /**
     * retrievalDatabasePks的获取.
     *
     * @return retrievalDatabasePks值返回.
     */
    public String[] getRetrievalDatabasePks() {
        return retrievalDatabasePks;
    }

    /**
     * retrievalDatabasePks的值设定
     *
     * @param retrievalDatabasePks 设定retrievalDatabasePks的值.
     */
    public void setRetrievalDatabasePks(String[] retrievalDatabasePks) {
        this.retrievalDatabasePks = retrievalDatabasePks;
    }

    /**
     * contractPk的获取.
     *
     * @return contractPk值返回.
     */
    public String getContractPk() {
        return contractPk;
    }

    /**
     * contractPk的值设定
     *
     * @param contractPk 设定contractPk的值.
     */
    public void setContractPk(String contractPk) {
        this.contractPk = contractPk;
    }

    /**
     * retrievalDatabaseName的获取.
     *
     * @return retrievalDatabaseName值返回.
     */
    public String getRetrievalDatabaseName() {
        return retrievalDatabaseName;
    }

    /**
     * retrievalDatabaseName的值设定
     *
     * @param retrievalDatabaseName 设定retrievalDatabaseName的值.
     */
    public void setRetrievalDatabaseName(String retrievalDatabaseName) {
        this.retrievalDatabaseName = retrievalDatabaseName;
    }

    /**
     * url的获取.
     *
     * @return url值返回.
     */
    public String getUrl() {
        return url;
    }

    /**
     * url的值设定
     *
     * @param url 设定url的值.
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * ageLimit的获取.
     *
     * @return ageLimit值返回.
     */
    public String getAgeLimit() {
        return ageLimit;
    }

    /**
     * ageLimit的值设定
     *
     * @param ageLimit 设定ageLimit的值.
     */
    public void setAgeLimit(String ageLimit) {
        this.ageLimit = ageLimit;
    }

    /**
     * searchStrategy的获取.
     *
     * @return searchStrategy值返回.
     */
    public String getSearchStrategy() {
        return searchStrategy;
    }

    /**
     * searchStrategy的值设定
     *
     * @param searchStrategy 设定searchStrategy的值.
     */
    public void setSearchStrategy(String searchStrategy) {
        this.searchStrategy = searchStrategy;
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

}
