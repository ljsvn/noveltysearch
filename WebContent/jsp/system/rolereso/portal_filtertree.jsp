<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ods.base.bo.system.role.bo.Role"%>
<% String local = request.getContextPath(); %>
{
	xtype: 'treepanel', rootVisible: false, autoScroll: true, layout: "fit", 
	tbar: [
	{
		text: '保存', iconCls: 'form_save', handler: function(btn)
		{
			var filtertree=btn.findParentByType('treepanel');
			filtertree.expandAll();
			var panel=filtertree.findParentByType('panel'); 
			var resourcePks=[];
			Ext.each(filtertree.getChecked(), function(node)
			{
					if(node.parentNode.attributes.resourcePk)
					{
						resourcePks.push(node.parentNode.attributes.resourcePk+'-'+node.attributes.resourcePk);
					}
			}
			);
			var resourcePksstr ="";
			if(resourcePks.length>0)
			{
				 resourcePksstr=resourcePks.toString();
			}
			Ext.Ajax.request(
			{
				url: '<%=local%>/system/resource/modi_portal_resource_info.ods', success: function(response)
				{
					var responseText=Ext.util.JSON.decode(response.responseText);Ext.example.msg('系统提示', responseText.msg);if(panel.get(panel.items.indexOf(filtertree)+1))
					{
						panel.get(panel.items.indexOf(filtertree)+1).getRootNode().reload()
					}
				}
				, params:
				{
					'rolePk': '<%=request.getParameter("rolePk")%>', 'resourcePks': resourcePksstr
				}
			});
		}
	}
	,
	{
		text: '全选', iconCls: 'x-icon-vcardEdit', issele: true, handler: function(btn)
		{
			var tree_panel_info=btn.findParentByType('treepanel');tree_panel_info.expandAll();tree_panel_info.getRootNode().eachChild(function(child)
			{
				child.ui.toggleCheck(btn.issele);child.attributes.checked=btn.issele;if(!child.isLeaf())
				{
					child.cascade(function(n)
					{
						n.ui.toggleCheck(btn.issele);n.attributes.checked=btn.issele;
					}
					);
				}
			});btn.issele=!btn.issele;
		}
	}
	], listeners:
	{
		'checkchange': function(node, checked)
		{
			node.attributes.checked=checked;if(node.isLeaf())
			{
				node.bubble(function(p)
				{
					var result=true;if(p.id!=node.id&&p.ui.checkbox)
					{
						var pChecked=true;p.eachChild(function(child)
						{
							if(child.attributes.checked==true)
							{
								pChecked=true;result=false;return false;
							}
							else
							{
								pChecked=false;
							}
						}
						);if(p.ui.checkbox)
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
				node.expand();node.eachChild(function(child)
				{
					child.ui.toggleCheck(checked);child.attributes.checked=checked;if(!child.isLeaf())
					{
						child.cascade(function(n)
						{
							n.ui.toggleCheck(checked);n.attributes.checked=checked;
						}
						);
					}
					//child.fireEvent('checkchange', child, checked);
				});
			}
		}
	}
	, id: 'portal_filtertree', loader: new Ext.tree.TreeLoader(
	{
		url: '<%=local%>/system/resource/role_portal_tree_info.ods', baseParams:
		{
			rolePk: '<%=request.getParameter("rolePk")%>'
		}
	}
	), root: new Ext.tree.AsyncTreeNode(
	{
		expanded: true
	}
	)
}