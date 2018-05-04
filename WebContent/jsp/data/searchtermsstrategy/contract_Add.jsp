<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%> 
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>
<% String local = request.getContextPath(); %>
{

	frame: true, layout: 'form', xtype: 'ods.formpanel', border: false, labelWidth: 100, buttonAlign: 'center', labelAlign: 'right', 
	autoScroll: true, bodyStyle: 'padding-top:10px'
	, url: '<%=local %>/contract/add_info.ods', successAfter: function(f)
	{
		var win=this.findParentByType('window');
		win.store.load();
		win.store=null;
		win.close();
	}
	, items: [
	{
	  name: 'contract.contractName', anchor: '95%', xtype: 'textfield', maxLength: 256, fieldLabel: '查新项目名称'
	  , tabIndex: 1
	}
	,
	{
	  name: 'contract.contractEname', anchor: '95%', xtype: 'textfield', maxLength: 256, fieldLabel: '英文名称'
	  , tabIndex: 2
	}
	,
	{
		layout : 'column',
		xtype : 'fieldset',
		width : 830,
		autoHeight : true,
		collapsible : true,
		title : '<font size="3">1:委托方基本信息</font>',
		defaults : {
			layout : 'form'
		},
		 items: [
		{
			layout: 'table',rowspan: 4, items: [
			{
				layout: 'form', width: 400, items: [
			
				{
					allowBlank: false
					, name: 'contract.company'
					, fieldLabel: '单位名称'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 3
				}
				,
				{
					allowBlank: false
					, name: 'contract.address'
					, fieldLabel: '通讯地址'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 5
				}
				,
				{
				     
					 name: 'contract.linkman'
					, fieldLabel: '联系人'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 7
				}
				,
				{
					 name: 'contract.email'
					, fieldLabel: '电子邮箱'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 9
				}
				
				
				]
			}
			,
			{
				layout: 'form', width: 400, items: [
				{
					allowBlank: false
					, name: 'contract.lead'
					, fieldLabel: '负责人'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 4
				}
				,
				{
					  name: 'contract.postCode'
					, fieldLabel: '邮编'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 6
					
				}
				,
				{
					 name: 'contract.tel'
					, fieldLabel: '电话'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 8
				}
				,
				{
					 name: 'contract.endTime'
					, fieldLabel: '完成时间'
					, anchor: '90%'
					, xtype: 'datefield'
					, format: 'Y-m-d'
					, tabIndex: 10
				}
				
				
				]
			}
			]
		}
		
		]
	}
	,
	{
		layout : 'column',
		xtype : 'fieldset',
		width : 830,
		autoHeight : true,
		collapsible : true,
		title : '<font size="3">2:查新方基本信息</font>',
		defaults : {
			layout : 'form'
		},
		 items: [
		{
			layout: 'table',rowspan: 4, items: [
			{
				layout: 'form', width: 400, items: [
			
				{
					allowBlank: false
					, name: 'contract.leadingOfficial'
					, fieldLabel: '负责人'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 11
				}
				]
			}
			,
			{
				layout: 'form', width: 400, items: [
				{
					allowBlank: false
					, name: 'contract.officeHolder'
					, fieldLabel: '查新人员'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 12
				}
				]
			}
			]
		}
		
		]
	}
	
	,
	{
		layout : 'column',
		xtype : 'fieldset',
		width : 830,
		autoHeight : true,
		collapsible : true,
		title : '<font size="3">3:查新目的及查新范围</font>',
		defaults : {
			layout : 'form'
		},
		 items: [
		{
			layout: 'table',rowspan: 4, items: [
			{
				layout: 'form', width: 400, items: [
			
				{
					 <%=DataDictionaryCommonAction.jsonCombo("contract.leadingOfficial", "立项查新", "63", local)%>
				    , anchor: '90%'
				    , emptyText:'请选择....'
				    , tabIndex: 13
				}
				,
				{
					name: 'contract.objectiveOther'
					, fieldLabel: '查新目的其他'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 15
				}
				]
			}
			,
			{
				layout: 'form', width: 400, items: [
				{
					 <%=DataDictionaryCommonAction.jsonCombo("contract.officeHolder", "成果查新", "64", local)%>
				    , anchor: '90%'
				    , emptyText:'请选择....'
				    , tabIndex: 14
				}
				,
				{
				    xtype : 'radiogroup',
					fieldLabel : '查新范围 ',
					items : [
					{
						name : 'contract.purposeScope', anchor : '95%', xtype : 'radio', checked : true,
						boxLabel : '国内', inputValue : 0
					},{
						name : 'contract.purposeScope', anchor : '95%', xtype : 'radio',
						boxLabel : '国内外', inputValue : 1
					}
					]
				}
				]
			}
			]
		}
		
		]
	}
	,
	{
	  name: 'contract.purposeScope', anchor: '95%', xtype: 'textarea', maxLength: 256, fieldLabel: '目的及查新范围', height: 40
	  , tabIndex: 15
	}

	,
	{
	  name: 'contract.noveltyPoint', anchor: '95%', xtype: 'htmleditor', fieldLabel: '技术要点及查新点', height: 320
	  , tabIndex: 16
	}
	,
	{
	  name: 'contract.keyWords', anchor: '95%', xtype: 'textarea', maxLength: 256, fieldLabel: '检索词（中、英文）', height: 40
	  , tabIndex: 17
	}	
	,
	{
	  name: 'contract.memo', anchor: '95%', xtype: 'textarea', maxLength: 256, fieldLabel: '备注', height: 40
	  , tabIndex: 18
	}
	,
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
						name: 'contract.filePath',
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
										filePath: 'contract.filePath',
										fileName: 'fileName',
										otherParameter: 'contract.fileName'
									
									},
									method: 'post'
								})]
							}).show();
						}
					}]
				}]
			
	}
	,
	{
		allowBlank: false
		, name: 'contract.fileName'
		, fieldLabel: '文件名称'
		, anchor: '90%'
		, xtype: 'textfield'
	}
	], xbuttons: [
	{
		text: '保存', xbutton: 'this.submitXForm'
	}
	,
	{
		text: '重 置', handler: function(btn)
		{
			var form=btn.findParentByType('ods.formpanel').getForm();
			form.reset();
			form.items.items[0].focus(true);
		}
	}
	,
	{
		text: '关闭', handler: function(btn)
		{
			btn.findParentByType('window').close();
		}
	}
	]
}