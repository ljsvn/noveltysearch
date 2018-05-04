package com.ods.kb.bo.kbcontent;

import java.io.File;

/**
 *<b>系统名称:</b><b>
 *12320公共卫生公益电话咨询系统
 *
 *odslicense</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>子系统名：</b><br>
 *系统管理
 *
 *知识点BO<br>
 *
 *系统管理
 *
 *<b>文件名:</b><br>
 *filename
 *
 *TKbContent.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *TKbContent类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *TKbContent类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *知识点BO<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2009-11-14,    cause,    jiangwenqi,   	新建<br>
 *
 *@author :jiangwenqi
 *@since  :2009-11-14
 *@version:1.0
 */
/**
 *<b>系统名称:</b><b> 12320公共卫生公益电话咨询系统
 * 
 *odslicense</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>子系统名：</b><br>
 *系统管理
 * 
 *知识点BO
 * 
 *系统管理
 * 
 *<b>文件名:</b><br>
 *filename
 * 
 *TKbContent.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *TKbContent类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *TKbContent类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *BO<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2009-11-15, cause, jiangwenqi, 新建<br>
 * 
 *@author :jiangwenqi
 *@since :2009-11-15
 *@version:1.0
 */
public class TKbContent implements java.io.Serializable {
    /**
     *属性名：serialVersionUID、类型：long、作成日：2009-11-14.<br>
     *含义：序列化ID
     */
    private static final long serialVersionUID = -7379590686351314626L;

    // //////////////////////////////////常量

    /**
     *属性名：UPLOAD_PATH_FILENAME、类型：String、作成日：2009-9-11.<br>
     *含义：上传文件的文件夹名称
     */
    public static final String UPLOAD_PATH_FILENAME = "upload";

    public static final String KB_CONTENT_IMAGE = "kbcontentimage";

    /**
     *属性名：SPLIT_SQL_FLAG、类型：String、作成日：2009-11-17.<br>
     *含义：使用国家知识点数据库导入后 （全角）关联知识点编码分割符号
     */
    public static final String SPLIT_SQL_FLAG = "；";

    /**
     *属性名：SPLIT_JAVA_FLAG、类型：String、作成日：2009-11-17.<br>
     *含义： 半角　关联知识点编码分割符号
     */
    public static final String SPLIT_JAVA_FLAG = ";";

    /**
     *属性名：searchByKeyWord、类型：int、作成日：2009-9-14.<br>
     *含义：1 ： 表示 搜索类型 是通过关键字搜索
     */
    public static final int SEARCH_BY_KEYWORD = 1;

    /**
     *属性名：searchByContent、类型：int、作成日：2009-9-14.<br>
     *含义：2 ： 表示 搜索类型 是全文索引
     */
    public static final int SEARCH_BY_CONTENT = 2;

    /**
     *属性名：SEARCH_BY_NAME、类型：int、作成日：2009-11-15.<br>
     *含义：3 :表示通过名称标题搜索
     */
    public static final int SEARCH_BY_NAME = 3;

    public static final int SEARCH_BY_TYPE_0 = 0;

    public static final int SEARCH_BY_TYPE_1 = 1;

    /**
     *属性名：AREACODE_G、类型：String、作成日：2009-11-14.<br>
     *含义：国家级别
     */
    public static final String AREACODE_G = "G";

    /**
     *属性名：AREACODE_L、类型：String、作成日：2009-11-14.<br>
     *含义：地区级别
     */
    public static final String AREACODE_L = "L";

    /**
     *属性名：upload、类型：File、作成日：2009-10-19.<br>
     *含义：上传文件域对象
     */
    private File upload;

    /**
     *属性名：uploadFileName、类型：String、作成日：2009-10-19.<br>
     *含义：上传文件名
     */
    private String uploadFileName;

    /**
     *属性名：uploadContentType、类型：String、作成日：2009-10-19.<br>
     *含义：上传文件类型
     */
    private String uploadContentType;

    // //////////////////////////////////表单封装属性

    /**
     *属性名：searchType、类型：int、作成日：2009-9-14.<br>
     *含义：1 ：代表 关键字搜索 2： 代表 全文索引
     */
    private int searchType;

