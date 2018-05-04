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
<%
String userPk=request.getParameter("userPk"); 
String orgPk=request.getParameter("orgPk"); 
String userName=request.getParameter("userName"); 
String orgName=request.getParameter("orgName");
String local = request.getContextPath();
%>
{
	layout : 'border',
	xtype : 'panel',
	items : [
			{
				frame : true,
				layout : 'column',
				region : 'north',
				xtype : 'form',
				height : 38,
				labelAlign : 'right',
				border : false,
				items : [
						{
							layout : 'form',
							columnWidth : .4,
							border : false,
							items : [ {
								name : 'queryUserName',
								value : '',
								fieldLabel : '登录名',
								anchor : '95%',
								xtype : 'textfield',
								selectOnFocus : true,
								listeners : {
									'render' : function(c) {
										c.focus(true, true);
									}
								},
								emptyText : '请输入登录名',
								maxLength : 50

							} ]

						},
						{
							layout : 'form',
							columnWidth : .4,
							border : false,
							items : [ {
								name : 'queryUserRealname',
								value : '',
								fieldLabel : '用户姓名',
								anchor : '95%',
								xtype : 'textfield',
								emptyText : '请输入用户姓名',
								maxLength : 50

							} ]

						},
						{
							layout : 'fit',
							columnWidth : .1,
							border : false,
							items : [

							{
								xtype : 'button',
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
				sm : new Ext.grid.CheckboxSelectionModel(),
				viewConfig : {
					forceFit : true
				},
				border : false,
				store : new Ext.data.Store( {
					url : '<%=local %>/system/user/userOrgSelectList.ods',
					reader : new Ext.data.JsonReader( {
						root : 'records',
						totalProperty : 'total'
					}, [ 'userPk','orgPk','userNo','userLoginName','userRealname','userSex','userState','orgWardNo','orgPoliceTeam','orgName','createTime'])
				}),
				columns : [
						new Ext.grid.CheckboxSelectionModel(),
						new Ext.grid.RowNumberer() ,
						{
							header : '组织单位名称',
							sortable : true,
							dataIndex : "orgName"
						},
						new Ext.grid.RowNumberer() ,
						{
							header : '用户姓名',
							sortable : true,
							dataIndex : "userRealname"
						} 
						,
						{
							header : '性别 ',
							sortable : true,
							dataIndex : "userSex",
							renderer : function(value) {
								return value == 1 ? '男' : '女';
							}
						}

						,
						{
							header : '使用状态',
							sortable : true,
							dataIndex : "userState",
							renderer : function(value) {
								return value == 1 ? '禁用' : '启用';
							}
						} 

				] 
				,tbar:[
				{
					text : '选择',
					iconCls : 'x-icon-select',
					tooltip : '选择一个用户' ,
					handler : function(btn) {
					 var grid = btn.findParentByType('ods.grid');
						if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') { 
							Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
						}  else {
						var records = grid.getSelectionModel().getSelections();
							if (records.length > 1) {
								Ext.example.msg("系统提示", "<b>" + "请勾选一条多选框内容" + "</b>");
							} else {
								var userPk = records[0].get('userPk');
								var orgPk = records[0].get('orgPk');
								var userRealname = records[0].get('userRealname'); 
								var orgName = records[0].get('orgName'); 
								<%if(!StringUtil.empty(userPk)){ %>
								grid.findParentByType('window').form.findField('<%=userPk%>')
					                             .setValue(userPk );
								<%} %>
								<%if(!StringUtil.empty(orgPk)){ %>
								grid.findParentByType('window').form.findField('<%=orgPk%>')
					                             .setValue(orgPk);
								<%} %>
								<%if(!StringUtil.empty(userName)){ %>
			                    grid.findParentByType('window').form.findField('<%=userName%>')
					            .setValue(userRealname);
								<%} %> 
								<%if(!StringUtil.empty(orgName)){ %>
								grid.findParentByType('window').form.findField('<%=orgName%>')
					                             .setValue(orgName );
								<%} %> 
			                    grid.findParentByType('window').close();
							}
						}
					}
				}
			   ]
			} ]
}