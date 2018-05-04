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
	url : '<%=local %>/retrieval/database/add_info.ods',
	successAfter : function(f) {
		var win=this.findParentByType('window');
		win.store.load();
		win.store=null;
		win.close();
	},
	items : [
	{
	
			columnWidth: 2,
			items:[
			{
				layout : 'table',
				items:[
				{
					layout : 'form',
					width: 600,
					items :[
					{
						//allowBlank : false,
						name : 'retrievalDatabase.retrievalDatabaseName',
						anchor : '90%',
						xtype : 'textfield',
						fieldLabel : '名称',
						readOnly : true
					} 
					]
				},{
					
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
								title : '选择检索数据库信息--网页对话框',
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
										url : '<%=local %>/search/database/select_list.ods',
										params:{
											retrievalDatabaseName: 'retrievalDatabase.retrievalDatabaseName',
											url: 'retrievalDatabase.url',
											ageLimit: 'retrievalDatabase.ageLimit'
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
			]
			
	}
	,
	{
        allowBlank: false
		, name: 'retrievalDatabase.url'
		, fieldLabel: 'URL'
		, anchor: '90%'
		, xtype: 'textfield'
		, tabIndex:2
	}
	,
	{
			layout: 'table',rowspan: 4, items: [
			{
				layout: 'form', width: 350, items: [
			
				{
					allowBlank: false
					, name: 'retrievalDatabase.ageLimit'
					, fieldLabel: '年限'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 3
				}
				
				]
			}
			,
			{
				layout: 'form', width: 350, items: [
				{
					  name: 'retrievalDatabase.orderNo'
					, fieldLabel: '排列顺序'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 4
					
				}
				
				]
			}
			]
		
	}
	
	,
	{
	  name: 'retrievalDatabase.searchStrategy'
	  , value: '${retrievalDatabase.searchStrategy}'
	  , anchor: '95%', xtype: 'textarea', maxLength: 256, fieldLabel: '检索策略', height: 150
	  , tabIndex: 9
	}
	,
	{
	  name: 'retrievalDatabase.memo'
	  , value: '${retrievalDatabase.memo}'
	  , anchor: '95%', xtype: 'textarea', maxLength: 256, fieldLabel: '备注', height: 60
	  , tabIndex: 12
	}
	,{
		name : 'retrievalDatabase.contractPk',
		value : '<%=request.getParameter("contractPk") %>',
		xtype :'hidden'
	}
	],
	xbuttons : [ {

		text : '保存',
		iconCls: 'form_save',
		xbutton : 'this.submitXForm'
	}, {

		text : '重置',
		iconCls: 'form_reset',
		handler : function(btn) {
			var form = btn.findParentByType('ods.formpanel').getForm();
			form.reset();
			form.findField('userInfo.infoName').focus(true);
		}
	}, {

		text : '关闭',
		iconCls: 'from_exit',
		handler : function(btn) {
			btn.findParentByType('window').close();
		}
	} ]

}
