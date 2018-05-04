<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.ods.util.hibernate.query.QueryPageJavaBean"%>
<%@ page import="com.ods.util.resource.ResourceUtil"%>
<%@ page import="com.ods.util.type.StringUtil"%>
<% 
  String local = request.getContextPath(); 
%>
{
		frame: true,
		layout: 'column',
		region: 'north',
		xtype: 'form',
		labelWidth: 70,
		height: 38,
		labelAlign: 'right',
		border: false,
		items: [{
			layout: 'form',
			columnWidth: .4,
			border: false,
			items: [{
				name: 'subjectClassName',
				fieldLabel: '名称',
				anchor: '90%',
				xtype: 'textfield',
				maxLength: 50
			}]
		},{
			layout: 'form',
			columnWidth: .15,
			border: false,
			items: [{
				xtype: 'button',
				width: 45,
				text: '查询',
				handler: function(btn){
					var form = btn.findParentByType('form');
					var store = form.findParentByType('panel').findByType('ods.grid')[0].getStore();
					Ext.apply(store.baseParams, form.getForm().getValues());
					store.load();
				}
			}]
		}]
	},{
		region : 'center',
		xtype : 'ods.grid',
		pagesize : 10,
		initload: false,
		sm : new Ext.grid.CheckboxSelectionModel({
			singleSelect: true
		}),
		viewConfig : {
			forceFit : true
		},
		border : false,
		store : new Ext.data.Store( {
			url : '<%=local %>/search/result/list_info.ods',
			reader : new Ext.data.JsonReader({
				root : 'records',
				totalProperty : 'total'
			},[
				"searchResultPk","contractPk","searchResultName","author","company","source","issn"
                ,"resultAbstract","keyword","resultClass","retain1","retain2","retain3","retain4","retain5","retain6"
                ,"retain7","orderNo","memo","createOrgPk","createUserPk","createTime","deleteType"
			])
			,baseParams : {iskeyword: 0}
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
		,listeners:{
			rowdblclick:function(grid){
			var records=grid.getSelectionModel().getSelections();
			new Ext.Window(
			{
				layout: 'border', title: '查看检索结果--网页对话框', autoDestroy: true, width: 750, height: 450,
				plain: true, modal: true, iconCls: 'bogus', resizable: false, maximizable : true,
				items : [
				{
				layout : 'fit', region : 'center', xtype : 'panel',
			        plugins : [ new Ext.ux.Plugin.RemoteComponent(
				{
					url : '<%=local %>/search/result/view_page.ods',
					params : {
					searchResultPk : records[0].get('searchResultPk'),
				},
				method : 'post'
				})]
				}]}).show();
			}
			}
		
		,
		tbar: [
		{
		
			text : '新增',
			iconCls : 'x-icon-add',
			id: 'leavelog_add_btn',
			tooltip : '新的检索结果记录',
			handler : function(btn) {
		
				var grid = btn.findParentByType('ods.grid');
				var three_grid = btn.findParentByType('ods.grid').findParentByType('panel').findParentByType('panel').findParentByType('panel').findByType('ods.grid')[0];
				if (typeof (three_grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选合同多选框内容" + "</b>");
				} else {
					var records = three_grid.getSelectionModel().getSelections();
					var mainDiaryPk = records[0].get('mainDiaryPk');
					if (records.length > 1) {
						Ext.example.msg("系统提示", "<b>" + "请勾选一条多选框内容" + "</b>");
					} else {
						win = new Ext.Window( {
							layout : 'border',
							title : '新的检索结果信息--网页对话框',
							store : grid.store,
							autoDestroy : true,
							width : 750,
							height : 450,
							plain : true,
							modal : true,
							iconCls : 'bogus',
							resizable : false,
							closable : true,
							items : [ {
								layout : 'fit',
								region : 'center',
								xtype : 'panel',
								plugins : [ new Ext.ux.Plugin.RemoteComponent( {
									url : '<%=local %>/jsp/data/searchresult/searchresult_add.jsp',
									params:{
										'contractPk' : grid.store.baseParams['contractPk']
									},
									method : 'post'
								}) ]
							} ]
						})
						win.show();
					}
				}
				
			}
		}
		,'-',
		
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
    , '-',
     {
      text: '修改', tooltip: '修改选中的检索结果记录', iconCls: 'x-icon-edit', handler: function(btn)
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
            var searchResultPk=records[0].get('searchResultPk');
            win=new Ext.Window(
            {
              layout: 'border', title: '修改选中的检索结果记录--网页对话框', store: grid.store, autoDestroy: true, width: 750, height: 450, plain: true, modal: true, iconCls: 'bogus', resizable: false, closable: true, items: [
              {
                layout: 'fit', region: 'center', xtype: 'panel', plugins: [new Ext.ux.Plugin.RemoteComponent(
                {
                  url: '<%=local %>/search/result/modify_page.ods', method: 'post', params:
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
    , '-',
		{
			text : '删除',
			tooltip : '删除选中的检索分类',
			iconCls : 'x-icon-delete',
			handler : function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
				    var searchResultPks=[];
				    var searchResultNames=[]; 
				    for(var i=0;i < records.length;i++){
        				searchResultPks.push("'"+records[i].get('searchResultPk')+"'");
					    searchResultNames.push(records[i].get('searchResultName'));
				    } 
					if (Ext.Msg.confirm("系统提示",'确定删除检索结果：' + searchResultNames + '吗？',
						function(v) {
							if (v == "yes") {
								Ext.Ajax.request( {
									url : '<%=local %>/search/result/delete_info.ods',
									success : function(response) {
										var responseText = Ext.util.JSON.decode(response.responseText);
										Ext.example.msg('系统提示',responseText.msg);
										grid.store.load();
									},
									params : {
										'searchResult.searchResultPks' : searchResultPks,
										deleteType:1
									}
								});
							}
							var pwin = btn.findParentByType('window');
							if (pwin) {
								pwin.show();
							}
						}));
				}
			}
		}
		 , '-',
		{
			text : '排序',
			tooltip : '排序',
			iconCls : 'x-icon-view',
			handler : function(btn) {
				
				var grid = btn.findParentByType('ods.grid');
				var three_grid = btn.findParentByType('ods.grid').findParentByType('panel').findParentByType('panel').findParentByType('panel').findByType('ods.grid')[0];
				
				if (typeof (three_grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选合同多选框内容" + "</b>");
				} else {
					
								Ext.Ajax.request( {
									url : '<%=local %>/search/result/order_info.ods',
									success : function(response) {
										var responseText = Ext.util.JSON.decode(response.responseText);
										Ext.example.msg('系统提示',responseText.msg);
										grid.store.load();
									},
									params : {
										'contractPk' : grid.store.baseParams['contractPk']
									}
								});
							
							
						
				
			}
		}
		}
		
		, '-',
				{
					text: '导入', iconCls: 'x-icon-checkUp', 
					handler: function(btn){
					var grid = btn.findParentByType('ods.grid');
				
					var three_grid = btn.findParentByType('ods.grid').findParentByType('panel').findParentByType('panel').findParentByType('panel').findByType('ods.grid')[0];
					if (typeof (three_grid.getSelectionModel().getSelected()) == 'undefined') {
						Ext.example.msg("系统提示", "<b>" + "请勾选合同多选框内容" + "</b>");
					} else {
							var win=new Ext.Window({
								layout: 'border', title: '检索结果信息导入--网页对话框', autoDestroy: true, width: 760, height: 500, 
								plain: true, modal: true, iconCls: 'bogus',resizable: true, 
								items: [{
									layout: 'fit', region: 'center',xtype: 'panel', 
							plugins : [ new Ext.ux.Plugin.RemoteComponent(
							{
								url : '<%=local %>/execlfile/importinfo/index_page.ods?execlFileImportTypeId=searchResultImportId&contractPk='+ grid.store.baseParams['contractPk'],
									    method : 'post',
									    params : {
											'contractPk' : grid.store.baseParams['contractPk']
										}
									   }) ]
								}]
								,listeners:{
									close: function(src){
										grid.store.load();
									}
								}
							}
							);
							win.show();
							}
					}
				}
		
		
		]
	}
