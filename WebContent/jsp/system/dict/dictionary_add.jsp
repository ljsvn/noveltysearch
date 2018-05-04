<%--
    功能		:
    创建时间	: 2010-9-7 下午06:47:32
    创建者		: cui_wenke 
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.ods.util.resource.ResourceUtil"%>
{
	frame:true
	,xtype:'ods.formpanel'
	,border : false
	,buttonAlign : 'center'
	,labelAlign : 'right'
	,labelWidth : 60
	,bodyStyle : 'padding-top:20px'
	,url:'<%=request.getContextPath() %>/system/dict/add_info.ods'
	,successAfter:function(f) {
		var win = this.findParentByType('window');
	    win.rootnode.reload();
		win.close();
	}
	,items:[
       {
		allowBlank:false
		,name:'dictionaryCommon.dicCode',anchor:'95%'
		,xtype:'textfield'
		            ,fieldLabel:'编码'
				
		}, 
		{
			allowBlank:false
			,name:'dictionaryCommon.dicName',anchor:'95%'
			,xtype:'textfield'
			,fieldLabel : '名称'
            ,selectOnFocus:true
            ,maxLength : 50
			,listeners :{
				'render' : function(c) {
					c.focus(true,true);
				}
			}
		},{
			name:'dictionaryCommon.dictType',xtype:'hidden',value:'<%=request.getParameter("dictType") %>'
		},{
			name:'dictionaryCommon.dicCommonFatherPk',xtype:'hidden',value:'<%=request.getParameter("dicCommonPk") %>'
		}
	]
	,xbuttons:
	[{
		 text:'保存'
		,iconCls: 'form_save'
		,xbutton:'this.submitXForm'
	},{
		 text:'重 置'
		,iconCls: 'form_reset'
		,handler:function(btn) {
			var form = btn.findParentByType('ods.formpanel').getForm();
			form.reset();
			form.items.items[0].focus(true);
		}
	},{
		 text: '关闭'
		,iconCls: 'from_exit'
		,handler : function(btn) {
			btn.findParentByType('window').close();
		}
	}]
}