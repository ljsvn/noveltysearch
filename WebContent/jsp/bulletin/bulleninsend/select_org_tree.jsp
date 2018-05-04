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
		text: '确 定', iconCls: 'x-icon-add', tooltip: '选择要发送的部门', handler: function(btn)
		{
			var tree=btn.findParentByType('panel').findByType('treepanel')[0];
			var msg='', selNodes=tree.getChecked();
			var orgPks='';
			Ext.each(selNodes, function(node)
			{
				if(msg.length>0)
				{
					msg+=',';orgPks+=',';
				}
				orgPks+=node.attributes.orgPk;msg+=node.attributes.text.replace(/<\/*[^<>]*>/g, "").replace(/\[*[^<>]*\]/g, "");
			});
			formpanel.findField('receiveObjs').setValue(msg);
			formpanel.findField('orgPks').setValue(orgPks);
			this.findParentByType('window').close();
		}
	}
	], items: [
	{
		region: 'center'
		, xtype: 'ods.filtertree'
		, animate: true, enableDD: false
		, enableDrag: true, containerScroll: true
		, lines: true
		, rootVisible:false
		, autoScroll: true
		, loader: new Ext.tree.TreeLoader(
		{
			url: '<%=request.getContextPath()%>/system/org/tree_info.ods'
			, baseParams:
			{
				allTree: 0
			}
			, listeners:
			{
				'beforeload': function(load, node)
				{
					this.baseParams['checked']=false;
					this.baseParams['orgPk']=node.attributes.orgPk;
				}
			}
		}
		)
		, root: new Ext.tree.AsyncTreeNode(
		{
				orgPk: '<%=Organization.ROOT_NODE_PK %>',
				text: '<%="陕西巾帼依诺家政服务有限公司" %>',
				expanded : true
		}
		)
	}
	]
}