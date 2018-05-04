<%@page import="com.ods.util.config.bean.xml.ProductsDataCache"%>
<%@page import="com.ods.util.resource.ResourceUtil"%>
<%@page import="com.ods.base.bo.system.user.bo.User"%>
<%@page import="com.ods.util.UserContext"%>
<%@page import="com.ods.util.type.StringUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    ProductsDataCache productsDataCache=ProductsDataCache.getInstance();
	User user = UserContext.getUserContext(request).getUser();
	String lastTitle = ",您上次登录时间是：" + user.getBeforeLoginTime();;
	if(StringUtil.empty(user.getBeforeLoginTime())){
		lastTitle = ",您是新系统用户，请尽快修改登录密码" ;
	}
	String bottomTitle = "您好，<font  color=red>" 
			+ user.getUserRealName()
			+ "</font>："
			+ productsDataCache.getWebTitle()+ lastTitle;
%>
<div id="bottom" style="bottom:0px;clear:both;position: absolute; margin:0 auto;width:100%;height:100%;vertical-align: middle;z-index:2; overflow:hidden; background:url(<%=request.getContextPath()%>/jsp/main/images/footerbg.gif);">
<table border='0' width='100%' cellspacing="0" cellpadding="0" align="center" style="padding-top: 6px;">
	<tr height="30" style="font-size: 15px;">
		<td width="50%" valign="middle"><%=bottomTitle%></td>
		<td width="50%" align="right" valign="middle" id="megShowId"></td>
	</tr> 
</table>
</div>
