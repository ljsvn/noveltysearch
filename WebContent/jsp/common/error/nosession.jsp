<%--
    功能            :需要登录的页面session不存在的提示页面
    创建时间  :2009-6-23 上午11:53:16
    创建者        : 10325431@qq.com.cn
    Ods版权所有
--%> 
<%@page import="com.ods.util.config.bean.xml.ProductsDataCache"%>
<%@ page
	language="java"
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.ods.util.resource.ResourceUtil"
%>
<%
ProductsDataCache productsDataCache=ProductsDataCache.getInstance();
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
#outDiv {
	border: solid 3px #3462B6;
	float: none;
}

#divtitle {
	background: url(<%=request.getContextPath()%>/ image/ error/
		div_r1_c3.jpg );
}

#divbottom {
	background: url(<%=request.getContextPath()%>/ image/ error/
		div_r3_c1.jpg );
}

#divcontent {
	font-size: 15pt;
	color: #D20000;
	background-color: #D4E9FF;
	vertical-align: middle;
	line-height: 16px;
	font-family: "黑体";
}
.button {
	width: 180px;
	height: 24px;
	background: url(<%=request.getContextPath()%>/image/button.gif ) no-repeat;
	background-position: center;
	background-repeat: no-repeat;
	background-color: #ffffff;
	color: #007AB5;
	vertical-align: middle;
	font-family: "宋体";
	font-size: 14px; repeat-x;
	border: solid 0px #ffffff; 
	cursor:hand;
}
</style>
<script type="text/javascript">
	<%//返回到列表页面%>
	function onClickLogin(){
		parent.location.href='<%=request.getContextPath()%>';
		}
	//设定倒数秒数  
	var t = 10;  
	//显示倒数秒数  
	function showTime(){  
	    t -= 1; 
	    //alert(document.getElementById("showtimes"));
	    document.getElementById('okId').value=t+ " 重新登录 " ;  
	    if(t==0){  
	        location.href='<%=request.getContextPath()%>';  
	    }  
	    //每秒执行一次,showTime()  
	    setTimeout("showTime()",1000);  
	}  
	//执行showTime()  
	//showTime(); 
</script>
		
</head>
<body style="background: white" onload="showTime()">

<table
	align="center"
	border="0"
	cellpadding="0"
	cellspacing="0"
	style="height: 100%"
	width="100%"
>
	<tr>
		<td width="20%"></td>
		<td
			align="center"
			valign="middle"
			style="height: 100%;"
		>
		<table
			id="outDiv"
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
				><img
					src="<%=request.getContextPath()%>/image/error/error.jpg"
					border="0"
					width="20"
					height="24"
				> 出错页面!</td>
			</tr>
			<tr>
				<td
					height="100%"
					align="left"
					valign="top"
				><br>
				<br><%=ResourceUtil.getResourceString("msg.login.timeout",request.getContextPath())%> <br>
				<br>
				<center>
				<input type="button" name="ok"  id="okId" 
					onclick="onClickLogin()" class="button" value='重新登录'></center>
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