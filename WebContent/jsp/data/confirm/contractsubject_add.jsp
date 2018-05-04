<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>

<% String local = request.getContextPath(); %>
{
	frame : true,
	xtype : 'ods.formpanel',
	border : false,
	labelWidth : 90,
	buttonAlign : 'center',
	labelAlign : 'right',
	bodyStyle : 'padding-top:10px',
	url : '<%=local %>/confirem/add_info.ods',
	successAfter : function(f) {
		var win=this.findParentByType('window');
		win.store.load();
		win.store=null;
		win.close();
	},
	items : [
	{
			layout: 'table', items: [
			{
				layout: 'form', width: 500, items: [
				{
					allowBlank: false, name: 'contractSubject.subjectClassName', fieldLabel: '中文名称', anchor: '90%', 
					xtype: 'textfield', readOnly: true
				},
				{
					name: 'contractSubject.subjectClassPk', 
					xtype: 'hidden'
				}
				]
			}
			,
			{
		        layout: 'fit', xtype: 'panel', items: [
		          {
		          xtype: 'button', text: '选择', handler: function(btn)
		            {
		            var form = btn .findParentByType('ods.formpanel').getForm();
		            win = new Ext.Window(
		              {
		              layout: 'border', title: '选择--网页对话框'
		              , width: 650, height: 400, plain: true, modal: true, iconCls: 'bogus', resizable: false
		              , items: [<jsp:include page="/jsp/data/confirm/select_subjectclass.jsp"></jsp:include>]
		              }
		            );
		            win.show();
		            }
		          }
		        ]
		     }
			]
	}
	,{
		name : 'contractSubject.orderNo',
		value : '0',
		anchor : '90%',
		xtype : 'numberfield',
		fieldLabel : '排列顺序',
		allowBlank : true, 
		decimalPrecision: 0
	}
	,
	{
	  name: 'contractSubject.memo'
	  , value: '${contractSubject.memo}'
	  , anchor: '95%', xtype: 'textarea', maxLength: 256, fieldLabel: '备注', height: 60
	  , tabIndex: 12
	}
	,{
		name : 'contractSubject.contractPk',
		value : '<%=request.getParameter("contractPk") %>',
		xtype :'hidden'
	}
	],
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
