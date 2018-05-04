<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String linkeType = request.getParameter("linkeType");
String linkeNodeId = null == linkeType?"":com.ods.main.action.SecondMenuAction.getMsgTypeMap().get(linkeType);
%>
{
	region: 'west'
	, border:false
	, title: '<label style="font:normal 15px tahoma,arial,verdana,sans-serif;">欢迎使用<u><%=request.getParameter("menuTitleOne")%></u></label>'
	, id: 'left_menu_tree_<%=request.getParameter("menuIdOne")%>'
	, split: true
	, width: 220
	, minSize: 175
	, maxSize: 500
	, collapsible: true
	, margins: '0 0 5 5', cmargins: '0 5 5 5', lines: true, border: false,
	autoScroll: true, collapseFirst: true, border: true, xtype: 'treepanel', rootVisible: false, root: new Ext.tree.AsyncTreeNode(
	{
		expanded: true
	}
	), loader: new Ext.tree.TreeLoader(
	{
		url: '<%=request.getContextPath() %>/main/mainLeftMenu.ods', baseParams:
		{
			linkeType: <%=linkeType %>, paramMenuOneId: '<%=request.getParameter("menuIdOne")%>', paramMenuChildId: '', paramMenuChildNodeSeq: ''
		}
		, listeners:
		{
			'beforeload': function(load, node)
			{
			
				this.baseParams['paramMenuChildId']=node.attributes.id;this.baseParams['paramMenuChildNodeSeq']=node.attributes.menuSeq;
			}
		}
	}
	), listeners:
	{
		click: function(node, e)
		{
			if(node.isLeaf())
			{
				var centerpanel=this.findParentByType('panel').findByType('tabpanel')[0];
				var objcontent=centerpanel.getItem("content-id-"+node.attributes.id);
				if(!objcontent)
				{
					objcontent=centerpanel.add(
					{
						title: node.attributes.text, id: "content-id-"+node.attributes.id, xtype: 'panel', layout: 'fit', autoScroll: true, closable: true, plugins: [new Ext.ux.Plugin.RemoteComponent(
						{
							url: '<%=request.getContextPath()+"/"%>'+node.attributes.url, method: 'post'
						}
						)], listeners:
						{
							close: function(src)
							{
								this.destroy();
							}
						}
					}
					);
					centerpanel.setActiveTab(objcontent);
				}
				else
				{
					centerpanel.setActiveTab(objcontent);
				}
			}
		}
	}
}