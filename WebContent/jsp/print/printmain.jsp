<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
{ 
	layout:'fit'
	, border: false
	, autoScroll: true
	, title:'test print'
	, autoLoad: 
	{ 
	   url: '<%=request.getContextPath()%>/jsp/print/PrintSample2.html'
	   ,scripts: true 
	} 
}
