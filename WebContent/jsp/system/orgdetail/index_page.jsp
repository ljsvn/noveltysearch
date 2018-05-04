<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String local = request.getContextPath(); %>
{
	xtype: 'panel',
	layout: 'border',
	region: 'center',
	items: [{
		region: 'west',
		width: 260,
		layout: 'fit',
		border: false,
		margins: '0 3 3 0',
		collapsible: true,
		title: '组织机构',
		useArrows: true,
		trackMouseOver: true,
		containerScroll: true,
		items: [<jsp:include page="/jsp/system/orgdetail/detail_org_tree.jsp"></jsp:include>]
	},{
		region: 'center',
		frame: true,
		autoScroll: true,
		id: 'org_detail_panel_id',
		items: [<jsp:include page="/jsp/system/orgdetail/detail_page.jsp"></jsp:include>]
	}]
}
