/**
 *copyright(C)2012
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.data.bean.SerialNumber;

/**
 * <b>系统名称:</b><b> 昆仑厂MES生产管理系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * SerialNumber.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * SerialNumber类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * SerialNumber类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 自动编号
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2012-8-7, cause, myscore@gmail.com, 新建<br>
 * 
 * @author :myscore@gmail.com
 * @since :2012-8-7
 * @version:1.0
 */
public class SerialNumber {
	// "serialNumberPk","condition","codeLength","code","memo","deleteType","lastTime"
	/**
	 * 属性名：serialNumberPk、类型：String、作成日：2012-8-7<br>
	 * 含义：
	 */
	private String serialNumberPk;
	/**
	 * 属性名：condition、类型：String、作成日：2012-8-7<br>
	 * 含义：
	 */
	private String condition;
	/**
	 * 属性名：codeLength、类型：int、作成日：2012-8-7<br>
	 * 含义：
	 */
	private int codeLength;
	/**
	 * 属性名：code、类型：String、作成日：2012-8-7<br>
	 * 含义：
	 */
	private String code;
	/**
	 * 属性名：memo、类型：String、作成日：2012-8-7<br>
	 * 含义：
	 */
	private String memo;
	/**
	 * 属性名：deleteType、类型：int、作成日：2012-8-7<br>
	 * 含义：
	 */
	private int deleteType;
	/**
	 * 属性名：lastTime、类型：String、作成日：2012-8-7<br>
	 * 含义：
	 */
	private String lastTime;
	/**
	 *serialNumberPk的获取.
	 *@return serialNumberPk值返回.
	 */
	public String getSerialNumberPk() {
		return serialNumberPk;
	}
	/**
	 *serialNumberPk的值设定
	 *@param serialNumberPk 设定serialNumberPk的值.
	 */
	public void setSerialNumberPk(String serialNumberPk) {
		this.serialNumberPk = serialNumberPk;
	}
	/**
	 *condition的获取.
	 *@return condition值返回.
	 */
	public String getCondition() {
		return condition;
	}
	/**
	 *condition的值设定
	 *@param condition 设定condition的值.
	 */
	public void setCondition(String condition) {
		this.condition = condition;
	}
	/**
	 *codeLength的获取.
	 *@return codeLength值返回.
	 */
	public int getCodeLength() {
		return codeLength;
	}
	/**
	 *codeLength的值设定
	 *@param codeLength 设定codeLength的值.
	 */
	public void setCodeLength(int codeLength) {
		this.codeLength = codeLength;
	}
	/**
	 *code的获取.
	 *@return code值返回.
	 */
	public String getCode() {
		return code;
	}
	/**
	 *code的值设定
	 *@param code 设定code的值.
	 */
	public void setCode(String code) {
		this.code = code;
	}
	/**
	 *memo的获取.
	 *@return memo值返回.
	 */
	public String getMemo() {
		return memo;
	}
	/**
	 *memo的值设定
	 *@param memo 设定memo的值.
	 */
	public void setMemo(String memo) {
		this.memo = memo;
	}
	/**
	 *deleteType的获取.
	 *@return deleteType值返回.
	 */
	public int getDeleteType() {
		return deleteType;
	}
	/**
	 *deleteType的值设定
	 *@param deleteType 设定deleteType的值.
	 */
	public void setDeleteType(int deleteType) {
		this.deleteType = deleteType;
	}
	/**
	 *lastTime的获取.
	 *@return lastTime值返回.
	 */
	public String getLastTime() {
		return lastTime;
	}
	/**
	 *lastTime的值设定
	 *@param lastTime 设定lastTime的值.
	 */
	public void setLastTime(String lastTime) {
		this.lastTime = lastTime;
	}
}