    /**
     *属性名：searchContent、类型：String、作成日：2009-9-14.<br>
     *含义： 搜索的内容
     */
    private String searchContent;

    /**
     *属性名：highkbName、类型：String、作成日：2009-11-15.<br>
     *含义：高亮显示的标题
     */
    private String highkbName;

    /**
     *属性名：numkbCode、类型：String、作成日：2009-11-14.<br>
     *含义：数字类型的编码 （前面没有加G或者L级别的）
     */
    private String numkbCode;

    /**
     *属性名：areaCode、类型：String、作成日：2009-11-14.<br>
     *含义：级别编码
     */
    private String areaCode;

    private String areaCodeValue;

    // /////////////////////////////////////////////表字段

    public String getAreaCodeValue() {
        return areaCodeValue;
    }

    public void setAreaCodeValue(String areaCodeValue) {
        this.areaCodeValue = areaCodeValue;
    }

    /**
     *属性名：kbPk、类型：Integer、作成日：2009-11-14.<br>
     *含义：主键
     */
    private String kbPk;

    /**
     *属性名：kbDirPk、类型：Integer、作成日：2009-11-15.<br>
     *含义：知识点目录PK
     */
    private String kbDirPk;

    /**
     *属性名：kbDirName、类型：String、作成日：2009-11-14.<br>
     *含义：知识点目录名称
     */
    private String kbDirName;

    /**
     *属性名：kbName、类型：String、作成日：2009-11-14.<br>
     *含义：标题(名称)
     */
    private String kbName;

    /**
     *属性名：keyWord、类型：String、作成日：2009-11-14.<br>
     *含义：关键字(多个关键字以逗号分隔)
     */
    private String keyWord;

    /**
     *属性名：kbContent、类型：String、作成日：2009-11-14.<br>
     *含义：资料库具体内容
     */
    private String kbContent;

    private String kbInmage;

    public String getKbInmage() {
        return kbInmage;
    }

    public void setKbInmage(String kbInmage) {
        this.kbInmage = kbInmage;
    }

    /**
     *属性名：kbTypeCode、类型：String、作成日：2009-11-14.<br>
     *含义：知识点类型编码
     */
    private String kbTypeCode;

    /**
     *属性名：kbTypePk、类型：int、作成日：2009-11-15.<br>
     *含义：知识点类型PK
     */
    private String kbTypePk;

    /**
     *属性名：kbTypeName、类型：String、作成日：2009-11-14.<br>
     *含义：知识类型名称
     */
    private String kbTypeName;

    /**
     *属性名：kbFreCode、类型：String、作成日：2009-11-14.<br>
     *含义：知识点更新频率类型编码
     */
    private String kbFreCode;

    /**
     *属性名：kbFrePk、类型：int、作成日：2009-11-15.<br>
     *含义：知识点更新频率类型PK
     */
    private String kbFrePk;

    /**
     *属性名：kvFreName、类型：String、作成日：2009-11-14.<br>
     *含义：知识点更新频率类型名称
     */
    private String kbFreName;

    /**
     *属性名：inputName、类型：String、作成日：2009-11-14.<br>
     *含义：创建人名(录入人)
     */
    private String inputName;

    /**
     *属性名：auditName、类型：String、作成日：2009-11-14.<br>
     *含义：审核人
     */
    private String auditName;

    /**
     *属性名：auditmanDemo、类型：String、作成日：2009-11-14.<br>
     *含义：审核人备注
     */
    private String auditmanDemo;

    /**
     *属性名：auditmanTime、类型：String、作成日：2009-11-14.<br>
     *含义：审核时间
     */
    private String auditmanTime;

    /**
     *属性名：url、类型：String、作成日：2009-11-14.<br>
     *含义：参考资料
     */
    private String url;

    /**
     *属性名：updateTime、类型：String、作成日：2009-11-14.<br>
     *含义：修改时间
     */
    private String updateTime;

    /**
     *属性名：kbDemo、类型：String、作成日：2009-11-14.<br>
     *含义：备注
     */
    private String kbDemo;

