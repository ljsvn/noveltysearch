<%--
    功能            :用户信息列表页面
    创建时间  :2009-9-01 下午01:34:58
    创建者        : cui_wenke
    Ods版权所有
    
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.ods.util.hibernate.query.QueryPageJavaBean"%>
<%@ page import="com.ods.util.resource.ResourceUtil"%>
<%@ page import="com.ods.util.type.StringUtil"%>
<% String local = request.getContextPath(); %>
<% String userName = com.ods.util.UserContext.getUserContext(request).getUser().getUserLoginName();%>
	{
		frame : true,
		layout : 'column',
		region : 'north',
		xtype : 'form',
		height : 38,
		labelAlign : 'right',
		labelWidth: 60,
		border : false,
		items : [
				{
					layout : 'form',
					columnWidth : .25,
					border : false,
					items : [ {
						name : 'userLoginName',
						fieldLabel : '登录名',
						anchor : '95%',
						xtype : 'textfield',
						selectOnFocus : true,
						listeners : {
							'render' : function(c) {
								c.focus(true, true);
							}
						},
						maxLength : 50

					} ]

				},
				{
					layout : 'form',
					columnWidth : .25,
					border : false,
					items : [ {
						name : 'userRealName',
						fieldLabel : '员工姓名',
						anchor : '95%',
						xtype : 'textfield',
						maxLength : 50

					} ]

				},{
					layout: 'form',
					columnWidth: .25,
					border: false,
					items: [{
						name: 'userSex',
						fieldLabel: '警号',
						anchor: '95%',
						xtype: 'textfield'
					}]
				},
				{
					layout : 'form',
					columnWidth : .1,
					border : false,
					items : [
					{
						xtype : 'button',
						width: 60,
						text : '查询',
						handler : function(btn) {
							var form = btn.findParentByType('form');
							if (form.getForm().isValid()) {
								if(form.getForm().isValid()){
									var queryUserName = form.getForm().findField('queryUserName').getValue();
									var queryUserRealname = form.getForm().findField('queryUserRealname').getValue();
									var grid = form.findParentByType('panel').findByType('ods.grid')[0];
									Ext.apply(grid.store.baseParams,{
										 queryUserLoginName : queryUserName
										,queryUserRealname : queryUserRealname
									});
									grid.store.load();
								}
							}
						}
					} ]
				} ]
	},
	{
		region : 'center',
		xtype : 'ods.grid',
		pagesize : 10,
		initload: false,
		sm : new Ext.grid.CheckboxSelectionModel(),
		viewConfig : {
			forceFit : true
		},
		border : false,
		store : new Ext.data.Store( {
			url : '<%=local %>/system/user/list_info.ods',
			reader : new Ext.data.JsonReader( {
				root : 'records',
				totalProperty : 'total'
			}, [
				"userPk","parentUserPk","orgPk","allOrgPk","firstOrgPk","userLoginName","userRealName","userSex","userDutyName","userEducation",
				"userBirthday","userNative","userPhone","isSystemUser","userMaritalStatus","userPassword","beforeLoginTime","memo","createOrgPk",
				"createUserPk","createTime","deleteType"
			])
		}),
		columns : [
				new Ext.grid.CheckboxSelectionModel(),
				new Ext.grid.RowNumberer(),
				{header: '登录名', sortable: true, dataIndex: "userLoginName"},
				{header: '警号', sortable: true, dataIndex: "userSex"},
				{header: '姓名', sortable: true, dataIndex: "userRealName"},
				{header: '性别', sortable: true, dataIndex: "userMaritalStatus",
					renderer: function(value){
						return value==0?'男': '女';
					}
				},
				{header: '职务', sortable: true, dataIndex: "userDutyName"}
		],
		listeners:{
		rowdblclick:function(grid){
		var records = grid.getSelectionModel().getSelections();
				var userPk = records[0].get('userPk');
				win = new Ext.Window(
				{
					layout : 'border',
					title : '查看登录用户信息--网页对话框',
					autoDestroy : true,
					width : 540,
					height : 220,
					plain : true,
					modal : true,
					iconCls : 'bogus',
					resizable : false,
					closable : true,
					items : [ {
						layout : 'fit',
						region : 'center',
						xtype : 'panel',
						plugins : [ new Ext.ux.Plugin.RemoteComponent(
								{
									url : '<%=local %>/system/user/view_page.ods?userPk=' + userPk,
								method : 'post'
							})]
				}]
			})
	        win.show();
		}
		}
		,tbar:[
		{
			text : '授权信息',
			iconCls : 'x-icon-vcardEdit',
			id : 'user_role_accredit',
			tooltip : '修改用户权限信息',
			handler : function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
					if (records.length > 1) {
						Ext.example.msg("系统提示", "<b>" + "请勾选一条多选框内容" + "</b>");
					} else {
						var userPk = records[0].get('userPk');
						win = new Ext.Window(
								{
									layout : 'border',
									title : '用户授权信息--网页对话框',
									store : grid.store,
									autoDestroy : true,
									width : 750,
									height : 460,
									plain : true,
									modal : true,
									iconCls : 'bogus',
									userPk : records[0].get('userPk'),
									resizable : false,
									closable : true,
									items : [ {
										layout : 'fit',
										region : 'center',
										xtype : 'panel',
										plugins : [ new Ext.ux.Plugin.RemoteComponent(
												{
													url : '<%=local %>/system/userrole/accredit_page.ods?userPk=' + userPk,
													method : 'post'
												}) ]
									} ]
								})
						win.show();
					}
				}
			}
		},
		'-',
		{
			text : '查看',
			id : 'user_role_view',
			tooltip : '查看选中的用户',
			iconCls : 'x-icon-view',
			handler : function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {

					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
					if (records.length > 1) {
						Ext.example.msg("系统提示", "<b>" + "请勾选一条多选框内容" + "</b>");
					} else {
						var userPk = records[0].get('userPk');
						win = new Ext.Window(
								{
									layout : 'border',
									title : '查看登录用户信息--网页对话框',
									autoDestroy : true,
									width : 540,
									height : 220,
									plain : true,
									modal : true,
									iconCls : 'bogus',
									resizable : false,
									closable : true,
									items : [ {
										layout : 'fit',
										region : 'center',
										xtype : 'panel',
										plugins : [ new Ext.ux.Plugin.RemoteComponent(
												{
													url : '<%=local %>/system/user/view_page.ods?userPk=' + userPk,
													method : 'post'
												}) ]
									} ]
								})
						win.show();
					}
				}
			}
		} ]
	}