<%--
    功能		:
    创建时间	: 2010-9-7 下午06:46:46
    创建者		: cui_wenke 
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="com.ods.util.hibernate.query.QueryPageJavaBean"%>
<%@ page import="com.ods.dic.bo.datadictionarycommon.DataDictionaryCommon"%>
<%@ page import="com.ods.util.resource.ResourceUtil"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<% String local = request.getContextPath(); %>
{
	layout : 'border',
	xtype : 'panel',
	items : [ {
		animate : true,
		lines : false,
		rootVisible : true,
		useArrows : true,
		trackMouseOver : true,
		containerScroll : true,
		split : true,
		autoScroll : true,
		region : 'west',
		xtype : 'ods.filtertree',
		width : 200,
		minSize : 175,
		maxSize : 300,
		animate : true,
		containerScroll : true,
		lines : true,
		rootVisible : false,
		autoScroll : true,
		split : true,
		collapsible : true,
		margins : '0 0 5 5',
		cmargins : '0 0 0 0',
		border : false,
		title : '单击节点管理系统参数信息',
		emptyFilterText : '请输入查询内容'

		,
		root : new Ext.tree.AsyncTreeNode( {
			id : 'ROOT_NODE_PK',
			text : '系统参数基本信息',
			expanded : true,
			iconCls : 'x-icon-docs'
		}),
		loader : new Ext.tree.TreeLoader( {
			url : '<%=local%>/system/dict/menu_info.ods',
			baseParams : {
				id : 'ROOT_NODE_PK'
			}
		})

		,
		listeners : {
			click : function(n) {
            	Ext.getCmp('dict_add').enable();
				var treepanel = this.findParentByType('panel').findByType('treepanel')[1];
				treepanel.dictType = n.attributes.dictType;
				var rootnode = treepanel.getRootNode();
    			Ext.getCmp('dict_add').paramsValue = n.attributes.dictType;
				rootnode.attributes.dicCommonPk = n.attributes.dictType;
				rootnode.setText('<font color="red">' + n.attributes.text + '</font>' + '(系统参数信息)');
				rootnode.reload();
			}
		}

	}
    ,
    <jsp:include page="/jsp/system/dict/dictionary_tree.jsp"></jsp:include>
    ]
}

