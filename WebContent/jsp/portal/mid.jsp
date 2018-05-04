<%@page import="com.ods.util.config.bean.xml.ProductsDataCache"%>
<%@page import="com.ods.util.resource.ResourceUtil"%>
<%@page import="com.ods.base.bo.system.user.bo.User"%>
<%@page import="com.ods.util.UserContext"%>
<%@page import="com.ods.util.type.StringUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    ProductsDataCache productsDataCache=ProductsDataCache.getInstance();
	User user = UserContext.getUserContext(request).getUser();
	String lastTitle = "您上次登录时间是：" + user.getBeforeLoginTime();;
	if(StringUtil.empty(user.getBeforeLoginTime())){
		lastTitle = ",您是新系统用户，请尽快修改登录密码" ;
	}
	String bottomTitle = "<font  size=5 >您好，<font  size=6 color=red>" 
			+ user.getUserRealName()
			+ "</font>："
			+ productsDataCache.getWebTitle()+ "<br>"+lastTitle+ "</font>";
%>
<html>
<head>
<%String local = request.getContextPath(); %>
<link rel="icon" href="<%=local%>/image/company/favicon.ico" type="image/x-icon"/>
<link rel="shortcut icon" href="<%=local%>/image/company/favicon.ico" type="image/x-icon"/>
<meta
	http-equiv="Content-Type" content="text/html; charset=UTF-8"
/>
<title><%=productsDataCache.getWebTitle()%></title>
<style type="text/css">

#divtitle {
	background: url(<%=request.getContextPath()%>/ image/ error/
		div_r1_c3.jpg );
}

#divbottom {
	background: url(<%=request.getContextPath()%>/ image/ error/
		div_r3_c1.jpg );
}

#divcontent {
	font-size: 38pt;
	color: #D20000;
	background-color: #D4E9FF;
	vertical-align: middle;
	line-height: 16px;
	font-family: "黑体";
}

</style>

</head>
<body>
<table
	align="center"
	border="0"
	cellpadding="0"
	cellspacing="0"
	style="height: 100%"
	width="100%" bgcolor="#00CCCC"
	 background="<%=request.getContextPath()%>/jsp/portal/mid.jpg"
>
	<tr>
		<td width="20%"></td>
		<td
			align="center"
			valign="middle"
			style="height: 100%;"
		>
		<table
			cellpadding="0"
			cellspacing="0"
			border="0"
			width="60%"
			style="height: 60%"
		>
			<tr>
				<td
					id="divtitle"
					width="20%"
					height="31px"
				>&nbsp;</td>
			</tr>
			<tr>
				<td
					id="divcontent"
					valign="top"
					align="center"
				></td>
			</tr>
			<tr>
				<td
					height="100%"
					align="left"
					valign="top"
				><br>
				<br><%=bottomTitle%> <br>
				<br>
				
				</td>
			</tr>
			<tr>
				<td
					id="divbottom"
					width="20%"
					height="15px"
				>&nbsp;</td>
			</tr>
		</table>
		</td>
		<td width="20%"></td>
	</tr>
</table>
</body>
</html>