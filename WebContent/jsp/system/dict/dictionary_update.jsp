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
	,url:'<%=request.getContextPath() %>/system/dict/update_info.ods'
	,successAfter:function(f) {
	    var win=this.findParentByType('window');
	    win.rootnode.reload();
	    win.close();
	}
	,items:[  
	{
		name : 'dictionaryCommon.nodeOrderby',
		anchor : '95%',
		xtype : 'numberfield',
		fieldLabel : '排列顺序',
		allowBlank : true, 
		value:'${dictionaryCommon.nodeOrderby}',
		decimalPrecision: 0
	}
	,
	{
		allowBlank:false
		,name:'dictionaryCommon.dicCode',anchor:'95%'
		,value : '${dictionaryCommon.dicCode}'
		,xtype:'textfield'
		            ,fieldLabel:'编码'
				
	}
	,
	{
			allowBlank:false
			,name:'dictionaryCommon.dicName',value:'${dictionaryCommon.dicName}',anchor:'95%'
			,xtype:'textfield'
			,fieldLabel : '名称'
            ,maxLength : 50
		},{
			name:'dictionaryCommon.dicCommonPk',value:'${dictionaryCommon.dicCommonPk}',xtype:'hidden'
		},{
			name:'dictionaryCommon.dicCommonFatherPk',value:'${dictionaryCommon.dicCommonFatherPk}',xtype:'hidden'
		},{
			name:'dictionaryCommon.dictType',value:'${dictionaryCommon.dictType}',xtype:'hidden'
		},{
			name:'dictionaryCommon.createUserPk',value:'${dictionaryCommon.createUserPk}',xtype:'hidden'
		},{
			name:'dictionaryCommon.createTime',value:'${dictionaryCommon.createTime}',xtype:'hidden'
		}
	]
	,xbuttons:
	[{
		 text:'保存'
		,iconCls: 'form_save'
		,xbutton:'this.submitXForm'
	},{
		 text: '关闭'
		,iconCls: 'from_exit'
		,handler : function(btn) {
			btn.findParentByType('window').close();
		}
	}]
}