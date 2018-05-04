<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="com.ods.util.UserContext"%>
<%@page import="com.ods.base.bo.system.user.bo.User"%>
<% String local = request.getContextPath(); 
   User user=UserContext.getUserContext(request).getUser();
%>
{
	layout: 'border',
	xtype: 'panel',
	border: false,
	items: [{ 
	    region: 'west',
		width: 260,
		layout: 'fit',
		title: '<%=user.getFirstOrgName() %>组织机构',
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
		items: [ <jsp:include page="/jsp/system/org/public/org_tree_browse.jsp"></jsp:include>]
	},{
		region: 'center',layout: 'border',
		items: [<jsp:include page="/jsp/system/userrole/user_list.jsp"></jsp:include>  ]

	}]
}
