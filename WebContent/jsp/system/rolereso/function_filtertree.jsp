<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ods.base.bo.system.role.bo.Role"%>
<% String local = request.getContextPath(); %>
{
	xtype: 'treepanel', rootVisible: false, autoScroll: true, layout: "fit", tbar: [
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
			if(resourcePks.length>0)
			{
				Ext.Ajax.request(
				{
					url: '<%=local%>/system/resource/modi_234menu_resource_info.ods', 
					success: function(response)
					{
						var responseText=Ext.util.JSON.decode(response.responseText);Ext.example.msg('系统提示', responseText.msg);
						if(panel.get(panel.items.indexOf(filtertree)+1))
						{
							panel.get(panel.items.indexOf(filtertree)+1).getRootNode().reload()
						}
					}
					, params:
					{
						'rolePk': '<%=request.getParameter("rolePk")%>', 'resourcePks': resourcePks.toString(),  'menuIdOne': Ext.getCmp('menuIdOneCombo').getValue()
					}
				});
			}
			else
			{
				Ext.example.msg('系统提示', '请选择权限!');
			}
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
	,'-',
	{
		id: 'menuIdOneCombo'
		,xtype: 'combo'
		, emptyText: '请选择模块权限'
		, frame: true
		, border: true
		, anchor: '90%'
		, mode: 'remote'
		, editable: true
		, typeAhead: true
		, resizable: true
		, selectOnFocus: true
		, triggerAction: 'all'
		,forceSelection: true
		, minChars: 2
		, queryParam: 'menuNameOne'
		, valueField: 'menuIdOne'
		, displayField: 'menuNameOne'
		, pageSize: 1000
		, store: new Ext.data.Store(
		{
			url: '<%=local %>/system/resource/module_list_info.ods', reader: new Ext.data.JsonReader(
			{
				root: 'records', totalProperty: 'total'
			}
			, ['menuIdOne','menuNameOne']),baseParams: {rolePk: '<%=request.getParameter("rolePk")%>'}
		}
		), listeners:
		{
			'select': function(c){
			var tree_panel_info=this.findParentByType('treepanel');
			Ext.apply(tree_panel_info.loader.baseParams,{
				menuIdOne: c.getValue()
			});
			tree_panel_info.getRootNode().reload();
			tree_panel_info.expandAll();
			}
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
					};
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
	, id: 'function_filtertree', loader: new Ext.tree.TreeLoader(
	{
		url: '<%=local%>/system/resource/resource_234menu_tree_info.ods', baseParams:
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