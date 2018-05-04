<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.ods.util.resource.ResourceUtil"%>
<%@ page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>
<%@page import="com.ods.base.bo.system.bulletin.BulletinInfo"%>
<%
	String local = request.getContextPath();
	BulletinInfo bulletinInfo = (BulletinInfo)request.getAttribute("bulletinInfo");
%>
	{
		layout : 'border', border: false,
		items: [
		{
			bodyStyle: 'padding-top:5px', frame: true, xtype: 'ods.formpanel',
			border: false, autoScroll: true, labelWidth: 80, buttonAlign: 'center', 
			labelAlign: 'right', buttonAlign: 'center', labelAlign: 'right',
			region : 'center',layout : 'border',border: false,
			items: [
			{
				region : 'west', width : 480, layout: 'form', 
				bodyStyle: 'padding-top:10px', collapsible : true, 
				items: [
				{
					readOnly: true,
					name: 'bulletinInfo.sendType',
					value: ${bulletinInfo.sendType } == 0 ? '全体' : ${bulletinInfo.sendType } == 1 ? '部门' : ${bulletinInfo.sendType } == 2 ? '个人' : '坐席',
					fieldLabel: '接收对象',
					anchor: '95%',
					xtype: 'textfield'
				},{
					readOnly: true,
					name: 'bulletinInfo.bulletinType',
					value: '${bulletinInfo.bulletinType }',
					fieldLabel: '公告类型',
					anchor: '95%',
					xtype: 'textfield',
					maxLength: 50
				},{
					readOnly: true,
					name: 'bulletinInfo.bulletinTitle',
					value: '${bulletinInfo.bulletinTitle }',
					fieldLabel: '公告标题',
					anchor: '95%',
					xtype: 'textfield',
					maxLength: 50
				},{
					xtype: 'panel',
					html: '${bulletinInfo.filePath }' == '' ? '无附件' : '<a href="javascript:bulletin_file_download(\''+'${uploadPath }'+'\')">'+'${uploadName }'+'</a>', 
					fieldLabel: '附件'
				},{
					readOnly: true,
					name: 'bulletinInfo.createTime',
					value: '${bulletinInfo.createTime }',
					fieldLabel: '<%=request.getParameter("isDraft") %>' == 0 ? '发送时间' : '创建时间',
					anchor: '95%',
					xtype: 'textfield',
					maxLength: 50
				}
				]
			},{
				region : 'center', layout: 'form', height: 150,
				items: [
				{
					<%
					if(!bulletinInfo.getImgPath().equals("")){ 
					%>
					items: [
					{
						xtype:'ods.imageiview',
						title: '图片预览',
						renderTo : Ext.getBody(),
						src : ['${bulletinInfo.imgPath}']
					}]
					<% 
					}else{
					%>
					title: '图片预览',
					items: [
					{
					 	html: '<img height="150" align="left" width="300" src="<%=request.getContextPath() %>/image/image.png">'
					}
					]
					<%
					} 
					%>	
				}]
			},{
				layout: 'form',region: "south", height: 240, border: false,
				items: [
				{
					readOnly: true,
					name: 'bulletinInfo.bulletinNote',
					value: '${bulletinInfo.bulletinNote }',
					fieldLabel: '公告内容',
					anchor: '98%',
					xtype: 'htmleditor',
					height: 220
				}
				]
			}
			]
			,xbuttons : [
			{
				text : '<%=ResourceUtil.getResourceString("button.close")%>',
				iconCls: 'from_exit',
				handler : function(btn) {
					btn.findParentByType('window').close();
				}
			}
			]
		}
		]
	}