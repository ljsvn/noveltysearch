<%--
    功能            :添加组织机构信息页面
    创建时间  :2009-02-08 下午01:34:58
    创建者        : hongsen
    Ods版权所有
--%>
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
	url : '<%=local %>/subject/class/update_info.ods',
	successAfter : function(f) {
		var win = this.findParentByType('window');
		win.rootnode.reload();
		win.close();
	},
	items : [
	{
		xtype: 'panel', items: [
		{
			layout: 'table', items: [
			{
				layout: 'form', width: 350, items: [
				{
					name : 'subjectClass.subjectClassName',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '中文名称',
					regex: /^[^\\\\/:"'?*<>\\|]+$/,
					regexText: '不能含有特殊字符',
					allowBlank : false,
				    disabled : true
				}
				,
				{
					name : 'subjectClass.aliasName2',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '中文别名2',
				    disabled : true
				}
				,
				{
					name : 'subjectClass.aliasName4',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '中文别名4',
				    disabled : true
				}
				,
				{
					name : 'subjectClass.aliasName6',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '中文别名6',
				    disabled : true
				}
				,{
					name : 'subjectClass.subjectClassEname',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译',
				    disabled : true
				}
				,
				{
					name : 'subjectClass.aliasEname2',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译2',
				    disabled : true
				}
				,
				{
					name : 'subjectClass.aliasEname4',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译4',
				    disabled : true
				}
				,
				{
					name : 'subjectClass.aliasEname6',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译6',
				    disabled : true
				}
				,
				{
					name : 'subjectClass.aliasEname8',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译8',
				    disabled : true
				}
				,
				{
					name : 'subjectClass.retain1',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '保留1',
					disabled : true
				}
				,
				{
					name : 'subjectClass.retain3',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '保留3',
					disabled : true
				}
				]
			}
			,
			{
				layout: 'form', width: 350, items: [
				{
					name : 'subjectClass.aliasName1',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '中文别名1',
				    disabled : true
				}
				,
				{
					name : 'subjectClass.aliasName3',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '中文别名3',
				    disabled : true
				}
				,
				{
					name : 'subjectClass.aliasName5',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '中文别名5',
				    disabled : true
				}
				,
				{
				html: ' ' 
				, height: 28
				}
				,
				{
					name : 'subjectClass.aliasEname1',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译1',
				    disabled : true
				}
				,
				{
					name : 'subjectClass.aliasEname3',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译3',
				    disabled : true
				}
				,
				{
					name : 'subjectClass.aliasEname5',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译5',
				    disabled : true
				}
				,
				{
					name : 'subjectClass.aliasEname7',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译7',
				    disabled : true
				}
				,
				{
					name : 'subjectClass.aliasEname9',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译9',
				    disabled : true
				}
				,
				{
					name : 'subjectClass.retain2',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '保留2',
					disabled : true
				}
				,
				{
				    html: ' ', height: 28
				}
				]
			}
			]
		}
		
		]
	}
    ,
    {
	    xtype : 'radiogroup',
		fieldLabel : '分类主题词 ',
		items : [
		{
			name : 'subjectClass.isKeyWord', anchor : '95%', xtype : 'radio',
			boxLabel : '分类', inputValue : 0,  disabled : true
		},{
			name : 'subjectClass.isKeyWord', anchor : '95%', xtype : 'radio', 
			boxLabel : '主题词', inputValue : 1,  disabled : true
		}
		]
	},{
		name : 'subjectClass.orderNo',
		value: '${subjectClass.orderNo }',
		value : '0',
		anchor : '90%',
		xtype : 'numberfield',
		fieldLabel : '排列顺序',
		allowBlank : true, 
		decimalPrecision: 0,
		 disabled : true
	},{
		name : 'subjectClass.subjectClassPk',
		value : '${subjectClass.subjectClassPk}',
		xtype : 'hidden'
	},{
		name : 'subjectClass.fatherPk',
		value : '${subjectClass.fatherPk}',
		xtype : 'hidden'
	},{
		name : 'subjectClass.fatherPkAll',
		value : '${subjectClass.fatherPkAll}',
		xtype : 'hidden'
	},{
		name : 'subjectClass.createUserPk',
		value : '${subjectClass.createUserPk}',
		xtype : 'hidden'
	},{
		name : 'subjectClass.createTime',
		value : '${subjectClass.createTime}',
		xtype : 'hidden'
	},{
		name : 'subjectClass.createOrgPk',
		value : '${subjectClass.createOrgPk}',
		xtype : 'hidden'
	}
	
	]

}
