<%@page import="com.ods.util.config.bean.xml.ProductsDataCache"%>
<%@page import="com.ods.util.UserContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ods.util.resource.ResourceUtil"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.ods.base.bo.system.user.bo.User"%>
<%@page import="com.ods.base.bo.system.org.bo.Organization"%>
<%
User user = com.ods.util.UserContext.getUserContext(request).getUser();
%>
{
	layout: 'border', xtype: 'panel', buttonAlign: 'center', border: false
	, tbar: [
	{
		text: '确 定', iconCls: 'x-icon-add', tooltip: '选择个人公告发布人员', handler: function(btn)
		{
			var tree=btn.findParentByType('panel').findByType('treepanel')[0];
			var msg='', selNodes=tree.getChecked();
			var userpk='';
			Ext.each(selNodes, function(node)
			{
				if(node.attributes.userPk){
				if(msg.length>0){msg+=',';userpk+=',';}
				userpk+=node.attributes.userPk;msg+=node.attributes.userName;
				}
			});
			formpanel.findField('receiveObjs').setValue(msg);
			formpanel.findField('userPks').setValue(userpk);
			this.findParentByType('window').close();
		}
	}
	], items: [
	{
		region: 'center'
		, xtype: 'ods.filtertree'
		, animate: true
		, enableDD: false
		, enableDrag: true
		, containerScroll: true
		, lines: true
		, rootVisible: false
		, autoScroll: true
		, loader: new Ext.tree.TreeLoader(
		{
			url: '<%=request.getContextPath()%>/system/org/org_user_tree_info.ods', listeners:
			{
				'beforeload': function(load, node)
				{
					this.baseParams['orgPk']=node.attributes.orgPk;
				}
			}
		}
		), listeners:
		{
			'checkchange': function(node, checked)
			{
				node.attributes.checked=checked;
				if (node.isLeaf())
				{
					node.bubble(function(p)
					{
						var result=true;
						if (p.id != node.id && p.ui.checkbox)
						{
							var pChecked=true;p.eachChild(function(child)
							{
								if (child.attributes.checked == true)
								{
									pChecked=true;result=false;return false;
								}
								else
								{
									pChecked=false;
								}
							}
							);if (p.ui.checkbox)
							{
								p.ui.checkbox.checked=pChecked;p.ui.checkbox.defaultChecked=pChecked;p.attributes.checked=pChecked;
							}
						}
						return result;
					}
					, node);
				}
				else
				{
					node.eachChild(function(child)
					{
						child.ui.toggleCheck(checked);child.attributes.checked=checked;if (!child.isLeaf())
						{
							child.cascade(function(n)
							{
								n.ui.toggleCheck(checked);n.attributes.checked=checked;
							}
							);
						}
					});
				}
			}
		}
		, root: new Ext.tree.AsyncTreeNode(
		{
				orgPk: '<%=Organization.ROOT_NODE_PK %>',
				text: '<%=ProductsDataCache.getInstance().getWebTitle() %>',
				expanded : true
		}
		)
	}
	]
}