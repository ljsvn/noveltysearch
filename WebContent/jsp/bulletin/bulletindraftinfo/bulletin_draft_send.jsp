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
	bodyStyle: 'padding-top:5px', frame: true, xtype: 'ods.formpanel',
	fileUpload: true, border: false, autoScroll: true, labelWidth: 80, buttonAlign: 'center', 
	labelAlign: 'right', buttonAlign: 'center', labelAlign: 'right', enterKey: false,
	url: '<%=local%>/bulletin/draft/send_draft.ods',
	successAfter: function(f){
		var panel = Ext.getCmp('bulletin_draft_image_panel');
		panel.remove(0);
			panel.insert(0, new Ext.Panel({
			html: '<img height="150" align="left" width="300" src="<%=request.getContextPath() %>/image/image.png">'
		}));
		panel.doLayout(true);
		var win = this.findParentByType('window');
		win.store.load();
		win.close();
	},
	items: [
	{
		layout: 'column', border: false,
		items: [
		{
			layout: 'form', columnWidth: .6,bodyStyle: 'padding-top:20px',
			items: [
			{
				xtype: 'radiogroup', width: 200, fieldLabel: '发送对象',
				items: [
				{
					name: 'bulletinInfo.sendType', anchor: '95%', xtype: 'radio',
					boxLabel: '全体', inputValue: 0, checked: true
					,listeners:{
						'check': function(){
							if(this.getValue()){
								var form=this.findParentByType('ods.formpanel');
								form.getForm().findField('receiveObjs').setValue('全体');
								form.getForm().findField('orgPks').setValue('');
								form.getForm().findField('userPks').setValue('');
								form.findByType('panel')[0].findByType('button')[0].disable();
							}
						}
					}
				},{
					name: 'bulletinInfo.sendType', anchor: '95%', xtype: 'radio',
					boxLabel: '部门', inputValue: 1
					,listeners:{
						'check': function(){
							if(this.getValue()){
								var form=this.findParentByType('ods.formpanel');
								form.getForm().findField('receiveObjs').setValue('');
								form.getForm().findField('orgPks').setValue('');
								form.getForm().findField('userPks').setValue('');
								form.findByType('panel')[0].findByType('button')[0].enable();
							}
						}
					}
				},{
					name: 'bulletinInfo.sendType', anchor: '95%', xtype: 'radio',
					boxLabel: '个人', inputValue: 2
					,listeners:{
						'check': function(){
							if(this.getValue()){
								var form=this.findParentByType('ods.formpanel');
								form.getForm().findField('receiveObjs').setValue('');
								form.getForm().findField('orgPks').setValue('');
								form.getForm().findField('userPks').setValue('');
								form.findByType('panel')[0].findByType('button')[0].enable();
							}
						}
					}
				}]
			},{
				layout: 'column',
				items: [
				{
					layout: 'form', columnWidth: .85,
					items: [
					{
						name: 'receiveObjs', anchor: '95%', xtype: 'textarea',
						fieldLabel: '接收对象', emptyText: '请选择接收对象',
						readOnly: true, allowBlank: false, value: '全体'
					},{
						name: 'orgPks', xtype: 'hidden'
					},{
						name: 'userPks', xtype: 'hidden'
					}]
				},{
					xtype: 'button', columnWidth: .1, text: '选择', disabled: true,
					handler: function(btn){
						var formpanel = btn.findParentByType('ods.formpanel').getForm();
						var sendType = formpanel.findField('bulletinInfo.sendType').getGroupValue();
						new Ext.Window(
						{
							layout: 'border', title: '选择接收信息用户--网页对话框', autoDestroy: true, width: 300, height: 500,
							plain: true, modal: true, iconCls: 'bogus', resizable: false, items: [
							{
								layout: 'fit', region: 'center', xtype: 'panel', 
								items: [
									sendType == 1?<jsp:include page="/jsp/bulletin/bulleninsend/select_org_tree.jsp"></jsp:include>:
									<jsp:include page="/jsp/bulletin/bulleninsend/select_user_tree.jsp"></jsp:include>
								]
							}
							]
						}).show();
					}
				}]
			},{
				layout: 'form'
				,columnWidth: .65
				,items: [{
					<%=DataDictionaryCommonAction.jsonCombo("bulletinInfo.bulletinType", "公告类型", "101", local)%>
					,allowBlank: false, anchor: '95%', value: '${bulletinInfo.bulletinType }'
				}]
			},{
				allowBlank: false,
				name: 'bulletinInfo.bulletinTitle',
				value: '${bulletinInfo.bulletinTitle }',
				fieldLabel: '公告标题',
				anchor: '95%',
				xtype: 'textfield',
				maxLength: 50
			},{
				name: 'bulletinInfo.upload', 
				anchor: '95%', 
				xtype: 'fileuploadfield', 
				fieldLabel: '附件', 
				buttonText: '',
				value: '${bulletinInfo.fileName }' == '' ? '无附件' : '${bulletinInfo.fileName }',
				buttonCfg:{
					iconCls: 'upload-icon'
				}
			}
			]
		},
		{
			layout: 'form', columnWidth: .35,
			items: [
			{
				items: [
				{
					id: 'bulletin_draft_image_panel',
					items: [
					{
						<%
						if(!bulletinInfo.getImgPath().equals("")){ 
						%>
						items: [
						{
						 	html: '<img height="150" align="left" width="300" src="${bulletinInfo.imgPath}">'
						}]
						<% 
						}else{
						%>
						items: [
						{
						 	html: '<img height="150" align="left" width="300" src="<%=request.getContextPath() %>/image/image.png">'
						}
						]
						<%
						} 
						%>	
					},{
						name: 'bulletinInfo.imgPath', xtype: 'hidden',
						value: '${bulletinInfo.imgPath }'
					}
					]
				},{
					height: 3
				},{
					layout: 'column', xtype: 'panel', 
					defaults:{
						layout: 'form', columnWidth: .5
					}
					,items: [
					{
				  		xtype: 'button', text: '选择图片', iconCls: 'form_save',
				  		handler: function(btn){
							var panel = Ext.getCmp('bulletin_draft_image_panel');
							var form=btn.findParentByType('ods.formpanel').getForm();
							new Ext.Window({
						  		panel: panel, form: form, layout: 'border', title: '上传图片', 
						  		autoDestroy: true, width: 320,  height: 130, plain: true, 
						  		modal: true, iconCls: 'bogus', resizable: false, 
							  	items: [
							  	{
							    	layout: 'fit', region: 'center', xtype: 'panel', 
							    	plugins: [new Ext.ux.Plugin.RemoteComponent({
							      		url: '<%=local%>/bulletin/image/upload_page.ods', 
							      		params:{
							        		height: 150,width: 300,
							        		imagePath: 'bulletinInfo.imgPath',
							      		},
							      		method: 'post'
						    		})]
							  	}]
								,listeners:{
									close: function(src){
										if(form.findField('bulletinInfo.imgPath').getValue()){
											Ext.getCmp('bulletin_draft_image_delete_button').enable();
										}
									}
								}
							}).show();
					  	}
					},{
				  		xtype: 'button', text: '取消', iconCls: 'from_exit', 
				  		id: 'bulletin_draft_image_delete_button',
				  		handler: function(btn){
							var panel = Ext.getCmp('bulletin_draft_image_panel');
							//var panel = btn.findParentByType('panel').findParentByType('panel').findByType('panel')[0];
							var form = btn.findParentByType('ods.formpanel').getForm();
							panel.remove(0);
				 			panel.insert(0, new Ext.Panel({
								html: '<img height="150" align="left" width="300" src="<%=request.getContextPath() %>/image/image.png">'
							}));
							panel.doLayout(true);
							var imagePath = form.findField('bulletinInfo.imgPath');
							imagePath.setValue('');
					  	}
					}
					]
				}
				]
			}]
		},{
			name: 'bulletinInfo.bulletinPk', xtype: 'hidden',
			value: '${bulletinInfo.bulletinPk }'
		},{
			name: 'bulletinInfo.filePath', xtype: 'hidden',
			value: '${bulletinInfo.filePath }'
		},{
			name: 'bulletinInfo.fileName', xtype: 'hidden',
			value: '${bulletinInfo.fileName }'
		},{
			name: 'bulletinInfo.isDraft', xtype: 'hidden',
			value: '${bulletinInfo.isDraft }'
		},{
			name: 'bulletinInfo.createOrgPk', xtype: 'hidden',
			value: '${bulletinInfo.createOrgPk }'
		},{
			name: 'bulletinInfo.createUserPk', xtype: 'hidden',
			value: '${bulletinInfo.createUserPk }'
		},{
			name: 'bulletinInfo.createTime', xtype: 'hidden',
			value: '${bulletinInfo.createTime }'
		}
		]
	},{
		name: 'bulletinInfo.bulletinNote',
		value: '${bulletinInfo.bulletinNote }',
		fieldLabel: '公告内容',
		anchor: '95%',
		xtype: 'htmleditor',
		height: 220
	}]
	, xbuttons: [
	{
		text: '发 送',
		iconCls: 'form_save',
		xbutton: 'this.submitXForm'
	},{
		text : '<%=ResourceUtil.getResourceString("button.close")%>',
		iconCls: 'from_exit',
		handler : function(btn) {
			btn.findParentByType('window').close();
		}
	}]
}