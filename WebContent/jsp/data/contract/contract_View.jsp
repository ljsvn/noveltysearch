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
	  , disabled : true
	}
	,
	{
	  name: 'contract.contractEname'
	  , value: '${contract.contractEname}'
	  , anchor: '95%', xtype: 'textfield', maxLength: 256, fieldLabel: '英文名称'
	  , tabIndex: 2
	  , disabled : true
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
					, value: '${contract.company}'
					, fieldLabel: '单位名称'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 3
					, disabled : true
				}
				,
				{
					allowBlank: false
					, name: 'contract.address'
					, value: '${contract.address}'
					, fieldLabel: '通讯地址'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 5
					, disabled : true
				}
				,
				{
				     
					 name: 'contract.linkman'
					, value: '${contract.linkman}' 
					, fieldLabel: '联系人'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 7
					, disabled : true
				}
				,
				{
					 name: 'contract.email'
					, value: '${contract.email}'  
					, fieldLabel: '电子邮箱'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 9
					, disabled : true
				}
				,
				{
					 name: 'contract.taxpayerNo'
					, value: '${contract.taxpayerNo}'   
					, fieldLabel: '纳税人识别号'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 9
					, disabled : true
				}
				
				
				]
			}
			,
			{
				layout: 'form', width: 400, items: [
				{
					allowBlank: false
					, name: 'contract.lead'
					, value: '${contract.lead}' 
					, fieldLabel: '负责人'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 4
					, disabled : true
				}
				,
				{
					  name: 'contract.postCode'
					, value: '${contract.postCode}' 
					, fieldLabel: '邮编'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 6
					, disabled : true
				}
				,
				{
					 name: 'contract.tel'
					, value: '${contract.tel}' 
					, fieldLabel: '电话'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 8
					, disabled : true
				}
				,
				{
					 name: 'contract.endTime'
					, value: '${contract.endTime}' 
					, fieldLabel: '预计完成时间'
					, anchor: '90%'
					, xtype: 'datefield'
					, format: 'Y-m-d'
					, tabIndex: 10
					, disabled : true
				}
				,
				{
				    html: ' ', height: 28
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
					, value: '${contract.leadingOfficial}' 
					, fieldLabel: '负责人'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 11
					, disabled : true
				}
				]
			}
			,
			{
				layout: 'form', width: 400, items: [
				{
					allowBlank: false
					, name: 'contract.officeHolder'
					, value: '${contract.officeHolder}' 
					, fieldLabel: '查新人员'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 12
					, disabled : true
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
					 <%=DataDictionaryCommonAction.jsonCombo("contract.projectApproval", "立项查新", "63", local)%>
					, value: '${contract.projectApproval}' 
				    , anchor: '90%'
				    , emptyText:'请选择....'
				    , tabIndex: 13
				    , disabled : true
				}
				,
				{
					name: 'contract.objectiveOther'
				    , value: '${contract.objectiveOther}' 
					, fieldLabel: '查新目的其他'
					, anchor: '90%'
					, xtype: 'textfield'
					, tabIndex: 15
					, disabled : true
				}
				]
			}
			,
			{
				layout: 'form', width: 400, items: [
				{
					 <%=DataDictionaryCommonAction.jsonCombo("contract.achievement", "成果查新", "64", local)%>
					, value: '${contract.achievement}' 
				    , anchor: '90%'
				    , emptyText:'请选择....'
				    , tabIndex: 14
				    , disabled : true
				}
				,
				{
				    xtype : 'radiogroup',
					fieldLabel : '查新范围 ',
					items : [
					{
						name : 'contract.purposeScope', anchor : '95%', xtype : 'radio',checked : ${contract.purposeScope } == 0, 
						boxLabel : '国内', inputValue : 0, disabled : true
					},{
						name : 'contract.purposeScope', anchor : '95%', xtype : 'radio',checked : ${contract.purposeScope } == 1, 
						boxLabel : '国内外', inputValue : 1, disabled : true
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
	   xtype: 'panel',
	  html: '${contract.noveltyPoint }',
	  fieldLabel: '技术要点及查新点'
	}
	,
	{
	  name: 'contract.keyWords'
	  , value: '${contract.keyWords}' 
	  , anchor: '95%', xtype: 'textarea', maxLength: 256, fieldLabel: '检索词（中、英文）', height: 40
	  , tabIndex: 17
	  , disabled : true
	}	
	,
	{
	  name: 'contract.memo'
	  , value: '${contract.memo}' 
	  , anchor: '95%', xtype: 'textarea', maxLength: 256, fieldLabel: '备注', height: 40
	  , tabIndex: 18
	  , disabled : true
	}
	,
		       {
					name: 'contract.contractPk', value: '${contract.contractPk }', xtype: 'hidden'
				}
				,
				{
					name: 'contract.createOrgPk', value: '${contract.createOrgPk }', xtype: 'hidden'
				}
				,
				{
					name: 'contract.createUserPk', value: '${contract.createUserPk }', xtype: 'hidden'
				}
				,
				{
					name: 'contract.createTime', value: '${contract.createTime }', xtype: 'hidden'
				}
				,
				{
					name: 'contract.deleteType', value: '${contract.deleteType }', xtype: 'hidden'
				}
	], xbuttons: [

	{
		text: '关闭', handler: function(btn)
		{
			btn.findParentByType('window').close();
		}
	}
	]
}