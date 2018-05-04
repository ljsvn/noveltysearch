<%@page import="com.ods.util.UserContext"%>
<%@page import="com.ods.base.bo.system.user.bo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> 
<style type="text/css">
a {
	color: #333;
	text-decoration: none;
	font-size: 15px;
}

a:hover {
	color: #CC3300;
	text-decoration: underline;
	font: 16px;
}

a:visited {
	color: #333;
	text-decoration: none;
	font-size: 15px;
}
</style> 
<script type="text/javascript">
var menuCount=<%=(Integer)request.getAttribute("menuCount")%>; 
var screenWidth=window.screen.availWidth;
if(menuCount*81>screenWidth){
	screenWidth=menuCount*81;
} 
	Ext.onReady(function(){
	  var panel=new Ext.Panel({
	    border: false,  //没有边框
	    //autoScroll:true, 
	   // height: 50,
	    width:screenWidth,
	    id:"menuMainpanelId",
	    renderTo: "menuMainpanel",  //显示的位置，在body里的一个div
	 	//把菜单放在Panel的顶部工具栏
	    tbar: [<%=(String)request.getAttribute("menuContent")%>]
	   });
		//用以处理菜单项点击事件
	  function onMenuClick(item)
	  {
	  	if(item.url=='')
	  	{
	  		window.location='frame.ods';
	  	}
	  	else
	  	{
	  		var center_panel=Ext.getCmp('center_panel');
	  		center_panel.removeAll();
	  		center_panel.insert(0, new Ext.Panel(
	  		{
	  			layout: 'fit', 
	  			region: 'center', 
	  			xtype: 'panel', 
	  			border: false, 
	  			plugins: [new Ext.ux.Plugin.RemoteComponent(
	  			{
	  				url: item.url != '#'?'<%=request.getContextPath()%>/'+item.url:'<%=request.getContextPath()%>/main/index_page.ods', method: 'post', params:
	  				{
	  					menuIdOne: item.id, 
	  					menuTitleOne: item.text
	  				}
	  			}
	  			)]
	  		}
	  		));
	  		center_panel.doLayout(true);
	  	}
	  }
	});
</script>
<script type="text/javascript"> 
function closeNavitage(){  
	if(Ext.isIE){
		window.close();
	} else{
		window.opener=null;
		window.open('','_self');
		window.close();
	}
	}
</script>
<div  style="width:100%;height: 100%;background-position:center;background-repeat:repeat;background-image: url(<%=request.getContextPath()%>/jsp/main/images/top.png);">
<table border="0" cellspacing="0" cellpadding="0" style="width:100%;height: 100%;"> 
	<tr height="103">
		<td><img
			src="<%=request.getContextPath()%>/jsp/main/images/heads.png"> 
			</td>
		<td valign="top" align="right"
			style="padding-right: 2px; padding-top: 0px;">
			<a target="_parent" href="<%=request.getContextPath()%>/index.ods"><img
			src="<%=request.getContextPath()%>/jsp/main/images/reset.gif"
			title="重新登录"></a>
		</td>
	</tr>
	<tr > 
		<td colspan="2" id="menuMainpanel"></td>
	</tr>
	</table>
</div>
<form id="menuFunctionForm" method="post" target="basefrm"><input
	type="hidden" name="menuIdOne" /> <input type="hidden"
	name="menuTitleOne" /></form> 
