package com.ods.kb.bo.kbtype;


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
 *知识点类型BO<br>
 *
 *系统管理
 *
 *<b>文件名:</b><br>
 *filename
 *
 *TKbtype.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *TKbtype类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *TKbtype类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *知识点类型BO<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2009-11-13,    cause,    jiangwenqi,   	新建<br>
 *
 *@author :jiangwenqi
 *@since  :2009-11-13
 *@version:1.0
*/
public class TKbtype implements java.io.Serializable {

	/**
	*属性名：serialVersionUID、类型：long、作成日：2009-11-13.<br>
	*含义：序列化ID
	*/
	private static final long serialVersionUID = -1135238761607894164L;
	
	/**
	*属性名：kbTypePk、类型：Integer、作成日：2009-11-13.<br>
	*含义：主键
	*/
	private String kbTypePk;
	/**
	*属性名：kbTypePks、类型：String[]、作成日：2010-3-18.<br>
	*含义：主键数组
	*/
	private String[] kbTypePks;
	
	/**
     *kbTypePks的获取.
     *@return kbTypePks值返回.
     */
    public String[] getKbTypePks() {
        return kbTypePks;
    }

    /**
     *kbTypePks的值设定
     *@param kbTypePks 设定kbTypePks的值.
     */
    public void setKbTypePks(String[] kbTypePks) {
        this.kbTypePks = kbTypePks;
    }

    /**
	*属性名：kbTypeCode、类型：String、作成日：2009-11-13.<br>
	*含义：编码
	*/
	private String kbTypeCode;
	
	/**
	*属性名：kbTypeContent、类型：String、作成日：2009-11-13.<br>
	*含义：内容
	*/
	private String kbTypeContent;
	
	/**
	*属性名：createTime、类型：String、作成日：2009-11-13.<br>
	*含义：创建时间
	*/
	private String createTime;private String createUserPk;public String getCreateUserPk() {return createUserPk;}public void setCreateUserPk(String createUserPk) {this.createUserPk = createUserPk;}private int deleteType;public int getDeleteType() {return deleteType;}public void setDeleteType(int deleteType) {this.deleteType = deleteType;}

	// Constructors

	/** default constructor */
	public TKbtype() {
	}

	/**
	 *kbTypePk的获取.
	 *@return kbTypePk值返回.
	 */
	public String getKbTypePk() {
		return kbTypePk;
	}

	/**
	 *kbTypePk的值设定
	 *@param kbTypePk 设定kbTypePk的值.
	 */
	public void setKbTypePk(String kbTypePk) {
		this.kbTypePk = kbTypePk;
	}

	/**
	 *kbTypeCode的获取.
	 *@return kbTypeCode值返回.
	 */
	public String getKbTypeCode() {
		return kbTypeCode;
	}

	/**
	 *kbTypeCode的值设定
	 *@param kbTypeCode 设定kbTypeCode的值.
	 */
	public void setKbTypeCode(String kbTypeCode) {
		this.kbTypeCode = kbTypeCode;
	}

	/**
	 *kbTypeContent的获取.
	 *@return kbTypeContent值返回.
	 */
	public String getKbTypeContent() {
		return kbTypeContent;
	}

	/**
	 *kbTypeContent的值设定
	 *@param kbTypeContent 设定kbTypeContent的值.
	 */
	public void setKbTypeContent(String kbTypeContent) {
		this.kbTypeContent = kbTypeContent;
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