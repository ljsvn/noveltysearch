<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.ods.util.resource.ResourceUtil"%>
<%@page import="java.util.List"%>
<%@page import="com.ods.util.type.StringUtil" %>
<%@page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>
<% String local = request.getContextPath();
   String[] userPks = (String[])request.getAttribute("userPks");
   String tempUserPks ="";
   for(String s :userPks ){
	   tempUserPks+=s+"|";
   }
%>
{	
	frame : true,
	xtype : 'ods.formpanel',
	border : false,
	labelWidth : 80,
	buttonAlign : 'center',
	labelAlign : 'right',
	autoScroll : true,
	bodyStyle : 'padding-top:10px',
	url : '<%=local %>/system/roleusergroup/multi_accredit_info.ods',
	successAfter : function(f) {
		var win = this.findParentByType('window');
		win.store.load();
		win.store = null;
		win.close();
	},
	items : [
			{
				layout : 'column',
				xtype : 'fieldset',
				autoHeight : true,
				collapsible : true,
				title : '1:待授权用户信息 ',
				defaults : {
					columnWidth : 1,
					layout : 'form'
				},
				items : [ {
					xtype : 'panel',
					items : [ 
						{
							xtype : 'ods.grid',
							pagesize : 100,
							initload: true,
							height:150,
							sm : new Ext.grid.CheckboxSelectionModel(),
							viewConfig : {
								forceFit : true
							},
							border : true,
							store : new Ext.data.Store( {
								url : '<%=local %>/system/roleusergroup/user_select_list_info.ods?limit=100',
								baseParams : {
									tempUserPks : '<%=tempUserPks %>'
								},
								reader : new Ext.data.JsonReader( {
									root : 'records',
									totalProperty : 'total'
								}, [ "userPk", "userNouserNo", "orgPk", "allOrgPk", "userTypePk", "userTypeName", "userPostPk",
					                  "userPostName", "userMarriage", "userLevel", "userDutyPk", "userDutyName", "fatherUserPk", "userLoginName",
					                  "userPassword", "userState", "userRealName", "userSex", "userPhone", "officeTele", "deleteType",
					                  "createUserPk", "createTime" ])
							}),
							columns : [
									new Ext.grid.RowNumberer()
									,{ header : '工号(登录名)',sortable : true,dataIndex : "userLoginName" }
									,{ header : '用户姓名',sortable : true,dataIndex : "userRealName" }
									,{ header : '性别',sortable : true,dataIndex : "userSex" }
									,{ header : '职务 ',sortable : true,dataIndex : "userDutyName" }
									,{ header : '使用状态',sortable : true,dataIndex : "userState",
										renderer : function(value) {
											return value == 1 ? '<span style="color:red">禁用</span>' : '启用';
										}
									}
									,{ header : '状态',sortable : true,dataIndex : "deleteType",
										renderer : function(value) {
											return value == 1 ? '<span style="color:red">已删除</span>'
													: '<span style="color:blue">正常</span>';
										}
									}
							]
						} 
					]
				}
			]
		},{
			xtype : 'fieldset',
			autoHeight : true,
			collapsible : true,
			bodyStyle : 'padding-left:80px',
			title : '2:权限角色 ',
			items : [
			{
				xtype : 'itemselector',
				hideLabel : true,
				name : 'userRoles',
				bodyStyle : 'background-color: white;',
				imagePath : '../image/itemselector/',
				multiselects : [ {
					height : 185,
					width : 282,
					legend : '未拥有的权限角色列表',
	                store: [
						<s:iterator value="#request.roleNo" id="role" status="stas">
						['${role.rolePk}','${role.roleName}']
						<s:if test="!#stas.last">,</s:if>
						</s:iterator>
					],
					displayField : 'text',
					valueField : 'value'
				}, {
					height : 185,
					width : 282,
					legend : '已拥有的权限角色 ',
	                store: new Ext.data.ArrayStore({
		                data:[
							<s:iterator value="#request.roleHave" id="role" status="stas">
							['${role.rolePk}','${role.roleName}']
							<s:if test="!#stas.last">,</s:if>
							</s:iterator>
							],
				        fields: ['value','text'],
				        sortInfo: {
				            field: 'value',
				            direction: 'ASC'
				        }
				    }),
					displayField : 'text',
					valueField : 'value'
				} ]

			},{
				name : 'userPks',
				value : '<%=tempUserPks %>',
				xtype : 'hidden'
			} ]

		} ],
	xbuttons : [ {

		text : '保存',
		iconCls: 'form_save',
		xbutton : 'this.submitXForm'
	}, {

		text : '关闭',
		iconCls: 'from_exit',
		handler : function(btn) {
			btn.findParentByType('window').close();
		}
	}
	]
}