<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="com.ods.base.bo.system.user.bo.User"%>
<%@ page import="com.ods.util.type.StringUtil"%>
<%
	String local = request.getContextPath();   
	User user = com.ods.util.UserContext.getUserContext(request).getUser();
%>
{
	rootVisible:true,
	xtype : 'ods.filtertree',
	emptyFilterText : '请输入组织机构名称 ',
	autoScroll : true,
	loader : new Ext.tree.TreeLoader( {
		url : '<%=local%>/system/org/tree_info.ods',
		baseParams : {
			orgPk : ''
		},
		listeners : {
			'beforeload' : function(load, node) {
				this.baseParams['orgPk'] = node.attributes.orgPk;
			}
		}
	}),
	listeners : {
		'click' : function(n) {
			var store = this.findParentByType('panel').findParentByType('panel').findByType('ods.grid')[0].getStore();
			var node = n; 
			node.ui.checkbox.checked=true;
			node.ui.checkbox.defaultChecked=true;
			node.attributes.checked=true; 
			var selNodes=node.getOwnerTree().getChecked();
			var panel=this.findParentByType('panel');
			Ext.each(selNodes, function(p){
				if (p!=node){
					p.ui.checkbox.checked=false;
					p.ui.checkbox.defaultChecked=false;
					p.attributes.checked=false;
				}
			}); 
			var allOrgPk = node.attributes.orgPk;
			while (node.parentNode) {
				node = node.parentNode;
				allOrgPk += '_'+node.attributes.orgPk;
			}
			Ext.apply(store.baseParams, {
				'orgPk' : n.attributes.orgPk,
				'orgName' : n.attributes.text,
				'allOrgPk' : allOrgPk
			});  
			store.load();
		},
		'checkchange': function(node, checked){
			var selNodes=node.getOwnerTree().getChecked();
			var panel=this.findParentByType('panel');
			Ext.each(selNodes, function(p){
				if (p!=node){
					p.ui.checkbox.checked=false;
					p.ui.checkbox.defaultChecked=false;
					p.attributes.checked=false;
				}
			}); 
			node.fireEvent('click',node,true); 
		}
	},
	root: new Ext.tree.AsyncTreeNode({
		orgPk: '<%=StringUtil.empty(request.getParameter("firstOrgPk")) ? user.getFirstOrgPk() : request.getParameter("firstOrgPk")%>',
		text: '<%=StringUtil.empty(request.getParameter("firstOrgName")) ? user.getFirstOrgName() : request.getParameter("firstOrgName")%>',
		checked: false,
		expanded: true
	})
}
