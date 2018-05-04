<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="com.ods.util.hibernate.query.QueryPageJavaBean"%> 
{
	layout: 'border',
	xtype: 'panel',
	items:[{
		frame: true,
		layout: 'column',
		region: 'north',
		xtype: 'form',
		height: 38,
		labelAlign: 'right',
		border: false,
		labelWidth: 80,
		items:[{
			layout: 'form',
			xtype: 'panel',
			columnWidth: .4,
			border: false,
			items: [{
				format: 'Y-m-d',
				name: 'startTime',
				anchor: '95%',
				xtype: 'datefield',
				fieldLabel: '开始时间',
				selectOnFocus:true,
				vtype: 'daterange',
				endDateField: 'endTime',
				emptyText: '请选择时间',
				format: 'Y-m-d'
			}]
		},{
			layout: 'form',
			xtype: 'panel',
			columnWidth: .4,
			border: false,
			items:[{
				format: 'Y-m-d',
				name: 'endTime',
				anchor: '95%',
				xtype: 'datefield',
				fieldLabel: '结束时间',
				emptyText: '请选择时间',
				startDateField: 'startTime',
				format: 'Y-m-d'		
			}]
		},{
			layout: 'form',
			columnWidth: .18,
			border: false,
			items:[{
				xtype: 'button',
				width:60,
				text: '查询',
				handler: function(btn) {
					var form=btn.findParentByType('form');
					if(form.getForm().isValid()){
						var form=btn.findParentByType('form');
						var startTime = form.getForm().findField('startTime').getValue();
						var endTime = form.getForm().findField('endTime').getValue();
						if(startTime !="" ){
							startTime = startTime.format('Y-m-d');
						}
						if(endTime !="" ){
							endTime = endTime.format('Y-m-d');
						}
						var store=form.findParentByType('panel').findByType('ods.grid')[0].getStore();
						Ext.apply(store.baseParams,{startTime : startTime,endTime : endTime});
						store.load();
					}
				}
			}]
		}]
	},{
		region: 'center',
		xtype: 'ods.grid',
		pagesize: 100,
		viewConfig: {
			forceFit: true
		},
		border: false,
		id: 'roomInfo',
		store: new Ext.data.Store({
			url: '<%=request.getContextPath()%>/system/log/log_fulldelete_list.ods?limit=100'
			,reader:new Ext.data.JsonReader({
				root: 'records',
				totalProperty: 'total'
			},[
				'logShowText'
			])	
		}),
		columns:[
			{header: '操作信息',		sortable:true,		dataIndex: "logShowText"}
		],
		tbar: ['-',{
			text: '删除查询时间段日志',
			iconCls: 'x-icon-delete',
			tooltip: '彻底删除查询时间段日志记录',
			handler:function(btn){
				var grid = btn.findParentByType('ods.grid');
				var form = btn.findParentByType('ods.grid').findParentByType('panel').findByType('form')[0];
				var startTime = form.getForm().findField('startTime').getValue().format('Y-m-d');
				var endTime = form.getForm().findField('endTime').getValue().format('Y-m-d');
				if(startTime == "" ){
					startTime = '开始';
				}
				if(endTime == "" ){
					endTime = '现在';
				}
				if (Ext.Msg.confirm("系统提示", '确定要删除从'+startTime+'至'+endTime+'所有的系统日志记录吗?', function(v) {
					if (v == "yes") {
						Ext.Ajax.request({
							url: '<%=request.getContextPath()%>/system/log/log_fulldelete_delete.ods',
							success: function(response) {
								var responseText = Ext.util.JSON.decode(response.responseText);
								Ext.example.msg('系统提示','清空成功');
								grid.store.load();
							},
							params: {
								startTime: startTime,
								endTime: endTime
							}
						});
					}
					var pwin = btn.findParentByType('window');
					if(pwin) {
						pwin.show();
					}
				}));
			}
		}]
	}]
}
