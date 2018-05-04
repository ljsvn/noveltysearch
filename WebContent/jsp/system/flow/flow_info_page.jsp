<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>
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
	bodyStyle: 'padding-top: 15px',
	url: '<%=local %>/system/flow/modify_info.ods',
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
				name: 'flowInfo.flowName',
				anchor: '97%',
				xtype: 'textfield',
				maxLength: 50,
				fieldLabel: '流程名称',
				allowBlank: false,
				emptyText:'请输入流程名称',
				readOnly: <%=StringUtil.equals("3",request.getParameter("validatetype")) %> ? true: false,
				value: '${flowInfo.flowName }'
			},{
				<%=DataDictionaryCommonAction.jsonCombo("flowType","流程类型","0",local) %>,
				allowBlank: false,
				anchor: '97%',
				readOnly: <%=StringUtil.equals("3",request.getParameter("validatetype")) %> ? true: false,
				value: '${flowInfo.flowType }'
			},{
				name: 'flowInfo.memo',
				anchor: '97%',
				xtype: 'textarea',
				height: 80,
				maxLength: 250,
				fieldLabel: '备注',
				readOnly: <%=StringUtil.equals("3",request.getParameter("validatetype")) %> ? true: false,
				value: '${flowInfo.memo }'
			}]
		}]
	},{
		//主键
		name: 'flowInfo.flowInfoPk',
		xtype: 'hidden',
		value: '${flowInfo.flowInfoPk }'
	},{
		//流程分类
		name: 'flowInfo.flowClassify',
		xtype: 'hidden',
		value: '${flowInfo.flowClassify }'
	},{
		//所属组织机构主键
		name: 'flowInfo.orgPk',
		xtype: 'hidden',
		value: '${flowInfo.orgPk }'
	},{
		//一级组织机构主键
		name: 'flowInfo.firstOrgPk',
		xtype: 'hidden',
		value: '${flowInfo.firstOrgPk }'
	},{
		//创建人组织机构主键
		name: 'flowInfo.createOrgPk',
		xtype: 'hidden',
		value: '${flowInfo.createOrgPk }'
	},{
		//创建人主键
		name: 'flowInfo.createUserPk',
		xtype: 'hidden',
		value: '${flowInfo.createUserPk }'
	},{
		//创建时间
		name: 'flowInfo.createTime',
		xtype: 'hidden',
		value: '${flowInfo.createTime }'
	}],
	xbuttons: [<%if(!StringUtil.equals("3",request.getParameter("validatetype"))){ %>{
		text: '保存',
		iconCls: 'form_save',
		handler: function(btn){
			var form=btn.findParentByType('form');
			if(form.getForm().isValid()){
				form.getForm().submit({
					waitTitle: '请稍等...',
					waitMsg: '正在提交信息...',
					url: form.url,
					success: function(f, action){
						form.successAfter(form);
					},
					failure: function(f, action){
						var responseText = Ext.util.JSON.decode(action.response.responseText);
						Ext.MessageBox.show({
							title: '系统提示', msg: responseText.msg, buttons: Ext.MessageBox.OK, icon: 'ext-mb-error'
						});
					}
				});
			}
		}
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