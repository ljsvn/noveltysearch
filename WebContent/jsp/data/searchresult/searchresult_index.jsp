<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="com.ods.util.action.ActionView"%>
<%@ page import="com.ods.base.bo.system.org.bo.Organization"%>
<%@page import="com.ods.util.type.StringUtil"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<% 
String local = request.getContextPath();
%>
{
	layout : 'border',
	xtype : 'panel',
	border : false,
	items : [{
	        region: 'west',
			width: 500,
			layout : 'border',
			xtype : 'panel',
			title: '合同列表',
			collapsible : true,	
			split : true,
		    collapsible : true,
		items:[
		<jsp:include page="/jsp/data/searchresult/contract_list.jsp"></jsp:include>
		]
	},{
		xtype : 'panel',
		region: 'center',
		layout : 'border',
		title: '检索结构列表',
		items:[
			<jsp:include page="/jsp/data/searchresult/searchresult_List.jsp"></jsp:include>
		]
	}
	]
}


