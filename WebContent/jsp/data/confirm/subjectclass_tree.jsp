<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.ods.base.bo.system.org.bo.Organization"%>
<%@page import="com.ods.base.action.system.org.OrgAction"%>
<%@page import="com.ods.base.bo.system.user.bo.User"%>
<%@page import="com.ods.util.action.ActionView"%>
<%@ page import="com.ods.util.spring.SpringBeanFactory"%>
<%@ page import="com.ods.util.hibernate.SpringHibernate"%>
<%@ page import="com.ods.util.log.LogUtil"%>
<%@page import="com.ods.util.type.NumberUtil"%>
<%@ page import="com.ods.data.bo.subjectclass.SubjectClass" %>

<%
	User user = com.ods.util.UserContext.getUserContext(request).getUser();
	
	
	SpringHibernate springHibernate = (SpringHibernate) SpringBeanFactory.getBean("DAOProxy");
	SubjectClass sc = new SubjectClass();
	String subjectClassPk = sc.ROOT_NODE_PK;
	System.out.println(subjectClassPk);
	try {
		sc = (SubjectClass)springHibernate.selectByPk("subjectClassPk",subjectClassPk,SubjectClass.class);
		
	} catch(Throwable e) {
		LogUtil.writeLog(e);
		return;
    }
%>
{
	region: 'west',
	width: 350,
	animCollapse: true,
	layout: 'fit',
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
		emptyFilterText: '请输入名称 ',
		autoScroll: true,
		loader: new Ext.tree.TreeLoader({
			url: '<%=request.getContextPath()%>/subject/class/tree_info.ods',
			baseParams: {
				orgPk: ''
			},
			listeners: {
				'beforeload': function(load, node) {
					this.baseParams['subjectClassPk']=node.attributes.subjectClassPk;
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
				var store = this.findParentByType('panel').findParentByType('panel').findParentByType('panel').findByType('ods.formpanel')[0];
			   
				Ext.each(panel.toolbars[0].items.items, function(bar){
					if (checked) {
						bar.enable();
					} else {
						bar.disable();
					}
				});
				if(checked){
					Ext.Ajax.request(
			          {
			          url: '<%=request.getContextPath() %>/subject/class/updateSubjectClass.ods', success: function(response)
			            {
			            store.getForm().setValues(Ext.util.JSON.decode(response.responseText));
			            }
			          , params:
			            {
			            'subjectClassPk': node.attributes.subjectClassPk
			            }
			          }
			        );
				
				} else {
					Ext.apply(store.baseParams, {
						'subjectClassPk': '',
						'subjectClassName': '',
						'fatherPkAll': ''
					});
					store.removeAll();
				}
			}
		},
		root : new Ext.tree.AsyncTreeNode({
			subjectClassPk: '<%=sc.getSubjectClassPk()%>',
			text: '<%=sc.getSubjectClassName()%>',
			fatherPkAll: '<%=sc.getFatherPkAll() %>',
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
				title: '新增主题词分类信息--网页对话框', 
				rootnode: tree_panel_info.getRootNode(), 
				autoDestroy: true, 
				width: 680, 
				height: 520,
				plain: true,
				modal: true,
				iconCls: 'bogus',
				resizable: false,
    	    	plugins: [new Ext.ux.Plugin.RemoteComponent({
					url: '<%=request.getContextPath()%>/subject/class/add_page.ods',
					method: 'post',
					params: {
						subjectClassPk: node.attributes.subjectClassPk,
						allPk: node.attributes.subjectClassPk + '_' + node.attributes.fatherPkAll
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
				title: '修改主题词分类信息--网页对话框',
				rootnode: tree_panel_info.getRootNode(),
				autoDestroy: true, 
				width: 680,
				height: 520,
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
							url: '<%=request.getContextPath()%>/subject/class/update_page.ods',
							method: 'post',
							params:{
								subjectClassPk: node.attributes.subjectClassPk
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
			if (Ext.Msg.confirm("系统提示", '您真的要删除：' + node.attributes.subjectClassName + '吗?', function(v){
				if (v == "yes"){
					Ext.Ajax.request({
	  		        	url: '<%=request.getContextPath()%>/subject/class/delete_info.ods',
	  		        	success: function(response){
							var responseText = Ext.util.JSON.decode(response.responseText);
							Ext.example.msg('系统提示', responseText.msg);
							tree_panel_info.getRootNode().reload();
						},
						params:{
							subjectClassPk: node.attributes.subjectClassPk,
							'deleteType': 1
						}
					});
				}
			}));
		}
	}]
}