<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="com.ods.util.resource.ResourceUtil"%>
<%@ page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>
<% String local = request.getContextPath();%>
{
	layout: 'border',
	border: false,
	xtype: 'panel',
	items:[
	{
		frame : true, layout : 'column', xtype : 'form', labelAlign : 'right',
		border : false, region : 'north', height : 38, labelWidth : 60,
		items : [
		{
			layout : 'form', columnWidth : .2, border : false,
			items : [{
				name : 'bulletinTitle', fieldLabel : '公告标题', anchor : '95%', xtype : 'textfield',
				listeners: {
					'render' : function(c) {
						c.focus(true, true);
			   		 }
				}
			}]
		},{
			layout : 'form', columnWidth : .2, border : false,
			items : [{
				<%=DataDictionaryCommonAction.jsonCombo("bulletinType", "公告类型", "101", local)%>
			}]
		},{
			layout: 'form', columnWidth: .2, border: false, 
			items: [{
				name: 'createTimeS', fieldLabel: '发送时间', anchor: '95%', xtype: 'datefield', 
				format: 'Y-m-d', vtype: 'daterange', endDateField: 'createTimeE'
			}]
		},{
			layout: 'form', columnWidth: .15, labelSeparator:'', border: false, labelWidth : 10,
			items: [{
				name: 'createTimeE', fieldLabel: '--', anchor: '95%', xtype: 'datefield',
				format: 'Y-m-d', vtype: 'daterange', startDateField: 'createTimeS'
			}]
		},{
			layout : 'form', columnWidth : .06, border : false,
			items : [
			{
				xtype : 'button', width:60, text : '<%=ResourceUtil.getResourceString("button.query")%>',
				handler : function(btn) {
					var form = btn.findParentByType('form');
					var store = form.findParentByType('panel').findByType('tabpanel')[0].activeTab.findByType('ods.grid')[0].getStore();
					Ext.apply(store.baseParams, form.getForm().getValues());
					store.load();
				}
			} ]
		},{
			layout : 'form', columnWidth : .06, border : false,
			items : [
			{
				xtype : 'button', width: 60, text : '<%=ResourceUtil.getResourceString("button.reset")%>',
				handler : function(btn) {
					var form = btn.findParentByType('form');
					form.getForm().reset();
					form.getForm().setValues('');
					var store = form.findParentByType('panel').findByType('tabpanel')[0].activeTab.findByType('ods.grid')[0].getStore();
					Ext.apply(store.baseParams, form.getForm().getValues());
					store.load();
				}
			} ]
		} ]
	},
	<jsp:include page="/jsp/bulletin/bulletinreceive/receive_list_page.jsp"></jsp:include>
	]
}
	