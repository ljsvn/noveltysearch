<%--
    功能            :
    创建时间  :2011-1-12 下午12:46:29
    创建者        : 10325431@qq.com 
    Ods版权所有
--%> 
<%@page import="com.ods.util.type.NumberUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
     <% 
     String reportParameter=(String)request.getAttribute("reportParameter"); 
 %>
<iframe marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" width="100%" height="100%" src="<%=request.getContextPath()%>/jsp/jasper/jasper_report.jsp?<%=reportParameter %>"></iframe>

