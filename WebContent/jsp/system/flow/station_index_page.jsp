<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
{
	layout: 'border',
	xtype: 'panel',
	border: false,
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
		items: [<jsp:include page="/jsp/system/flow/station_org_tree.jsp"></jsp:include>]
	},{
		xtype: 'panel',
		region: 'center',
		border: false,
		margins: '0 3 3 0',
		layout: 'fit',
		items: [<jsp:include page="/jsp/system/flow/station_flow_info_list.jsp"></jsp:include>]
	},{
		xtype: 'panel',
		region: 'east',
		border: false,
		margins: '0 3 3 0',
		layout: 'fit',
		width: 500,
		items: [<jsp:include page="/jsp/system/flow/flow_detail_list.jsp"></jsp:include>]
	}]
}