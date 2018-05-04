<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>

<% String local = request.getContextPath(); %>
{
	frame : true,
	xtype : 'ods.formpanel',
	border : false,
	labelWidth : 90,
	buttonAlign : 'center',
	labelAlign : 'right',
	bodyStyle : 'padding-top:10px',
	url : '<%=local %>/confirem/add_info.ods',
	successAfter : function(f) {
		var win=this.findParentByType('window');
		win.store.load();
		win.store=null;
		win.close();
	},
	items : [
	{
		name : 'contractSubject.subjectClassName',
		value: '${contractSubject.subjectClassName}',
		anchor : '90%',
		xtype : 'textfield',
		fieldLabel : '中文名称',
		regex: /^[^\\\\/:"'?*<>\\|]+$/,
		regexText: '不能含有特殊字符',
		allowBlank : false,
	    disabled : true
	},{
		name : 'contractSubject.aliasName1',
		value: '${contractSubject.aliasName1}',
		anchor : '90%',
		xtype : 'textfield',
		fieldLabel : '中文别名1',
	    disabled : true
	}
	,{
		name : 'contractSubject.aliasName2',
		value: '${contractSubject.aliasName2}',
		anchor : '90%',
		xtype : 'textfield',
		fieldLabel : '中文别名2',
	    disabled : true
	},{
		name : 'contractSubject.aliasName3',
		value: '${contractSubject.aliasName3}',
		anchor : '90%',
		xtype : 'textfield',
		fieldLabel : '中文别名3',
	    disabled : true
	},{
		name : 'contractSubject.subjectClassEname',
		value: '${contractSubject.subjectClassEname}',
		anchor : '90%',
		xtype : 'textfield',
		fieldLabel : '英文翻译'
		, disabled : true
	},{
		name : 'contractSubject.aliasEname1',
		value: '${contractSubject.aliasEname1}',
		anchor : '90%',
		xtype : 'textfield',
		fieldLabel : '英文翻译1',
	     disabled : true
	},{
		name : 'contractSubject.aliasEname2',
		value: '${contractSubject.aliasEname2}',
		anchor : '90%',
		xtype : 'textfield',
		fieldLabel : '英文翻译2',
	     disabled : true
	},{
		name : 'contractSubject.aliasEname3',
		value: '${contractSubject.aliasEname3}',
		anchor : '90%',
		xtype : 'textfield',
		fieldLabel : '英文翻译3',
	     disabled : true
	},{
		name : 'contractSubject.aliasEname4',
		value: '${contractSubject.aliasEname4}',
		anchor : '90%',
		xtype : 'textfield',
		fieldLabel : '英文翻译4',
	    disabled : true
	}
	,{
		name : 'contractSubject.aliasEname5',
		value: '${contractSubject.aliasEname5}',
		anchor : '90%',
		xtype : 'textfield',
		fieldLabel : '英文翻译5',
	     disabled : true
	},{
		name : 'contractSubject.retain1',
		value: '${contractSubject.retain1}',
		anchor : '90%',
		xtype : 'textfield',
		fieldLabel : '保留1',
		 disabled : true
	},{
		name : 'contractSubject.retain2',
		value: '${contractSubject.retain2}',
		anchor : '90%',
		xtype : 'textfield',
		fieldLabel : '保留2',
		 disabled : true
	},{
		name : 'contractSubject.orderNo',
		value: '${contractSubject.orderNo}',
		value : '0',
		anchor : '90%',
		xtype : 'numberfield',
		fieldLabel : '排列顺序',
		allowBlank : true, 
		decimalPrecision: 0
		, disabled : true
	}
	,{
		name : 'contractSubject.subjectClassPk',
		value : '<%=request.getParameter("contractPk") %>',
		xtype :'hidden'
	}
	,{
		name : 'contractSubject.contractPk',
		value : '<%=request.getParameter("contractPk") %>',
		xtype :'hidden'
	}
	],
	xbuttons : [  {

		text : '关闭',
		iconCls: 'from_exit',
		handler : function(btn) {
			btn.findParentByType('window').close();
		}
	} ]

}
