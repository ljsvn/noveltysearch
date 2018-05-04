<%--
    功能            :资料库信息展示树
    创建时间  :2009-11-14
    创建者        : jiangwenqi 
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.ods.util.hibernate.query.QueryPageJavaBean"%>
<%@page import="com.ods.kb.bo.kbdir.KbDirectory"%>
<%@page import="com.ods.kb.bo.kbcontent.TKbContent"%>
<s:i18n name="com.ods.kb.action.kbcontent.KbcontentAction">
<% String local = request.getContextPath(); %>
{
	xtype : 'panel', 
	autoDestroy : true, 
	autoScroll : true,
	items : [

	{
		animate : true,
		lines : false,
		rootVisible : true,
		useArrows : true,
		trackMouseOver : true,
		containerScroll : true,
		split : true,
		autoScroll : true,
		xtype : 'treepanel',
		width : 290,
		split : true,
		emptyFilterText : '查找知识点',
		collapsible : true,
		margins : '0 0 5 5',
		containerScroll : true,
		animCollapse : false,
		animate : false,
		lines : true,
		minSize : 175,
		maxSize : 300,
		autoScroll : true,
		border : false

		,
		loader : new Ext.tree.TreeLoader( {
			url : '<%=local %>/kb/content/kbcontent_page_knowledgeASYTree.ods',
			baseParams : {
				kbDirPk : '0',
				kbPk : '0',
				flag : '1',
				divFlag : 'L'
			},
			listeners : {
				'beforeload' : function(load, node) {
					if (node.attributes.kbDirPk) {
						this.baseParams['kbDirPk'] = node.attributes.kbDirPk;
					}
				}
			}
		}),
		listeners : {

			'click' : function(n) {

				if (n.attributes.kbPk) {
					var kbLinkCode = this.findParentByType('window').form
							.findField('kbContent.kbLinkPK').getValue();

					var kbLink = this.findParentByType('window').form
							.findField('kbContent.kbLink').getValue();
					if (kbLinkCode == '') {
						kbLinkCode = kbLinkCode + n.attributes.kbDirPk;
						kbLink = kbLink + n.attributes.text;
					} else {
						var s = kbLink.indexOf(n.attributes.text);
						if (s != -1) {
							return;
						}
						kbLinkCode = kbLinkCode + ';' + n.attributes.kbDirPk;
						kbLink = kbLink + ';' + n.attributes.text;
					}

					this.findParentByType('window').form.findField(
							'kbContent.kbLink').setValue(kbLink);
					this.findParentByType('window').form.findField(
							'kbContent.kbLinkPK').setValue(kbLinkCode);
				}
			}
		},
		root : new Ext.tree.AsyncTreeNode( {
			text : '资料库',
			kbDirCode : '0',
			expanded : true,
			iconCls : 'x-icon-docs'
		})

	} ]

}

</s:i18n>