    /**
     *属性名：kbCount、类型：Integer、作成日：2009-11-14.<br>
     *含义：搜索次数
     */
    private Integer kbCount;

    /**
     *属性名：kbViewCount、类型：Integer、作成日：2009-11-14.<br>
     *含义：浏览次数
     */
    private Integer kbViewCount;

    /**
     *属性名：createTime、类型：String、作成日：2009-11-14.<br>
     *含义：创建时间
     */
    private String createTime;

    private String createUserPk;

    public String getCreateUserPk() {
        return createUserPk;
    }

    public void setCreateUserPk(String createUserPk) {
        this.createUserPk = createUserPk;
    }

    private int deleteType;

    public int getDeleteType() {
        return deleteType;
    }

    public void setDeleteType(int deleteType) {
        this.deleteType = deleteType;
    }

    /**
     *属性名：updateName、类型：String、作成日：2009-11-14.<br>
     *含义：修改人名
     */
    private String updateName;

    /**
     *属性名：updateUserPk、类型：Integer、作成日：2009-11-14.<br>
     *含义：修改人主键
     */
    private String updateUserPk;

    // //////////////////////////////////////////////////get set 方法
    /**
     *构造函数
     */
    public TKbContent() {
    }

    /**
     *kbDirPk的获取.
     * 
     * @return kbDirPk值返回.
     */
    public String getKbDirPk() {
        return kbDirPk;
    }

    /**
     *kbDirPk的值设定
     * 
     * @param kbDirPk 设定kbDirPk的值.
     */
    public void setKbDirPk(String kbDirPk) {
        this.kbDirPk = kbDirPk;
    }

    /**
     *kbTypePk的获取.
     * 
     * @return kbTypePk值返回.
     */
    public String getKbTypePk() {
        return kbTypePk;
    }

    /**
     *kbTypePk的值设定
     * 
     * @param kbTypePk 设定kbTypePk的值.
     */
    public void setKbTypePk(String kbTypePk) {
        this.kbTypePk = kbTypePk;
    }

    /**
     *kbFrePk的获取.
     * 
     * @return kbFrePk值返回.
     */
    public String getKbFrePk() {
        return kbFrePk;
    }

    /**
     *kbFrePk的值设定
     * 
     * @param kbFrePk 设定kbFrePk的值.
     */
    public void setKbFrePk(String kbFrePk) {
        this.kbFrePk = kbFrePk;
    }

    /**
     *highkbName的获取.
     * 
     * @return highkbName值返回.
     */
    public String getHighkbName() {
        return highkbName;
    }

    /**
     *highkbName的值设定
     * 
     * @param highkbName 设定highkbName的值.
     */
    public void setHighkbName(String highkbName) {
        this.highkbName = highkbName;
    }

    /**
     *searchType的获取.
     * 
     * @return searchType值返回.
     */
    public int getSearchType() {
        return searchType;
    }

    /**
     *searchType的值设定
     * 
     * @param searchType 设定searchType的值.
     */
    public void setSearchType(int searchType) {
        this.searchType = searchType;
    }

    /**
     *searchContent的获取.
     * 
     * @return searchContent值返回.
     */
    public String getSearchContent() {
        return searchContent;
    }

    /**
     *searchContent的值设定
     * 
     * @param searchContent 设定searchContent的值.
     */
    public void setSearchContent(String searchContent) {
        this.searchContent = searchContent;
    }

    /**
     *kbFreName的获取.
     * 
     * @return kbFreName值返回.
     */
    public String getKbFreName() {
        return kbFreName;
    }

    /**
     *kbFreName的值设定
     * 
     * @param kbFreName 设定kbFreName的值.
     */
    public void setKbFreName(String kbFreName) {
        this.kbFreName = kbFreName;
    }

    /**
     *kbTypeName的获取.
     * 
     * @return kbTypeName值返回.
     */
    public String getKbTypeName() {
        return kbTypeName;
    }

    /**
     *kbTypeName的值设定
     * 
     * @param kbTypeName 设定kbTypeName的值.
     */
    public void setKbTypeName(String kbTypeName) {
        this.kbTypeName = kbTypeName;
    }

