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
	url: '<%=local %>/system/filemanage/store_add_info.ods',
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
			labelWidth: 85
		},
		items: [{
			xtype: 'panel',
			items: [
			{
				xtype: 'panel',
				layout: 'column',
				defaults:{
					layout: 'form'
				},
				items: [{
					xtype: 'panel',
					columnWidth: .85,
					items: [{
						xtype: 'textfield',
						name: 'fileName',
						fieldLabel: '附件',
						anchor: '97%',
						maxLength: 50,
						readOnly: true,
						allowBlank: false
					},{
						//附件路径
						name: 'fileStore.fileSotreUploadPath',
						xtype:'hidden'
					}]
				},{
					xtype: 'panel',
					columnWidth: .15,
					items: [{
						xtype: 'button',
						width: 30,
						text: '选择',
						handler: function(btn) {
							var form = btn.findParentByType('ods.formpanel').getForm();
							new Ext.Window({
								layout: 'fit',
								title: '上传附件',
								form: form,
								width: 500,
								height: 250,
								plain: true,
								modal: true,
								iconCls: 'bogus',
								resizable: false,
								plugins: [ new Ext.ux.Plugin.RemoteComponent({
									url: '<%=local %>/jsp/upload/file_upload_time.jsp',
									params:{
										filePath: 'fileStore.fileSotreUploadPath',
										fileName: 'fileName',
										otherParameter: 'fileStore.fileName'
										
										
									},
									method: 'post'
								})]
							}).show();
						}
					}]
				}]
			},{
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
	},<%if(!StringUtil.equals("2",request.getParameter("validatetype"))){ %>{
		text: '重 置',
		iconCls: 'form_reset',
		handler: function(btn){
			var form=btn.findParentByType('ods.formpanel').getForm();
			form.reset();
			form.items.items[0].focus(true);
		}
	},<%} %><%} %>{
		text: '关闭',
		iconCls: 'from_exit',
		handler: function(btn){
			btn.findParentByType('window').close();
		}
	}]
}