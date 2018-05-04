<%--
    功能            :
    创建时间  : 2009-9-01 下午01:34:58
    创建者       : cui_wenke
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.ods.util.resource.ResourceUtil"%>
<%@page import="java.util.List"%>
<% String local = request.getContextPath(); %>
{
	layout: 'border', bodyStyle: 'padding-top:20px',buttonAlign: 'center', items: [
{
	frame: true, xtype: 'ods.formpanel', border: false, labelAlign: 'right', 
	region: 'north',height: 58,autoScroll: true
	, labelWidth: 80, items: [{
		layout: 'column', defaults:
		{
			columnWidth: .45, layout: 'form', labelWidth: 80
		}
		, items: [
		{
			xtype: 'panel', items: [
			{
				anchor: '90%', xtype: 'textfield', fieldLabel: '导入时间', readOnly: true, value: records[0].get('createTime')
			}
			]
		}
		,
		{
			xtype: 'panel', items: [
			{
				anchor: '90%', xtype: 'textfield', fieldLabel: '导入文件名', readOnly: true, value: records[0].get('execlFileName')
			}
			]
		}
		]
	}
	]
}
,
{
	region: 'center', xtype: 'grid', autoExpandColumn: 3, sm: new Ext.grid.RowSelectionModel()
	, columns: [
	{
		header: "行数", dataIndex: "rowCount"
	}
	,
	{
		header: "列数", dataIndex: "columnCount"
	}
	,
	{
		header: "原数据", dataIndex: "baseInfo"
	}
	,
	{
		header: "错误原因", dataIndex: "errorContent"
	}
	], store: new Ext.data.SimpleStore(
	{
		data: errorList, fields: ["rowCount", "columnCount", "baseInfo", "errorContent"]
	}
	)
}
	], buttons: [
	{
		text: '关闭', iconCls: 'from_exit', handler: function(btn)
		{
			btn.findParentByType('window').close();
		}
	}
	]
}