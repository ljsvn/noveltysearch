<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="com.ods.base.bo.system.org.bo.Organization"%>
<%@ page import="com.ods.util.hibernate.SpringHibernate"%>
<%@ page import="com.ods.util.spring.SpringBeanFactory"%>
<%
String local = request.getContextPath();
SpringHibernate springHibernate = (SpringHibernate) SpringBeanFactory.getBean("DAOProxy");
Organization org = new Organization();
try{
	org = (Organization)springHibernate.selectByPk("orgPk",Organization.ROOT_NODE_PK,Organization.class);
}catch(Throwable e){
	org.setOrgPk(Organization.ROOT_NODE_PK);
	org.setOrgName("组织机构");
}
%>
{
	rootVisible:true,
	xtype: 'ods.filtertree',
	emptyFilterText: '请输入组织机构名称 ',
	autoScroll: true,
	loader: new Ext.tree.TreeLoader( {
		url: '<%=local%>/system/org/tree_info.ods',
		baseParams: {
			orgPk: ''
		},
		listeners: {
			'beforeload': function(load, node) {
				this.baseParams['orgPk'] = node.attributes.orgPk;
			}
		}
	}),
	listeners: {
		'click': function(n) {
			var node = n; 
			node.ui.checkbox.checked=true;
			node.ui.checkbox.defaultChecked=true;
			node.attributes.checked=true; 
			var selNodes=node.getOwnerTree().getChecked();
			Ext.each(selNodes, function(p){
				if (p!=node){
					p.ui.checkbox.checked=false;
					p.ui.checkbox.defaultChecked=false;
					p.attributes.checked=false;
				}
			});
			var orgPk = n.attributes.orgPk;
			var detail_panel = Ext.getCmp('org_detail_panel_id');
		    detail_panel.removeAll();
		    detail_panel.insert(0,{
				plugins: [new Ext.ux.Plugin.RemoteComponent({
					url: '<%=local %>/org/detail/into_page.ods', 
					params: {
						orgPk: orgPk
					},
					method: 'post'
				})]
			});
		    detail_panel.doLayout(true);
		},
		'checkchange': function(node, checked){
			node.fireEvent('click',node,true); 
		}
	},
	root: new Ext.tree.AsyncTreeNode({
		orgPk: '<%=org.getOrgPk()%>',
		text: '<%=org.getOrgName()%>',
		checked: false,
		expanded: true
	})
}
