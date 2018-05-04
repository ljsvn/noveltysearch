/**
*copyright(C)2009
*Ods信息技术软件有限公司& Service Corporation All rights reserved
*/
package com.ods.kb.bo.kbdir;
/**
 *<b>系统名称:</b><b>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *12320卫生局疾控系统</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>子系统名：</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *知识点目录<br>
 *
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>文件名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *KbDirectory.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *KbDirectory类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *KbDirectory类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *1：作为Hibernate的值Bean<br>
 *2：作为struts的页面信息载体<br>
 *3：作为spring的IOCbean<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，              更新内容<br>
 *2009-11-13,    99999,    xiaowei,   新建<br>
 *
 *@author :xiaowei
 *@since  :2009-11-13
 *@version:1.0
 */
public class KbDirectory {
  
    /**
    *属性名：kbDirPk、类型：int、作成日：2009-11-13.<br>
    *含义：主键
    */
    private String kbDirPk;
    
    /**
    *属性名：kbDirName、类型：String、作成日：2009-11-13.<br>
    *含义：名称
    */
    private String kbDirName;
    
  
   
    private String kbDirGbpk;
    
    /**
    *属性名：kbDirClevel、类型：int、作成日：2009-11-13.<br>
    *含义：（目录）级别
    */
    private int  kbDirClevel;
    
    /**
    *属性名：kbDirFlag、类型：String、作成日：2009-11-13.<br>
    *含义：知识点级别     G:国家    L:地方
    */
    private String kbDirFlag;
    
    /**
    *属性名：kbDirExcelFlag、类型：String、作成日：2009-11-13.<br>
    *含义：excel标记
    */
    private String kbDirExcelFlag;
    
    /**
    *属性名：createTime、类型：String、作成日：2009-11-13.<br>
    *含义：创建时间
    */
    private String createTime;private String createUserPk;public String getCreateUserPk() {return createUserPk;}public void setCreateUserPk(String createUserPk) {this.createUserPk = createUserPk;}private int deleteType;public int getDeleteType() {return deleteType;}public void setDeleteType(int deleteType) {this.deleteType = deleteType;}

/////////////////////额外添加的属性//////////////////////////////////////////////////
    
    /**
    *属性名：parentDirName、类型：String、作成日：2009-11-13.<br>
    *含义：父目录名称
    */
    private String parentDirName;
    
    /**
    *属性名：DIR_TREE_ROOT_NODE_PK、类型：int、作成日：2009-11-14.<br>
    *含义：资料库目录根节点
    */
    public final static String DIR_TREE_ROOT_NODE_PK = "000000000000";
    
    /**
     *parentDirName的获取.
     *@return parentDirName值返回.
     */
    public String getParentDirName() {
        return parentDirName;
    }

    /**
     *parentDirName的值设定
     *@param parentDirName 设定parentDirName的值.
     */
    public void setParentDirName(String parentDirName) {
        this.parentDirName = parentDirName;
    }

    /**
     *kbDirPk的获取.
     *@return kbDirPk值返回.
     */
    public String getKbDirPk() {
        return kbDirPk;
    }

    /**
     *kbDirPk的值设定
     *@param kbDirPk 设定kbDirPk的值.
     */
    public void setKbDirPk(String kbDirPk) {
        this.kbDirPk = kbDirPk;
    }

    /**
     *kbDirName的获取.
     *@return kbDirName值返回.
     */
    public String getKbDirName() {
        return kbDirName;
    }

    /**
     *kbDirName的值设定
     *@param kbDirName 设定kbDirName的值.
     */
    public void setKbDirName(String kbDirName) {
        this.kbDirName = kbDirName;
    }




    /**
     * @return the kbDirGbpk
     */
    public String getKbDirGbpk() {
        return kbDirGbpk;
    }

    /**
     * @param kbDirGbpk the kbDirGbpk to set
     */
    public void setKbDirGbpk(String kbDirGbpk) {
        this.kbDirGbpk = kbDirGbpk;
    }

    /**
     *kbDirClevel的获取.
     *@return kbDirClevel值返回.
     */
    public int getKbDirClevel() {
        return kbDirClevel;
    }

    /**
     *kbDirClevel的值设定
     *@param kbDirClevel 设定kbDirClevel的值.
     */
    public void setKbDirClevel(int kbDirClevel) {
        this.kbDirClevel = kbDirClevel;
    }

    /**
     *kbDirFlag的获取.
     *@return kbDirFlag值返回.
     */
    public String getKbDirFlag() {
        return kbDirFlag;
    }

    /**
     *kbDirFlag的值设定
     *@param kbDirFlag 设定kbDirFlag的值.
     */
    public void setKbDirFlag(String kbDirFlag) {
        this.kbDirFlag = kbDirFlag;
    }

    /**
     *kbDirExcelFlag的获取.
     *@return kbDirExcelFlag值返回.
     */
    public String getKbDirExcelFlag() {
        return kbDirExcelFlag;
    }

    /**
     *kbDirExcelFlag的值设定
     *@param kbDirExcelFlag 设定kbDirExcelFlag的值.
     */
    public void setKbDirExcelFlag(String kbDirExcelFlag) {
        this.kbDirExcelFlag = kbDirExcelFlag;
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
