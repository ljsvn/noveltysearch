/**
 *copyright(C)2015
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.data.bo.contract;

/**
 * <b>系统名称:</b><b>
 *
 * </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 * <b>文件名:</b><br>
 *
 * Contract.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 *
 * Contract类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 * Contract类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 * 合同class<br>
 *
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2015年4月29日, cause, 10325431@qq.com, 新建<br>
 *
 * @author :10325431@qq.com
 * @since :2015年4月29日
 * @version:1.0
 */
public class Contract {
    // "contractPk","contractName","contractEname","company","lead","address","postCode","linkman","tel","email","beginTime","endTime","leadingOfficial","officeHolder","purposeScope","projectApproval","achievement","objectiveOther","noveltyPoint","keyWords","contractState","memo","createOrgPk","createUserPk","createTime","deleteType","taxpayerNo"
    /**
     * 属性名：contractPk、类型：String、作成日：2015-4-29<br>
     * 含义：
     */
    private String contractPk;

    private String[] contractPks;

    /**
     * 属性名：contractName、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String contractName;

    private String contractCode;
    /**
     * 属性名：contractEname、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String contractEname;

    /**
     * 属性名：company、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String company;

    /**
     * 属性名：lead、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String lead;

    /**
     * 属性名：address、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String address;

    /**
     * 属性名：postCode、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String postCode;

    /**
     * 属性名：linkman、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String linkman;

    /**
     * 属性名：tel、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String tel;

    /**
     * 属性名：email、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String email;

    /**
     * 属性名：beginTime、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String beginTime;

    /**
     * 属性名：endTime、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String endTime;

    /**
     * 属性名：leadingOfficial、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String leadingOfficial;

    /**
     * 属性名：officeHolder、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String officeHolder;

    /**
     * 属性名：purposeScope、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String purposeScope;

    /**
     * 属性名：projectApproval、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String projectApproval;

    /**
     * 属性名：achievement、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String achievement;

    /**
     * 属性名：objectiveOther、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String objectiveOther;

    /**
     * 属性名：noveltyPoint、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String noveltyPoint;

    /**
     * 属性名：keyWords、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String keyWords;

    /**
     * 属性名：contractState、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String contractState;

    /**
     * 属性名：memo、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String memo;

    private String filePath;

    private String fileName;

    private String searchTermsStrategy;

    /**
     * 属性名：createOrgPk、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String createOrgPk;

    /**
     * 属性名：createUserPk、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String createUserPk;

    /**
     * 属性名：createTime、类型：String、作成日：2015-5-6<br>
     * 含义：
     */
    private String createTime;

    /**
     * 属性名：deleteType、类型：int、作成日：2015-5-6<br>
     * 含义：
     */
    private int deleteType;
    
    private String taxpayerNo;

    /**
    *taxpayerNo的获取.
    *@return taxpayerNo值返回.
    */
    public String getTaxpayerNo() {
        return taxpayerNo;
    }

