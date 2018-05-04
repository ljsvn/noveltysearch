<%--
    功能            :资料库树录入 和搜索页面
    创建时间  :2009-11-14
    创建者        : jiangwenqi 
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.ods.util.hibernate.query.QueryPageJavaBean"%>
<%@page import="com.ods.kb.bo.kbdir.KbDirectory"%> 
<%@page import="com.ods.kb.action.kbcontent.KbcontentAction"%>
<s:i18n name="com.ods.kb.action.kbcontent.KbcontentAction">
<% String local = request.getContextPath(); %>
{
	layout : 'border',
	xtype : 'panel',
	border : false,
	items : [

			{
				animate : true,
				lines : false,
				rootVisible : true,
				useArrows : true,
				trackMouseOver : true,
				containerScroll : true,
				split : true,
				autoScroll : true,
				region : 'west',
				xtype : 'ods.filtertree',
				width : 200,
				title : '资料库内容',
				collapsible : true,
				containerScroll : true,
				animCollapse : false,
				animate : false,
				lines : true,
				minSize : 175,
				maxSize : 300,
				autoScroll : true,
				border : false

				,
				loader : new Ext.tree.TreeLoader(
						{
							url : '<%=local %>/kb/content/kbcontent_page_knowledgeASYTree.ods',
							baseParams : {
								kbDirPk : '0',
								kbPk : '0',
								flag : '1',
								divFlag : 'L'
							},
							listeners : {
								'beforeload' : function(load, node) {
									if (node.attributes.kbDirPk) {
										this.baseParams['kbDirPk'] = node.attributes.kbDirPk;
									}
								}
							}
						})

				,
				contextMenu : new Ext.menu.Menu(
						{
							items : [ {
								iconCls : 'x-icon-add',
								text : '新增 '
							}, {
								iconCls : 'x-icon-delete',
								text : '删除 '
							}, {
								iconCls : 'x-icon-edit',
								text : '修改    '
							}, {
								iconCls : 'x-icon-refresh',
								text : '刷新'
							} ]

							,
							listeners : {
								itemclick : function(item) {

									var n = item.parentMenu.contextNode;

									var winid = n.getOwnerTree()
											.findParentByType('panel');

									var url = '';

									var params = {};

									var bool = '';

									var submit = function(url, params, bool) {
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

															if (bool == 'delete') {

																n.remove(n);
															}
															Ext.example.msg(
																	'系统消息',
																	JSON.msg);
														} else {
															Ext.example.msg(
																	'系统消息',
																	JSON.msg);
														}

													},
													scope : item
												});
									}

									switch (item.iconCls) {
									case 'x-icon-delete':
										url = '<%=local %>/kb/content/kbcontentCUD_deleteInfo.ods';
										if (n.attributes.kbPk) {

											Ext.MessageBox
													.show( {
														title : '删除 ',
														msg : '您选择的知识点名称是：' + n.text
																.toString() + '确认删除吗？',
														buttons : Ext.MessageBox.YESNO,

														fn : function(btn) {

															if (btn == 'yes') {
																params.kbDirCode = n.attributes.kbDirCode;
																params.kbPk = n.attributes.kbPk;
																submit(url,
																		params,
																		'delete');
															} else {

																if (pwin) {
																	pwin.show();
																}
															}
														},

														icon : Ext.MessageBox.QUESTION
													});
										} else {
											Ext.example.msg('系统消息', '无法删除目录');
										}
										break;
									case 'x-icon-add':
										if (!n.attributes.kbPk) {

											var awin = new Ext.Window(
													{
														layout : 'border',
														title : '新增知识信息--网页对话框',
														width : 800,
														height : 400,
														modal : false,
														n : n,
														border : false,
														winid : winid.getId(),
														closable : false,
														resizable : false,
														plain : true,
														autoDestroy : true,
														iconCls : 'bogus',
														items : [

														{
															layout : 'fit',
															region : 'center',
															xtype : 'panel',
															plugins : [ new Ext.ux.Plugin.RemoteComponent(
																	{
																		url : '<%=local %>/kb/content/kbcontent_page_addPage.ods?kbType=' + '1',
																		method : 'post'
																	}) ]

														} ]

													})

											awin.show();
										} else {
											Ext.example.msg('系统消息',
													'请您在目录下添加信息');
										}
										break;
									case 'x-icon-edit':

										if (n.attributes.kbPk) {

											var awin = new Ext.Window(
													{
														layout : 'border'

														,
														title : '修改知识信息--网页对话框',
														width : 800,
														height : 400,
														modal : false,
														closable : false,
														resizable : false,
														node : n,
														border : false,
														winid : winid.getId(),
														plain : true,
														autoDestroy : true,
														iconCls : 'bogus',
														items : [

														{
															layout : 'fit',
															region : 'center',
															xtype : 'panel',
															plugins : [ new Ext.ux.Plugin.RemoteComponent(
																	{
																		url : '<%=local %>/kb/content/kbcontent_page_updatePage.ods',
																		method : 'post',
																		params : {
																			'kbContent.kbPk' : n.attributes.kbPk
																		}
																	}) ]

														} ]

													})

											awin.show();
										} else {
											Ext.example.msg('系统消息', '无法修改目录');
										}
										break;
									case 'x-icon-refresh':

										if (n.isLeaf() !== true) {
											n.reload();
										} else {

										}
										break;
									}

									item.parentMenu.hide();
								}
							}
						}),
				listeners : {

					'contextmenu' : function(node, e) {

						if (node.text !== '知识库') {
							node.select();
							var c = node.getOwnerTree().contextMenu;
							c.contextNode = node;
							c.showAt(e.getXY());
						}
					},

					'click' : function(n) {

						if (n.isLeaf()) {

							var tabpanelU = this.findParentByType('panel')
									.findByType('tabpanel')[0];
							var comp = tabpanelU.getItem("ext-kb-id-"
									+ n.attributes.kbPk);
							if (!comp) {
								comp = tabpanelU
										.add( {
											layout : 'fit',
											region : 'center',
											xtype : 'panel',
											title : n.text.toString(),
											closable : true,
											id : "ext-kb-id-"
													+ n.attributes.kbPk,
											autoScroll : true,
											autoLoad : {
												url : '<%=local %>/kb/content/kbcontent_page_viewPage.ods',
												params : {
													'kbPk' : n.attributes.kbPk
												},
												method : 'post'
											},
											listeners : {
												'afterrender' : function(c) {
													c.body
															.on(
																	'click',
																	function(e,
																			tag) {
																		e
																				.stopEvent();
																		var href = e
																				.getTarget().href;
																		var node = e
																				.getTarget();
																		test(node)
																		if (href
																				&& Ext
																						.fly(
																								node)
																						.getAttributeNS(
																								'ext',
																								'kbPk')
																				&& Ext
																						.fly(
																								node)
																						.getAttributeNS(
																								'ext',
																								'kbName')) {
																			var kbPk = Ext
																					.fly(
																							node)
																					.getAttributeNS(
																							'ext',
																							'kbPk');
																			var kbName = Ext
																					.fly(
																							node)
																					.getAttributeNS(
																							'ext',
																							'kbName');
																			var comp1 = tabpanelU
																					.getItem("ext-linkkb-id-"
																							+ kbPk);
																			var kbLinkCodes = Ext
																					.fly(
																							node)
																					.getAttributeNS(
																							'ext',
																							'kbLinkCodes');

																			if (!comp1) {
																				comp1 = tabpanelU
																						.add( {
																							layout : 'fit',
																							region : 'center',
																							xtype : 'panel',
																							title : '关联知识点',
																							closable : true,
																							id : "ext-linkkb-id-"
																									+ kbPk,
																							autoScroll : true,
																							items : [ {
																								layout : 'border',
																								xtype : 'panel',
																								items : [

																										{
																											frame : true,
																											layout : 'column',
																											region : 'north',
																											xtype : 'form',
																											height : 38,
																											labelAlign : 'right',
																											border : false,
																											labelWidth : 80,
																											items : [
																													{
																														layout : 'form',
																														xtype : 'panel',
																														columnWidth : .4,
																														items : [ {
																															name : 'kbContent.kbDirName',
																															value : '',
																															anchor : '95%',
																															xtype : 'textfield',
																															fieldLabel : '目录名称',
																															maxLength : 50

																														} ]

																													},
																													{
																														layout : 'form',
																														xtype : 'panel',
																														columnWidth : .4,
																														items : [ {
																															name : 'kbContent.kbName',
																															value : '',
																															anchor : '95%',
																															xtype : 'textfield',
																															fieldLabel : '知识点标题',
																															maxLength : 50

																														} ]

																													},
																													{
																														layout : 'fit',
																														xtype : 'panel',
																														columnWidth : .13,
																														items : [ {
																															xtype : 'button',
																															text : '查询',
																															handler : function(
																																	btn) {

																																var form = btn
																																		.findParentByType('form');

																																var store = form
																																		.findParentByType(
																																				'window')
																																		.findByType(
																																				'ods.grid')[0].store;
																																var formm = form
																																		.getForm();
																																store
																																		.on(
																																				'beforeload',
																																				function(
																																						s) {
																																					s.baseParams = formm
																																							.getValues();
																																				})
																																store
																																		.load();
																															}

																														} ]

																													} ]

																										}

																										,
																										{
																											layout : 'fit',
																											region : 'center',
																											xtype : 'ods.grid',
																											pagesize : 100,
																											sm : new Ext.grid.CheckboxSelectionModel(),
																											viewConfig : {
																												forceFit : true
																											},
																											border : false

																											,
																											store : new Ext.data.Store(
																													{
																														url : '<%=local %>/kb/content/linkKbGrid.ods?kbLinkCodes=' + kbLinkCodes,
																														reader : new Ext.data.JsonReader(
																																{
																																	root : 'records',
																																	totalProperty : 'total'
																																},
																																[
																																		{
																																			name : 'kbPk'
																																		},
																																		{
																																			name : 'kbDirName'
																																		},
																																		{
																																			name : 'kbName'
																																		} ])
																													})

																											,
																											selModel : new Ext.grid.CellSelectionModel()

																											,
																											columns : [
																													new Ext.grid.CheckboxSelectionModel(),
																													new Ext.grid.RowNumberer(),
																													{
																														header : '目录名称',
																														width : 100,
																														sortable : true,
																														dataIndex : "kbDirName"
																													},
																													{
																														header : '知识点标题',
																														width : 100,
																														sortable : true,
																														dataIndex : "kbName"
																													} ],
																											listeners : {
																												rowclick : function(
																														grid) {
																													var selecteds = grid
																															.getSelectionModel()
																															.getSelected();
																													var kbPk = selecteds
																															.get('kbPk');
																													var comp2 = tabpanelU
																															.getItem("ext-linkkbview-id-"
																																	+ kbPk);
																													if (!comp2) {
																														comp2 = tabpanelU
																																.add( {
																																	layout : 'fit',
																																	region : 'center',
																																	xtype : 'panel',
																																	title : '查看关联知识点',
																																	closable : true,
																																	id : "ext-linkkbview-id-"
																																			+ kbPk,
																																	autoScroll : true,
																																	autoLoad : {
																																		url : '<%=local %>/kb/content/kbcontent_page_viewPage.ods',
																																		params : {
																																			'kbPk' : kbPk
																																		},
																																		method : 'post'
																																	}

																																});
																														tabpanelU
																																.setActiveTab(comp2);
																													} else {
																														tabpanelU
																																.setActiveTab(comp2);
																													}
																												}
																											}

																										}

																								]

																							} ]

																						});
																				tabpanelU
																						.setActiveTab(comp1);
																			} else {
																				tabpanelU
																						.setActiveTab(comp1);
																			}
																		}
																	}, c);
												}
											}

										});
								tabpanelU.setActiveTab(comp);
							} else {
								tabpanelU.setActiveTab(comp);
							}
						}
					}
				}

				,
				root : new Ext.tree.AsyncTreeNode( {
					text : '资料库',
					kbDirCode : '0',
					expanded : true,
					iconCls : 'x-icon-docs'
				})

			}

			,
			{
				region : 'center',
				xtype : 'tabpanel',
				margins : '0 5 5 0',
				resizeTabs : true,
				minTabWidth : 85,
				tabWidth : 85,
				plugins : new Ext.ux.TabCloseMenu(),
				autoScroll : true,
				activeTab : 0,
				items : [ {
					layout : 'fit',
					xtype : 'panel',
					autoScroll : true,
					iconCls : 'x-icon-docs',
					title : '搜索',
					tbar : [
							'搜索',
							' ',
							{
								typeAhead : true,
								mode : 'local',
								triggerAction : 'all',
								selectOnFocus : true,
								hiddenName : 'KbInputInfo.searchType',
								forceSelection : true,
								name : 'searchType',
								value : '',
								anchor : '95%',
								xtype : 'combo',
								width : 40,
								readOnly:true,
								store : [ [ 1, '关键字' ], [ 2, '全文索引' ],
										[ 3, '标题' ] ],
								value : 3,
								listeners : {

									select : function(combo, record, index) {
										var tbar = this.findParentByType(
												'panel').getTopToolbar();
										var store = tbar
												.findByType('xsearchfield')[0].store;
										store.baseParams['kbContent.searchType'] = combo
												.getValue();

									},
									render : function(combo, record, index) {
										var tbar = this.findParentByType(
												'panel').getTopToolbar();
										var store = tbar
												.findByType('xsearchfield')[0].store;
										store.baseParams['kbContent.searchType'] = combo
												.getValue();
									}
								}

							},
							' ',
							{
								name : 'search',
								value : '',
								anchor : '95%',
								xtype : 'xsearchfield',
								width : 240,
								store : store = new Ext.data.Store(
										{
											url : '<%=local %>/kb/content/kb_content_searchbyKey.ods',
											reader : new Ext.data.JsonReader( {
												root : 'records',
												totalProperty : 'total'
											}, [ 'kbName', 'highkbName',
													'kbCode', 'kbContent',
													'keyWord', 'kbCount',
													'kbPk', 'kbViewCount',
													'kbTypeName', 'kbFreName',
													'kbDirName' ])
										}),
								paramName : 'kbContent.searchContent'

							} ],
					items : [ {
						xtype : 'dataview',
						bodyStyle : 'padding:5px;',
						tpl : new Ext.XTemplate(
								'<tpl for=".">',
								'<div class="kb_search_item_main">',
								'<div class="kb_search_item_title">',
								'<div></div>',
								'<div class="kb_search_item_flag"><a ext:kbName="{kbName}" ext:kbPk="{kbPk}" href="/sumpolice/main/kb/content/kbcontent_page_viewPage.ods?kbPk={kbPk}">全文显示</a>',
								'</div>',
								'<h3 class="kb_type_good"><a ext:kbName="{kbName}" ext:kbPk="{kbPk}" href="/sumpolice/main/kb/content/kbcontent_page_viewPage.ods?kbPk={kbPk}">标题: {highkbName}</a></h3>',
								'<strong>关键字 :{keyWord}</strong>',
								'</div>',
								'<div class="kb_search_item_content">{kbContent}</div>',
								'<div class="kb_search_item_bottom">',
								'<ul>',
								'<li>搜索: {kbCount}</li>',
								'<li>浏览: {kbViewCount}</li>',
								'<li>目录名: {kbDirName}</li>',
								'<tpl if="this.isDivFlag(kbCode)">',
								'<li><a ext:updateflag="update" ext:kbPk="{kbPk}" href="/sumpolice/main/kb/content/kbcontent_page_updatePage.ods?kbContent.kbPk={kbPk}">快速修改</a></li>',
								'</tpl>', '</ul>', '</div>', '</div>',
								'</tpl>', {
									isDivFlag : function(kbCode) {
										return kbCode.substring(0, 1) == 'L';
									}
								}),
						itemSelector : 'div.kb_search_item_main'

						,
						loadingText : '搜索...',
						store : store,
						listeners : {
							click : function(view, index, node, e) {
								e.stopEvent();
								var href = e.getTarget().href;
								var node = e.getTarget();
								if (href
										&& Ext.fly(node).getAttributeNS('ext',
												'kbPk')
										&& Ext.fly(node).getAttributeNS('ext',
												'kbName')) {
									var kbPk = Ext.fly(node).getAttributeNS(
											'ext', 'kbPk');
									var kbName = Ext.fly(node).getAttributeNS(
											'ext', 'kbName');
									var tabpanelU = this
											.findParentByType('tabpanel');
									var comp = tabpanelU.getItem("ext-kb-id-"
											+ kbPk);
									if (!comp) {
										comp = tabpanelU
												.add( {
													layout : 'fit',
													region : 'center',
													xtype : 'panel',
													title : kbName,
													closable : true,
													id : "ext-kb-id-" + kbPk,
													autoScroll : true,
													autoLoad : {
														url : href,
														method : 'post'
													},
													listeners : {
														'afterrender' : function(
																c) {
															c.body
																	.on(
																			'click',
																			function(
																					e,
																					tag) {
																				e
																						.stopEvent();
																				var href = e
																						.getTarget().href;
																				var node = e
																						.getTarget();
																				if (href
																						&& Ext
																								.fly(
																										node)
																								.getAttributeNS(
																										'ext',
																										'kbPk')
																						&& Ext
																								.fly(
																										node)
																								.getAttributeNS(
																										'ext',
																										'kbName')) {
																					var kbPk = Ext
																							.fly(
																									node)
																							.getAttributeNS(
																									'ext',
																									'kbPk');
																					var kbName = Ext
																							.fly(
																									node)
																							.getAttributeNS(
																									'ext',
																									'kbName');
																					var comp1 = tabpanelU
																							.getItem("ext-linkkb-id-"
																									+ kbPk);
																					var kbLinkCodes = Ext
																							.fly(
																									node)
																							.getAttributeNS(
																									'ext',
																									'kbLinkCodes');
																					if (!comp1) {
																						comp1 = tabpanelU
																								.add( {
																									layout : 'fit',
																									region : 'center',
																									xtype : 'panel',
																									title : '关联知识点',
																									closable : true,
																									id : "ext-linkkb-id-"
																											+ kbPk,
																									autoScroll : true,
																									items : [ {
																										layout : 'border',
																										xtype : 'panel',
																										items : [

																												{
																													frame : true,
																													layout : 'column',
																													region : 'north',
																													xtype : 'form',
																													height : 38,
																													labelAlign : 'right',
																													border : false,
																													labelWidth : 80,
																													items : [
																															{
																																layout : 'form',
																																xtype : 'panel',
																																columnWidth : .4,
																																items : [ {
																																	name : 'kbContent.kbDirName',
																																	value : '',
																																	anchor : '95%',
																																	xtype : 'textfield',
																																	fieldLabel : '目录名称',
																																	maxLength : 50

																																} ]

																															},
																															{
																																layout : 'form',
																																xtype : 'panel',
																																columnWidth : .4,
																																items : [ {
																																	name : 'kbContent.kbName',
																																	value : '',
																																	anchor : '95%',
																																	xtype : 'textfield',
																																	fieldLabel : '知识点标题',
																																	maxLength : 50

																																} ]

																															},
																															{
																																layout : 'fit',
																																xtype : 'panel',
																																columnWidth : .13,
																																items : [ {
																																	xtype : 'button',
																																	text : '查询',
																																	handler : function(
																																			btn) {

																																		var form = btn
																																				.findParentByType('form');

																																		var store = form
																																				.findParentByType(
																																						'window')
																																				.findByType(
																																						'ods.grid')[0].store;
																																		var formm = form
																																				.getForm();
																																		store
																																				.on(
																																						'beforeload',
																																						function(
																																								s) {
																																							s.baseParams = formm
																																									.getValues();
																																						})
																																		store
																																				.load();
																																	}

																																} ]

																															} ]

																												}

																												,
																												{
																													layout : 'fit',
																													region : 'center',
																													xtype : 'ods.grid',
																													pagesize : 100,
																													sm : new Ext.grid.CheckboxSelectionModel(),
																													viewConfig : {
																														forceFit : true
																													},
																													border : false

																													,
																													store : new Ext.data.Store(
																															{
																																url : '<%=local %>/kb/content/linkKbGrid.ods?kbLinkCodes=' + kbLinkCodes,
																																reader : new Ext.data.JsonReader(
																																		{
																																			root : 'records',
																																			totalProperty : 'total'
																																		},
																																		[
																																				{
																																					name : 'kbPk'
																																				},
																																				{
																																					name : 'kbDirName'
																																				},
																																				{
																																					name : 'kbName'
																																				} ])
																															})

																													,
																													selModel : new Ext.grid.CellSelectionModel()

																													,
																													columns : [
																															new Ext.grid.CheckboxSelectionModel(),
																															new Ext.grid.RowNumberer(),
																															{
																																header : '目录名称',
																																width : 100,
																																sortable : true,
																																dataIndex : "kbDirName"
																															},
																															{
																																header : '知识点标题',
																																width : 100,
																																sortable : true,
																																dataIndex : "kbName"
																															} ],
																													listeners : {
																														rowclick : function(
																																grid) {
																															var selecteds = grid
																																	.getSelectionModel()
																																	.getSelected();
																															var kbPk = selecteds
																																	.get('kbPk');
																															var comp2 = tabpanelU
																																	.getItem("ext-linkkbview-id-"
																																			+ kbPk);
																															if (!comp2) {
																																comp2 = tabpanelU
																																		.add( {
																																			layout : 'fit',
																																			region : 'center',
																																			xtype : 'panel',
																																			title : '查看关联知识点',
																																			closable : true,
																																			id : "ext-linkkbview-id-"
																																					+ kbPk,
																																			autoScroll : true,
																																			autoLoad : {
																																				url : '<%=local %>/kb/content/kbcontent_page_viewPage.ods',
																																				params : {
																																					'kbPk' : kbPk
																																				},
																																				method : 'post'
																																			}

																																		});
																																tabpanelU
																																		.setActiveTab(comp2);
																															} else {
																																tabpanelU
																																		.setActiveTab(comp2);
																															}
																														}
																													}

																												}

																										]

																									} ]

																								});
																						tabpanelU
																								.setActiveTab(comp1);
																					} else {
																						tabpanelU
																								.setActiveTab(comp1);
																					}
																				}
																			},
																			c);
														}
													}

												});
										tabpanelU.setActiveTab(comp);
									} else {
										tabpanelU.setActiveTab(comp);
									}
								} else if (href
										&& Ext.fly(node).getAttributeNS('ext',
												'kbPk')
										&& Ext.fly(node).getAttributeNS('ext',
												'updateflag')) {
									var kbPk = Ext.fly(node).getAttributeNS(
											'ext', 'kbPk');
									var updateflag = Ext
											.fly(node)
											.getAttributeNS('ext', 'updateflag');
									var winid = this.findParentByType('window')
											.getId();

									var awin = new Ext.Window(
											{
												layout : 'border'

												,
												title : '修改知识信息--网页对话框',
												width : 800,
												height : 400,
												modal : false,
												closable : false,
												resizable : false,
												border : false,
												winid : winid,
												plain : true,
												autoDestroy : true,
												iconCls : 'bogus',
												items : [

												{
													layout : 'fit',
													region : 'center',
													xtype : 'panel',
													plugins : [ new Ext.ux.Plugin.RemoteComponent(
															{
																url : '<%=local %>/kb/content/kbcontent_page_updatePage.ods',
																method : 'post',
																params : {
																	'kbContent.kbPk' : kbPk,
																	'updateflag' : updateflag
																}
															}) ]

												} ]

											})

									awin.show();
								}
							}
						},
						emptyText : '<h1>没有相关记录</h1>'

					} ]

				} ]

			} ]

}

</s:i18n>