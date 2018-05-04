<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String local = request.getContextPath(); %>
{
	layout: 'border',
	region: 'center',
	border: false,
	items: [{
		frame: true,
		layout: 'column',
		region: 'north',
		xtype: 'form',
		height: 38,
		labelAlign: 'right',
		border: false,
		labelWidth: 40,
		items: [{
			layout: 'form',
			columnWidth: .4,
			border: false,
			items: [{
				name: 'dealUserName',
				fieldLabel: '处理人',
				anchor: '95%',
				xtype: 'textfield'
			}]
		},{
			layout: 'form',
			columnWidth: .1,
			border: false,
			items: [{
				xtype: 'button',
				width: 40,
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
		initload: false,
		pagesize: 20,
		sm: new Ext.grid.CheckboxSelectionModel({
			listeners: {
				'selectionchange': function(_sm){
					var grid = _sm.grid;
					var flowInfoPk = grid.store.baseParams['flowInfoPk'];
					Ext.each(grid.toolbars[0].items.items, function(bar){
						if(flowInfoPk && flowInfoPk != 'null1'){
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
						}else{
							bar.disable();
						}
					});
				}
			}
		}),
		viewConfig: {
			forceFit: true
		},
		store: new Ext.data.Store({
			url: '<%=local %>/system/flow/detail_list_info.ods',
			reader: new Ext.data.JsonReader({
				root: 'records', totalProperty: 'total'
			},[
				"flowDetailsPk","flowInfoPk","flowNumber","dealUserPk","dealUserName","memo","firstOrgPk","createOrgPk","createUserPk","createTime","deleteType"
			]),
			baseParams:{
				flowInfoPk: 'null1'
			}
		}),
		columns: [
			new Ext.grid.CheckboxSelectionModel(),
			new Ext.grid.RowNumberer(),
			{header: '处理人姓名', sortable: true, dataIndex: "dealUserName"},
			{header: '处理顺序', sortable: true, dataIndex: "flowNumber"}
		], 
		listeners:{
			rowdblclick:function(grid){
			    var records = grid.getSelectionModel().getSelections();
				var flowDetailsPk = records[0].get('flowDetailsPk');
				var flowInfoPk = grid.store.baseParams['flowInfoPk'];
				win = new Ext.Window({
					layout: 'fit',
					title: '查看弹屏模板内容--网页对话框',
					autoDestroy: true,
					width: 500,
					height: 270,
					plain: true,
					modal: true,
					iconCls: 'bogus',
					resizable: false,
					closable: true,
					plugins: [ new Ext.ux.Plugin.RemoteComponent({
						url: '<%=local %>/system/flow/detail_into_page.ods',
						method: 'post',
						params:{
							flowDetailsPk: flowDetailsPk,
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
			tooltip: '新增流程处理人',
			isadd: true,
			handler: function(btn) {
				var grid = btn.findParentByType('ods.grid');
				var flowInfoPk = grid.store.baseParams['flowInfoPk'];
				if(flowInfoPk == null || flowInfoPk == '' || flowInfoPk == 'null1'){
					Ext.example.msg("系统提示", "<b>" + "请先选择流程模块" + "</b>");
				}else{
					win = new Ext.Window( {
						layout: 'fit',
						title: '弹屏流程处理人--网页对话框',
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
							url: '<%=local %>/system/flow/detail_into_page.ods',
							method: 'post',
							params:{
								flowInfoPk: flowInfoPk,
								validatetype: 1
							}
						})]
					})
					win.show();
				}
			}
		},'-',{
			text: '查看',
			tooltip: '查看弹屏模板内容',
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
						var flowDetailsPk = records[0].get('flowDetailsPk');
						var flowInfoPk = grid.store.baseParams['flowInfoPk'];
						win = new Ext.Window({
							layout: 'fit',
							title: '查看弹屏模板内容--网页对话框',
							autoDestroy: true,
							width: 500,
							height: 270,
							plain: true,
							modal: true,
							iconCls: 'bogus',
							resizable: false,
							closable: true,
							plugins: [ new Ext.ux.Plugin.RemoteComponent({
								url: '<%=local %>/system/flow/detail_into_page.ods',
								method: 'post',
								params:{
									flowDetailsPk: flowDetailsPk,
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
			tooltip: '修改一条弹屏模板内容',
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
						var flowDetailsPk = records[0].get('flowDetailsPk');
						var flowInfoPk = grid.store.baseParams['flowInfoPk'];
						win = new Ext.Window({
							layout: 'fit',
							title: '修改弹屏模板内容--网页对话框',
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
								url: '<%=local %>/system/flow/detail_into_page.ods',
								method: 'post',
								params:{
									flowDetailsPk: flowDetailsPk,
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
				    var flowDetailsPks = [];
				    var dealUserName = '';
				    for(var i=0;i < records.length;i++){
        				flowDetailsPks.push("'"+records[i].get('flowDetailsPk')+"'");
        				if(i > 0){
        					dealUserName += ',';
        				}
					    dealUserName += records[i].get('dealUserName');
				    }
					if (Ext.Msg.confirm("系统提示",'确定删除：' + dealUserName + '的处理权限吗？',function(v) {
						if (v == "yes") {
							Ext.Ajax.request( {
								url: '<%=local %>/system/flow/detail_delete_info.ods',
								success: function(response) {
									var responseText = Ext.util.JSON.decode(response.responseText);
									Ext.example.msg('系统提示',responseText.msg);
									grid.store.load();
								},
								params: {
									flowDetailsPks: flowDetailsPks
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