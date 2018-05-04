<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.ods.util.hibernate.query.QueryPageJavaBean"%>
<%@ page import="com.ods.util.resource.ResourceUtil"%>
<%@ page import="com.ods.util.type.StringUtil"%>
<% String local = request.getContextPath(); %>
{
	frame : true
	,layout : 'column'
	,region : 'north'
	,xtype : 'form'
	,height : 38
	,labelWidth: 80
	,labelAlign : 'right'
	,border : false
	,items: [
          {
       layout : 'form',  border : false,
			items : [{
				name : 'contractName', fieldLabel : '名称', anchor : '95%', xtype : 'textfield',
				listeners: {
					'render' : function(c) {
						c.focus(true, true);
			   		 }
				}
			}]
	}
	,{
		layout: 'form'
		,columnWidth: .15
		,border: false
		,items: [{
			xtype: 'button'
			,width: 45
			,text: '查询'
			,handler: function(btn){
				var form = btn.findParentByType('form');
				var store = form.findParentByType('panel').findByType('ods.grid')[0].getStore();
				Ext.apply(store.baseParams, form.getForm().getValues());
				store.load();
			}
		}]
	},{
		layout : 'form',
		columnWidth : .15,
		border : true,
		items : [
		{
			xtype : 'button',
			width: 45,
			text : '重置',
			handler : function(btn) {
				var form = btn.findParentByType('form').getForm();
				form.reset();
				form.items.items[0].focus(true);
			}
		} ]
}]
},{
	region : 'center'
	,xtype : 'ods.grid'
	,pagesize : 20
	,sm : new Ext.grid.CheckboxSelectionModel({
		singleSelect: true
		,listeners:{
			'rowselect': function(_sm, _index, _record){
				var checkup_grid = _sm.grid.findParentByType('panel').findParentByType('panel').findParentByType('panel').findByType('ods.grid')[1];
				var checkup_store = checkup_grid.getStore();
				Ext.apply(checkup_store.baseParams, {
					'contractPk' : _record.get('contractPk')
				
				});
				checkup_store.removeAll();
				checkup_store.load();
				
				var _seq_tools_tabpanel = _sm.grid.findParentByType('tabpanel').activeTab.findByType('tabpanel')[0];
				_seq_tools_tabpanel.contractPk = _record.get('contractPk');
				
			}
			,'rowdeselect': function(_sm, _index, _record){
				var _seq_tools_tabpanel = _sm.grid.findParentByType('tabpanel').activeTab.findByType('tabpanel')[0];
							_seq_tools_tabpanel.activeTab.findByType('ods.grid')[0].getStore().removeAll();
				
			}
		}
	})
	,viewConfig : {
		forceFit : true
	}
	,border : false
	,initload: true
	,listeners:{
		afterrender: function(g){
			setTimeout(function(){
				g.selModel.selectFirstRow();
			}, 2500);
		}
	}
	,store : new Ext.data.Store( {
		url: '<%=local %>/contract/list_info.ods',
		reader : new Ext.data.JsonReader({
			root : 'records'
			,totalProperty : 'total'
		},[
			"contractPk","contractName","contractEname","company","lead","address",
                "postCode","linkman","tel","email","beginTime","endTime","noveltyPoint","contractState",
                "memo","createOrgPk","createUserPk","createTime","deleteType"
		]),
        baseParams:{type: 0}
	}),
	columns : [
		new Ext.grid.CheckboxSelectionModel()
		,new Ext.grid.RowNumberer()
		,{
			header: '名称 ', sortable: true, dataIndex: "contractName"
		}
		,
		{
			header: '单位名称', sortable: true, dataIndex: "company"
		}
		,
		{
			header: '负责人', sortable: true, dataIndex: "lead"
		}
		
		,
		{
			header: '创建时间', sortable: true, dataIndex: "createTime"
		}
	]
	,listeners:{
			rowdblclick:function(grid){
			var records=grid.getSelectionModel().getSelections();
			new Ext.Window(
			{
				layout: 'border', title: '查看合同管理记录--网页对话框', autoDestroy: true, width:750, height: 650,
				plain: true, modal: true, iconCls: 'bogus', resizable: false, maximizable : true,
				items : [
				{
				layout : 'fit', region : 'center', xtype : 'panel',
			        plugins : [ new Ext.ux.Plugin.RemoteComponent(
				{
					url : '<%=local %>/contract/view_page.ods',
					params : {
					contractPk : records[0].get('contractPk'),
					
				},
				method : 'post'
				})]
				}]}).show();
			}
			}
	,tbar:[
		{
      text: '查 看', tooltip: '查看选中的合同管理记录', iconCls: 'x-icon-view', handler: function(btn)
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
            var contractPk=records[0].get('contractPk');
            win=new Ext.Window(
            {
              layout: 'border', title: '查看选中的合同管理记录--网页对话框', autoDestroy: true, width: 750, height: 650, plain: true, modal: true, iconCls: 'bogus', resizable: false, closable: true, items: [
              {
                layout: 'fit', region: 'center', xtype: 'panel', plugins: [new Ext.ux.Plugin.RemoteComponent(
                {
                  url: '<%=local %>/contract/view_page.ods', method: 'post', params:
                  {
                    'contractPk': contractPk
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
			text: '附件', iconCls: 'x-icon-zrw', 
			handler: function(btn){
			
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
	            var contractPk=records[0].get('contractPk');
	          	var win=new Ext.Window({
							layout: 'border', title: '附件信息--网页对话框', autoDestroy: true, width: 760, height: 500, 
							plain: true, modal: true, iconCls: 'bogus',resizable: true, 
							items: [{
								layout: 'fit', region: 'center',xtype: 'panel', 
						plugins : [ new Ext.ux.Plugin.RemoteComponent(
						{
							url : '<%=local %>/file/importinfo/index_page.ods?execlFileImportTypeId=searchResultImportId',
								    method : 'post',
								    params : {
										'filePk' : contractPk
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
		}
	]
}
