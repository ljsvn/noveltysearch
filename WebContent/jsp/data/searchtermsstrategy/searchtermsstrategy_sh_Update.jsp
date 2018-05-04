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
	  name: 'contract.searchTermsStrategy'
	  , value: '${contract.searchTermsStrategy}' 
	  , anchor: '95%', xtype: 'textarea', fieldLabel: '审核结果', height: 40
	  , maxLength: 256
	  , tabIndex: 16
	}
	
		,{value: '${contract.contractState}', name: 'contract.contractState', xtype: 'hidden'}		
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
		,{value: '${contract.memo}', name: 'contract.memo', xtype: 'hidden'}
		,{value: '${contract.createOrgPk}', name: 'contract.createOrgPk', xtype: 'hidden'}
		,{value: '${contract.createUserPk}', name: 'contract.createUserPk', xtype: 'hidden'}
		,{value: '${contract.createTime}', name: 'contract.createTime', xtype: 'hidden'}
		,{value: '${contract.deleteType}', name: 'contract.deleteType', xtype: 'hidden'}
				
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