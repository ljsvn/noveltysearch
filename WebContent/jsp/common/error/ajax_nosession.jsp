<%--
    功能            :
    创建时间  :2009-9-10 下午06:33:15
    创建者        : 10325431@qq.com.cn
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.ods.util.resource.ResourceUtil"%>
<%@page import="com.ods.util.config.bean.xml.ProductsDataCache"%>
<%
   ProductsDataCache productsDataCache=ProductsDataCache.getInstance();
%> 
<head>
	<meta http-equiv="Content-Type"	content="text/html; charset=utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="chrome=1">
	<title><%=productsDataCache.getWebTitle()%></title>
	<%String local = request.getContextPath(); %>
    <link rel="icon" href="<%=local%>/image/company/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="<%=local%>/image/company/favicon.ico" type="image/x-icon"/>
     	<!-- 防止按键盘的Backspace键 -->
 	<script type="text/javascript"><!-- 
// For IE 
var ua = navigator.userAgent.toLowerCase();  
if (ua.indexOf("msie")>-1||ua.indexOf("chrome")>-1) { 
	document.onkeydown = check;
	function check(e) {
	    var code;
	    if (!e) var e = window.event;
	    if (e.keyCode) code = e.keyCode;
	    else if (e.which) code = e.which;
	
	if (((event.keyCode == 8) &&                                                    //BackSpace 
	         ((event.srcElement.type != "text" && 
	         event.srcElement.type != "textarea" && 
	         event.srcElement.type != "password") || 
	         event.srcElement.readOnly == true)) || 
	        ((event.ctrlKey) && ((event.keyCode == 78) || (event.keyCode == 82)) )   //CtrlN,CtrlR 
	        ) {                                                  
	        event.keyCode = 0; 
	        event.returnValue = false; 
	    }
	
	return true;
	} 
 } if (ua.indexOf("firefox")>-1) {   // FireFox/Others 
  document.onkeypress = function(e) { 
    var type = e.target.type; 
    var code = e.keyCode; 
    if ((code != 8 & code != 13) || 
        (type == 'text' & code != 13 ) || 
        (type == 'textarea') || 
        (type == 'submit' & code == 13)) { 
        return true ;
    } else { 
       // alert('你真的想放弃现在正在编辑的内容吗？再想想！'); 
        return false ;
    } 
  } 
} 
// --></script>
	
	</head>
{xtype:'panel' ,html:'<%=ResourceUtil.getResourceString("msg.login.timeout",
							request.getContextPath())%>' }
