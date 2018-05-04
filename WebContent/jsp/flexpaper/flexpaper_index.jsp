<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    <%@page import="com.ods.util.type.StringUtil"%>
     <% 
  // 获取带路径名的swf文件
 	String onlineReadFile = (String) request.getParameter("onlineReadFile");
 	if (StringUtil.empty(onlineReadFile)) {
 		onlineReadFile = (String) request.getAttribute("onlineReadFile");
 	}
 	if (StringUtil.empty(onlineReadFile)) {
 		onlineReadFile = request.getContextPath()
 				+ "/jsp/flexpaper/unOnlineRead.docx.swf";
 	}
 %>
{
	border: false,
	html: '<iframe marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" width="100%" height="100%" src="<%=request.getContextPath()%>/jsp/flexpaper/flexpaper.jsp?<%="onlineReadFile="+onlineReadFile %>"></iframe>'
}