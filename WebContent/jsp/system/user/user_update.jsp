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
	url : '<%=local %>/system/user/update_info.ods',
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
				allowBlank : false,
				listeners : {
					'render' : function(c) {
						c.focus(true, true);
					}
				}
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
				selectOnFocus : true
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
				maxLength : 25
			},{
				name : 'user.userEducation',
				value: '${user.userEducation }',
				fieldLabel : '手机号码',
				anchor : '90%',
				xtype : 'textfield',
				regex : /^\d{3,32}$/,
				regexText : '手机号码为长度为3-32位的数字组成'
			},{
				name : 'user.userNative',
				value: '${user.userNative }',
				fieldLabel : '邮箱',
				anchor : '90%',
				xtype : 'textfield',
				vtype : 'email'
			}
			]
		},{
			items : [
			{
				xtype : 'radiogroup',
				width : 120,
				fieldLabel : '性别 ',
				items : [
				{
					name : 'user.userMaritalStatus', anchor : '95%', xtype : 'radio', checked : ${user.userMaritalStatus } == 0,
					boxLabel : '男', inputValue : 0
				},{
					name : 'user.userMaritalStatus', anchor : '95%', xtype : 'radio', checked : ${user.userMaritalStatus } == 1,
					boxLabel : '女', inputValue : 1
				}
				]
			},{
				name : 'user.userBirthday',
				value: '${user.userBirthday }',
				fieldLabel : '办公电话',
				anchor : '90%',
				xtype : 'textfield',
				regex : /^\d{3,32}$/,
				regexText : '电话号码为长度为3-32位的数字组成'
			},{
				name : 'user.memo',
				value: '${user.memo }',
				fieldLabel : '传真',
				anchor : '90%',
				xtype : 'textfield',
				regex : /^\d{3,32}$/,
				regexText : '传真为长度为3-32位的数字组成'
			}
			]
		},{
			items:[
	        {
	        	<%=DataDictionaryCommonAction.jsonCombo("user.userDutyName","职务","100",local) %>
		        ,emptyText: '请选择', anchor: '90%', value: '${user.userDutyName }'
	        },{
				name : 'user.userPhone',
				value: '${user.userPhone }',
				fieldLabel : '联系电话',
				anchor : '90%',
				xtype : 'textfield'
			}
		]
		},{
			columnWidth: 1,
			items:[
			{
				layout : 'table',
				items:[
				{
					layout : 'form',
					width : 245,
					items :[
					{
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
					name : 'user.parentUserPk', value: '${user.parentUserPk }', xtype :'hidden'
				},{
					layout : 'form',
					xtype : 'panel',
					items:[
					{
						xtype : 'button',
						width : 50,
						text : '选择',
						handler : function(btn) {
							var form = btn.findParentByType('ods.formpanel').getForm();
							new Ext.Window({
								layout : 'border',
								title : '选择上级领导信息--网页对话框',
								form : form,
								width : 600,
								height : 400,
								plain : true,
								modal : true,
								iconCls : 'bogus',
								resizable : false,
								items:[
								{
									layout : 'fit',
									region : 'center',
									xtype : 'panel',
									plugins : [ new Ext.ux.Plugin.RemoteComponent(
									{
										url : '<%=local %>/system/user/select_user_list.ods',
										params:{
											orgPk: '<%=com.ods.util.UserContext.getUserContext(request).getUser().getOrgPk() %>',
											userRealName: 'fatherUserName',
											userPk: 'user.parentUserPk'
										},
										method : 'post'
									}) ]
								} ]
							}).show();
						}
					} ]
				} ]
				}
			]},{
				xtype: 'hidden', name: 'user.userPk', value: '${user.userPk }'
			},{
				xtype: 'hidden', name: 'user.userPassword', value: '${user.userPassword }'
			},{
				xtype: 'hidden', name: 'user.firstOrgPk', value: '${user.firstOrgPk }'
			},{
				xtype: 'hidden', name: 'user.orgPk', value: '${user.orgPk }'
			},{
				xtype: 'hidden', name: 'user.allOrgPk', value: '${user.allOrgPk }'
			},{
				xtype: 'hidden', name: 'user.createOrgPk', value: '${user.createOrgPk }'
			},{
				xtype: 'hidden', name: 'user.createUserPk', value: '${user.createUserPk }'
			},{
				xtype: 'hidden', name: 'user.createTime', value: '${user.createTime }'
			},{
				xtype: 'hidden', name: 'user.deleteType', value: '${user.deleteType }'
			}
			]
		}
	],
	xbuttons : [ 
	{
		text : '保存',
		iconCls: 'form_save',
		xbutton : 'this.submitXForm'
	}, {
		text : '重 置',
		iconCls: 'form_reset',
		handler : function(btn) {
			var form = btn.findParentByType('ods.formpanel').getForm();
			form.reset();
			form.items.items[0].focus(true);
		}
	}, {
		text : '关闭',
		iconCls: 'from_exit',
		handler : function(btn) {
			btn.findParentByType('window').close();
		}
	}
	]
}