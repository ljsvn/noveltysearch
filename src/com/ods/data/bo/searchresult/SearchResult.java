/**
 *copyright(C)2015
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.data.bo.searchresult;

/**
 * <b>系统名称:</b><b>
 *
 * </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 * <b>文件名:</b><br>
 *
 * SearchResult.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 *
 * SearchResult类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 * SearchResult类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 * 输出文献<br>
 *
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2015年5月7日, cause, 10325431@qq.com, 新建<br>
 *
 * @author :10325431@qq.com
 * @since :2015年5月7日
 * @version:1.0
 */
public class SearchResult {
    // ,"searchResultPk","contractPk","searchResultName","author","company","source","issn","resultAbstract","keyword","resultClass","retain1","retain2","retain3","retain4","retain5","retain6","retain7","orderNo","memo","createOrgPk","createUserPk","createTime","deleteType"
    /**
     * 属性名：searchResultPk、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String searchResultPk;

    private String[] searchResultPks;

    /**
     * 属性名：contractPk、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String contractPk;

    /**
     * 属性名：searchResultName、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String searchResultName;

    /**
     * 属性名：author、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String author;

    /**
     * 属性名：company、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String company;

    /**
     * 属性名：source、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String source;

    /**
     * 属性名：issn、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String issn;

    /**
     * 属性名：resultAbstract、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String resultAbstract;

    /**
     * 属性名：keyword、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String keyword;

    /**
     * 属性名：resultClass、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String resultClass;

    /**
     * 属性名：retain1、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String retain1;

    /**
     * 属性名：retain2、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String retain2;

    /**
     * 属性名：retain3、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String retain3;

    /**
     * 属性名：retain4、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String retain4;

    /**
     * 属性名：retain5、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String retain5;

    /**
     * 属性名：retain6、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String retain6;

    /**
     * 属性名：retain7、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String retain7;

    /**
     * 属性名：orderNo、类型：int、作成日：2015-5-7<br>
     * 含义：
     */
    private int orderNo;

    /**
     * 属性名：memo、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String memo;

    /**
     * 属性名：createOrgPk、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String createOrgPk;

    /**
     * 属性名：createUserPk、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String createUserPk;

    /**
     * 属性名：createTime、类型：String、作成日：2015-5-7<br>
     * 含义：
     */
    private String createTime;

    /**
     * 属性名：deleteType、类型：int、作成日：2015-5-7<br>
     * 含义：
     */
    private int deleteType;

    /**
     * searchResultPk的获取.
     *
     * @return searchResultPk值返回.
     */
    public String getSearchResultPk() {
        return searchResultPk;
    }

    /**
     * searchResultPk的值设定
     *
     * @param searchResultPk 设定searchResultPk的值.
     */
    public void setSearchResultPk(String searchResultPk) {
        this.searchResultPk = searchResultPk;
    }

    /**
     * searchResultPks的获取.
     *
     * @return searchResultPks值返回.
     */
    public String[] getSearchResultPks() {
        return searchResultPks;
    }

    /**
     * searchResultPks的值设定
     *
     * @param searchResultPks 设定searchResultPks的值.
     */
    public void setSearchResultPks(String[] searchResultPks) {
        this.searchResultPks = searchResultPks;
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
     * searchResultName的获取.
     *
     * @return searchResultName值返回.
     */
    public String getSearchResultName() {
        return searchResultName;
    }

    /**
     * searchResultName的值设定
     *
     * @param searchResultName 设定searchResultName的值.
     */
    public void setSearchResultName(String searchResultName) {
        this.searchResultName = searchResultName;
    }

    /**
     * author的获取.
     *
     * @return author值返回.
     */
    public String getAuthor() {
        return author;
    }

    /**
     * author的值设定
     *
     * @param author 设定author的值.
     */
    public void setAuthor(String author) {
        this.author = author;
    }

    /**
     * company的获取.
     *
     * @return company值返回.
     */
    public String getCompany() {
        return company;
    }

    /**
     * company的值设定
     *
     * @param company 设定company的值.
     */
    public void setCompany(String company) {
        this.company = company;
    }

    /**
     * source的获取.
     *
     * @return source值返回.
     */
    public String getSource() {
        return source;
    }

    /**
     * source的值设定
     *
     * @param source 设定source的值.
     */
    public void setSource(String source) {
        this.source = source;
    }

    /**
     * issn的获取.
     *
     * @return issn值返回.
     */
    public String getIssn() {
        return issn;
    }

    /**
     * issn的值设定
     *
     * @param issn 设定issn的值.
     */
    public void setIssn(String issn) {
        this.issn = issn;
    }

    /**
     * resultAbstract的获取.
     *
     * @return resultAbstract值返回.
     */
    public String getResultAbstract() {
        return resultAbstract;
    }

    /**
     * resultAbstract的值设定
     *
     * @param resultAbstract 设定resultAbstract的值.
     */
    public void setResultAbstract(String resultAbstract) {
        this.resultAbstract = resultAbstract;
    }

    /**
     * keyword的获取.
     *
     * @return keyword值返回.
     */
    public String getKeyword() {
        return keyword;
    }

    /**
     * keyword的值设定
     *
     * @param keyword 设定keyword的值.
     */
    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    /**
     * resultClass的获取.
     *
     * @return resultClass值返回.
     */
    public String getResultClass() {
        return resultClass;
    }

    /**
     * resultClass的值设定
     *
     * @param resultClass 设定resultClass的值.
     */
    public void setResultClass(String resultClass) {
        this.resultClass = resultClass;
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
     * retain4的获取.
     *
     * @return retain4值返回.
     */
    public String getRetain4() {
        return retain4;
    }

    /**
     * retain4的值设定
     *
     * @param retain4 设定retain4的值.
     */
    public void setRetain4(String retain4) {
        this.retain4 = retain4;
    }

    /**
     * retain5的获取.
     *
     * @return retain5值返回.
     */
    public String getRetain5() {
        return retain5;
    }

    /**
     * retain5的值设定
     *
     * @param retain5 设定retain5的值.
     */
    public void setRetain5(String retain5) {
        this.retain5 = retain5;
    }

    /**
     * retain6的获取.
     *
     * @return retain6值返回.
     */
    public String getRetain6() {
        return retain6;
    }

    /**
     * retain6的值设定
     *
     * @param retain6 设定retain6的值.
     */
    public void setRetain6(String retain6) {
        this.retain6 = retain6;
    }

    /**
     * retain7的获取.
     *
     * @return retain7值返回.
     */
    public String getRetain7() {
        return retain7;
    }

    /**
     * retain7的值设定
     *
     * @param retain7 设定retain7的值.
     */
    public void setRetain7(String retain7) {
        this.retain7 = retain7;
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
