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
					value: '${subjectClass.subjectClassName }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '中文名称',
					regex: /^[^\\\\/:"'?*<>\\|]+$/,
					regexText: '不能含有特殊字符',
					allowBlank : false,
				    emptyText: '请输入名称'
				}
				,
				{
					name : 'subjectClass.aliasName2',
					value: '${subjectClass.aliasName2 }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '中文别名2',
				    emptyText: '请输入中文别名2'
				}
				,
				{
					name : 'subjectClass.aliasName4',
					value: '${subjectClass.aliasName4 }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '中文别名4',
				    emptyText: '请输入中文别名4'
				}
				,
				{
					name : 'subjectClass.aliasName6',
					value: '${subjectClass.aliasName6 }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '中文别名6',
				    emptyText: '请输入中文别名6'
				}
				,{
					name : 'subjectClass.subjectClassEname',
					value: '${subjectClass.subjectClassEname }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译',
				    emptyText:'请输入英文翻译'
				}
				,
				{
					name : 'subjectClass.aliasEname2',
					value: '${subjectClass.aliasEname2 }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译2',
				    emptyText:'请输入英文翻译2'
				}
				,
				{
					name : 'subjectClass.aliasEname4',
					value: '${subjectClass.aliasEname4 }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译4',
				    emptyText:'请输入英文翻译4'
				}
				,
				{
					name : 'subjectClass.aliasEname6',
					value: '${subjectClass.aliasEname6 }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译6',
				    emptyText:'请输入英文翻译6'
				}
				,
				{
					name : 'subjectClass.aliasEname8',
					value: '${subjectClass.aliasEname8 }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译8',
				    emptyText:'请输入英文翻译8'
				}
				,
				{
					name : 'subjectClass.retain1',
					value: '${subjectClass.retain1 }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '保留1',
				}
				,
				{
					name : 'subjectClass.retain3',
					value: '${subjectClass.retain3 }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '保留3',
				}
				]
			}
			,
			{
				layout: 'form', width: 350, items: [
				{
					name : 'subjectClass.aliasName1',
					value: '${subjectClass.aliasName1 }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '中文别名1',
				    emptyText: '请输入中文别名1'
				}
				,
				{
					name : 'subjectClass.aliasName3',
					value: '${subjectClass.aliasName3 }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '中文别名3',
				    emptyText: '请输入中文别名3'
				}
				,
				{
					name : 'subjectClass.aliasName5',
					value: '${subjectClass.aliasName5 }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '中文别名5',
				    emptyText: '请输入中文别名5'
				}
				,
				{
				html: ' ' 
				, height: 28
				}
				,
				{
					name : 'subjectClass.aliasEname1',
					value: '${subjectClass.aliasEname1 }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译1',
				    emptyText:'请输入英文翻译1'
				}
				,
				{
					name : 'subjectClass.aliasEname3',
					value: '${subjectClass.aliasEname3 }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译3',
				    emptyText:'请输入英文翻译3'
				}
				,
				{
					name : 'subjectClass.aliasEname5',
					value: '${subjectClass.aliasEname5 }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译5',
				    emptyText:'请输入英文翻译5'
				}
				,
				{
					name : 'subjectClass.aliasEname7',
					value: '${subjectClass.aliasEname7 }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译7',
				    emptyText:'请输入英文翻译7'
				}
				,
				{
					name : 'subjectClass.aliasEname9',
					value: '${subjectClass.aliasEname9 }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '英文翻译9',
				    emptyText:'请输入英文翻译9'
				}
				,
				{
					name : 'subjectClass.retain2',
					value: '${subjectClass.retain2 }',
					anchor : '90%',
					xtype : 'textfield',
					fieldLabel : '保留2',
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
	},{
	    xtype : 'radiogroup',
		fieldLabel : '分类或主题词 ',
		items : [
		{
			name : 'subjectClass.isKeyWord', anchor : '95%', xtype : 'radio', checked : ${subjectClass.isKeyWord } == 0, 
			boxLabel : '分类', inputValue : 0
		},{
			name : 'subjectClass.isKeyWord', anchor : '95%', xtype : 'radio', checked : ${subjectClass.isKeyWord } == 1,
			boxLabel : '主题词', inputValue : 1
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
		decimalPrecision: 0
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
	
	],
	xbuttons : [ {

		text : '保存',
		iconCls: 'form_save',
		xbutton : 'this.submitXForm'
	},{

		text : '重置',
		iconCls: 'form_reset',
		handler : function(btn) {
			var form = btn.findParentByType('ods.formpanel').getForm();
			form.reset();
			form.findField('userInfo.infoName').focus(true);
		}
	},{

		text : '关闭',
		iconCls: 'from_exit',
		handler : function(btn) {
			btn.findParentByType('window').close();
		}
	} ]

}
