<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
{
	layout: 'border',
	xtype: 'panel',
	border: false,
	items: [<jsp:include page="/jsp/system/org/org_tree.jsp"></jsp:include>
	,{
		region: 'center',
		border: true,
		layout: 'border',
		items: [<jsp:include page="/jsp/system/user/user_list.jsp"></jsp:include>]
	}]
}