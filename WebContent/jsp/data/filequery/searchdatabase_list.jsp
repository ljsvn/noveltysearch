<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.ods.util.action.ActionView"%>
<% 
String local = request.getContextPath();
ActionView actionView = new ActionView();
%>
{
	layout:'border',items:[
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
					columnWidth : .22,
					border : false,
					items : [ {
						name : 'searchResultName',
						fieldLabel : '名称',
						anchor : '90%',
						xtype : 'textfield'
					} ]
				},{
					layout : 'form',
					columnWidth : .06,
					border : false,
					items : [
					{
						xtype : 'button',
						width: 50,
						text : '查询',
						handler : function(btn) {
							var form = btn.findParentByType('form');
							var store = form.findParentByType('panel').findByType('ods.grid')[0].getStore();
							Ext.apply(store.baseParams, form.getForm().getValues());
							store.load();
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
					url : '<%=local %>/search/result/list_info.ods',
					reader : new Ext.data.JsonReader( {
						root : 'records',
						totalProperty : 'total'
					}, 
					[
						"searchResultPk","contractPk","searchResultName","author","company","source","issn"
			                ,"resultAbstract","keyword","resultClass","retain1","retain2","retain3","retain4","retain5","retain6"
			                ,"retain7","orderNo","memo","createOrgPk","createUserPk","createTime","deleteType"
                    ]),
                    baseParams:{
                    	contractPk: contractPk
                    }
				}),
				columns : [
						new Ext.grid.CheckboxSelectionModel(),
						new Ext.grid.RowNumberer(),
						{header : '题目',		sortable:true,		dataIndex : 'searchResultName'},
						{header : '作者',		sortable:true,		dataIndex : 'author'},
						{header : '分类',		sortable:true,		dataIndex : 'resultClass'},
						{header : '相似度',		sortable:true,		dataIndex : 'retain7'},
						{header : '排序号',	    sortable:true,		dataIndex : 'orderNo'},
						{header: '创建时间',    sortable: true,      dataIndex: 'createTime'}
				]
				,tbar:[
				{
      text: '查 看', tooltip: '查看选中的检索结果', iconCls: 'x-icon-view', handler: function(btn)
      {
        var grid=btn.findParentByType('ods.grid');
        if (typeof(grid.getSelectionModel().getSelected()) == 'undefined')
        {
          Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
        }
        else
        {
          var records=grid.getSelectionModel().getSelections();
          if (records.length>1)
          {
            Ext.example.msg("系统提示", "<b>" + "请勾选一条多选框内容" + "</b>");
          }
          else
          {
            var records=grid.getSelectionModel().getSelections();
            var searchResultPk=records[0].get('searchResultPk');
            win=new Ext.Window(
            {
              layout: 'border', title: '查看选中的检索结果--网页对话框'
                , store: grid.store
              , autoDestroy: true
              , width: 750, height: 450
              , plain: true, modal: true, iconCls: 'bogus', resizable: false, closable: true, items: [
              {
                layout: 'fit', region: 'center', xtype: 'panel', plugins: [new Ext.ux.Plugin.RemoteComponent(
                {
                  url: '<%=local %>/search/result/view_page.ods', method: 'post', params:
                  {
                    'searchResultPk': searchResultPk
                  }
                }
                )]
              }
              ]
            });win.show();
          }
        }
      }
    }
				]
			} 
		]
	}