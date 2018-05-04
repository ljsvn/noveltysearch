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
					, value: '${searchResult.searchResultName}'
					, fieldLabel: '题目'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 1
					, disabled : true
				}
				,
				{
					allowBlank: false
					, name: 'searchResult.company'
					, value: '${searchResult.company}'
					, fieldLabel: '机构'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 3
					, disabled : true
				}
				,
				{
					 name: 'searchResult.resultAbstract'
					, value: '${searchResult.resultAbstract}'
					, fieldLabel: '摘要'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 5
					, disabled : true
				}
				
				]
			}
			,
			{
				layout: 'form', width: 350, items: [
				{
					allowBlank: false
					, name: 'searchResult.author'
					, value: '${searchResult.author}'
					, fieldLabel: '作者'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 2
					, disabled : true
				}
				,
				{
					  name: 'searchResult.issn'
					, value: '${searchResult.issn}'
					, fieldLabel: 'ISSN'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 4
					, disabled : true
				}
				,
				{
					<%=DataDictionaryCommonAction.jsonCombo("searchResult.resultClass", "分类", "65", local)%>
					, value: '${searchResult.resultClass}'
				    , anchor: '90%'
				    , emptyText:'请选择....'
				    , tabIndex: 6
				    , disabled : true
				}
				]
			}
			]
		
	}
	,{
		name : 'searchResult.orderNo',
		value: '${searchResult.orderNo}',
		value : '1',
		anchor : '95%',
		xtype : 'numberfield',
		fieldLabel : '排列顺序',
		allowBlank : true, 
		decimalPrecision: 0
	  , tabIndex: 7
	  , disabled : true
	}
	,
	{
	  name: 'searchResult.source'
	  , value: '${searchResult.source}'
	  , anchor: '95%', xtype: 'textarea', maxLength: 256, fieldLabel: '来源', height: 60
	  , tabIndex: 8
	  , disabled : true
	}
	,
	{
	  name: 'searchResult.keyword'
	  , value: '${searchResult.keyword}'
	  , anchor: '95%', xtype: 'textarea', maxLength: 256, fieldLabel: '主题词', height: 60
	  , tabIndex: 9
	  , disabled : true
	}
	,{
		name : 'searchResult.retain1',
		value: '${searchResult.retain1}',
		anchor : '95%',
		xtype : 'textfield',
		fieldLabel : '保留1'
		, disabled : true
	}
	,{
		name : 'searchResult.retain2',
		value: '${searchResult.retain2}',
		anchor : '95%',
		xtype : 'textfield',
		fieldLabel : '保留2'
		, disabled : true
	}
	,
	{
	  name: 'searchResult.memo'
	  , value: '${searchResult.memo}'
	  , anchor: '95%', xtype: 'textarea', maxLength: 256, fieldLabel: '备注', height: 60
	  , tabIndex: 12
	  , disabled : true
	}
	,{
		name : 'searchResult.contractPk',
		value : '${searchResult.contractPk}',
		xtype :'hidden'
	}
	            ,{
					name: 'searchResult.searchResultPk', value: '${searchResult.searchResultPk }', xtype: 'hidden'
				}
				,
				{
					name: 'searchResult.createOrgPk', value: '${searchResult.createOrgPk }', xtype: 'hidden'
				}
				,
				{
					name: 'searchResult.createUserPk', value: '${searchResult.createUserPk }', xtype: 'hidden'
				}
				,
				{
					name: 'searchResult.createTime', value: '${searchResult.createTime }', xtype: 'hidden'
				}
				,
				{
					name: 'searchResult.deleteType', value: '${searchResult.deleteType }', xtype: 'hidden'
				}
	],
	xbuttons : [  {

		text : '关闭',
		iconCls: 'from_exit',
		handler : function(btn) {
			btn.findParentByType('window').close();
		}
	} ]

}