    /**
    *taxpayerNo的值设定
    *@param taxpayerNo 设定taxpayerNo的值.
    */
    public void setTaxpayerNo(String taxpayerNo) {
        this.taxpayerNo = taxpayerNo;
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
     * contractPks的获取.
     *
     * @return contractPks值返回.
     */
    public String[] getContractPks() {
        return contractPks;
    }

    /**
     * contractPks的值设定
     *
     * @param contractPks 设定contractPks的值.
     */
    public void setContractPks(String[] contractPks) {
        this.contractPks = contractPks;
    }

    /**
     * contractName的获取.
     *
     * @return contractName值返回.
     */
    public String getContractName() {
        return contractName;
    }

    /**
     * contractName的值设定
     *
     * @param contractName 设定contractName的值.
     */
    public void setContractName(String contractName) {
        this.contractName = contractName;
    }

    /**
     * contractEname的获取.
     *
     * @return contractEname值返回.
     */
    public String getContractEname() {
        return contractEname;
    }

    /**
     * contractEname的值设定
     *
     * @param contractEname 设定contractEname的值.
     */
    public void setContractEname(String contractEname) {
        this.contractEname = contractEname;
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
     * lead的获取.
     *
     * @return lead值返回.
     */
    public String getLead() {
        return lead;
    }

    /**
     * lead的值设定
     *
     * @param lead 设定lead的值.
     */
    public void setLead(String lead) {
        this.lead = lead;
    }

    /**
     * address的获取.
     *
     * @return address值返回.
     */
    public String getAddress() {
        return address;
    }

    /**
     * address的值设定
     *
     * @param address 设定address的值.
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * postCode的获取.
     *
     * @return postCode值返回.
     */
    public String getPostCode() {
        return postCode;
    }

    /**
     * postCode的值设定
     *
     * @param postCode 设定postCode的值.
     */
    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    /**
     * linkman的获取.
     *
     * @return linkman值返回.
     */
    public String getLinkman() {
        return linkman;
    }

    /**
     * linkman的值设定
     *
     * @param linkman 设定linkman的值.
     */
    public void setLinkman(String linkman) {
        this.linkman = linkman;
    }

    /**
     * tel的获取.
     *
     * @return tel值返回.
     */
    public String getTel() {
        return tel;
    }

    /**
     * tel的值设定
     *
     * @param tel 设定tel的值.
     */
    public void setTel(String tel) {
        this.tel = tel;
    }

    /**
     * email的获取.
     *
     * @return email值返回.
     */
    public String getEmail() {
        return email;
    }

    /**
     * email的值设定
     *
     * @param email 设定email的值.
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * beginTime的获取.
     *
     * @return beginTime值返回.
     */
    public String getBeginTime() {
        return beginTime;
    }

    /**
     * beginTime的值设定
     *
     * @param beginTime 设定beginTime的值.
     */
    public void setBeginTime(String beginTime) {
        this.beginTime = beginTime;
    }

    /**
     * endTime的获取.
     *
     * @return endTime值返回.
     */
    public String getEndTime() {
        return endTime;
    }

    /**
     * endTime的值设定
     *
     * @param endTime 设定endTime的值.
     */
    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    /**
     * leadingOfficial的获取.
     *
     * @return leadingOfficial值返回.
     */
    public String getLeadingOfficial() {
        return leadingOfficial;
    }

    /**
     * leadingOfficial的值设定
     *
     * @param leadingOfficial 设定leadingOfficial的值.
     */
    public void setLeadingOfficial(String leadingOfficial) {
        this.leadingOfficial = leadingOfficial;
    }

    /**
     * officeHolder的获取.
     *
     * @return officeHolder值返回.
     */
    public String getOfficeHolder() {
        return officeHolder;
    }

    /**
     * officeHolder的值设定
     *
     * @param officeHolder 设定officeHolder的值.
     */
    public void setOfficeHolder(String officeHolder) {
        this.officeHolder = officeHolder;
    }

    /**
     * purposeScope的获取.
     *
     * @return purposeScope值返回.
     */
    public String getPurposeScope() {
        return purposeScope;
    }

    /**
     * purposeScope的值设定
     *
     * @param purposeScope 设定purposeScope的值.
     */
    public void setPurposeScope(String purposeScope) {
        this.purposeScope = purposeScope;
    }

    /**
     * projectApproval的获取.
     *
     * @return projectApproval值返回.
     */
    public String getProjectApproval() {
        return projectApproval;
    }

    /**
     * projectApproval的值设定
     *
     * @param projectApproval 设定projectApproval的值.
     */
    public void setProjectApproval(String projectApproval) {
        this.projectApproval = projectApproval;
    }

    /**
     * achievement的获取.
     *
     * @return achievement值返回.
     */
    public String getAchievement() {
        return achievement;
    }

    /**
     * achievement的值设定
     *
     * @param achievement 设定achievement的值.
     */
    public void setAchievement(String achievement) {
        this.achievement = achievement;
    }

    /**
     * objectiveOther的获取.
     *
     * @return objectiveOther值返回.
     */
    public String getObjectiveOther() {
        return objectiveOther;
    }

    /**
     * objectiveOther的值设定
     *
     * @param objectiveOther 设定objectiveOther的值.
     */
    public void setObjectiveOther(String objectiveOther) {
        this.objectiveOther = objectiveOther;
    }

    /**
     * noveltyPoint的获取.
     *
     * @return noveltyPoint值返回.
     */
    public String getNoveltyPoint() {
        return noveltyPoint;
    }

    /**
     * noveltyPoint的值设定
     *
     * @param noveltyPoint 设定noveltyPoint的值.
     */
    public void setNoveltyPoint(String noveltyPoint) {
        this.noveltyPoint = noveltyPoint;
    }

    /**
     * keyWords的获取.
     *
     * @return keyWords值返回.
     */
    public String getKeyWords() {
        return keyWords;
    }

    /**
     * keyWords的值设定
     *
     * @param keyWords 设定keyWords的值.
     */
    public void setKeyWords(String keyWords) {
        this.keyWords = keyWords;
    }

    /**
     * contractState的获取.
     *
     * @return contractState值返回.
     */
    public String getContractState() {
        return contractState;
    }

    /**
     * contractState的值设定
     *
     * @param contractState 设定contractState的值.
     */
    public void setContractState(String contractState) {
        this.contractState = contractState;
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
     * filePath的获取.
     *
     * @return filePath值返回.
     */
    public String getFilePath() {
        return filePath;
    }

    /**
     * filePath的值设定
     *
     * @param filePath 设定filePath的值.
     */
    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    /**
     * fileName的获取.
     *
     * @return fileName值返回.
     */
    public String getFileName() {
        return fileName;
    }

    /**
     * fileName的值设定
     *
     * @param fileName 设定fileName的值.
     */
    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    /**
     * searchTermsStrategy的获取.
     *
     * @return searchTermsStrategy值返回.
     */
    public String getSearchTermsStrategy() {
        return searchTermsStrategy;
    }

    /**
     * searchTermsStrategy的值设定
     *
     * @param searchTermsStrategy 设定searchTermsStrategy的值.
     */
    public void setSearchTermsStrategy(String searchTermsStrategy) {
        this.searchTermsStrategy = searchTermsStrategy;
    }

    /**
     *contractCode的获取.
     *@return contractCode值返回.
     */
    public String getContractCode() {
        return contractCode;
    }

    /**
     *contractCode的值设定
     *@param contractCode 设定contractCode的值.
     */
    public void setContractCode(String contractCode) {
        this.contractCode = contractCode;
    }

}
