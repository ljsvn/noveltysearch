<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="com.ods.base.bo.system.org.bo.Organization"%>
<%@page import="com.ods.base.action.system.org.OrgAction"%>
<%@page import="com.ods.base.bo.system.user.bo.User"%>
<%@page import="com.ods.util.action.ActionView"%>
<%@ page import="com.ods.util.spring.SpringBeanFactory"%>
<%@ page import="com.ods.util.hibernate.SpringHibernate"%>
<%@ page import="com.ods.util.log.LogUtil"%>
<%@page import="com.ods.util.type.NumberUtil"%>
<%
	User user = com.ods.util.UserContext.getUserContext(request).getUser();
	String orgPk = "";
	int type = NumberUtil.toInt(request.getParameter("type"),0);
	SpringHibernate springHibernate = (SpringHibernate) SpringBeanFactory.getBean("DAOProxy");
	Organization org = new Organization();
	if(type == 0){
		orgPk = user.getFirstOrgPk();
	} else {
		orgPk = org.ROOT_NODE_PK;
	}
	try {
		org = (Organization)springHibernate.selectByPk("orgPk",orgPk,Organization.class);
	} catch(Throwable e) {
		LogUtil.writeLog(e);
		return;
    }
%>
{
	region: 'west',
	width: 250,
	collapsible: true,
	animCollapse: true,
	layout: 'fit',
	title: '<%=org.getOrgName()%>组织机构',
	minSize: 175,
	maxSize: 300,
	items: [{
		xtype: 'ods.filtertree',
		useArrows: true,
		trackMouseOver: true,
		containerScroll: true,
		split: true,
		animate: true,
		rootVisible: true,
		emptyFilterText: '请输入组织机构名称 ',
		autoScroll: true,
		loader: new Ext.tree.TreeLoader({
			url: '<%=request.getContextPath()%>/system/org/tree_info.ods',
			baseParams: {
				orgPk: ''
			},
			listeners: {
				'beforeload': function(load, node) {
					this.baseParams['orgPk']=node.attributes.orgPk;
				}
			}
		}),
		listeners: {
			afterrender: function(t){
				setTimeout(function(){
					var p = t.root.firstChild;
					if(!t.root.firstChild){
						p = t.root;
					}
					p.expand();
					p.ui.checkbox.checked=true;
					p.ui.checkbox.defaultChecked=true;
					p.attributes.checked=true;
					p.fireEvent('checkchange',p,true);
				}, 1500);
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
				var store = this.findParentByType('panel').findParentByType('panel').findParentByType('panel').findByType('ods.grid')[0].getStore();
				var allOrgPk = node.attributes.orgPk + '_' + node.attributes.fatherOrgPkAll;
				var firstOrgPk = node.firstOrgPk;
				Ext.each(panel.toolbars[0].items.items, function(bar){
					if (checked) {
						bar.enable();
					} else {
						bar.disable();
					}
				});
				if(checked){
					Ext.apply(store.baseParams, {
						'orgPk': node.attributes.orgPk,
						'orgName': node.attributes.orgName,
						'firstOrgPk': node.attributes.firstOrgPk,
						'allOrgPk': node.attributes.orgPk + '_' + node.attributes.fatherOrgPkAll
					});
					store.load();
				} else {
					Ext.apply(store.baseParams, {
						'orgPk': '',
						'orgName': '',
						'firstOrgPk': '',
						'allOrgPk': ''
					});
					store.removeAll();
				}
			}
		},
		root : new Ext.tree.AsyncTreeNode({
			orgPk: '<%=org.getOrgPk()%>',
			text: '<%=org.getOrgName()%>',
			firstOrgPk: '<%=org.getFirstOrgPk() %>',
			fatherOrgPkAll: '<%=org.getFatherOrgPkAll() %>',
			orgClassify:  'null' == '<%=request.getParameter("type") %>' ? 0 : '<%=request.getParameter("type") %>',
			checked: false,
			expanded : true
		})
	}],
	tbar: [{
		text: '新增',
		id: "org_add",
		disabled: true,
		iconCls: 'x-icon-add',
		handler: function(btn){
			var tree_panel_info=btn.findParentByType('panel').findByType('ods.filtertree')[0];
			var node = tree_panel_info.getRootNode().getOwnerTree().getChecked()[0];
	    	var win=new Ext.Window({
				layout: 'fit', 
				title: '新增组织机构信息--网页对话框', 
				rootnode: tree_panel_info.getRootNode(), 
				autoDestroy: true, 
				width: 380, 
				height: 220,
				plain: true,
				modal: true,
				iconCls: 'bogus',
				resizable: false,
    	    	plugins: [new Ext.ux.Plugin.RemoteComponent({
					url: '<%=request.getContextPath()%>/system/org/add_page.ods',
					method: 'post',
					params: {
						orgPk: node.attributes.orgPk,
						firstOrgPk: node.attributes.firstOrgPk,
						orgClassify: node.attributes.orgClassify,
						allOrgPk: node.attributes.orgPk + '_' + node.attributes.fatherOrgPkAll
            		}
   	    		})]
			});
	    	win.show();
		}
	},'-',{
		text: '修改',
		id: "org_upda",
		disabled: true,
		iconCls: 'x-icon-edit',
		handler: function(btn){
			var tree_panel_info=btn.findParentByType('panel').findByType('ods.filtertree')[0];
			var node = tree_panel_info.getRootNode().getOwnerTree().getChecked()[0];
	   		var win=new Ext.Window({
				layout: 'border',
				title: '修改组织机构信息--网页对话框',
				rootnode: tree_panel_info.getRootNode(),
				autoDestroy: true, 
				width: 380,
				height: 220,
				plain: true,
				modal: true,
				iconCls: 'bogus',
				resizable: false,
				items: [{
	    	    	layout: 'fit',
	    	    	region: 'center',
	    	    	xtype: 'panel',
	    	    	plugins: [
	    	    		new Ext.ux.Plugin.RemoteComponent({
							url: '<%=request.getContextPath()%>/system/org/update_page.ods',
							method: 'post',
							params:{
								orgPk: node.attributes.orgPk
							}
						})
					]
				}]
	    	});
	    	win.show();
		}
	},'-',{
		text: '删除',
		id: "org_dele",
		disabled: true,
		iconCls: 'x-icon-delete',
		handler: function(btn){
			var tree_panel_info=btn.findParentByType('panel').findByType('ods.filtertree')[0];
			var node = tree_panel_info.getRootNode().getOwnerTree().getChecked()[0];
			if (Ext.Msg.confirm("系统提示", '您真的要删除：' + node.attributes.orgName + '吗?', function(v){
				if (v == "yes"){
					Ext.Ajax.request({
	  		        	url: '<%=request.getContextPath()%>/system/org/delete_info.ods',
	  		        	success: function(response){
							var responseText = Ext.util.JSON.decode(response.responseText);
							Ext.example.msg('系统提示', responseText.msg);
							tree_panel_info.getRootNode().reload();
						},
						params:{
							orgPk: node.attributes.orgPk,
							'deleteType': 1
						}
					});
				}
			}));
		}
	}]
}