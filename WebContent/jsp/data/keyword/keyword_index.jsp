<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="com.ods.util.action.ActionView"%>
<%@ page import="com.ods.base.bo.system.org.bo.Organization"%>
<%@page import="com.ods.util.type.StringUtil"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<% 
String local = request.getContextPath();
%>
{
	layout : 'border',
	xtype : 'panel',
	border : false,
	items : [{
	        region: 'west',
			width: 500,
			layout : 'border',
			xtype : 'panel',
			title: '合同列表',
			collapsible : true,	
			split : true,
		    collapsible : true,
		items:[
		
				{
				xtype : 'panel',
				layout : 'border',
				region : 'north',
				height : 240,
				split : true,
				items : [
				  <jsp:include page="/jsp/data/keyword/contract_list.jsp"></jsp:include>
				]
			}
			,{
				xtype : 'panel',
				layout : 'border',
				region : 'center',
				title: '已经选择的分类',
				items : [
					<jsp:include page="/jsp/data/keyword/contract_class_List.jsp"></jsp:include>
				]
			}
		]
	},{
		xtype : 'panel',
		region: 'center',
		layout : 'fit',
		title: '分类列表',
		items:[
			<jsp:include page="/jsp/data/keyword/keyword_tree.jsp"></jsp:include>
		]
	}
	]
}
