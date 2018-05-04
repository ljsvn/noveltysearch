/**
 *copyright(C)2012
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.action.tools;

import java.util.Calendar;

import com.ods.util.guid.GuidGender;
import com.ods.util.hibernate.SpringHibernate;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.spring.SpringBeanFactory;
import com.ods.util.type.NumberUtil;
import com.ods.util.type.StringUtil;
import com.ods.util.type.TimeUtil;

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
 * 自动编号生成器<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2012-8-7, cause, myscore@gmail.com, 新建<br>
 * 
 * @author :myscore@gmail.com
 * @since :2012-8-7
 * @version:1.0
 */
public class SerialNumberUtil {
	/**
	 * 1. java 引用 import com.ods.base.action.tools.SerialNumberAction; jsp 引用
	 * <%@page import="com.ods.base.action.tools.SerialNumberAction"%> 2. 构造生成
	 * 建议在保存前生成 jsp部分提示 SerialNumberAction sn =new SerialNumberAction(); 编码=
	 * sn.SerialNumber("条件",编码长度); 例如 sn.SerialNumber("2012_33",5); 结果 00001;
	 * 
	 * */
	/**
	 * 属性名：serialVersionUID、类型：long、作成日：2012-8-7.<br>
	 * 含义：
	 */
	private static final long serialVersionUID = 1873426699106830872L;
	com.ods.data.bean.SerialNumber.SerialNumber serialNumber = new com.ods.data.bean.SerialNumber.SerialNumber();

	public com.ods.data.bean.SerialNumber.SerialNumber getSerialNumber() {
		return serialNumber;
	}

	public void setSerialNumber(
			com.ods.data.bean.SerialNumber.SerialNumber serialNumber) {
		this.serialNumber = serialNumber;
	}

	/**
	 * 条件查询.<br>
	 * 工程名:envirm<br>
	 * 包名:com.ods.base.action.tools<br>
	 * 方法名:getQc方法.<br>
	 * 
	 * @author:myscore@gmail.com
	 * @since :1.0:2012-8-7
	 * @param condition
	 * @return
	 */
	private QueryCondition getQc(String condition) {
		QueryCondition qc = new QueryCondition();
		if (!StringUtil.empty(condition)) {
			qc.put("condition", condition);
		}
		qc.equals("deleteType", 0);
		return qc;
	}

	private String listInfo(String condition) {
		QueryCondition qc = getQc(condition);
		QueryResult qr = new QueryResult();
		SpringHibernate springHibernate = (SpringHibernate) SpringBeanFactory
				.getBean("DAOProxy");
		try {
			qr = springHibernate.select(qc,
					com.ods.data.bean.SerialNumber.SerialNumber.class);
			if (qr.size() >= 1) {
				serialNumber = (com.ods.data.bean.SerialNumber.SerialNumber) qr
						.get(0);
				// 获得编号
				return serialNumber.getCode();
			} else {
				return null;
			}
		} catch (Throwable e) {
			return null;
		}
	}

	public String SerialNumber(String condition, int length) {
		// 从数据库中取得现在的编号
		String code = listInfo(condition);
		// 为空时数据库中没有编号需要新增，编号从1开始。
		if (StringUtil.empty(code)) {
			code = frontCompWithZore(1, length);
			serialNumber.setCondition(condition);
			serialNumber.setCodeLength(length);
		} else {
			int icode = Integer.valueOf(code) + 1;
			code = frontCompWithZore(icode, length);
		}
		serialNumber.setCode(code);
		modifyInfo();
		return code;
	}
	public  String SerialNumberString(String condition, String length) { 
		return SerialNumber(condition, NumberUtil.toInt(length, 0));
	}
	public  String SerialNumberInteger(String condition, Integer length) { 
		return SerialNumber(condition, length);
	}

	/**
	 * 将元数据前补零，补后的总长度为指定的长度，以字符串的形式返回
	 * 
	 * @param sourceDate
	 * @param formatLength
	 * @return 重组后的数据
	 */
	private static String frontCompWithZore(int sourceDate, int formatLength) {
		/*
		 * 0 指前面补充零 formatLength 字符总长度为 formatLength d 代表为正数。
		 */
		String newString = String.format("%0" + formatLength + "d", sourceDate);
		return newString;
	}

	private void modifyInfo() {
		com.ods.data.bean.SerialNumber.SerialNumber serialNumber = getSerialNumber();
		try {
			serialNumber.setLastTime(TimeUtil.toString(Calendar.getInstance(),
					TimeUtil.theTimeFormat));
			SpringHibernate springHibernate = (SpringHibernate) SpringBeanFactory
					.getBean("DAOProxy");
			if (StringUtil.empty(serialNumber.getSerialNumberPk())) {
				String serialNumberPk = new GuidGender(true).toString();
				serialNumber.setSerialNumberPk(serialNumberPk);
				serialNumber.setDeleteType(0);
				springHibernate.save(serialNumber);
			} else {
				springHibernate.update(serialNumber);
			}
		} catch (Throwable e) {
			LogUtil.writeLog(e);
		}
	}

}
