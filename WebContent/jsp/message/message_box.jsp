<%--
    功能            :即时消息弹出框
    创建时间  :2009-10-18 下午08:23:17
    创建者        : 10325431@qq.com.cn
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="com.ods.util.UserContext"%>
<script language="JavaScript">
window.onload = function() {
	  dwr.engine.setActiveReverseAjax(true);
}
//永不提醒的方法
function eternity_not_show(readPk){
	Ext.Ajax.request( {
		url : 'read/message/update_info.ods',
		success : function(response) {
			var responseText = Ext.util.JSON.decode(response.responseText);
		},
		params : {
			'readPk' : readPk
		}
	});

	Ext.getCmp('message_'+readPk).close();
}
//提醒设置的方法
function message_read_show_manage(readPk){

	var win = new Ext.Window( {
		title : "消息提醒设置--网页对话框",
		layout : 'fit',
		autoDestroy : true,
		width : 380,
		height : 150,
		plain : true,
		modal : true,
		iconCls : 'bogus',
		resizable : false,
		items : [ {
			xtype : 'panel',
			region : 'center',
			layout : 'fit',
			plugins : [ new Ext.ux.Plugin.RemoteComponent( {
				url : 'read/message/mana_page.ods',
				method : 'post',
				params : {
					'readPk' : readPk
				}
			}) ]
		} ]
	});
	win.show();
	Ext.getCmp('message_'+readPk).close();
}
//messageInfoJson的数据格式：{contentPk:"",title:"",userPkList:"{userPk:userName},sendName:"",sendTime:"",msgTotal:10}
// {readPk:"",readerPk:"",contentPk:"",title:"",userName:"",sendName:"",sendTime:""}
function showMessageJustInTime(messageInfoJson) {  
	messageInfoJson = Ext.decode(messageInfoJson); 
		<%UserContext uc = UserContext.getUserContext(request);
			String userPk = uc.getUser().getUserPk();%> 
		if (messageInfoJson.readerPk!='<%=userPk%>') {
			return;
		}	  
		var tpl = new Ext.XTemplate(			
     	'<div class="kb_search_item_main">'
			,'<div align="left">'
			,'<a href=javascript:showMsg("'+messageInfoJson.contentPk+'","'+messageInfoJson.urlName+'","'+messageInfoJson.readPk+'")>'
			,'<font color="red" style="font-weight: bold">{title}</font></a></div>'
			,'<div class="kb_search_item_bottom">' 
				,'<li>发送人:{sendName}</li>发送时间:{sendTime}'
			,'</div>'
			,'<br/>',
			'<table width="100%">',
			  '<tr>',
			    '<td width="50%" align="left"><a href=javascript:eternity_not_show("'+messageInfoJson.readPk+'")>不再提醒</a></td>',
			    '<td width="50%" align="right"><a href=javascript:message_read_show_manage("'+messageInfoJson.readPk+'")>提醒设置>></a></td>',
			  '</tr>',
			'</table>'
		,'</div>'
		);

	  var messageInfo = tpl.apply(messageInfoJson);   
		  Ext.MessageBox.showClassMsg({
			  	id: 'message_'+messageInfoJson.readPk,
		    	title:'系统提醒消息', 
		    	minHeight:200,
		    	help: false,
		    	pinState: 'pin',
		    	width:340,
		    	html: messageInfo, 
		    	listeners: {
		    		'click':function() { 
	    		return ; 
	  				}
		    	}, 
		    	iconCls:'x-icon-information'
		  });
}
function showMsg(pk, urlName, readPk) {
	//把状态改为-1

	eternity_not_show(readPk);
	Ext.getCmp('message_' + readPk).close();

	var awin = {
		create : 'Ext.Window',
		layout : 'border',
		title : '系统消息--网页对话框',
		width : 800,
		height : 600,
		resizable : true,
		modal : true,
		plain : true,
		iconCls : 'bogus',
		closable : false,
		buttonAlign : 'center',
		items : [

		{
			xtype : 'panel',
			layout : 'fit',
			region : 'center',
			plugins : [ new Ext.ux.Plugin.RemoteComponent( {
				url : urlName,
				method : 'post',
				params : {
					'format' : 'bulletinInfo_view',
					'contentPk' : pk
				}
			}) ]
		} ]
	}
	awin.show();
}
</script>