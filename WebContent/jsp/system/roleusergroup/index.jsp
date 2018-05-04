<%--
    功能            :组织机构页面
    创建时间  :2009-9-1 下午01:34:58
    创建者        : xiaowei
    Ods版权所有
--%>
<%@page import="com.ods.util.UserContext"%>
<%@page import="com.ods.base.bo.system.user.bo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="com.ods.util.resource.ResourceUtil"%>
<%@ page import="com.ods.base.bo.system.org.bo.Organization"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:i18n name="com.ods.rbac.bo.org.OrgAction">
<% String local = request.getContextPath(); 
   User user=UserContext.getUserContext(request).getUser();
%>
{
	layout : 'border',
	xtype : 'panel',
	border : false,
	items : [
	{ 
	    region : 'west',
		width : 260,
		layout: 'fit',
		title: '<%=user.getFirstOrgName() %>组织机构',
		animate : true,
		lines : true,
		useArrows : true,
		trackMouseOver : true,
		containerScroll : true,
		split : true,
		collapsible : true,
		margins : '0 0 5 5',
		animCollapse : false,
		minSize : 175,
		maxSize : 300,
		items:[ <jsp:include page="/jsp/system/org/public/org_tree_browse.jsp"></jsp:include>]
	},{
			region : 'center',layout : 'border',
			items : [<jsp:include page="/jsp/system/roleusergroup/user_list.jsp"></jsp:include>  ]

		} ]

}
</s:i18n>