<%--
    功能            :组织机构页面
    创建时间  :2009-9-1 下午01:34:58
    创建者        : xiaowei
    Ods版权所有
--%>
<%@page import="com.ods.base.bo.system.user.bo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="com.ods.util.resource.ResourceUtil"%>
<%@ page import="com.ods.base.bo.system.org.bo.Organization"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:i18n name="com.ods.rbac.bo.org.OrgAction">
<% String local = request.getContextPath();   
	User user = com.ods.util.UserContext.getUserContext(request).getUser();
%>
{
			rootVisible:true,
			xtype : 'ods.filtertree',
			emptyFilterText : '请输入组织机构名称 ',
			autoScroll : true,
			loader : new Ext.tree.TreeLoader( {
				url : '<%=local%>/system/org/treeInfoFirstOrg.ods',
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
			 afterrender: function(t){
					setTimeout(function(){
						t.root.firstChild.expand();
						var p = t.root;
						p.ui.checkbox.checked=true;
						p.ui.checkbox.defaultChecked=true;
						p.attributes.checked=true;
						p.fireEvent('checkchange',p,true);
					}, 1000);
				},
				'click' : function(n) {
					var store = this.findParentByType('panel').findParentByType('panel').findByType('ods.grid')[0].getStore();
					var node = n; 
				    node.ui.checkbox.checked=true;
					node.ui.checkbox.defaultChecked=true;
				    node.attributes.checked=true; 
					 var selNodes=node.getOwnerTree().getChecked();
	    	         var panel=this.findParentByType('panel');
					Ext.each(selNodes, function(p)
					{
						if (p!=node)
						{
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
						'allOrgPk' : allOrgPk
					});  
					store.load();
				},
	    	  'checkchange': function(node, checked){
	    	    var selNodes=node.getOwnerTree().getChecked();
	    	    var panel=this.findParentByType('panel');
					Ext.each(selNodes, function(p)
					{
						if (p!=node)
						{
							p.ui.checkbox.checked=false;
							p.ui.checkbox.defaultChecked=false;
							p.attributes.checked=false;
						}
					}); 
				node.fireEvent('click',node,true); 
				} 
			}
			, root: new Ext.tree.AsyncTreeNode(
			{
				orgPk: '<%=user.getFirstOrgPk()%>',
				text: '<%=user.getFirstOrgName()%>',
			    expanded: true
			})
		}
</s:i18n>