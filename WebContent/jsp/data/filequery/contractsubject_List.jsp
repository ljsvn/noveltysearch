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
<% String local = request.getContextPath(); %>
	{
		frame : true,
		layout : 'column',
		region : 'north',
		xtype : 'form',
		height : 38,
		labelWidth: 60,
		labelAlign : 'right',
		border : false,
		items : [
				
				{
					layout : 'form',
					columnWidth : .188,
					border : false,
					items : [ {
						name : 'subjectClassName',
						fieldLabel : '名称',
						anchor : '95%',
						xtype : 'textfield',
						maxLength : 50
					} ]
				},
				{
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
		initload: false, 
		sm : new Ext.grid.CheckboxSelectionModel(),
		viewConfig : {
			forceFit : true
		},
		border : false,
		store : new Ext.data.Store( {
			url : '<%=local %>/confirem/list_info.ods',
			reader : new Ext.data.JsonReader( {
				root : 'records',
				totalProperty : 'total'
			}, 
			[
			    "contractSubjectPk","subjectClassPk","subjectClassName","aliasName1","aliasName2",
                "aliasName3","subjectClassEname","aliasEname1","aliasEname2","aliasEname3","aliasEname4",
                "aliasEname5","retain1","retain2","isKeyWord","orderNo","memo","createOrgPk","createUserPk",
                "createTime","deleteType"
            ])
		}),
		columns : [
				new Ext.grid.CheckboxSelectionModel(),
				new Ext.grid.RowNumberer(),
				{header : '名称',		sortable:true,		dataIndex : 'subjectClassName'},
				{header : '排序号',	sortable:true,		dataIndex : 'orderNo'},
				{header: '创建时间', sortable: true, dataIndex: "createTime"}
		]
		,tbar:[
		{
      text: '查 看', tooltip: '查看选中的检索主题分类', iconCls: 'x-icon-view', handler: function(btn)
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
            var contractSubjectPk=records[0].get('contractSubjectPk');
            
            win=new Ext.Window(
            {
              layout: 'border', title: '查看选中的检索主题分类--网页对话框'
                , store: grid.store
              , autoDestroy: true
              , width: 680, height: 520
              , plain: true, modal: true, iconCls: 'bogus', resizable: false, closable: true, items: [
              {
                layout: 'fit', region: 'center', xtype: 'panel', plugins: [new Ext.ux.Plugin.RemoteComponent(
                {
                  url: '<%=local %>/confirem/view_page.ods', method: 'post', params:
                  {
                    'contractSubjectPk': contractSubjectPk
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
