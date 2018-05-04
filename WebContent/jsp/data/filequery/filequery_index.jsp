<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="com.ods.util.action.ActionView"%>
<%@ page import="com.ods.base.bo.system.org.bo.Organization"%>
<%@page import="com.ods.util.type.StringUtil"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<% 
String local = request.getContextPath();
%>
	{
		xtype : 'panel',
		region: 'center',
		layout : 'border',
		items : [
			{
				xtype : 'panel',
				layout : 'border',
				region : 'north',
				height : 200,
				items : [
					<jsp:include page="/jsp/data/filequery/contract_list.jsp"></jsp:include>
				]
			},
			{
				xtype : 'panel',
				layout : 'border',
				region : 'center',
				items : [
					<jsp:include page="/jsp/data/filequery/filequery_list_page.jsp"></jsp:include>
				]
			}
		]
	}
