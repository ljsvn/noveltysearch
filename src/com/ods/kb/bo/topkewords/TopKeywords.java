/**
*copyright(C)2009
*Ods信息技术软件有限公司& Service Corporation All rights reserved
*/
package com.ods.kb.bo.topkewords;
/**
 *<b>系统名称:</b><b>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *武汉市12320呼叫中心系统</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>子系统名：</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *热门词<br>
 *
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>文件名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *TopKeywords.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *TopKeywords类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *TopKeywords类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *1：作为Hibernate的值Bean<br>
 *2：作为struts的页面信息载体<br>
 *3：作为spring的IOCbean<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，              更新内容<br>
 *2009-10-22,    99999,    xiaowei,   新建<br>
 *
 *@author :xiaowei
 *@since  :2009-10-22
 *@version:1.0
 */
public class TopKeywords {
    
    /**
    *属性名：keyPk、类型：int、作成日：2009-10-22.<br>
    *含义：主键
    */
    private String keyPk;
    
    /**
    *属性名：keyWord、类型：String、作成日：2009-10-22.<br>
    *含义：关键词
    */
    private String keyWord;
    
    /**
     *属性名：beginTime、类型：String、作成日：2009-10-22.<br>
     *含义：开始时间
     */
    private String beginTime;
    
    /**
    *属性名：endTime、类型：String、作成日：2009-10-22.<br>
    *含义：结束时间
    */
    private String endTime;
    
    
    /**
     *属性名：createTime、类型：String、作成日：2009-10-22.<br>
     *含义：创建时间
     */
    private String createTime;private String createUserPk;public String getCreateUserPk() {return createUserPk;}public void setCreateUserPk(String createUserPk) {this.createUserPk = createUserPk;}private int deleteType;public int getDeleteType() {return deleteType;}public void setDeleteType(int deleteType) {this.deleteType = deleteType;}

////////////////////额外添加的属性////////////////////////////////////////////
    
    /**
    *属性名：userName、类型：String、作成日：2009-10-22.<br>
    *含义：当前创建用户的名称
    */
    private String userName;

    /**
     *keyPk的获取.
     *@return keyPk值返回.
     */
    public String getKeyPk() {
        return keyPk;
    }

    /**
     *keyPk的值设定
     *@param keyPk 设定keyPk的值.
     */
    public void setKeyPk(String keyPk) {
        this.keyPk = keyPk;
    }

    /**
     *keyWord的获取.
     *@return keyWord值返回.
     */
    public String getKeyWord() {
        return keyWord;
    }

    /**
     *keyWord的值设定
     *@param keyWord 设定keyWord的值.
     */
    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord;
    }

    /**
     *beginTime的获取.
     *@return beginTime值返回.
     */
    public String getBeginTime() {
        return beginTime;
    }

    /**
     *beginTime的值设定
     *@param beginTime 设定beginTime的值.
     */
    public void setBeginTime(String beginTime) {
        this.beginTime = beginTime;
    }

    /**
     *endTime的获取.
     *@return endTime值返回.
     */
    public String getEndTime() {
        return endTime;
    }

    /**
     *endTime的值设定
     *@param endTime 设定endTime的值.
     */
    public void setEndTime(String endTime) {
        this.endTime = endTime;
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
     *userName的获取.
     *@return userName值返回.
     */
    public String getUserName() {
        return userName;
    }

    /**
     *userName的值设定
     *@param userName 设定userName的值.
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }
   
}
