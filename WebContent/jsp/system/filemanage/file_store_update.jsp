<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="com.ods.util.type.StringUtil"%>
<% 
String local = request.getContextPath();
%>
{
	frame: true,
	xtype: 'ods.formpanel',
	border: false,
	buttonAlign: 'center',
	labelAlign: 'right',
	autoScroll: true,
	fileUpload: true,
	bodyStyle: 'padding-top: 15px',
	url: '<%=local %>/system/filemanage/store_update_info.ods',
	successAfter: function(f){
		var win=this.findParentByType('window');
		win.store.load();
		win.store=null;
		win.close();
	},
	items: [{
		xtype: 'panel',
		layout: 'column',
		defaults:{
			layout: 'form',
			columnWidth: 1,
			labelWidth: 65
		},
		items: [{
			xtype: 'panel',
			items: [{
				name: 'fileStore.fileName',
				anchor: '97%',
				xtype: 'textfield',
				maxLength: 50,
				fieldLabel: '资料名称',
				allowBlank: false,
				readOnly: <%=StringUtil.equals("3",request.getParameter("validatetype")) %> ? true: false,
				value: '${fileStore.fileName }'
			},{
				name: 'fileStore.fileKeywords',
				anchor: '97%',
				xtype: 'textfield',
				maxLength: 50,
				fieldLabel: '关键字',
				readOnly: <%=StringUtil.equals("3",request.getParameter("validatetype")) %> ? true: false,
				value: '${fileStore.fileKeywords }'
			},{
				name: 'fileStore.fileNarrate',
				anchor: '97%',
				xtype: 'textarea',
				height: 80,
				maxLength: 250,
				fieldLabel: '概要说明',
				readOnly: <%=StringUtil.equals("3",request.getParameter("validatetype")) %> ? true: false,
				value: '${fileStore.fileNarrate }'
			},{
				xtype: 'panel',
				html: '${fileStore.fileSotreUploadPath }' == '' ? '无附件' : '<a href="javascript:file_store_download(\''+'${uploadPath }'+'\')">'+'${uploadName }'+'</a>',
				fieldLabel: '附件'
			}]
		}]
	},{
		//主键
		name: 'fileStore.fileStorePk',
		xtype: 'hidden',
		value: '${fileStore.fileStorePk }'
	},{
		//所属文件目录主键
		name: 'fileStore.fileDirectoryPk',
		xtype: 'hidden',
		value: '${fileStore.fileDirectoryPk }'
	},{
		//文件存储路径
		name: 'fileStore.fileSotreUploadPath',
		xtype: 'hidden',
		value: '${fileStore.fileSotreUploadPath }'
	},{
		//创建人姓名
		name: 'fileStore.createUserName',
		xtype: 'hidden',
		value: '${fileStore.createUserName }'
	},{
		//创建人主键
		name: 'fileStore.createUserPk',
		xtype: 'hidden',
		value: '${fileStore.createUserPk }'
	},{
		//创建时间
		name: 'fileStore.createTime',
		xtype: 'hidden',
		value: '${fileStore.createTime }'
	}],
	xbuttons: [<%if(!StringUtil.equals("3",request.getParameter("validatetype"))){ %>{
		text: '保存',
		iconCls: 'form_save',
		xbutton: 'this.submitXForm'
	},<%} %>{
		text: '关闭',
		iconCls: 'from_exit',
		handler: function(btn){
			btn.findParentByType('window').close();
		}
	}]
}