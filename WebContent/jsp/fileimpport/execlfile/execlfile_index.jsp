<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String local = request.getContextPath(); %>
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
				name: 'execlFileName', fieldLabel: '文件名称', anchor: '95%', xtype: 'textfield', selectOnFocus: true, listeners:
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
				name: 'beginTime', fieldLabel: '导入时间', anchor: '95%', xtype: 'datefield', 
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
			url: '<%=local %>/execlfile/importinfo/list_info.ods', reader: new Ext.data.JsonReader(
			{
				root: 'records', totalProperty: 'total'
			}
			, ["execlFileImportPk","execlFileImportTypeId","execlFileName","execlFilePath","execlFileImportErrorContent","createOrgPk","createUserPk","createTime","deleteType"])
			, baseParams: {
			'execlFileImportTypeId': '<%=request.getParameter("execlFileImportTypeId") %>',
			contractPk: '<%=request.getParameter("contractPk") %>'
			
			}
		}
		), columns: [new Ext.grid.CheckboxSelectionModel(), new Ext.grid.RowNumberer(),
		{
			header: '文件名称', sortable: true, dataIndex: "execlFileName"
		}
		,
		{
			header: '导入结果', sortable: true, dataIndex: "execlFileImportErrorContent",
			renderer : function(value) {
				return value ? '<span style="color:red">导入文件部分内容有误..</span>' : '<span style="color:green">导入成功</span>';
			}
		}
		,
		{
			header: '导入时间', sortable: true, dataIndex: "createTime"
		}], tbar: [
		{
			text: '导入文件', id: 'bominfo_parts_add', isadd: true, iconCls: 'x-icon-add', handler: function(btn)
			{
				var grid = btn.findParentByType('ods.grid');
		        new Ext.Window({
		          layout: 'border', title: '导入文件信息--网页对话框', autoDestroy: true, resizable: false, 
		          store: grid.store,width: 550, height: 250, plain: true, modal: true, iconCls: 'bogus', items: [
		          {
		            layout: 'fit', region: 'center', xtype: 'panel', plugins: [new Ext.ux.Plugin.RemoteComponent(
		            {
		              url: '<%=local %>/execlfile/importinfo/upload_page.ods', method: 'post', params:
		              {
		                'execlFileImportTypeId': '<%=request.getParameter("execlFileImportTypeId") %>',
		                contractPk: '<%=request.getParameter("contractPk") %>'
		               
		              }
		            }
		            )]
		          }
		          ]
		        }).show();
			}
		}
		, '-',
		{
			text: '查看导入结果', disabled: true, iconCls: 'x-icon-view', handler: function(btn){
				var grid = btn.findParentByType('ods.grid');
				var records = grid.getSelectionModel().getSelections();
				var errorList = Ext.util.JSON.decode("["+records[0].get('execlFileImportErrorContent')+"]");
				var win=new Ext.Window(
				{
					layout: 'border', title: '查看导入结果--网页对话框', autoDestroy: true, width: 800, height: 600, 
					maximizable: true, plain: true, modal: true, iconCls: 'bogus', resizable: false, items: [
					{
						layout: 'fit', region: 'center', xtype: 'panel', 
						items: [<jsp:include page="/jsp/fileimpport/execlfile/execlfile_view.jsp"></jsp:include>]
					}
					]
				}
				);
				win.show();
			}
		}
		/*
		, '-',
		{
			text: '上传文件下载', disabled: true, iconCls: 'x-icon-view', handler: function(btn){
				var grid = btn.findParentByType('ods.grid');
				var records = grid.getSelectionModel().getSelections();
				window.location  = '<%=local %>/execlfile/importinfo/download_execlfile_info.ods?execlFileImportPk='+records[0].get('execlFileImportPk');
			}
		}
		, '-',
		{
			text: '删除', disabled: true, iconCls: 'x-icon-delete', handler: function(btn){
				var grid = btn.findParentByType('ods.grid');
				var records = grid.getSelectionModel().getSelections();
		        if (Ext.Msg.confirm("系统提示", '您真的要删除当前选中的文件导入信息吗?', function(v)
		        {
		          if (v == "yes")
		          {
		            Ext.Ajax.request(
		            {
		              url: '<%=local %>/bommanager/product/parts/deleorreset_info.ods', success: function(response)
		              {
		                var responseText=Ext.util.JSON.decode(response.responseText);
		                Ext.example.msg('系统提示', responseText.msg);grid.store.load();
		              }
		              , params:
		              {
		                'partsPk': records[0].get('partsPk'), 'deleteType': 1
		              }
		            }
		            );
		          }
		        }
		        ));
			}
		}
		*/
		, '-',
		{
			text: '导入文件模版', ishelp: true, iconCls: 'x-icon-view', handler: function(btn){
				new Ext.Window({
					layout: 'border', title: '查看导入文件模版信息--网页对话框', autoDestroy: true, width: 580, height: 320, 
					plain: true, modal: true, iconCls: 'bogus', resizable: false, items: [
					{
						layout: 'fit', region: 'center', xtype: 'panel', 
						autoLoad:{url:'<%=request.getContextPath()%>/jsp/fileimpport/execlfile/execlfile_help.jsp',scripts:true}
					}
					]
				}).show();
			}
		}
		]
	}
	]
}