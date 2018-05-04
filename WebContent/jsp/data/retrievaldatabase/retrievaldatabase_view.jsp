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
			layout: 'table',rowspan: 4, items: [
			{
				layout: 'form', width: 350, items: [
			
				{
					allowBlank: false
					, name: 'retrievalDatabase.retrievalDatabaseName'
					, value: '${retrievalDatabase.retrievalDatabaseName}'
					, fieldLabel: '名称'
					, anchor: '90%'
					, xtype: 'textfield'
					, disabled : true
					, tabIndex: 1
				}
				,
				{
					allowBlank: false
					, name: 'retrievalDatabase.ageLimit'
					, value: '${retrievalDatabase.ageLimit}'
					, fieldLabel: '年限'
					, anchor: '90%'
					, xtype: 'datefield'
					, format: 'Y-m-d'
					, disabled : true
					, tabIndex: 3
				}
				
				]
			}
			,
			{
				layout: 'form', width: 350, items: [
				{
					allowBlank: false
					, name: 'retrievalDatabase.url'
					, value: '${retrievalDatabase.url}'
					, fieldLabel: 'URL'
					, anchor: '90%'
					, xtype: 'textfield'
					, disabled : true
					, tabIndex:2
				}
				,
				{
					  name: 'retrievalDatabase.orderNo'
					, fieldLabel: '排列顺序'
					, value: '${retrievalDatabase.orderNo}'
					, anchor: '90%'
					, xtype: 'textfield'
					, disabled : true
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
	  , disabled : true
	  , tabIndex: 9
	}
	,
	{
	  name: 'retrievalDatabase.memo'
	  , value: '${retrievalDatabase.memo}'
	  , anchor: '95%', xtype: 'textarea', maxLength: 256, fieldLabel: '备注', height: 60
	  , disabled : true
	  , tabIndex: 12
	}
	,{
		name : 'retrievalDatabase.contractPk',
		value : '${retrievalDatabase.contractPk}',
		xtype :'hidden'
	}
	
	            ,{
					name: 'retrievalDatabase.retrievalDatabasePk', value: '${retrievalDatabase.retrievalDatabasePk }', xtype: 'hidden'
				}
				,
				{
					name: 'retrievalDatabase.createOrgPk', value: '${retrievalDatabase.createOrgPk }', xtype: 'hidden'
				}
				,
				{
					name: 'retrievalDatabase.createUserPk', value: '${retrievalDatabase.createUserPk }', xtype: 'hidden'
				}
				,
				{
					name: 'retrievalDatabase.createTime', value: '${retrievalDatabase.createTime }', xtype: 'hidden'
				}
				,
				{
					name: 'retrievalDatabase.deleteType', value: '${retrievalDatabase.deleteType }', xtype: 'hidden'
				}
	],
	xbuttons : [ {

		text : '关闭',
		iconCls: 'from_exit',
		handler : function(btn) {
			btn.findParentByType('window').close();
		}
	} ]

}
