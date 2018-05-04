<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%String msg = null == request.getAttribute("messageText")?"对不起,您所查看的页面已被删除！":request.getAttribute("messageText").toString(); %>
<%@page import="com.ods.util.type.StringUtil"%>
{
	xtype : "form",
	frame : "true",
	labelWidth : 75,
	buttonAlign : 'center',
	bodyStyle: 'padding-top:10px',
	html : '<H1 align="center"><font color="blue"><%=msg %></font></H1>',
	buttons : [ {
		text : '关闭',
		handler : function(btn) {

			btn.findParentByType('window').close();
		}
	} ]
}