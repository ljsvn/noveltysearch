<%--
    功能            :组织机构页面
    创建时间  :2009-9-1 下午01:34:58
    创建者        : xiaowei
    Ods版权所有
--%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%> 
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:i18n name="com.ods.rbac.bo.org.OrgAction">
{
	layout : 'border',
	xtype : 'panel',
	border : false,
	items : [
	{
	    region : 'west',
		width : 260,
		layout: 'fit',
		title: '请单击组织机构查看登录用户日志信息',
		animate : true,
		lines : true,
		useArrows : true,
		trackMouseOver : true,
		containerScroll : true,
		split : true,
		collapsible : true,
		margins : '0 0 0 0',
		animCollapse : false,
		minSize : 175,
		maxSize : 300,
		items:[
		<jsp:include page="/jsp/system/org/public/org_tree_browse.jsp"></jsp:include>
		]
	},{
			region : 'center',
			xtype : 'panel',
	        layout : 'border',
			frame : true,
			items : [<jsp:include page="/jsp/system/operationlog/user_list.jsp"></jsp:include>  ]

		} ]

}
</s:i18n>