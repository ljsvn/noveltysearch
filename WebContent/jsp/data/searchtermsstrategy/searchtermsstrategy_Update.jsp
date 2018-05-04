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
	  name: 'contract.contractName'
	  , value: '${contract.contractName}'
	  , anchor: '95%', xtype: 'textfield', maxLength: 256, fieldLabel: '查新项目名称'
	  , tabIndex: 1
	}
	,
	{
	  name: 'contract.contractEname'
	  , value: '${contract.contractEname}'
	  , anchor: '95%', xtype: 'textfield', maxLength: 256, fieldLabel: '英文名称'
	  , tabIndex: 2
	}
	,
	{
	    xtype: 'panel',
		html: '${contract.filePath }' == '' ? '无附件' : '<a href="javascript:file_store_download(\''+'${contract.filePath }'+'\')">'+'${contract.fileName }'+'</a>',
		fieldLabel: '附件'
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
						readOnly: true
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
			
	},
	{
		
		 name: 'contract.fileName'
		, fieldLabel: '报告名称'
		, anchor: '90%'
		, xtype: 'textfield'
	}
	,
	
	{
		 <%=DataDictionaryCommonAction.jsonCombo("contract.contractState", "合同状态", "67", local)%>
		, value: '${contract.contractState}' 
	    , anchor: '90%'
	    , tabIndex: 17
	}
		,{value: '${contract.contractPk}', name: 'contract.contractPk', xtype: 'hidden'}
		,{value: '${contract.company}', name: 'contract.company', xtype: 'hidden'}
		,{value: '${contract.lead}', name: 'contract.lead', xtype: 'hidden'}
		,{value: '${contract.address}', name: 'contract.address', xtype: 'hidden'}
		,{value: '${contract.postCode}', name: 'contract.postCode', xtype: 'hidden'}
		,{value: '${contract.linkman}', name: 'contract.linkman', xtype: 'hidden'}
		,{value: '${contract.tel}', name: 'contract.tel', xtype: 'hidden'}
		,{value: '${contract.email}', name: 'contract.email', xtype: 'hidden'}
		,{value: '${contract.beginTime}', name: 'contract.beginTime', xtype: 'hidden'}
		,{value: '${contract.endTime}', name: 'contract.endTime', xtype: 'hidden'}
		,{value: '${contract.leadingOfficial}', name: 'contract.leadingOfficial', xtype: 'hidden'}
		,{value: '${contract.officeHolder}', name: 'contract.officeHolder', xtype: 'hidden'}
		,{value: '${contract.purposeScope}', name: 'contract.purposeScope', xtype: 'hidden'}
		,{value: '${contract.projectApproval}', name: 'contract.projectApproval', xtype: 'hidden'}
		,{value: '${contract.achievement}', name: 'contract.achievement', xtype: 'hidden'}
		,{value: '${contract.objectiveOther}', name: 'contract.objectiveOther', xtype: 'hidden'}
		,{value: '${contract.noveltyPoint}', name: 'contract.noveltyPoint', xtype: 'hidden'}
		,{value: '${contract.keyWords}', name: 'contract.keyWords', xtype: 'hidden'}
		,{value: '${contract.contractState}', name: 'contract.contractState', xtype: 'hidden'}
		,{value: '${contract.contractState}', name: 'contract.contractState', xtype: 'hidden'}
		,{value: '${contract.memo}', name: 'contract.memo', xtype: 'hidden'}
		,{value: '${contract.createOrgPk}', name: 'contract.createOrgPk', xtype: 'hidden'}
		,{value: '${contract.createUserPk}', name: 'contract.createUserPk', xtype: 'hidden'}
		,{value: '${contract.createTime}', name: 'contract.createTime', xtype: 'hidden'}
		,{value: '${contract.deleteType}', name: 'contract.deleteType', xtype: 'hidden'}
		,{value: '${contract.searchTermsStrategy}', name: 'contract.searchTermsStrategy', xtype: 'hidden'}
		
				
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