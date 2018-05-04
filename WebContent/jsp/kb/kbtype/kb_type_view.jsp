<%--
    功能            :知识点类型 查看页面
    创建时间  :2009-11-13
    创建者        : jiangwenqi 
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@page import="com.ods.util.resource.ResourceUtil"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:i18n name="com.ods.kb.action.kbtype.KbtypeAction">
<%//一个添加的窗口  开始 %>
{
	frame : true,
	region : 'center',
	xtype : 'ods.formpanel',
	buttonAlign : 'center',
	bodyStyle : 'padding-top:20px',
	labelWidth : 80

	,
	labelAlign : 'right',
	items : [

	{
		name : 'kbtype.kbTypeCode',
		value : '${kbtype.kbTypeCode }',
		anchor : '95%',
		xtype : 'textfield',
		fieldLabel : '编码',
		maxLength : 50,
		readOnly : true

	}

	, {
		name : 'kbtype.kbTypeContent',
		value : '${kbtype.kbTypeContent }',
		anchor : '95%',
		xtype : 'textfield',
		fieldLabel : '内容',
		maxLength : 50,
		readOnly : true

	}, {
		name : 'kbtype.createTime',
		value : '${kbtype.createTime }',
		anchor : '95%',
		xtype : 'textfield',
		fieldLabel : '创建时间',
		maxLength : 50,
		readOnly : true

	} ]

	,
	xbuttons : [ {
		text : '关闭',
		handler : function(btn) {
			var win = this.findParentByType('window');
			btn.findParentByType('window').close();
		}
	} ]

}

</s:i18n>							