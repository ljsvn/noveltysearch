<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
				name: 'fileName',
				fieldLabel: '资料名称',
				anchor: '95%',
				xtype: 'textfield'
			}]
		},{
			layout: 'form',
			columnWidth: .45,
			items: [{
				name: 'fileKeywords',
				fieldLabel: '关键字',
				anchor: '95%',
				xtype: 'textfield'
			}]
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
		id: 'file_store_list_grid',
		pagesize: 20,
		sm: new Ext.grid.CheckboxSelectionModel({
			listeners:{
				'selectionchange': function(_sm){
					var grid = _sm.grid;
					var fileDirectoryPk = grid.store.baseParams['fileDirectoryPk'];
					Ext.each(grid.toolbars[0].items.items, function(bar){
						if(bar.isadd){
							if(fileDirectoryPk){
								bar.enable();
							}else{
								bar.disable();
							}
						}else{
							if(_sm.getSelections().length == 1){
								if(bar.isdown){
									if(_sm.getSelected().get('fileSotreUploadPath')){
										bar.enable();
									}else{
										bar.disable();
									}
								}else if(bar.isread){
									if(_sm.getSelected().get('fileTransition') == 1){
										bar.enable();
									}else{
										bar.disable();
									}
								}else{
									bar.enable();
								}
							}else if(_sm.getSelections().length > 1){
								if(!bar.isdel){
									bar.disable();
								}
							}else{
								bar.disable();
							}
						}
					});
				}
			}
		}),
		viewConfig: {
			forceFit: true
		},
		store: new Ext.data.Store({
			url: '<%=local %>/system/filemanage/store_list_info.ods',
			reader: new Ext.data.JsonReader({
				root: 'records', totalProperty: 'total'
			},[
				"fileStorePk","fileDirectoryPk","fileName","fileNarrate","fileKeywords","fileSotreUploadPath","fileTransition","createUserName","createUserPk","createTime","deleteType"
			]),
			baseParams:{
				fileDirectoryPk: ''
			},
			listeners :{
				'load' : function(store ,records,options ) {
					var fileDirectoryPk = store.baseParams['fileDirectoryPk'];
					var grid = Ext.getCmp('file_store_list_grid');
					Ext.each(grid.toolbars[0].items.items, function(bar){
						if(fileDirectoryPk){
							if(bar.isadd){
								bar.enable();
							}else{
								bar.disable();
							}
						}else{
							bar.disable();
						}
					});
				}
			}
		}),
		columns: [
			new Ext.grid.CheckboxSelectionModel(),
			new Ext.grid.RowNumberer(),
			{header: '资料名称', sortable: true, dataIndex: "fileName"},
			{header: '关键字', sortable: true, dataIndex: "fileKeywords"},
			{header: '是否有附件', sortable: true, dataIndex: "fileSotreUploadPath",
				renderer: function(value){
					return value == '' ? '<span style="color:red">否</span>' : '<span style="color:green">是</span>'
				}
			},
			{header: '是否可在线阅读', sortable: true, dataIndex: "fileTransition",
				renderer: function(value){
					switch(value){
						case '0':return '<span style="color:red">否</span>';break;
						case '1':return '<span style="color:green">是</span>';break;
					}
				}
			}
		],
		tbar: [{
			text: '上传',
			iconCls: 'x-icon-up',
			tooltip: '上传文件',
			isadd: true,
			handler: function(btn) {
				var grid = btn.findParentByType('ods.grid');
				var fileDirectoryPk = grid.store.baseParams['fileDirectoryPk'];
				win = new Ext.Window({
					layout: 'fit',
					title: '上传文件--网页对话框',
					store: grid.store,
					autoDestroy: true,
					width: 500,
					height: 350,
					plain: true,
					modal: true,
					iconCls: 'bogus',
					resizable: false,
					closable: true,
					plugins: [ new Ext.ux.Plugin.RemoteComponent({
						url: '<%=local %>/system/filemanage/store_add_page.ods',
						method: 'post',
						params: {
							fileDirectoryPk: fileDirectoryPk,
							validatetype: 1
						}
					})]
				})
				win.show();
			}
		},'-',{
			text: '文件下载',
			iconCls: 'x-icon-down',
			tooltip: '下载上传的文献资料',
			isdown: true,
			handler: function(btn) {
				var grid = btn.findParentByType('ods.grid');
				var records = grid.getSelectionModel().getSelections();
				var uploadpath = records[0].get('fileSotreUploadPath');
				Ext.Ajax.request({
					url : '<%=local %>/system/filemanage/file_check.ods',
					success : function(response) {
						var responseText = Ext.util.JSON.decode(response.responseText);
						if (responseText.success) {
							window.location.href = '<%=local %>/system/filemanage/file_download.ods?uploadpath=' + uploadpath;
						} else {
							Ext.example.msg('系统提示', responseText.msg);
						}
					},
					params : {
						'uploadpath' : uploadpath
					}
				});
			}
		},'-',{
			text: '在线阅读',
			tooltip: '在线阅读上传的文献资料信息',
			iconCls: 'x-icon-view',
			isread: true,
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
						var fileSotreUploadPath = records[0].get('fileSotreUploadPath') + '.swf';
						win = new Ext.Window({
							layout: 'fit',
							title: '在线阅读--网页对话框',
							autoDestroy: true,
							width: 1000,
							height: 700,
							plain: true,
							modal: true,
							iconCls: 'bogus',
							resizable: true,
							maximized :true,
							closable: true,
							plugins: [ new Ext.ux.Plugin.RemoteComponent({
								url: '<%=local %>/system/filemanage/read_online_page.ods',
								method: 'post',
								params: {
									onlineReadFile: fileSotreUploadPath
								}
							})]
						})
						win.show();
					}
				}
			}
		},'-',{
			text: '说明修改',
			tooltip: '修改文献资料的说明信息',
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
						var fileStorePk = records[0].get('fileStorePk');
						win = new Ext.Window({
							layout: 'fit',
							title: '修改文献资料信息--网页对话框',
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
								url: '<%=local %>/system/filemanage/store_update_page.ods',
								method: 'post',
								params:{
									fileStorePk: fileStorePk,
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
			tooltip: '删除所选择的文献资料',
			iconCls: 'x-icon-delete',
			isdel: true,
			disabled: true,
			handler: function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
				    var fileStorePks = '';
				    var uploadPaths = [];
				    var fileName = '';
				    for(var i=0;i < records.length;i++){
        				if(records[i].get('fileSotreUploadPath')){
        					uploadPaths.push(records[i].get('fileSotreUploadPath'));
        				}
        				if(i > 0){
        					fileName += ',';
        					fileStorePks += ','
        				}
					    fileName += records[i].get('fileName');
					    fileStorePks += "'"+records[i].get('fileStorePk')+"'";
				    }
					if (Ext.Msg.confirm("系统提示",'确定文献资料：' + fileName + '吗？',function(v) {
						if (v == "yes") {
							Ext.Ajax.request( {
								url: '<%=local %>/system/filemanage/store_delete_info.ods',
								success: function(response) {
									var responseText = Ext.util.JSON.decode(response.responseText);
									Ext.example.msg('系统提示',responseText.msg);
									grid.store.load();
								},
								params: {
									fileStorePks: fileStorePks,
									uploadPaths: uploadPaths
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