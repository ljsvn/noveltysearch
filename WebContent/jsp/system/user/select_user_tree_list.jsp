<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.ods.util.hibernate.query.QueryPageJavaBean"%>
<%@ page import="com.ods.util.resource.ResourceUtil"%>
<%@ page import="com.ods.util.type.StringUtil"%>
<%@	page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>
<%@	page import="com.ods.base.bo.system.user.bo.User"%>
<%
	String local = request.getContextPath();
	User user = com.ods.util.UserContext.getUserContext(request).getUser();
%>
{
	layout: 'border',
	xtype: 'panel',
	border: false,
	items: [{
		region: 'west',
		width: 220,
		layout: 'fit',
		title: '<%=StringUtil.empty(request.getParameter("firstOrgName")) ? user.getFirstOrgName(): request.getParameter("firstOrgName") %>',
		animate: true,
		lines: true,
		useArrows: true,
		trackMouseOver: true,
		containerScroll: true,
		split: true,
		collapsible: true,
		margins: '0 0 5 5',
		animCollapse: false,
		minSize: 175,
		maxSize: 300,		
		items:[<jsp:include page="/jsp/system/org/public/org_tree_browse.jsp"></jsp:include>]
	},{
		region: 'center',
		layout: 'border',
		xtype: 'panel',
		items:[<jsp:include page="/jsp/system/user/select_user_list.jsp"></jsp:include>]
	}]
}