<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ods.base.bo.system.role.bo.Role"%>
<%@page import="com.ods.util.action.ActionView"%>
<%@ page import="com.ods.util.type.StringUtil"%>
<%  
	String userName = com.ods.util.UserContext.getUserContext(request).getUser().getUserLoginName();
	ActionView actionView = new ActionView();
%>
{
  frame: true, xtype: 'ods.formpanel', buttonAlign: 'center', labelAlign: 'right', 
  url: '<%=request.getContextPath() %>/system/resource/add_info.ods', bodyStyle: 'padding-top:10px', labelWidth : 72,
  successAfter: function(f)
  {
    var win=this.findParentByType('window');
    win.rootnode.reload();
    win.close();
  }
  , items: [
<%
if(StringUtil.equals(userName,"admin")){
	%><%--
  {
		xtype : 'panel',
		items : [ 
			{
				layout : 'table',
				items : [ {
					layout : 'form',
					width : 275,
					items : [ {
						name : 'firstOrgName',
						anchor : '90%',
						xtype : 'textfield',
						fieldLabel : '使用单位',
						readOnly : true,
						allowBlank: false
					} ]
				},{
					layout : 'form',
					xtype : 'panel',
					items : [ {
						xtype : 'button',
						width : 50,
						text : '选择',
						handler : function(btn) {
							var form = btn.findParentByType('form').getForm();
							win = new Ext.Window( {
								layout : 'border',
								title : '选择角色权限使用单位--网页对话框',
								form : form,
								width : 320,
								height : 400,
								plain : true,
								modal : true,
								iconCls : 'bogus',
								resizable : false,
								items : [ {
									layout : 'fit',
									region : 'center',
									xtype : 'panel',
									plugins : [ new Ext.ux.Plugin.RemoteComponent( {
										url : '<%=request.getContextPath() %>/equipment/standing/book/use_org_page.ods',
										method : 'post',
										params:{
											modiName:'firstOrgName',modiPk:'role.firstOrgPk'
										}
									}) ]
								} ]
							})
							win.show();
						}
					} ]
				} ]
			}
		]
	}
	,
	--%><%
}
%>
	{
	  name: 'role.roleName', anchor: '95%', xtype: 'textfield', fieldLabel: '角色名称', allowBlank: false, maxLength: 50
	}
	,
	{
	  xtype: 'radiogroup', fieldLabel: '角色状态', items: [
	  {
	    name: 'role.roleState', anchor: '95%', xtype: 'radio', boxLabel: '启用', inputValue: 0, checked: true
	  }
	  ,
	  {
	    name: 'role.roleState', anchor: '95%', xtype: 'radio', boxLabel: '禁用', inputValue: 1
	  }
	  ]
	}
	,
	{
	  name: 'role.roleDesc', anchor: '95%', xtype: 'textarea', height: 80, fieldLabel: '备注', maxLength: 500
	}
    ,{name: 'role.fatherRolePk', value: '<%=Role.ROOT_NODE_PK%>', xtype: 'hidden'}
    ,{name: 'role.firstOrgPk', value: '<%=actionView.getRootOrgPk(actionView.getNonceOrgPk()) %>', xtype: 'hidden'}
  ], 
  xbuttons: [
  {
    text: '保存', iconCls: 'form_save', xbutton: 'this.submitXForm'
  }
  ,
  {
    text: '重 置', iconCls: 'form_reset', handler: function(btn)
    {
      btn.findParentByType('ods.formpanel').form.reset()
    }
  }
  ,
  {
    text: '关闭', iconCls: 'from_exit', handler: function(btn)
    {
      btn.findParentByType('window').close();
    }
  }
  ]
}