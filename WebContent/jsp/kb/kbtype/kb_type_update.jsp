<%--
    功能            :知识点类型 修改页面
    创建时间  :2009-11-13
    创建者        : jiangwenqi 
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@page import="com.ods.util.resource.ResourceUtil"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:i18n name="com.ods.kb.action.kbtype.KbtypeAction">
<% String local = request.getContextPath(); %>
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
	url : '<%=local %>/kb/type/kbtypeCUD_updateInfo.ods',
	successAfter : function(f) {
		var win = this.findParentByType('window');

		win.store.load();
		win.store = null;
		win.close();
	}

	,
	items : [

	{
		allowBlank : false,
		name : 'kbtype.kbTypeCode',
		value : '${kbtype.kbTypeCode }',
		anchor : '95%',
		xtype : 'textfield',
		fieldLabel : '编码',
		maxLength : 50

	}

	, {
		allowBlank : false,
		name : 'kbtype.kbTypeContent',
		value : '${kbtype.kbTypeContent }',
		anchor : '95%',
		xtype : 'textfield',
		fieldLabel : '内容',
		maxLength : 50

	}

	, {
		name : 'kbtype.kbTypePk',
		value : '${kbtype.kbTypePk }',
		anchor : '95%',
		xtype : 'hidden'
	}, {
		name : 'kbtype.createTime',
		value : '${kbtype.createTime }',
		anchor : '95%',
		xtype : 'hidden'
	} ]

	,
	xbuttons : [ {
		text : '保存',
		xbutton : 'this.submitXForm'
	}, {
		text : '重 置',
		handler : function(btn) {
			var form = btn.findParentByType('ods.formpanel').getForm();
			form.reset();

			form.items.items[0].focus(true);
		}
	}, {
		text : '关闭',
		handler : function(btn) {
			btn.findParentByType('window').close();
		}
	} ],
	listeners : {
		'render' : function() {
			this.findByType('textfield')[0].focus(true, true);
		}
	}

}

</s:i18n>							