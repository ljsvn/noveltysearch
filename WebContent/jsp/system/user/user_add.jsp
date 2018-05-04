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
				fieldLabel : '登录名',
				anchor : '90%',
				xtype : 'textfield',
				selectOnFocus : true,
				allowBlank : false,
				listeners : {
					'render' : function(c) {
						c.focus(true, true);
					}
				},
				plugins : [ Ext.ux.plugins.RemoteValidator ],
				rvOptions : {
					url : '<%=local %>/system/user/valid_user_loginname.ods'
				}
			}
			]
		},{
			items : [ 
			{
				name : 'user.userSex',
				fieldLabel : '员工号',
				anchor : '90%',
				xtype : 'textfield',
				allowBlank : false,
				regex : /^\d{3,25}$/,
				regexText : '员工为长度为3-25位的数字组成',
				selectOnFocus : true,
				plugins : [ Ext.ux.plugins.RemoteValidator ],
				rvOptions : {
					url : '<%=local %>/system/user/valid_user_no.ods'
				}
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
				fieldLabel : '用户姓名',
				anchor : '90%',
				xtype : 'textfield',
				maxLength : 25
			},{
				name : 'user.userEducation',
				fieldLabel : '手机号码',
				anchor : '90%',
				xtype : 'textfield',
				regex : /^\d{3,32}$/,
				regexText : '手机号码为长度为3-32位的数字组成'
			},{
				name : 'user.userNative',
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
					name : 'user.userMaritalStatus', anchor : '95%', xtype : 'radio', checked : true,
					boxLabel : '男', inputValue : 0
				},{
					name : 'user.userMaritalStatus', anchor : '95%', xtype : 'radio',
					boxLabel : '女', inputValue : 1
				}
				]
			},{
				name : 'user.userBirthday',
				fieldLabel : '办公电话',
				anchor : '90%',
				xtype : 'textfield',
				regex : /^\d{3,32}$/,
				regexText : '电话号码为长度为3-32位的数字组成'
			},{
				name : 'user.memo',
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
		        ,emptyText: '请选择', anchor: '90%'
	        },{
				name : 'user.userPhone',
				fieldLabel : '联系电话',
				anchor : '90%',
				xtype : 'textfield'
			},{
				name : 'user.orgPk',
				value : '<%=request.getParameter("orgPk") %>',
				xtype :'hidden'
			},{
				name : 'user.allOrgPk',
				value : '<%=request.getParameter("allOrgPk") %>',
				xtype :'hidden'
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
						anchor : '90%',
						xtype : 'textfield',
						fieldLabel : '上级领导',
						readOnly : true
					} 
					]
				},{
					name : 'user.parentUserPk', xtype :'hidden'
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
				} 
				
				]
				}
			]}
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