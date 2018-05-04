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
 *搜索记录<br>
 *
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>文件名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *SearchRecord.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *SearchRecord类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *SearchRecord类的概要说明<br>
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
public class SearchRecord {
    
    /**
    *属性名：searchPk、类型：int、作成日：2009-10-22.<br>
    *含义：主键
    */
    private String searchPk;
    
    /**
    *属性名：keyWord、类型：String、作成日：2009-10-22.<br>
    *含义：关键字
    */
    private String keyWord;
    
    
    /**
    *属性名：createTime、类型：String、作成日：2009-10-22.<br>
    *含义：创建时间
    */
    private String createTime;private String createUserPk;public String getCreateUserPk() {return createUserPk;}public void setCreateUserPk(String createUserPk) {this.createUserPk = createUserPk;}private int deleteType;public int getDeleteType() {return deleteType;}public void setDeleteType(int deleteType) {this.deleteType = deleteType;}

    /**
     *searchPk的获取.
     *@return searchPk值返回.
     */
    public String getSearchPk() {
        return searchPk;
    }

    /**
     *searchPk的值设定
     *@param searchPk 设定searchPk的值.
     */
    public void setSearchPk(String searchPk) {
        this.searchPk = searchPk;
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
    
}
