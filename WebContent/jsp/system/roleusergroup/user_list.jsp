<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.ods.util.hibernate.query.QueryPageJavaBean"%>
<%@ page import="com.ods.util.resource.ResourceUtil"%>
<%@page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>
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
						name : 'queryUserLoginName',
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
						name : 'queryUserRealname',
						fieldLabel : '员工姓名',
						anchor : '95%',
						xtype : 'textfield',
						maxLength : 50

					} ]

				},
				{
					layout : 'form',
					columnWidth : .25,
					border : false,
					items : [ {
						<%=DataDictionaryCommonAction.jsonCombo("queryUserDutyName","职务","100",local) %>

					} ]

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
							         ///***获取combox的显示值
							        //var index = form.getForm().findField('queryUserDutyName').getStore().find('dicCommonPk',form.getForm().findField('queryUserDutyName').getValue());
									//form.getForm().findField('queryUserDutyName').getStore().getAt(index).get('dicName');				
									var store = form.findParentByType('panel').findByType('ods.grid')[0].getStore();
									Ext.apply(store.baseParams, form.getForm().getValues());
									store.load();
							
							}
						}
					} ]
				} ]
	},
	{
		region : 'center',
		xtype : 'ods.grid',
		pagesize : 500,
		initload: false,
		sm : new Ext.grid.CheckboxSelectionModel(),
		viewConfig : {
			forceFit : true
		},
		border : false,
		store : new Ext.data.GroupingStore( {
			url : '<%=local %>/system/user/list_info.ods?limit=500',
			groupField:'userDutyName',
			reader : new Ext.data.JsonReader( {
				root : 'records',
				totalProperty : 'total'
			}, [ "userPk", "userNouserNo", "orgPk", "allOrgPk", "userTypePk", "userTypeName", "userPostPk",
                  "userPostName", "userMarriage", "userLevel", "userDutyPk", "userDutyName", "fatherUserPk", "userLoginName",
                  "userPassword", "userState", "userRealName", "userSex", "userPhone", "officeTele", "deleteType",
                  "createUserPk", "createTime" ])
		}),
		view: new Ext.grid.GroupingView({
            forceFit:true,
            groupTextTpl: '{text} ({[values.rs.length]} {[values.rs.length > 1 ? "Items" : "Item"]})'
        }),
		columns : [
			{header: '登录名', sortable: true, dataIndex: "userLoginName"},
			{header: '警号', sortable: true, dataIndex: "userSex"},
			{header: '姓名', sortable: true, dataIndex: "userRealName"},
			{header: '性别', sortable: true, dataIndex: "userMaritalStatus",
				renderer: function(value){
					return value==0?'男': '女';
				}
			},
			{header: '职务', sortable: true, dataIndex: "userDutyName"}
		]
		,tbar:[
		{
			text : '批量授权',
			iconCls : 'x-icon-vcardEdit',
			id : 'user_role_accredit',
			tooltip : '修改用户权限信息',
			handler : function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
					if (records.length > 0) {
					    var userPks = [];
					    var userLoginNames = [];
					    for(var i = 0; i < records.length;i++){
					    
						  userPks[i] = records[i].get('userPk');
						  userLoginNames[i] = records[i].get('userLoginName');
					    }
						win = new Ext.Window(
								{
									layout : 'border',
									title : '用户授权信息--网页对话框',
									store : grid.store,
									autoDestroy : true,
									width : 750,
									height : 550,
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
													url : '<%=local %>/system/roleusergroup/multi_accredit_page.ods',
													method : 'post',
													params:{
									                	'userPks': userPks,
									                	'userLoginNames': userLoginNames
								              		}
												}) ]
									} ]
								})
						win.show();
					}
				}
			}
		},
		'-',{
			text : '授权',
			iconCls : 'x-icon-view',
			id : 'user_role_view',
			tooltip : '授权查看信息',
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
									title : '授权查看--网页对话框',
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
													url : '<%=local %>/system/roleusergroup/accredit_page.ods?userPk=' + userPk,
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