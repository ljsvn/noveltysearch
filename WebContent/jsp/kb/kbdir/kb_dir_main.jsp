<%--
    功能            :资料库目录页面
    创建时间  :2009-11-13
    创建者        : xiaowei
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="com.ods.util.resource.ResourceUtil"%>
<%@ page import="com.ods.kb.bo.kbdir.KbDirectory"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<s:i18n name="com.ods.kb.action.kbdir.KbdirAction">
<% String local = request.getContextPath(); %>

		{ 
	layout : 'border',
	xtype : 'panel',
	border : false,
	items : [

	{
		region : 'center',
		xtype : 'treepanel',
		animate : true,
		enableDD : false,
		enableDrag : true,
		containerScroll : true,
		lines : true,
		rootVisible : true,
		autoScroll : true,
		border : false,
		loader : new Ext.tree.TreeLoader( {
			url : '<%=local %>/kb/dir/load_tree_Info.ods?level=L',
			baseParams : {
				kbDirPk : '0'
			},
			listeners : {
				'beforeload' : function(load, node) {
					this.baseParams['kbDirPk'] = node.attributes.kbDirPk;
				}
			}
		}),
		contextMenu : new Ext.menu.Menu(
				{
					items : [ {
						iconCls : 'x-icon-add',
						text : '新增'
					}, {
						iconCls : 'x-icon-view',
						text : '查看'

					}, {
						iconCls : 'x-icon-edit',
						text : '修改'
					}, {
						iconCls : 'x-icon-delete',
						text : '删除'
					} ],
					listeners : {
						itemclick : function(item) {

							var n = item.parentMenu.contextNode;
							var windowId = item.parentMenu.windowId;

							var url = '';
							var params = {};
							var submit = function(url, params) {
								params = params || {};
								Ext.Ajax
										.request( {
											url : url,
											method : 'post',
											params : params,
											success : function(res) {

												var JSON = Ext
														.decode(res.responseText);

												if (JSON.success) {
													if (n.attributes.kbDirPk == 000000000000) {

														n.reload();
														var tree = n
																.getOwnerTree();
														tree.expandAll();

													} else if (n.parentNode) {
														var tree = n
																.getOwnerTree();
														tree.getRootNode()
																.reload();
														// tree.expandAll();

													}
													Ext.example.msg('系统提示',
															"<b>" + JSON.msg
																	+ "</b>");
												} else {
													Ext.example.msg('系统提示',
															"<b>" + JSON.msg
																	+ "</b>");
												}
											},
											scope : item
										});
							}
							switch (item.iconCls) {
							case 'x-icon-delete':
								url = 'kb/dir/dir_del.ods';

								if (n.attributes.kbDirPk == 0) {
									Ext.example.msg('系统提示',
											'<b>资料库目录根节点不能被删除！</b>');
									return;
								}
								Ext.Msg
										.confirm(
												"删除资料库目录--网页对话框",
												'您确定删除：' + n.attributes.text + '吗？',
												function(v) {
													if (v == "yes") {
														if (n.leaf === true) {
															params.kbDirPk = n.attributes.kbDirPk;
															submit(url, params);
														} else if (n.attributes.kbDirPk == 0) {
															Ext.example
																	.msg(
																			'系统提示',
																			'<b>资料库目录根节点不能被删除！</b>');
														} else {
															Ext.example
																	.msg(
																			'系统提示',
																			'<b>您不能删除该目录，该目录下还有子目录！</b>');
														}
													}
												});

								break;
							case 'x-icon-add':
								if (n.attributes.kbDirPk == 0 || n.parentNode) {

									var win = new Ext.Window(
											{
												layout : 'border',
												title : '新增资料库目录--网页对话框',
												width : 400,
												height : 200,
												ownertree : n.getOwnerTree(),
												resizable : false,
												plain : true,
												closable : true,
												modal : true,
												closable : false

												,
												items : [ {
													layout : 'fit',
													region : 'center',
													xtype : 'panel'

													,
													plugins : [ new Ext.ux.Plugin.RemoteComponent(
															{
																url : '<%=local %>/kb/dir/diraddpage.ods?kbDirPk='
																		+ n.attributes.kbDirPk
																		+ '&&kbDirClevel='
																		+ n.attributes.kbDirClevel,
																method : 'post'
															}) ]

												} ]

											})
									win.show();

								}
								break;
							case 'x-icon-edit':
								if (n.attributes.kbDirPk == 0) {
									Ext.example.msg('系统提示',
											'<b>资料库目录根节点不能被修改！</b>');
									return;
								}
								;

								var win = new Ext.Window(
										{
											layout : 'border',
											title : '修改资料库目录--网页对话框',
											width : 400,
											height : 200,
											border : false,
											ownertree : n.getOwnerTree(),
											resizable : false,
											plain : true,
											closable : true,
											modal : true,
											closable : false

											,
											items : [ {
												layout : 'fit',
												region : 'center',
												xtype : 'panel'

												,
												plugins : [ new Ext.ux.Plugin.RemoteComponent(
														{
															url : '<%=local %>/kb/dir/dirupdatepage.ods',
															method : 'post',
															params : {
																'kbDirectory.kbDirPk' : n.attributes.kbDirPk,
																'kbDirectory.kbDirClevel' : n.attributes.kbDirClevel,
																'kbDirectory.kbDirName' : n.attributes.text,
																'kbDirectory.kbDirGbpk' : n.attributes.kbDirGbpk,
																'kbDirectory.kbDirFlag' : n.attributes.kbDirFlag,
																'kbDirectory.kbDirExcelFlag' : n.attributes.kbDirExcelFlag,
																'kbDirectory.createTime' : n.attributes.createTime,
																'kbDirectory.kbDirPk' : n.attributes.kbDirPk
															}
														}) ]

											} ]

										})
								win.show();
								break;
							case 'x-icon-view':
								if (n.attributes.kbDirPk == 0) {
									Ext.example.msg('系统提示',
											'<b>资料库目录根节点不能被查看！</b>');
									return;
								}
								;

								var win = new Ext.Window(
										{
											layout : 'border',
											title : '查看资料库目录--网页对话框',
											width : 400,
											height : 200,
											resizable : false,
											plain : true,
											closable : true,
											modal : true,
											closable : false

											,
											items : [ {
												layout : 'fit',
												region : 'center',
												xtype : 'panel'

												,
												plugins : [ new Ext.ux.Plugin.RemoteComponent(
														{
															url : '<%=local %>/kb/dir/dirviewpage.ods',
															method : 'post',
															params : {
																'kbDirectory.kbDirPk' : n.attributes.kbDirPk,
																'kbDirectory.kbDirClevel' : n.attributes.kbDirClevel,
																'kbDirectory.kbDirName' : n.attributes.text,
																'kbDirectory.kbDirGbpk' : n.attributes.kbDirGbpk,
																'kbDirectory.kbDirFlag' : n.attributes.kbDirFlag,
																'kbDirectory.kbDirExcelFlag' : n.attributes.kbDirExcelFlag,
																'kbDirectory.createTime' : n.attributes.createTime
															}
														}) ]

											} ]

										})
								win.show();
								break;
							}
							item.parentMenu.hide();
						}
					}
				}),
		listeners : {
			'contextmenu' : function(node, e) {
				node.select();
				var tree = node.getOwnerTree();
				var c = tree.contextMenu;
				c.windowId = tree.findParentByType('panel').getId();
				c.contextNode = node;
				c.showAt(e.getXY());
			}

		},
		root : new Ext.tree.AsyncTreeNode( {
			kbDirPk : '0',
			text : '资料库目录根节点',
			expanded : true,
			iconCls : 'x-icon-docs'
		})

	} ]

}
</s:i18n>