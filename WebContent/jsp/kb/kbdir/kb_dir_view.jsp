<%--
    功能            :资料库目录查看页面
    创建时间  :2009-11-12 
    创建者        : xiaowei
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page import="com.ods.util.resource.ResourceUtil"%>
<s:i18n name="com.ods.kb.action.kbdir.KbdirAction">

{
	frame : true,
	xtype : 'ods.formpanel',
	buttonAlign : 'center',
	items : [

	{
		name : 'kbDirectory.kbDirName',
		value : '${kbDirectory.kbDirName }',
		anchor : '95%',
		xtype : 'textfield',
		fieldLabel : '名称',
		maxLength : 50,
		readOnly : true

	}

	, {
		name : 'kbDirectory.kbDirClevel',
		value : '${kbDirectory.kbDirClevel }',
		anchor : '95%',
		xtype : 'textfield',
		fieldLabel : '目录级别',
		maxLength : 50,
		readOnly : true

	}

	, {
		name : 'kbDirectory.createTime',
		value : '${kbDirectory.createTime }',
		anchor : '95%',
		xtype : 'textfield',
		fieldLabel : '创建时间',
		maxLength : 50,
		readOnly : true

	} ]

	,
	labelAlign : 'right',
	autoScroll : true,
	xbuttons : [

	{

		text : '关闭',
		handler : function(btn) {
			var win = this.findParentByType('window');
			btn.findParentByType('window').close();
		}
	} ]

}

</s:i18n>
