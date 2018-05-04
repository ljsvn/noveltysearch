<%--
    功能            :操作结果信息页面
    创建时间  :2009-9-28 下午01:34:58
    创建者        : cui_wenke
    兴华伟业版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="com.ods.kb.bo.kbcontent.TKbContent"%>
{ 
	success:${successState}
	,msg:'<%=request.getContextPath()+ "/" +TKbContent.UPLOAD_PATH_FILENAME + "/" + TKbContent.KB_CONTENT_IMAGE%>/${messageText}'
}  