    /**
     *numkbCode的获取.
     * 
     * @return numkbCode值返回.
     */
    public String getNumkbCode() {
        return numkbCode;
    }

    /**
     *numkbCode的值设定
     * 
     * @param numkbCode 设定numkbCode的值.
     */
    public void setNumkbCode(String numkbCode) {
        this.numkbCode = numkbCode;
    }

    /**
     *areaCode的获取.
     * 
     * @return areaCode值返回.
     */
    public String getAreaCode() {
        return areaCode;
    }

    /**
     *areaCode的值设定
     * 
     * @param areaCode 设定areaCode的值.
     */
    public void setAreaCode(String areaCode) {
        this.areaCode = areaCode;
    }

    /**
     *kbDirName的获取.
     * 
     * @return kbDirName值返回.
     */
    public String getKbDirName() {
        return kbDirName;
    }

    /**
     *kbDirName的值设定
     * 
     * @param kbDirName 设定kbDirName的值.
     */
    public void setKbDirName(String kbDirName) {
        this.kbDirName = kbDirName;
    }

    /**
     *kbPk的获取.
     * 
     * @return kbPk值返回.
     */
    public String getKbPk() {
        return kbPk;
    }

    /**
     *kbPk的值设定
     * 
     * @param kbPk 设定kbPk的值.
     */
    public void setKbPk(String kbPk) {
        this.kbPk = kbPk;
    }

    /**
     *kbName的获取.
     * 
     * @return kbName值返回.
     */
    public String getKbName() {
        return kbName;
    }

    /**
     *kbName的值设定
     * 
     * @param kbName 设定kbName的值.
     */
    public void setKbName(String kbName) {
        this.kbName = kbName;
    }

    /**
     *keyWord的获取.
     * 
     * @return keyWord值返回.
     */
    public String getKeyWord() {
        return keyWord;
    }

