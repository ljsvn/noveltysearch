<%@page import="com.ods.util.type.StringUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	StringBuilder portalBuilder = (StringBuilder) request.getAttribute("portalBuilder");
	if (portalBuilder.length() > 0) { 
		String portalString=portalBuilder.toString().trim(); 
		if(StringUtil.equals(",",portalString.substring(portalString.length()-1,portalString.length()))){
			portalString=portalString.substring(0,portalString.length()-1);
		} 
%>
{ xtype:'portal', height: document.body.scrollHeight-103, region: "center", margins:'5 5 5 0', defaults: {tools: 
[{
	handler: function(e, t, p)
	{
		p.ownerCt.remove(p, true);
	}
}]
}, items:[<%=portalString%>] }
<%
	}
%>
