<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.ods.util.resource.ResourceUtil"%>
{ xtype:'ods.formpanel',frame:true ,border : false,labelWidth :
180,buttonAlign : 'center',labelAlign : 'right',bodyStyle :
'padding-top:10px' ,url:'read/message/update_info.ods'
,successAfter:function(form,a) { form.reset();

this.findParentByType('window').close(); } ,items:[ {xtype :
'combo',name:'msgShowTime',hiddenName:'msgShowTime' ,fieldLabel:
'本消息再次提示时间延迟' ,value:1 ,store:[
<%
	for (int i = 1; i <= 12; i++) {
		if (i > 1) {
%>
,
<%
	}
%>
[<%=i%>,<%=i%>+'小时']
<%
	}
%>
]} ,{ name : 'readPk', value : '<%=request.getParameter("readPk").toString()%>',
xtype : 'hidden' }] ,xbuttons:[ {
<%
	// 提交页面
%>
text:'<%=ResourceUtil.getResourceString("button.ok")%>'
,xbutton:'this.submitXForm' },{
<%
	// 重置页面
%>
text:'<%=ResourceUtil.getResourceString("button.reset")%>'
,handler:function(btn) { var form =
btn.findParentByType('ods.formpanel').getForm(); form.reset();

form.items.items[0].focus(true); } },{
<%
	// 退出页面
%>
text: '<%=ResourceUtil.getResourceString("button.close")%>' ,handler :
function(btn) { btn.findParentByType('window').close(); } }] }
