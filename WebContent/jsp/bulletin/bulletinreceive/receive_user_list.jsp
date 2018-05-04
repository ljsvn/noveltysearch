<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ods.util.resource.ResourceUtil"%>
<%@ page import="com.ods.util.type.StringUtil"%>
<% String local = request.getContextPath(); %>
{
	title: '个人公告信息',
	layout: 'border',
	border: false,
	items:[
	{
		region : 'center', 
		xtype : 'ods.grid', 
		id: 'bulletinreceive_user_grid_id', 
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
				}
			}
		}),
		viewConfig : {
			forceFit : true
		}, 
		store: new Ext.data.Store(
		{
			url: '<%=local %>/bulletin/receive/list_info.ods',
			listeners :{
				'load' : function(store ,records,options ) {
					var grid = Ext.getCmp('bulletinreceive_user_grid_id');
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
				"viewPk", "bulletinPk", "sendType", "bulletinTitle", "imgPath", "filePath", "fileName",
                "bulletinNote", "bulletinType", "isDraft", "createOrgPk", "createUserPk", "deleteType", "createTime",
                "receivePk", "orgPk", "userPk", "bulletinIsread", "receiveOrgPk", "receiveUserPk", "receiveDeleteType",
                "receiveCreateTime"
            ])
            ,baseParams : {sendType : 2,isread: '<%=request.getParameter("isread") %>'}
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
			,{header : '阅读状态',	sortable:true, width: 50,	dataIndex : 'bulletinIsread'
				,renderer : function(value){
					switch(value){
						case '0':return '<span style="color:red">未读</span>';break;
						case '1':return '<span style="color:green">已读</span>';break;
					}
				}
			}
		],
		listeners:{
			rowdblclick:function(grid){
			var records=grid.getSelectionModel().getSelections();
			Ext.Ajax.request( {
					 url : '<%=local %>/bulletin/receive/is_read.ods',
					 params : {
         				 receivePk: records[0].get('receivePk')
					 }
				});
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
				Ext.Ajax.request( {
					 url : '<%=local %>/bulletin/receive/is_read.ods',
					 params : {
         				 receivePk: records[0].get('receivePk')
					 }
				});
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
					,listeners:{
						close: function(src){
							grid.store.load();
						}
					}
				}
				).show();
			}
		}
		<%
		if(request.getParameter("isread").equals("1")){ 
		%>
		, '-',
		{
			text: '<%=ResourceUtil.getResourceString("button.delete")%>',
			disabled: true, isdel : true, iconCls: 'x-icon-delete', handler: function(btn){
				var grid = btn.findParentByType('ods.grid');
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
		              		}
		            	});
		          	}}
		        ));
			}
		}
		<%} %>
		]
	}
	]
}
