<%@page import="com.ods.util.resource.ResourceUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
{
	layout: 'border', height: document.body.scrollHeight-160, border: false, hideBorders: false,
	items: [<%@ include file="/jsp/main/main_left.jsp"%>,
	{
		region: 'center', layout: 'fit', border: false, 
		items: [new Ext.TabPanel(
		{
			plugins: new Ext.ux.TabCloseMenu(), defaults: {autoScroll: true}
		}
		)]
	}
	]
}