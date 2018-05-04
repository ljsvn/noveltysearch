<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ods.util.type.StringUtil"%>
<% String local = request.getContextPath(); %>
{
	xtype: "tabpanel", activeTab: 0, enableTabScroll: true, resizeTabs: false, region : 'center',
	defaults:
	{
		autoScroll: true
	}
	, plugins: new Ext.ux.TabCloseMenu(), items: [
		<jsp:include page="/jsp/bulletin/bulletinreceive/receive_whole_list.jsp"></jsp:include>,
		<jsp:include page="/jsp/bulletin/bulletinreceive/receive_org_list.jsp"></jsp:include>,
		<jsp:include page="/jsp/bulletin/bulletinreceive/receive_user_list.jsp"></jsp:include>
	]
	,listeners : {
		tabchange : function(tabPanel,panel) {
			var store = tabPanel.activeTab.findByType('ods.grid')[0].getStore();
			store.load();
		}
	}
}

