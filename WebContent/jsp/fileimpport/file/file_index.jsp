<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String local = request.getContextPath();

System.out.println(request.getParameter("filePk"));

%>
{
	columnWidth: .6,layout: 'border', xtype: 'panel', items: [
	{
		frame: true, 
		layout: 'column', 
		region: 'north', 
		xtype: 'form', 
		height: 38, 
		labelAlign: 'right', 
		border: false,
		 labelWidth: 65, 
		 items: [
		{
			layout: 'form', columnWidth: .3, border: false, items: [
			{
				name: 'fileName', fieldLabel: '文件名称', anchor: '95%', xtype: 'textfield', selectOnFocus: true, listeners:
				{
					'render': function(c)
					{
						c.focus(true, true);
					}
				}
				, maxLength: 50
				
			}
			]
		},{
			layout: 'form', columnWidth: .25, border: false, 
			items: [{
				name: 'beginTime', fieldLabel: '时间', anchor: '95%', xtype: 'datefield', 
				format: 'Y-m-d', vtype: 'daterange', endDateField: 'endTime'
			}]
		},{
			layout: 'form', columnWidth: .18, labelSeparator:'', border: false, labelWidth : 10,
			items: [{
				name: 'endTime', fieldLabel: '--', anchor: '95%', xtype: 'datefield',
				format: 'Y-m-d', vtype: 'daterange', startDateField: 'beginTime'
			}]
		}
		,
		{
			layout: 'fit', columnWidth: .08, border: false, items: [
			{
				xtype: 'button', text: '查询', handler: function(btn)
				{
					var form = btn.findParentByType('form');
					var store = form.findParentByType('panel').findByType('ods.grid')[0].getStore();
					Ext.apply(store.baseParams, form.getForm().getValues());
					store.load();
				}
			}
			]
		}
		]
	}
	,
	{
		region: 'center', xtype: 'ods.grid', pagesize:10, 
		sm: new Ext.grid.CheckboxSelectionModel({
			singleSelect: true, listeners:
			{
				'rowselect': function(_sm, _index, _record)
				{
					Ext.each(_sm.grid.toolbars[0].items.items, function(bar){
						if (bar.disabled)
						{
							bar.enable();
						}
					});
				}
				, 'rowdeselect': function(_sm, _index, _record)
				{
					Ext.each(_sm.grid.toolbars[0].items.items, function(bar){
						if (!bar.isadd && !bar.ishelp)
						{
							bar.disable();
						}
					});
				}
			}
		}),
		
		viewConfig:
		{
			forceFit: true
		}
		, border: false, store: new Ext.data.Store(
		{
			url: '<%=local %>/file/importinfo/list_info.ods', reader: new Ext.data.JsonReader(
			{
				root: 'records', totalProperty: 'total'
			}
			, ["fileStorePk","fileDirectoryPk","fileName","fileNarrate","fileKeywords","fileSotreUploadPath","createUserName","createUserPk","createTime","deleteType"])
			, baseParams: {
			'fileDirectoryPk': '<%=request.getParameter("filePk") %>',
			filePk: '<%=request.getParameter("filePk") %>'
			
			}
		}
		), columns: [new Ext.grid.CheckboxSelectionModel(), new Ext.grid.RowNumberer(),
		{header: '资料名称', sortable: true, dataIndex: "fileName"},
		{header: '关键字', sortable: true, dataIndex: "fileKeywords"},
		{header: '是否有附件', sortable: true, dataIndex: "fileSotreUploadPath",
			renderer: function(value){
				return value == '' ? '<span style="color:red">否</span>' : '<span style="color:green">是</span>'
			}
		},
		{
			header: '时间', sortable: true, dataIndex: "createTime"
		}
		], tbar: [
		{
			text: '上传',
			iconCls: 'x-icon-add',
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
					width: 700,
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
		}
		, '-',
		{
			text: '文件下载',
			iconCls: 'x-icon-view',
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
		}
		, '-',
		{
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
		}
		
		]
	}
	]
}