
<%@page import="java.io.File"%>
<%@page import="com.ods.util.web.WebUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    try {

        String fileName = request.getParameter("destFileName");
        File destFile = new File(fileName);
        WebUtil.exportAttachment(response, destFile, destFile.getName()
                .getBytes(), "GB2312"); 
        out.clear();
        out  =  pageContext.pushBody(); 
        response.getOutputStream().close(); 
    }catch(Throwable e) {
        e.printStackTrace();
    }finally { 
    }
%>
