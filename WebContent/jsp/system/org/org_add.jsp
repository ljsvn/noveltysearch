<%--
    功能            :添加组织机构信息页面
    创建时间  :2009-02-08 下午01:34:58
    创建者        : hongsen
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>
<s:i18n name="com.ods.rbac.bo.org.OrgAction">
<% String local = request.getContextPath(); %>
{
	frame : true,
	xtype : 'ods.formpanel',
	border : false,
	labelWidth : 90,
	buttonAlign : 'center',
	labelAlign : 'right',
	bodyStyle : 'padding-top:10px',
	url : '<%=local %>/system/org/add_info.ods',
	successAfter : function(f) {
		var win = this.findParentByType('window');
		win.rootnode.reload();
		win.close();
	},
	items : [
	{
		name : 'org.orgNameShort',
		anchor : '90%',
		xtype : 'textfield',
		fieldLabel : '行政区划',
		allowBlank : false,
		regex : /^\d{6}$/,
		regexText : '行政区划只能是6位数字 ',
	    emptyText: '请输入行政区划'
	},{
		name : 'org.orgType',
		anchor : '90%',
		xtype : 'textfield',
		fieldLabel : '科所队',
		allowBlank : false,
		regex : /^\d{6}$/,
		regexText : '科所队只能是6位数字 ',
	    emptyText: '请输入科所队'
	},{
		name : 'org.nodeOrderby',
		value : '0',
		anchor : '90%',
		xtype : 'numberfield',
		fieldLabel : '排列顺序',
		allowBlank : true, 
		decimalPrecision: 0
	},{
		name : 'org.orgName',
		anchor : '90%',
		xtype : 'textfield',
		fieldLabel : '组织机构名称',
		allowBlank : false,
		regex: /^[^\\\\/:"'?*<>\\|]+$/,
		regexText: '不能含有特殊字符',
		maxLength : 50,
	    emptyText:'请输入组织机构名称'
	},{
		name : 'org.fatherOrgPk',
		value : '<%=request.getParameter("orgPk") %>',
		xtype :'hidden'
	},{
		name : 'org.fatherOrgPkAll',
		value : '<%=request.getParameter("allOrgPk") %>',
		xtype :'hidden'
	},{
		name : 'org.firstOrgPk',
		value : '<%=request.getParameter("firstOrgPk") %>',
		xtype :'hidden'
	},{
		name : 'org.orgClassify',
		value : '<%=request.getParameter("orgClassify") %>',
		xtype :'hidden'
	}],
	xbuttons : [ {

		text : '保存',
		iconCls: 'form_save',
		xbutton : 'this.submitXForm'
	}, {

		text : '重置',
		iconCls: 'form_reset',
		handler : function(btn) {
			var form = btn.findParentByType('ods.formpanel').getForm();
			form.reset();
			form.findField('userInfo.infoName').focus(true);
		}
	}, {

		text : '关闭',
		iconCls: 'from_exit',
		handler : function(btn) {
			btn.findParentByType('window').close();
		}
	} ]

}
</s:i18n>