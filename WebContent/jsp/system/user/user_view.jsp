<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>
<% String local = request.getContextPath(); %>
{	
	frame : true,
	xtype : 'ods.formpanel',
	border : false,
	labelWidth : 68,
	buttonAlign : 'center',
	labelAlign : 'right',
	autoScroll : true,
	bodyStyle : 'padding-top:10px',
	url : '<%=local %>/system/user/add_info.ods',
	successAfter : function(f) {
		var win = this.findParentByType('window');
		win.store.load();
		win.close();
	},
	items : [
	{
		layout : 'column',
		xtype : 'fieldset',
		collapsible : true,
		autoHeight : true,
		title : '1:个人登录信息',
		defaults : {
			columnWidth : .33,
			layout : 'form'
		},
		items : [ 
		{
			items : [ 
			{
				name : 'user.userLoginName',
				value: '${user.userLoginName }',
				fieldLabel : '登录名',
				anchor : '90%',
				xtype : 'textfield',
				selectOnFocus : true,
				readOnly: true
			}
			]
		},{
			items : [ 
			{
				name : 'user.userSex',
				value: '${user.userSex }',
				fieldLabel : '警号',
				anchor : '90%',
				xtype : 'textfield',
				allowBlank : false,
				regex : /^\d{3,25}$/,
				regexText : '警号为长度为3-25位的数字组成',
				readOnly: true
			}
			]
		}
	]
	},{
		layout : 'column',
		xtype : 'fieldset',
		collapsible : true,
		autoHeight : true,
		title : '2:动态信息',
		defaults : {
			columnWidth : .33,
			layout : 'form'
		},
		items :[
		{
			items : [
			{
				allowBlank : false,
				name : 'user.userRealName',
				value: '${user.userRealName }',
				fieldLabel : '用户姓名',
				anchor : '90%',
				xtype : 'textfield',
				maxLength : 25,
				readOnly: true
			},{
				name : 'user.userEducation',
				value: '${user.userEducation }',
				fieldLabel : '手机号码',
				anchor : '90%',
				xtype : 'textfield',
				regex : /^\d{3,32}$/,
				regexText : '手机号码为长度为3-32位的数字组成',
				readOnly: true
			},{
				name : 'user.userNative',
				value: '${user.userNative }',
				fieldLabel : '邮箱',
				anchor : '90%',
				xtype : 'textfield',
				vtype : 'email',
				readOnly: true
			},{
				//allowBlank : false,
				name : 'fatherUserName',
				value: '${user.parentUserName }',
				anchor : '90%',
				xtype : 'textfield',
				fieldLabel : '上级领导',
				readOnly : true
			}
			]
		},{
			items : [
			{
				name : 'user.userMaritalStatus',
				value: ${user.userMaritalStatus } == 0 ? '男' : '女',
				fieldLabel : '性别',
				anchor : '90%',
				xtype : 'textfield',
				readOnly: true
			},{
				name : 'user.userBirthday',
				value: '${user.userBirthday }',
				fieldLabel : '办公电话',
				anchor : '90%',
				xtype : 'textfield',
				regex : /^\d{3,32}$/,
				regexText : '电话号码为长度为3-32位的数字组成',
				readOnly: true
			},{
				name : 'user.memo',
				value: '${user.memo }',
				fieldLabel : '传真',
				anchor : '90%',
				xtype : 'textfield',
				regex : /^\d{3,32}$/,
				regexText : '传真为长度为3-32位的数字组成',
				readOnly: true
			},{
				//allowBlank : false,
				name : 'user.createTime',
				value: '${user.createTime }',
				anchor : '90%',
				xtype : 'textfield',
				fieldLabel : '注册时间',
				readOnly : true
			}
			]
		},{
			items:[
	        {
	        	<%=DataDictionaryCommonAction.jsonCombo("user.userDutyName","职务","100",local) %>
		        ,emptyText: '请选择', anchor: '90%', value: '${user.userDutyName }', readOnly: true
	        },{
				name : 'user.userPhone',
				value: '${user.userPhone }',
				fieldLabel : '联系电话',
				anchor : '90%',
				xtype : 'textfield',
				readOnly: true
			}
		]
		}
	]}
	],
	xbuttons : [ 
	{
		text : '关闭',
		iconCls: 'from_exit',
		handler : function(btn) {
			btn.findParentByType('window').close();
		}
	}
	]
}