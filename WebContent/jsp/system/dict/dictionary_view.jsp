<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.ods.util.resource.ResourceUtil"%>
{
	frame : true,
	xtype : 'ods.formpanel',
	border : false,
	buttonAlign : 'center',
	labelAlign : 'right',
	labelWidth : 60,
	bodyStyle : 'padding-top:20px',
	items : [ 
		{
		allowBlank:false
		,name:'dictionaryCommon.dicCode',anchor:'95%'
		,value : '${dictionaryCommon.dicCode}'
		,xtype:'textfield'
		,fieldLabel:'编码'
				
		}
		,
		{
			name : 'dictionaryCommon.dicName',
			value : '${dictionaryCommon.dicName}',
			anchor : '95%',
			xtype : 'textfield',
			fieldLabel : '名称',
			readOnly : true
		},{
			name : 'dictionaryCommon.createTime',
			value : '${dictionaryCommon.createTime}',
			anchor : '95%',
			xtype : 'textfield',
			fieldLabel : '创建时间',
			readOnly : true
	
		}
	],
	xbuttons : [ {

		text : '关闭',
		iconCls: 'from_exit',
		handler : function(btn) {
			btn.findParentByType('window').close();
		}
	} ]
}