<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
{
	layout: 'border',
	xtype: 'panel',
	border: false,
	items: [{
		xtype: 'panel',
		region: 'west',
		width: 400,
		border: false,
		margins: '0 3 3 0',
		layout: 'fit',
		items: [<jsp:include page="/jsp/system/flow/flow_info_list.jsp"></jsp:include>]
	},{
		xtype: 'panel',
		region: 'center',
		margins: '0 3 3 0',
		layout: 'fit',
		items: [<jsp:include page="/jsp/system/flow/flow_detail_list.jsp"></jsp:include>]
	}]
}