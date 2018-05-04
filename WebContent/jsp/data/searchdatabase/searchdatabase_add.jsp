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
	url : '<%=local %>/search/database/add_info.ods',
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
				layout: 'form', width: 440, items: [
			
				{
					allowBlank: false
					, name: 'searchDatabase.searchDatabaseName'
					, fieldLabel: '名称'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 1
				}
				,
				{
					allowBlank: false
					, name: 'searchDatabase.ageLimit'
					, fieldLabel: '年限'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 3
				}
				
				]
			}
			,
			{
				layout: 'form', width: 440, items: [
				{
					allowBlank: false
					, name: 'searchDatabase.url'
					, fieldLabel: '网址'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex:2
				}
				,
				{
					  name: 'searchDatabase.orderNo'
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
	  name: 'searchDatabase.memo'
	  , value: '${searchDatabase.memo}'
	  , anchor: '95%', xtype: 'textarea', maxLength: 256, fieldLabel: '备注', height: 60
	  , tabIndex: 12
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
