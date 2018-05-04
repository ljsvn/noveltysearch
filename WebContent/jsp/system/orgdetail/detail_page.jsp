<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="com.ods.util.type.StringUtil"%>
<%@page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>
<%@page import="com.ods.util.config.bean.xml.ProductsDataCache"%>
<% 
String local = request.getContextPath();
%>
{
	xtype: 'ods.formpanel',
	buttonAlign: 'center',
	border: false,
	labelAlign: 'right',
	autoScroll: true,
	bodyStyle: 'padding-top: 20px',
	url: '<%=local %>/org/detail/modify_info.ods',
	<%if(request.getParameter("orgPk") == null) {%>
	html: '<font color="red" size="4px">请选择组织机构!</font>',
	<%} %>
	items: [{
		xtype: 'panel',
		layout: 'column',
		defaults: {
			layout: 'form',
			labelWidth: 80
		},
		items: [{
			xtype : 'panel',
			columnWidth: .25,
			items: [{
				name : 'address0',
				value: '<%=ProductsDataCache.getInstance().getsystemUseArea() %>',
				readOnly: true,
				fieldLabel : '户口所在地',
				allowBlank: false,
				anchor : '98%',
				disabled: '<%=request.getParameter("orgPk") %>' == 'null' ? true : false,
				xtype : 'textfield'
			}]
		},{
			xtype : 'panel',
			columnWidth: .25,
			labelSeparator:'',
			labelWidth : 8,
			items: [{
				<%=DataDictionaryCommonAction.jsonCombo("address1","--","20",local) %>,
				anchor : '98%',
				allowBlank: false,
				disabled: '<%=request.getParameter("orgPk") %>' == 'null' ? true : false,
				value: '${address1 }'
			}]
		},{
			xtype : 'panel',
			columnWidth: .5,
			labelSeparator:'',
			labelWidth : 8,
			items: [{
				name : 'address2',
				fieldLabel : '--',
				anchor : '95%',
				xtype : 'textfield',
				emptyText: '请输入现居住地街道、社区、路、号(村、社)',
				allowBlank: false,
				maxLength: 30,
				disabled: '<%=request.getParameter("orgPk") %>' == 'null' ? true : false,
				value: '${address2 }'
			}]
		}]
	},{
		xtype: 'panel',
		layout: 'column',
		defaults:{
			layout: 'form',
			columnWidth: .5,
			labelWidth: 80
		},
		items: [{
			xtype: 'panel',
			items: [{
				name: 'organizationDetail.orgPhone1', 
				xtype: 'textfield', 
				fieldLabel: '办公电话1',
				anchor: '95%',
				maxLength: 25,
				allowBlank: false,
				regex:/^(\d{11})|((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$/,
				regexText: '请输入正确的联系方式',
				disabled: '<%=request.getParameter("orgPk") %>' == 'null' ? true : false,
				value: '${organizationDetail.orgPhone1 }'
			},{
				name: 'organizationDetail.orgPhone3', 
				xtype: 'textfield', 
				fieldLabel: '办公电话3',
				anchor: '95%',
				maxLength: 25,
				regex:/^(\d{11})|((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$/,
				regexText: '请输入正确的联系方式',
				disabled: '<%=request.getParameter("orgPk") %>' == 'null' ? true : false,
				value: '${organizationDetail.orgPhone3 }'
			},{
				xtype: 'combo',
				name: 'organizationDetail.orgLevel',
				hiddenName: 'organizationDetail.orgLevel',
				fieldLabel: '等级',
				anchor: '95%',
				triggerAction: 'all',
				forceSelection: true,
				store: [[0,'★'],[1,'★★'],[2,'★★★'],[3,'★★★★'],[4,'★★★★★']],
				disabled: '<%=request.getParameter("orgPk") %>' == 'null' ? true : false,
				value: '${organizationDetail.orgLevel }'
				
			}]
		},{
			xtype: 'panel',
			items: [{
				name: 'organizationDetail.orgPhone2', 
				xtype: 'textfield', 
				fieldLabel: '办公电话2',
				anchor: '95%',
				maxLength: 25,
				regex:/^(\d{11})|((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$/,
				regexText: '请输入正确的联系方式',
				disabled: '<%=request.getParameter("orgPk") %>' == 'null' ? true : false,
				value: '${organizationDetail.orgPhone2 }'
			},{
				name: 'organizationDetail.orgFax', 
				xtype: 'textfield', 
				fieldLabel: '传真',
				anchor: '95%',
				maxLength: 25,
				regex:/^(\d{11})|((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$/,
				regexText: '请输入正确的联系方式',
				disabled: '<%=request.getParameter("orgPk") %>' == 'null' ? true : false,
				value: '${organizationDetail.orgFax }'
			}]
		}]
	},{
		xtype: 'panel',
		layout: 'column',
		defaults: {
			layout: 'form',
			columnWidth: 1,
			labelWidth: 80
		},
		items: [{
			xtype: 'panel',
			items: [{
				xtype: 'textarea',
				name: 'organizationDetail.memo',
				fieldLabel: '备注',
				anchor: '97.5%',
				height: 80,
				maxLength: 250,
				disabled: '<%=request.getParameter("orgPk") %>' == 'null' ? true : false,
				value: '${organizationDetail.memo }'
			}]
		}]
	},{
		//主键
		name: 'organizationDetail.orgDetailPk',
		xtype: 'hidden',
		value: '${organizationDetail.orgDetailPk }'
	},{
		//所属组织机构主键
		name: 'organizationDetail.orgPk',
		xtype: 'hidden',
		value: '${organizationDetail.orgPk }'
	},{
		//创建人主键
		name: 'organizationDetail.createUserPk',
		xtype: 'hidden',
		value: '${organizationDetail.createUserPk }'
	},{
		//创建时间
		name: 'organizationDetail.createTime',
		xtype: 'hidden',
		value: '${organizationDetail.createTime }'
	},{
		//删除状态
		name: 'organizationDetail.deleteType',
		xtype: 'hidden',
		value: '${organizationDetail.deleteType }'
	}],
	xbuttons: [{
		text: '保存',
		disabled: '<%=request.getParameter("orgPk") %>' == 'null' ? true : false,
		iconCls: 'form_save',
		xbutton: 'this.submitXForm'
	},{
		text: '重 置',
		iconCls: 'form_reset',
		disabled: '<%=request.getParameter("orgPk") %>' == 'null' ? true : false,
		handler: function(btn){
			var form=btn.findParentByType('ods.formpanel').getForm();
			form.reset();
			form.items.items[0].focus(true);
		}
	}]
}