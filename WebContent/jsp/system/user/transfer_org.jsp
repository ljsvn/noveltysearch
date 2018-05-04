<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="com.ods.base.bo.system.user.bo.User"%>
<%@page import="com.ods.util.action.ActionView"%>
<% 
String local = request.getContextPath();
ActionView actionView = new ActionView();
User user = actionView.getNonceUser();
%>
{
	frame: true,
	xtype: 'ods.formpanel',
	border: false,
	buttonAlign: 'center',
	labelAlign: 'right',
	autoScroll: true,
	bodyStyle: 'padding:20px',
	url: '<%=local %>/system/user/transfer_org.ods',
	successAfter: function(f){
		var win=this.findParentByType('window');
		win.store.load();
		win.close();
	},
	items: [{
		layout: 'column'
		,defaults:{
			columnWidth: 1
			,layout: 'form'
			,labelWidth: 60
		}
		,items: [{
			items: [{
				name: 'orgName',
				typeAhead: true,
				editable: true,
				mode: 'local',
				triggerAction: 'all', 
				dataUrl: '<%=local%>/system/org/comboxtree_info.ods',
				rootId: '-1',
				xtype: 'ods.treecombo',
				rootVisible: false,
				fieldLabel: '部门名称',
				anchor: '95%',
				allowBlank: false,
				onViewClick: function(c) {
					var form = this.findParentByType('form');
					var node=this.view.getSelectionModel().getSelectedNode();
					form.getForm().findField('orgPk').setValue(node.attributes.orgPk);
					form.getForm().findField('allOrgPk').setValue(node.attributes.fatherOrgPkAll);
					form.getForm().findField('firstOrgPk').setValue(node.attributes.firstOrgPk);
					ods.ux.TreeCombo.superclass.setValue.call(this, node.attributes.orgName);
					this.collapse();
				}
			}]
		},{
			//组织机构
			name: 'orgPk',
			xtype: 'hidden'
		},{
			//所有组织机构
			name: 'allOrgPk',
			xtype: 'hidden'
		},{
			//一级组织机构
			name: 'firstOrgPk',
			xtype: 'hidden'
		},{
			//登陆用户主键
			name: 'userPks',
			xtype: 'hidden',
			value: '<%=request.getParameter("userPks") %>'
		}]
	}],
	xbuttons: [{
		text: '保存'
		,iconCls: 'form_save'
		,xbutton: 'this.submitXForm'
	},{
		text: '关闭',
		iconCls: 'from_exit',
		handler: function(btn){
			btn.findParentByType('window').close();
		}
	}]
}