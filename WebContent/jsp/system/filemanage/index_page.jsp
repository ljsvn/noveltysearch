<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String local = request.getContextPath(); %>
{
	layout: 'border',
	xtype: 'panel',
	border: false,
	items: [{
		xtype: 'panel',
		region: 'west',
		margins: '0 3 3 0',
		width: 300,
		layout: 'fit',
		items: [<jsp:include page="/jsp/system/filemanage/file_directory_tree.jsp"></jsp:include>]
	},{
		xtype: 'panel',
		region: 'center',
		margins: '0 3 3 0',
		border: false,
		layout: 'fit',
		items: [<jsp:include page="/jsp/system/filemanage/file_store_list.jsp"></jsp:include>]
	}]
}