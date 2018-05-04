<%--
    功能            :资料库目录新增页面
    创建时间  :2009-11-12 
    创建者        : xiaowei
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page import="com.ods.util.resource.ResourceUtil"%>
<s:i18n name="com.ods.kb.action.kbdir.KbdirAction">
<% String local = request.getContextPath(); %>
{
	frame : true,
	xtype : 'ods.formpanel',
	buttonAlign : 'center'

	,
	items : [ {
		name : 'kbDirectory.kbDirFlag',
		value : '',
		anchor : '95%',
		xtype : 'hidden',
		value : 'L'
	}

	, {
		allowBlank : false,
		name : 'kbDirectory.kbDirName',
		value : '',
		anchor : '95%',
		xtype : 'textfield',
		fieldLabel : '名称',
		maxLength : 50

	}

	, {
		name : 'kbDirectory.kbDirGbpk',
		value:'<%= request.getAttribute("kbDirGbpk") %>',
		anchor : '95%',
		xtype : 'hidden'
	}

	, {
		name : 'kbDirectory.kbDirClevel',
		value:'<%= request.getAttribute("kbDirClevel") %>',
		anchor : '95%',
		xtype : 'hidden'
	} ]

	,
	labelAlign : 'right',
	autoScroll : true

	,
	successAfter : function(f) {
		var win = this.findParentByType('window');
		win.ownertree.getRootNode().reload();
		win.close();
	}

,
url : '<%=local %>/kb/dir/dir_add.ods',
xbuttons : [ {

	text : '保存',
	xbutton : 'this.submitXForm'
}, {

	text : '重置',
	handler : function(btn) {
		btn.findParentByType('ods.formpanel').form.reset();
	}
}, {

	text : '关闭',
	handler : function(btn) {
		var win = this.findParentByType('window');
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