    /**
     *keyWord的值设定
     * 
     * @param keyWord 设定keyWord的值.
     */
    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord;
    }

    /**
     *kbContent的获取.
     * 
     * @return kbContent值返回.
     */
    public String getKbContent() {
        return kbContent;
    }

    /**
     *kbContent的值设定
     * 
     * @param kbContent 设定kbContent的值.
     */
    public void setKbContent(String kbContent) {
        this.kbContent = kbContent;
    }

    /**
     *kbTypeCode的获取.
     * 
     * @return kbTypeCode值返回.
     */
    public String getKbTypeCode() {
        return kbTypeCode;
    }

    /**
     *kbTypeCode的值设定
     * 
     * @param kbTypeCode 设定kbTypeCode的值.
     */
    public void setKbTypeCode(String kbTypeCode) {
        this.kbTypeCode = kbTypeCode;
    }

    /**
     *kbFreCode的获取.
     * 
     * @return kbFreCode值返回.
     */
    public String getKbFreCode() {
        return kbFreCode;
    }

    /**
     *kbFreCode的值设定
     * 
     * @param kbFreCode 设定kbFreCode的值.
     */
    public void setKbFreCode(String kbFreCode) {
        this.kbFreCode = kbFreCode;
    }

    /**
     *inputName的获取.
     * 
     * @return inputName值返回.
     */
    public String getInputName() {
        return inputName;
    }

    /**
     *inputName的值设定
     * 
     * @param inputName 设定inputName的值.
     */
    public void setInputName(String inputName) {
        this.inputName = inputName;
    }

    /**
     *auditName的获取.
     * 
     * @return auditName值返回.
     */
    public String getAuditName() {
        return auditName;
    }

    /**
     *auditName的值设定
     * 
     * @param auditName 设定auditName的值.
     */
    public void setAuditName(String auditName) {
        this.auditName = auditName;
    }

    /**
     *auditmanDemo的获取.
     * 
     * @return auditmanDemo值返回.
     */
    public String getAuditmanDemo() {
        return auditmanDemo;
    }

    /**
     *auditmanDemo的值设定
     * 
     * @param auditmanDemo 设定auditmanDemo的值.
     */
    public void setAuditmanDemo(String auditmanDemo) {
        this.auditmanDemo = auditmanDemo;
    }

    /**
     *auditmanTime的获取.
     * 
     * @return auditmanTime值返回.
     */
    public String getAuditmanTime() {
        return auditmanTime;
    }

    /**
     *auditmanTime的值设定
     * 
     * @param auditmanTime 设定auditmanTime的值.
     */
    public void setAuditmanTime(String auditmanTime) {
        this.auditmanTime = auditmanTime;
    }

    /**
     *url的获取.
     * 
     * @return url值返回.
     */
    public String getUrl() {
        return url;
    }

    /**
     *url的值设定
     * 
     * @param url 设定url的值.
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     *updateTime的获取.
     * 
     * @return updateTime值返回.
     */
    public String getUpdateTime() {
        return updateTime;
    }

    /**
     *updateTime的值设定
     * 
     * @param updateTime 设定updateTime的值.
     */
    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    /**
     *kbDemo的获取.
     * 
     * @return kbDemo值返回.
     */
    public String getKbDemo() {
        return kbDemo;
    }

    /**
     *kbDemo的值设定
     * 
     * @param kbDemo 设定kbDemo的值.
     */
    public void setKbDemo(String kbDemo) {
        this.kbDemo = kbDemo;
    }

    /**
     *kbCount的获取.
     * 
     * @return kbCount值返回.
     */
    public Integer getKbCount() {
        return kbCount;
    }

    /**
     *kbCount的值设定
     * 
     * @param kbCount 设定kbCount的值.
     */
    public void setKbCount(Integer kbCount) {
        this.kbCount = kbCount;
    }

    /**
     *kbViewCount的获取.
     * 
     * @return kbViewCount值返回.
     */
    public Integer getKbViewCount() {
        return kbViewCount;
    }

    /**
     *kbViewCount的值设定
     * 
     * @param kbViewCount 设定kbViewCount的值.
     */
    public void setKbViewCount(Integer kbViewCount) {
        this.kbViewCount = kbViewCount;
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
     *updateName的获取.
     * 
     * @return updateName值返回.
     */
    public String getUpdateName() {
        return updateName;
    }

    /**
     *updateName的值设定
     * 
     * @param updateName 设定updateName的值.
     */
    public void setUpdateName(String updateName) {
        this.updateName = updateName;
    }

    /**
     *updateUserPk的获取.
     * 
     * @return updateUserPk值返回.
     */
    public String getUpdateUserPk() {
        return updateUserPk;
    }

    /**
     *updateUserPk的值设定
     * 
     * @param updateUserPk 设定updateUserPk的值.
     */
    public void setUpdateUserPk(String updateUserPk) {
        this.updateUserPk = updateUserPk;
    }

    private String kbLink;

    /**
     * @return the kbLink
     */
    public String getKbLink() {
        return kbLink;
    }

    /**
     * @param kbLink the kbLink to set
     */
    public void setKbLink(String kbLink) {
        this.kbLink = kbLink;
    }

    private String kbLinkCode;

    /**
     * @return the kbLinkCode
     */
    public String getKbLinkCode() {
        return kbLinkCode;
    }

    /**
     * @param kbLinkCode the kbLinkCode to set
     */
    public void setKbLinkCode(String kbLinkCode) {
        this.kbLinkCode = kbLinkCode;
    }

    private int kbType;

    /**
     * @return the kbType
     */
    public int getKbType() {
        return kbType;
    }

    /**
     * @param kbType the kbType to set
     */
    public void setKbType(int kbType) {
        this.kbType = kbType;
    }

    private String kbLinkPK;

    /**
     * @return the kbLinkPK
     */
    public String getKbLinkPK() {
        return kbLinkPK;
    }

    /**
     * @param kbLinkPK the kbLinkPK to set
     */
    public void setKbLinkPK(String kbLinkPK) {
        this.kbLinkPK = kbLinkPK;
    }

    /**
     *upload的获取.
     * 
     * @return upload值返回.
     */
    public File getUpload() {
        return upload;
    }

    /**
     *upload的值设定
     * 
     * @param upload 设定upload的值.
     */
    public void setUpload(File upload) {
        this.upload = upload;
    }

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

}