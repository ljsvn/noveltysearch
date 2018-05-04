<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="com.ods.util.resource.ResourceUtil"%>
<%@ page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>
<% String local = request.getContextPath();%>
{
	layout: 'border',
	border: false,
	xtype: 'panel',
	items:[
	{
	    region : 'west', width : 650, layout : 'border',split : true,
		title: '已发公告信息', collapsible : true, 
		items:[
		{
			frame : true, layout : 'column', xtype : 'form', labelAlign : 'right',
			border : false, region : 'north', height : 38, labelWidth : 60,
			items : [
			{
				layout : 'form', columnWidth : .25, border : false,
				items : [{
					name : 'bulletinTitle', fieldLabel : '公告标题', anchor : '95%', xtype : 'textfield',
					listeners: {
						'render' : function(c) {
							c.focus(true, true);
				   		 }
					}
				}]
			},{
				layout : 'form', columnWidth : .25, border : false,
				items : [{
					<%=DataDictionaryCommonAction.jsonCombo("bulletinType", "公告类型", "101", local)%>
				}]
			},{
				layout: 'form', columnWidth: .24, border: false, 
				items: [{
					name: 'createTimeS', fieldLabel: '发送时间', anchor: '95%', xtype: 'datefield', 
					format: 'Y-m-d', vtype: 'daterange', endDateField: 'createTimeE'
				}]
			},{
				layout: 'form', columnWidth: .16, labelSeparator:'', border: false, labelWidth : 10,
				items: [{
					name: 'createTimeE', fieldLabel: '--', anchor: '95%', xtype: 'datefield',
					format: 'Y-m-d', vtype: 'daterange', startDateField: 'createTimeS'
				}]
			},{
				layout : 'form', columnWidth : .1, border : false,
				items : [
				{
					xtype : 'button', width:60, text : '<%=ResourceUtil.getResourceString("button.query")%>',
					handler : function(btn) {
						var form = btn.findParentByType('form');
						var store = form.findParentByType('panel').findByType('ods.grid')[0].getStore();
						Ext.apply(store.baseParams, form.getForm().getValues());
						store.load();
					}
				} ]
			} ]
		},{
			region : 'center', 
			xtype : 'ods.grid', 
			id: 'bulletininfo_send_grid_id', 
			border: false,
			sm: new Ext.grid.CheckboxSelectionModel({
				singleSelect: true, 
				listeners:{
					'rowselect': function(_sm, _index, _record){
						Ext.each(_sm.grid.toolbars[0].items.items, function(bar){
							if(!bar.isadd && _sm.getSelections().length > 1 && !bar.isdel){
								bar.disable();
							}else{
								bar.enable();
							}
						});
				        var grid = _sm.grid.findParentByType('tabpanel').activeTab.findByType('ods.grid')[1];
				        Ext.apply(grid.getStore().baseParams,
			        	{
			        		bulletinPk : _record.get('bulletinPk')
			        	});
				        grid.getStore().load();
					}
					,'rowdeselect': function(_sm, _index, _record){
						Ext.each(_sm.grid.toolbars[0].items.items, function(bar){
							if(_sm.getSelections().length == 1){
								bar.enable();
							}else if(_sm.getSelections().length > 1){
								if (!bar.isadd && !bar.isdel){
									bar.disable();
								}
							}else{
								if (!bar.isadd){
									bar.disable();
								}
							}
						});
				        _sm.grid.findParentByType('tabpanel').activeTab.findByType('ods.grid')[1].getStore().removeAll();
					}
				}
			}),
			viewConfig : {
				forceFit : true
			}, 
			store: new Ext.data.Store(
			{
				url: '<%=local %>/bulletin/send/list_info.ods',
				listeners :{
					'load' : function(store ,records,options ) {
						var grid = Ext.getCmp('bulletininfo_send_grid_id');
						Ext.each(grid.toolbars[0].items.items, function(bar){
							if(!bar.isadd){
								bar.disable();
							}
						});
					}
				},
				reader: new Ext.data.JsonReader(
				{
					root: 'records', totalProperty: 'total'
				}
				,[
					"bulletinPk", "sendType", "bulletinTitle", "imgPath", "filePath", "fileName", "bulletinNote",
	                "bulletinType", "isDraft", "createOrgPk", "createUserPk", "deleteType", "createTime"
	            ])
	            ,baseParams : {isDraft : 0}
			}
			), 
			columns : [
				new Ext.grid.CheckboxSelectionModel(),
				new Ext.grid.RowNumberer()
				,{header : '公告标题',	sortable:true, width: 120,	dataIndex : 'bulletinTitle'}
				,{header : '公告类型',	sortable:true, 	dataIndex : 'bulletinType'}
				,{header : '接收对象',	sortable:true,	dataIndex : 'sendType'
					,renderer : function(value){
						switch(value){
							case '0':return '全体';break;
							case '1':return '部门';break;
							case '2':return '个人';break;
							
						}
					}
				}
				,{header : '发送时间',	sortable:true, width: 120,	dataIndex : 'createTime'}
			],
			listeners:{
			rowdblclick:function(grid){
			var records=grid.getSelectionModel().getSelections();
			new Ext.Window(
			{
				layout: 'border', title: '查看公告信息--网页对话框', autoDestroy: true, width: 820, height: 500,
				plain: true, modal: true, iconCls: 'bogus', resizable: false, maximizable : true,
				items : [
				{
				layout : 'fit', region : 'center', xtype : 'panel',
			        plugins : [ new Ext.ux.Plugin.RemoteComponent(
						{
							url : '<%=local %>/bulletin/send/view_page.ods',
					params : {
					bulletinPk : records[0].get('bulletinPk'),
					filePath : records[0].get('filePath'),
					fileName : records[0].get('fileName'),
					isDraft : 0
				},
				method : 'post'
					})]
				}]}).show();
			}
			}
			, tbar: [
			{
				text: '<%=ResourceUtil.getResourceString("button.view")%>',
				disabled: true, iconCls: 'x-icon-view', handler: function(btn){
					var grid = btn.findParentByType('ods.grid');
					var records = grid.getSelectionModel().getSelections();
					new Ext.Window(
					{
						layout: 'border', title: '查看公告信息--网页对话框', autoDestroy: true, width: 820, height: 500,
						plain: true, modal: true, iconCls: 'bogus', resizable: false, maximizable : true,
						items : [
						{
							layout : 'fit', region : 'center', xtype : 'panel',
						    plugins : [ new Ext.ux.Plugin.RemoteComponent(
					           {
							url : '<%=local %>/bulletin/send/view_page.ods',
								params : {
									bulletinPk : records[0].get('bulletinPk'),
									filePath : records[0].get('filePath'),
									fileName : records[0].get('fileName'),
									isDraft : 0
								},
								method : 'post'
							}) ]
						} ]
					}
					).show();
				}
			}
			, '-',
			{
				text: '<%=ResourceUtil.getResourceString("button.delete")%>',
				disabled: true, isdel : true, iconCls: 'x-icon-delete', 
				handler: function(btn){
					var grid = btn.findParentByType('ods.grid');
					var grid1 = grid.findParentByType('panel').findParentByType('panel').findParentByType('panel').findByType('ods.grid')[1];
					var records = grid.getSelectionModel().getSelections();
			        if (Ext.Msg.confirm("系统提示",'确定删除公告标题为：<br>' + records[0].get('bulletinTitle') + '<br>的信息吗？', 
				        function(v){if (v == "yes"){
				            Ext.Ajax.request({
			              		url: '<%=local %>/bulletin/send/delete_info.ods', 
			               		params:{
									'bulletinPk' : records[0].get('bulletinPk')
			              		},
			              		success: function(response){
					                var responseText=Ext.util.JSON.decode(response.responseText);
					                Ext.example.msg('系统提示', responseText.msg);
					                grid.store.load();
					                grid1.store.load();
			              		}
			            	});
			          	}}
			        ));
				}
			}
			]
		}
		]
	},{
		region : 'center', layout : 'border', 
		title: '公告接收信息',
		items : [
		{
			region : 'center', 
			xtype : 'ods.grid',
			initload: false,
			border: false,
			sm: new Ext.grid.CheckboxSelectionModel(),
			viewConfig : {
				forceFit : true
			}, 
			store: new Ext.data.Store(
			{
				url: '<%=local %>/bulletin/receive/list_info.ods',
				reader: new Ext.data.JsonReader(
				{
					root: 'records', totalProperty: 'total'
				}
				,[
					"viewPk", "bulletinPk", "sendType", "bulletinTitle", "imgPath", "filePath", "fileName",
                    "bulletinNote", "bulletinType", "isDraft", "createOrgPk", "createUserPk", "deleteType", "createTime",
                    "receivePk", "userPk", "bulletinIsread", "receiveOrgPk", "receiveUserPk", "receiveDeleteType",
                    "receiveCreateTime", "userName"
	            ])
	            ,baseParams: {isSended: 0}
			}
			), 
			columns : [
				new Ext.grid.CheckboxSelectionModel(),
				new Ext.grid.RowNumberer()
				,{header : '接收人',	sortable:true,	dataIndex : 'userName'}
				,{header : '阅读状态',	sortable:true, width: 50,	dataIndex : 'bulletinIsread'
					,renderer : function(value){
						switch(value){
							case '0':return '<span style="color:red">未读</span>';break;
							case '1':return '<span style="color:green">已读</span>';break;
						}
					}
				}
				,{header : '阅读时间',	sortable:true, width: 150,	dataIndex : 'receiveCreateTime'}
			]
		} 
		]
	} 
	]
}
	