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
			var subjectClassPks=[];
			var contractPk = "";
			var fatherPk = "";
			Ext.each(filtertree.getChecked(), function(node)
			{ 
			   contractPk = node.attributes.contractPk;
			   fatherPk  = node.attributes.fatherPk;
			   subjectClassPks.push(node.attributes.subjectClassPk);  
			} 
			);
			
			if(subjectClassPks.length>0)
			{
				Ext.Ajax.request(
				{
					url: '<%=local%>/confirem/modi_tree_info.ods', success: function(response)
					{
						var responseText=Ext.util.JSON.decode(response.responseText);Ext.example.msg('系统提示', responseText.msg);if(panel.get(panel.items.indexOf(filtertree)+1))
						{
							panel.get(panel.items.indexOf(filtertree)+1).getRootNode().reload()
						}
					}
					, params:
					{
						'contractPk': contractPk , 'subjectClassPks': subjectClassPks.toString() , 'fatherPk': fatherPk
					}
				});
			}
			else
			{
				Ext.example.msg('系统提示', '请选择...');
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
	]
	, id: 'keyword_filtertree', loader: new Ext.tree.TreeLoader(
	{
		url: '<%=local%>/confirem/confirem_tree_info.ods'
		,baseParams:
		{
			orgPk: ''
			
		}
	
	}
	), root: new Ext.tree.AsyncTreeNode(
	{
		expanded: true
	}
	)
}