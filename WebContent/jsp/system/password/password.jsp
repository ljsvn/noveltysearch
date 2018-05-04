<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.ods.util.resource.ResourceUtil"%>
{
	frame : true,
	xtype : 'ods.formpanel',
	border : false,
	buttonAlign : 'center',
	labelAlign : 'right',
	border:false,
	bodyStyle : 'padding-top:50px;padding-left:30px',
	url:'<%=request.getContextPath()%>/system/pass/updatepass.ods',
	successAfter : function(form, a) {
		 form.reset();
		 form.isValid();
	},
	items : [ {
		allowBlank : false,
		name : 'user.strOldPass',
		fieldLabel : '您的旧密码',
		anchor : '50%',
		xtype : 'textfield',
		listeners : {
			'render' : function(c) {
				c.focus(false, 2000);
			}
		},
		inputType : 'password',
		maxLength : 14,
		minLength : 6

	},
	{height:'100'}
	, {
		allowBlank : false,
		name : 'user.userPassword',
		fieldLabel : '您的新密码',
		anchor : '50%',
		xtype : 'textfield',
		id : 'user.userPassword',
		inputType : 'password',
		maxLength : 14,
		minLength : 6

	},
	{height:'100'}
	, {
		allowBlank : false,
		vtype : 'password',
		name : 'doublePass',
		fieldLabel : '确认新密码',
		anchor : '50%',
		xtype : 'textfield',
		inputType : 'password',
		maxLength : 14,
		minLength : 6,
		initialPassField : 'user.userPassword',
		minLength : 6

	}, {
      xtype: 'panel', layout: 'table', 
	bodyStyle : 'padding-top:40px;padding-left:100px',defaults:
        {
        width: 80, xtype: 'button'
        }
      , items: [
        {
        xtype: 'panel'
        }
      ,
        {
         text: '保存'
         ,iconCls: 'form_save'
         , handler: function(btn)
          {
	      var form = btn.findParentByType('ods.formpanel');
	      if (form.getForm().isValid())
	        {
	        form.submitXForm(btn);
	        }
          }
        }
      ,
        {
        xtype: 'panel'
        }
      ,
        {
        text: '重 置'
        ,iconCls: 'form_reset'
        , handler: function(btn)
          {
	      var form = btn.findParentByType('ods.formpanel');
          form.getForm().reset();
          form.getForm().isValid();
          form.getForm().items.items[0].focus(true);
          }
        }
      ]
      } ]
      
}