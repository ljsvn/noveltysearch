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
				name: 'retrievalDatabaseName',
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
			url : '<%=local %>/retrieval/database/list_info.ods',
			reader : new Ext.data.JsonReader({
				root : 'records',
				totalProperty : 'total'
			},[
				"retrievalDatabasePk","contractPk","retrievalDatabaseName","url","ageLimit","searchStrategy"
                ,"retain1","retain2","orderNo","memo","createOrgPk","createUserPk","createTime","deleteType"
                
			])
			,baseParams : {iskeyword: 0}
		}),
		columns : [
			new Ext.grid.CheckboxSelectionModel(),
			new Ext.grid.RowNumberer(),
			{header : '名称',		sortable:true,		dataIndex : 'retrievalDatabaseName'},
			{header : 'URL',		sortable:true,		dataIndex : 'url'},
			{header : '年限',		sortable:true,		dataIndex : 'ageLimit'},
			{header : '排序号',	sortable:true,		dataIndex : 'orderNo'},
			{header: '创建时间', sortable: true, dataIndex: "createTime"}
		]
		,listeners:{
			rowdblclick:function(grid){
			var records=grid.getSelectionModel().getSelections();
			new Ext.Window(
			{
				layout: 'border', title: '查看检索数据库--网页对话框', autoDestroy: true, width: 750, height: 450,
				plain: true, modal: true, iconCls: 'bogus', resizable: false, maximizable : true,
				items : [
				{
				layout : 'fit', region : 'center', xtype : 'panel',
			        plugins : [ new Ext.ux.Plugin.RemoteComponent(
				{
					url : '<%=local %>/retrieval/database/view_page.ods',
					params : {
					retrievalDatabasePk : records[0].get('retrievalDatabasePk'),
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
			tooltip : '新的检索数据库记录',
			handler : function(btn) {
		
				var grid = btn.findParentByType('ods.grid');
				var three_grid = btn.findParentByType('ods.grid').findParentByType('panel').findParentByType('panel').findParentByType('panel').findByType('ods.grid')[0];
				if (typeof (three_grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选检索数据库多选框内容" + "</b>");
				} else {
					var records = three_grid.getSelectionModel().getSelections();
					var contractPk = records[0].get('contractPk');
					if (records.length > 1) {
						Ext.example.msg("系统提示", "<b>" + "请勾选一条多选框内容" + "</b>");
					} else {
						win = new Ext.Window( {
							layout : 'border',
							title : '新的检索数据库信息--网页对话框',
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
									url : '<%=local %>/jsp/data/retrievaldatabase/retrievaldatabase_add.jsp',
									params:{
										'contractPk' : contractPk
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
      text: '查 看', tooltip: '查看选中的检索数据库', iconCls: 'x-icon-view', handler: function(btn)
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
            var retrievalDatabasePk=records[0].get('retrievalDatabasePk');
            win=new Ext.Window(
            {
              layout: 'border', title: '查看选中的检索数据库--网页对话框'
                , store: grid.store
              , autoDestroy: true
              , width: 750, height: 450
              , plain: true, modal: true, iconCls: 'bogus', resizable: false, closable: true, items: [
              {
                layout: 'fit', region: 'center', xtype: 'panel', plugins: [new Ext.ux.Plugin.RemoteComponent(
                {
                  url: '<%=local %>/retrieval/database/view_page.ods', method: 'post', params:
                  {
                    'retrievalDatabasePk': retrievalDatabasePk
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
      text: '修改', tooltip: '修改选中的检索数据库记录', iconCls: 'x-icon-edit', handler: function(btn)
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
            var retrievalDatabasePk=records[0].get('retrievalDatabasePk');
            win=new Ext.Window(
            {
              layout: 'border', title: '修改选中的检索数据库记录--网页对话框', store: grid.store, autoDestroy: true, width: 750, height: 450, plain: true, modal: true, iconCls: 'bogus', resizable: false, closable: true, items: [
              {
                layout: 'fit', region: 'center', xtype: 'panel', plugins: [new Ext.ux.Plugin.RemoteComponent(
                {
                  url: '<%=local %>/retrieval/database/modify_page.ods', method: 'post', params:
                  {
                    'retrievalDatabasePk': retrievalDatabasePk
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
			tooltip : '删除选中的检索数据库',
			iconCls : 'x-icon-delete',
			handler : function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
				    var retrievalDatabasePks=[];
				    var retrievalDatabaseNames=[]; 
				    for(var i=0;i < records.length;i++){
        				retrievalDatabasePks.push("'"+records[i].get('retrievalDatabasePk')+"'");
					    retrievalDatabaseNames.push(records[i].get('retrievalDatabaseName'));
				    } 
					if (Ext.Msg.confirm("系统提示",'确定删除检索数据库：' + retrievalDatabaseNames + '吗？',
						function(v) {
							if (v == "yes") {
								Ext.Ajax.request( {
									url : '<%=local %>/retrieval/database/delete_info.ods',
									success : function(response) {
										var responseText = Ext.util.JSON.decode(response.responseText);
										Ext.example.msg('系统提示',responseText.msg);
										grid.store.load();
									},
									params : {
										'retrievalDatabase.retrievalDatabasePks' : retrievalDatabasePks,
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
		
		]
	}
