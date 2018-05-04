<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.ods.util.resource.ResourceUtil"%>
<%@page import="java.util.List"%>
<%@page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>
<% String local = request.getContextPath(); %>
{	
	frame : true,
	xtype : 'ods.formpanel',
	border : false,
	labelWidth : 80,
	buttonAlign : 'center',
	labelAlign : 'right',
	autoScroll : true,
	bodyStyle : 'padding-top:10px',
	url : '<%=local %>/system/userrole/accredit_info.ods',
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
				title : '1:登录用户基本信息 ',
				defaults : {
					columnWidth : .5,
					layout : 'form'
				},
				items : [ {
					xtype : 'panel',
					items : [ 
						{
							allowBlank : false,
							name : 'user.userLoginName',
							value : '${user.userLoginName }',
							fieldLabel : '工号(登录名)',
							anchor : '90%',
							xtype : 'textfield',
							readOnly : true
						},{
							allowBlank : false,
							name : 'user.userSex',
							value : '${user.userSex }',
							fieldLabel : '性别',
							anchor : '90%',
							xtype : 'textfield',
							readOnly : true
						},{
							allowBlank : false,
							name : 'user.createTime',
							value : '${user.createTime }',
							fieldLabel : '注册时间',
							anchor : '90%',
							xtype : 'textfield',
							readOnly : true
						}
					]
				},{
					xtype : 'panel',
					items : [ 
						{
							allowBlank : false,
							name : 'user.userRealName',
							value : '${user.userRealName }',
							fieldLabel : '姓名',
							anchor : '90%',
							xtype : 'textfield',
							readOnly : true
						},{
							name : 'user.userDutyName',
							value : '${user.userDutyName }',
							fieldLabel : '职务',
							anchor : '90%',
							xtype : 'textfield',
							readOnly : true
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

			}, {
				name : 'userPk',
				value : '<%=request.getParameter("userPk") %>',
				xtype :'hidden'
			} ]

		} ],
	xbuttons : [ {

		text : '保存',
		iconCls: 'form_save',
		xbutton : 'this.submitXForm'
	},{

		text : '关闭',
		iconCls: 'from_exit',
		handler : function(btn) {
			btn.findParentByType('window').close();
		}
	}
	]
}