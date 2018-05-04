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
	url : '<%=local %>/search/result/add_info.ods',
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
					, name: 'searchResult.searchResultName'
					, fieldLabel: '题目'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 1
				}
				,
				{
					allowBlank: false
					, name: 'searchResult.company'
					, fieldLabel: '机构'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 3
				}
				,
				{
					 name: 'searchResult.orderNo'
					, fieldLabel: '排列顺序'
					, anchor: '90%'
					, xtype: 'numberfield'
					, tabIndex: 5
				}
				
				]
			}
			,
			{
				layout: 'form', width: 350, items: [
				{
					allowBlank: false
					, name: 'searchResult.author'
					, fieldLabel: '作者'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex:2
				}
				,
				{
					  name: 'searchResult.issn'
					, fieldLabel: 'ISSN'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 4
					
				}
				,
				{
					<%=DataDictionaryCommonAction.jsonCombo("searchResult.resultClass", "分类", "65", local)%>
				    , anchor: '90%'
				    , emptyText:'请选择....'
				    , allowBlank: false
				    , tabIndex: 6
				    
				}
				]
			}
			]
		
	}
	,{
		name : 'searchResult.resultAbstract',
		anchor : '95%',
		xtype : 'textfield',
		fieldLabel : '摘要',
		allowBlank : true
		, tabIndex: 7
	}
	,
	{
	  name: 'searchResult.source'
	  , value: '${searchResult.source}'
	  , anchor: '95%', xtype: 'textarea', maxLength: 256, fieldLabel: '来源', height: 60
	  , tabIndex: 8
	}
	,
	{
	  name: 'searchResult.keyword'
	  , value: '${searchResult.keyword}'
	  , anchor: '95%', xtype: 'textarea', maxLength: 256, fieldLabel: '主题词', height: 60
	  , tabIndex: 9
	}
	,{
		name : 'searchResult.retain1',
		anchor : '95%',
		xtype : 'textfield',
		fieldLabel : '保留1'
		
		, tabIndex: 10
	}
	,{
		name : 'searchResult.retain2',
		anchor : '95%',
		xtype : 'textfield',
		fieldLabel : '保留2'
		, tabIndex: 11
		
	}
	,
	{
	  name: 'searchResult.memo'
	  , value: '${searchResult.memo}'
	  , anchor: '95%', xtype: 'textarea', maxLength: 256, fieldLabel: '备注', height: 60
	  , tabIndex: 12
	}
	,{
		name : 'searchResult.contractPk',
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
