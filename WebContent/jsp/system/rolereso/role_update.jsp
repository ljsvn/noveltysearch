<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
{
  frame: true, xtype: 'ods.formpanel', buttonAlign: 'center', labelAlign: 'right', 
  url: '<%=request.getContextPath() %>/system/resource/update_info.ods', bodyStyle: 'padding-top:10px', labelWidth : 72,
  successAfter: function(f)
  {
    var win=this.findParentByType('window');
    win.rootnode.reload();
    win.close();
  }
  , items: [
	{
	  name: 'firstOrgName', value: '${firstOrgName}', anchor: '95%', xtype: 'textfield', fieldLabel: '使用单位', allowBlank: false, maxLength: 50
	}
	,
	{
	  name: 'role.roleName', value: '${role.roleName}', anchor: '95%', xtype: 'textfield', fieldLabel: '角色名称', allowBlank: false, maxLength: 50
	}
	,
	{
	  xtype: 'radiogroup', value: '${role.roleState}', fieldLabel: '角色状态', items: [
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
	  name: 'role.roleDesc', value: '${role.roleDesc}', anchor: '95%', xtype: 'textarea', height: 80, fieldLabel: '备注', maxLength: 500
	}
    ,{name: 'role.rolePk', value: '${role.rolePk}', xtype: 'hidden'}
    ,{name: 'role.fatherRolePk', value: '${role.fatherRolePk}', xtype: 'hidden'}
    ,{name: 'role.firstOrgPk', value: '${role.firstOrgPk}', xtype: 'hidden'}
    ,{name: 'role.deleteType', value: '${role.deleteType}', xtype: 'hidden'}
    ,{name: 'role.createUserPk', value: '${role.createUserPk}', xtype: 'hidden'}
    ,{name: 'role.createTime', value: '${role.createTime}', xtype: 'hidden'}
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