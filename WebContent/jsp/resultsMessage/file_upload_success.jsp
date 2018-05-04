<%@page import="com.ods.util.UserContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%
  String uploadFileName=(String)request.getAttribute("uploadFileName");  
%>
{
	success:true
	,msg: '<%=uploadFileName%>'
	,fileName: '<%=request.getAttribute("fileName") %>'
	,filePath: '<%=request.getAttribute("filePath") %>'
	,otherParameter: '<%=request.getAttribute("otherParameter") %>'
}