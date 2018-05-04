<%--
    功能            :知识点类型 列表页面
    创建时间  :2009-11-13
    创建者        : jiangwenqi 
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.ods.util.hibernate.query.QueryPageJavaBean"%>
<%@page import="com.ods.util.resource.ResourceUtil"%>
<s:i18n name="com.ods.kb.action.kbtype.KbtypeAction">
<% String local = request.getContextPath(); %>
<%//查询条件 %>
{
		layout:'border'
			,xtype:'panel'
				,items:[
				
					{
			frame:true,layout:'column',region:'north'
			,xtype:'form'
			,height : 38,labelAlign : 'right',border : false,labelWidth:80
						,items:[
							{
			layout:'form'
			,xtype:'panel'
								,columnWidth:.4
							    ,items:[
							    	{
			name:'kbtype.kbTypeCode',anchor:'95%'
			,xtype:'textfield'
							    		,fieldLabel:'编码'
							    		,maxLength : 50
							    	
			}
							    ]
							
			}
							,{
			layout:'form'
			,xtype:'panel'
								,columnWidth:.4
							    ,items:[
							    	{
			name:'kbtype.kbTypeContent',anchor:'95%'
			,xtype:'textfield'
							    		,fieldLabel:'内容'
							    		,maxLength : 50
							    	
			}
							    ]
							
			}
							,{
			layout:'fit'
			,xtype:'panel'
								,columnWidth:.13				    ,items:[
							    	{
			xtype:'button'
							    		,text : '查询'
							    		,handler:function(btn){
							    			
							    			var form = btn.findParentByType('form');
							    			var kbTypeCode=form.getForm().findField('kbtype.kbTypeCode').getValue();
							    			var kbTypeContent=form.getForm().findField('kbtype.kbTypeContent').getValue();
							    			
							    			var store = form.findParentByType('panel').findByType('ods.grid')[0].store;
											var formm = form.getForm();
											store.on('beforeload', function(s) {
												s.baseParams = formm.getValues(); 
											})
											store.load();
							    		}
							    	
			}
							    ]
							
			}
						]
					
			}
					
					,{
			layout:'fit',region:'center'
			,xtype:'ods.grid'
								
								,pagesize:20 
								,tbar:[
								
								{
			text:'新 增'
								
									,iconCls : 'x-icon-add'
									,tooltip : '新增知识点类型'
									,handler:function(btn) {
										
										var grid = btn.findParentByType('ods.grid');

										var awin = new Ext.Window({
			layout:'border' 
											
											,title : '新增知识点类型--网页对话框'
											,width : 400
											,height : 200
											,modal:true
											,closable :false
											,resizable : false
											,store:  grid.store

											,plain : true
											,autoDestroy:true
											,iconCls : 'bogus'
											,items:[
											
												{
			layout:'fit',region:'center'
			,xtype:'panel'
													,plugins:[new Ext.ux.Plugin.RemoteComponent({
														url: '<%=local %>/kb/type/kbtype_page_addPage.ods'
														,method:'post'
													})]
												
			}
											]
											
										
			})
										
										awin.show();				
									}
								
			}
								
								
								,'-',{
			text:'查 看'
									
									,iconCls : 'x-icon-view'
									,handler:function(btn){
									
										var grid = btn.findParentBy(function(c){
											return c.xtype == 'ods.grid' && c.store;
										});
										
										var winId = btn.findParentByType('panel').getId();
										var records = grid.getSelectionModel().getSelections();
										
										if (records.length==1) {

											var kbTypePk = records[0].get("kbTypePk");
											var kbTypeCode = records[0].get("kbTypeCode");
											var kbTypeContent = records[0].get("kbTypeContent");
											var createTime = records[0].get("createTime");
										
										var vwin = new Ext.Window({
			layout:'border' 
											
											,title : '查看知识点类型详细信息--网页对话框'
											,width : 400
											,height : 200
											,modal:true
											,closable :false
											,resizable : false
											,store:  grid.store

											,plain : true
											,autoDestroy:true
											,iconCls : 'bogus'
											,items:[
											
												{
			layout:'fit',region:'center'
			,xtype:'panel'
													,plugins:[new Ext.ux.Plugin.RemoteComponent({
														url: '<%=local %>/kb/type/kbtype_page_viewPage.ods'
														,params:{'kbtype.kbTypePk':kbTypePk,'kbtype.kbTypeCode':kbTypeCode,'kbtype.kbTypeContent':kbTypeContent,'kbtype.createTime':createTime}
														,method:'post'
													})]
												
			}
											]
											
										
			})
										
										vwin.show(); 			
										} else if (records.length<1) {
											Ext.example.msg('系统消息', '请勾选多选框内容');
										} else if(records.length>1){
											Ext.example.msg('系统消息', '请勾选一条多选框内容');
										}				
									}	
								
			}
								
								
								,'-',{
			text:'修 改'
									
									,iconCls : 'x-icon-edit'
									,handler:function(btn){
									
										var grid = btn.findParentBy(function(c){
											return c.xtype == 'ods.grid' && c.store;
										});
										var winId = btn.findParentByType('panel').getId();
										
										
										
										var records = grid.getSelectionModel().getSelections();
										
										if (records.length==1) {

											var kbTypePk = records[0].get("kbTypePk");
											var kbTypeCode = records[0].get("kbTypeCode");
											var kbTypeContent = records[0].get("kbTypeContent");
											var createTime = records[0].get("createTime");
										
										var vwin = new Ext.Window({
			layout:'border' 
											
											,title : '修改知识点类型--网页对话框'
											,width : 400
											,height : 200
											,closable :false
											,resizable : false
											,modal:true

											,store:  grid.store
											,plain : true
											,autoDestroy:true
											,iconCls : 'bogus'
											,items:[
											
												{
			layout:'fit',region:'center'
			,xtype:'panel'
													,plugins:[new Ext.ux.Plugin.RemoteComponent({
														url: '<%=local %>/kb/type/kbtype_page_updatePage.ods'
														,params:{'kbtype.kbTypePk':kbTypePk,'kbtype.kbTypeCode':kbTypeCode,'kbtype.kbTypeContent':kbTypeContent,'kbtype.createTime':createTime}
														,method:'post'
													})]
												
			}
											]
											
										
			})
										
										vwin.show(); 			
										} else if (records.length<1) {
											Ext.example.msg('系统消息', '请勾选多选框内容');
										} else if(records.length>1){
											Ext.example.msg('系统消息', '请勾选一条多选框内容');
										}		
									}
										
								
			}
								
								
								,'-',
								
								
								{
									text : '删除',
									tooltip : '删除',
									iconCls : 'x-icon-delete',
									handler : function(btn) {
										var grid = btn.findParentByType('ods.grid');
										if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
												Ext.example.msg("系统提示", 
												"<b>请勾选多选框内容</b>");
										} else {

											var records = grid.getSelectionModel().getSelections();
											var kbTypePks = [];
											var kbTypeCodes = [];
											for ( var i = 0; i < records.length; i += 1) {
												kbTypePks.push("'"+records[i].get('kbTypePk')+"'");
												kbTypeCodes.push(records[i].get('kbTypeCode'));
											}
											if (Ext.Msg.confirm("系统提示", 
											'您选择的编号为：<br>'+kbTypeCodes+'<br>确定删除选中的内容吗？', function(v) {
												if (v == "yes") {
													
													
													Ext.Ajax.request({
													url: '<%=local %>/kb/type/kbtypeCUD_deleteInfo.ods',
													success: function(response) {
															var responseText = Ext.util.JSON.decode(response.responseText);
															Ext.example.msg('系统提示', responseText.msg);
															grid.store.load();
													},
													params: {
														 'kbtype.kbTypePks' : kbTypePks
														}
													});
												}
											}));
										}
									}
								}
								
							]
							
							
							,sm:new Ext.grid.CheckboxSelectionModel()
							,viewConfig: {forceFit: true}
							,border : false
							
							,store: new Ext.data.Store({
							    url:'<%=local %>/kb/type/kbtype_page_listInfo.ods'
							    ,reader:new Ext.data.JsonReader({
						         root:'records'
						         ,totalProperty:'total'  
						        },[{name:'kbTypePk'},{name:'kbTypeCode'},{name:'kbTypeContent'},{name:'createTime'}])
							})
							  	
							  	,selModel:new Ext.grid.CellSelectionModel()
							  	
								,columns:[
								new Ext.grid.CheckboxSelectionModel()
								,new Ext.grid.RowNumberer()
								,{header:'编码',width : 100,sortable:true,dataIndex:"kbTypeCode"}
								,{header:'内容',width : 100,sortable:true,dataIndex:"kbTypeContent"}
								] 
								
							
					
			}
				]

			}

<%//grid 结束%>
</s:i18n>