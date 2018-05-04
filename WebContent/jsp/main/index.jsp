<%@page import="com.ods.util.config.bean.xml.ProductsDataCache"%>
<%@page import="com.ods.base.bo.menu.xml.MenuOne"%>
<%@page import="com.ods.util.resource.ResourceUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
ProductsDataCache productsDataCache=ProductsDataCache.getInstance();
%> 
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=9" />
    <title><%=productsDataCache.getWebTitle()%></title>
	<%String local = request.getContextPath(); %>
    <link rel="icon" href="<%=local%>/image/company/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="<%=local%>/image/company/favicon.ico" type="image/x-icon"/>
    <jsp:include page="/jsp/common/extjs_scr.jsp"></jsp:include>
    	<!-- 防止按键盘的Backspace键 -->
 	<script type="text/javascript">
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
} if(ua.indexOf("firefox")>-1) {   // FireFox/Others 
	document.onkeypress = function(e) {
		var type = e.target.type;
		var code = e.keyCode;
		if ((code != 8 & code != 13) ||
		       (type == 'text' & code != 13 ) ||
		       (type == 'textarea') ||
		       (type == 'submit' & code == 13)
		) {
			return true ;
		} else {
			// alert('你真的想放弃现在正在编辑的内容吗？再想想！'); 
			return false ;
		}
	}
}
function closeBrowser(){
	Ext.Ajax.request( {
		url : '<%=request.getContextPath()%>/main/closeBrowser.ods'
	});
}
</script>
</head>
<body >
<script>
Ext.onReady(function(){
	Ext.Ajax.on('requestcomplete',checkUserSessionStatus, this);
	function checkUserSessionStatus(conn,response,options){
		try{
			var sessionStatus = response.getResponseHeader("sessionstatus");
			if(typeof(sessionStatus) != "undefined"){
				Ext.Msg.alert('提示', '登录超时或服务端被重置，请重新登录!', function(btn, text){
					if (btn == 'ok'){
						window.location ="<%=request.getContextPath()%>/index.ods";
					}
				});   
			}
		} catch (e) {
		 
		}
	};
	new Ext.Viewport({
		layout: 'border',
		hideBorders: false,
		border: false,
		items: [{
			region: 'north',
			border: false,
			height: 130,
			autoLoad: {
				url: 'mainTopMenu.ods', scripts: true
			}
		},{
			region: 'center',
			id: 'center_panel',
			border:false,
			autoLoad: {
				url: '<%=request.getContextPath()%>/jsp/main/firstCenterPage.jsp', scripts: true
			}
		},{
			region: 'south',
			height: 29,
			border: false,
			autoLoad: {
				url: '<%=request.getContextPath()%>/jsp/main/index_bottom.jsp', scripts: true
			}
		}]
	});
});
</script>
<!--
<% //即时消息弹出框 %><jsp:include page="/jsp/main/message_box.jsp"></jsp:include>
--> 
</body>
</html>
