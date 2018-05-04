<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>
<% String local = request.getContextPath(); %>
{
	layout: 'border',
	region: 'center',
	border: false,
	items: [{
		frame: true,
		border: false, 
		layout: 'column',
		region: 'north',
		xtype: 'form',
		height: 38,
		labelAlign: 'right',
		labelWidth: 55,
		items: [{
			layout: 'form',
			columnWidth: .45,
			items: [{
				name: 'flowName',
				fieldLabel: '流程名称',
				anchor: '95%',
				xtype: 'textfield'
			}]
		},{
			<%=DataDictionaryCommonAction.jsonCombo("flowType","流程类型","0",local) %>
				,anchor: '95%'
			},{
			layout: 'form',
			columnWidth: .1,
			items: [{
				xtype: 'button',
				width: 35,
				text: '查询',
				handler: function(btn){
					var form=btn.findParentByType('form');
					if(form.getForm().isValid()){
						var form=btn.findParentByType('form');
						var store=form.findParentByType('panel').findByType('ods.grid')[0].getStore();
						Ext.apply(store.baseParams, form.getForm().getValues());
						store.load();
					}
				}
			}]
		}]
	},{
		region: 'center',
		xtype: 'ods.grid',
		id: 'flow_info_list_grid',
		pagesize: 20,
		sm: new Ext.grid.CheckboxSelectionModel({
			listeners:{
				'selectionchange': function(_sm){
					var grid = _sm.grid;
					Ext.each(grid.toolbars[0].items.items, function(bar){
						if(_sm.getSelections().length == 1){
							bar.enable();
						}else if(_sm.getSelections().length > 1){
							if(!bar.isadd && !bar.isdel){
								bar.disable();
							};
						}else{
							if(!bar.isadd){
								bar.disable();
							};
						}
					});
					var store = grid.findParentByType('panel').findParentByType('panel').findParentByType('panel').findByType('ods.grid')[1].getStore();
					if(_sm.getSelections().length == 1){
						Ext.apply(store.baseParams, {
							flowInfoPk: _sm.getSelected().get('flowInfoPk')
						});
					}else{
						Ext.apply(store.baseParams, {
							flowInfoPk: 'null1'
						});
					}
					store.load();
				}
			}
		}),
		viewConfig: {
			forceFit: true
		},
		store: new Ext.data.Store({
			url: '<%=local %>/system/flow/list_info.ods',
			reader: new Ext.data.JsonReader({
				root: 'records', totalProperty: 'total'
			},[
				"flowInfoPk","flowType","flowName","memo","firstOrgPk","createOrgPk","createUserPk","createTime","deleteType","orgPk","flowClassify"
			]),
			baseParams: {
				flowClassify: 0
			},
			listeners :{
				'load' : function(store ,records,options ) {
					var grid = Ext.getCmp('flow_info_list_grid');
					Ext.each(grid.toolbars[0].items.items, function(bar){
						if(!bar.isadd){
							bar.disable();
						}
					});
				}
			}
		}),
		columns: [
			new Ext.grid.CheckboxSelectionModel(),
			new Ext.grid.RowNumberer(),
			{header: '流程名称', sortable: true, dataIndex: "flowName"},
			{header: '流程类型', sortable: true, dataIndex: "flowType",
				renderer: function(value){
					switch(value){
						case '0':return '请假 ';break;
						case '1':return '援助对象审批';break;
					}
				}
			}
		],
		listeners:{
			rowdblclick:function(grid){
		        var records = grid.getSelectionModel().getSelections();
				var flowInfoPk = records[0].get('flowInfoPk');
				win = new Ext.Window({
					layout: 'fit',
					title: '查看流程模板--网页对话框',
					autoDestroy: true,
					width: 500,
					height: 270,
					plain: true,
					modal: true,
					iconCls: 'bogus',
					resizable: false,
					closable: true,
					plugins: [ new Ext.ux.Plugin.RemoteComponent({
						url: '<%=local %>/system/flow/into_page.ods',
						method: 'post',
						params:{
							flowInfoPk: flowInfoPk,
							validatetype: 3
						}
					})]
				})
				win.show();
			}
		}
		,tbar: [{
			text: '新增',
			iconCls: 'x-icon-add',
			tooltip: '新增流程模板',
			isadd: true,
			handler: function(btn) {
				var grid = btn.findParentByType('ods.grid');
				win = new Ext.Window( {
					layout: 'fit',
					title: '流程模板信息--网页对话框',
					store: grid.store,
					autoDestroy: true,
					width: 500,
					height: 270,
					plain: true,
					modal: true,
					iconCls: 'bogus',
					resizable: false,
					closable: true,
					plugins: [ new Ext.ux.Plugin.RemoteComponent({
						url: '<%=local %>/system/flow/into_page.ods',
						method: 'post',
						params:{
							validatetype: 1
						}
					})]
				})
				win.show();
			}
		},'-',{
			text: '查看',
			tooltip: '查看流程模板',
			iconCls: 'x-icon-view',
			disabled: true,
			handler: function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
					if (records.length > 1) {
						Ext.example.msg("系统提示", "<b>" + "请勾选一条多选框内容" + "</b>");
					} else {
						var flowInfoPk = records[0].get('flowInfoPk');
						win = new Ext.Window({
							layout: 'fit',
							title: '查看流程模板--网页对话框',
							autoDestroy: true,
							width: 500,
							height: 270,
							plain: true,
							modal: true,
							iconCls: 'bogus',
							resizable: false,
							closable: true,
							plugins: [ new Ext.ux.Plugin.RemoteComponent({
								url: '<%=local %>/system/flow/into_page.ods',
								method: 'post',
								params:{
									flowInfoPk: flowInfoPk,
									validatetype: 3
								}
							})]
						})
						win.show();
					}
				}
			}
		},'-',{
			text: '修改',
			tooltip: '修改流程模板',
			iconCls: 'x-icon-edit',
			disabled: true,
			handler: function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
					if (records.length > 1) {
						Ext.example.msg("系统提示", "<b>" + "请勾选一条多选框内容" + "</b>");
					} else {
						var flowInfoPk = records[0].get('flowInfoPk');
						win = new Ext.Window({
							layout: 'fit',
							title: '修改流程模板--网页对话框',
							store: grid.store,
							autoDestroy: true,
							width: 500,
							height: 270,
							plain: true,
							modal: true,
							iconCls: 'bogus',
							resizable: false,
							closable: true,
							plugins: [ new Ext.ux.Plugin.RemoteComponent({
								url: '<%=local %>/system/flow/into_page.ods',
								method: 'post',
								params:{
									flowInfoPk: flowInfoPk,
									validatetype: 2
								}
							})]
						})
						win.show();
					}
				}
			}
		},'-',{
			text: '删除',
			tooltip: '删除一条弹屏模板内容',
			iconCls: 'x-icon-delete',
			isdel: true,
			disabled: true,
			handler: function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
				    var flowInfoPks = [];
				    var flowName = '';
				    for(var i=0;i < records.length;i++){
        				flowInfoPks.push("'"+records[i].get('flowInfoPk')+"'");
        				if(i > 0){
        					flowName += ',';
        				}
					    flowName += records[i].get('flowName');
				    }
					if (Ext.Msg.confirm("系统提示",'确定删除序号为：' + flowName + '的模板内容吗？',function(v) {
						if (v == "yes") {
							Ext.Ajax.request( {
								url: '<%=local %>/system/flow/delete_info.ods',
								success: function(response) {
									var responseText = Ext.util.JSON.decode(response.responseText);
									Ext.example.msg('系统提示',responseText.msg);
									grid.store.load();
								},
								params: {
									flowInfoPks: flowInfoPks
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
		}]
	}]
}