<%@page import="com.ods.util.UserContext"%>
<%@page import="com.ods.base.bo.menu.xml.MenuOne"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript">
var menuMainpanel=Ext.getCmp('menuMainpanelId');
setTimeout(function(){
	if(menuMainpanel.getTopToolbar().get(0)){
		onMenuClick(menuMainpanel.getTopToolbar().get(0)); 
	}
},1500);

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
 			region: 'center', xtype: 'panel', 
 			layout: 'fit', border:false,
 			plugins: [new Ext.ux.Plugin.RemoteComponent(
 			{
 				url: item.url != '#'?'<%=request.getContextPath()%>/'+item.url:'<%=request.getContextPath()%>/main/index_page.ods', 
 				method: 'post', 
 				params: {
 					menuIdOne: item.id, menuTitleOne: item.text
 				}
 			}
 			)]
 		}
 		));
 		center_panel.doLayout(true);
 	}
 }
</script>
