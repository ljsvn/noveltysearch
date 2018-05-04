<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.ods.util.hibernate.query.QueryPageJavaBean"%>
<%@ page import="com.ods.util.resource.ResourceUtil"%>
<%@ page import="com.ods.util.type.StringUtil"%>
<% 
  String local = request.getContextPath(); 


%>
{
		frame: true,
		layout: 'column',
		region: 'north',
		xtype: 'form',
		labelWidth: 70,
		height: 38,
		labelAlign: 'right',
		border: false,
		items: [{
			layout: 'form',
			columnWidth: .4,
			border: false,
			items: [{
				name: 'subjectClassName',
				fieldLabel: '名称',
				anchor: '90%',
				xtype: 'textfield',
				maxLength: 50
			}]
		},{
			layout: 'form',
			columnWidth: .15,
			border: false,
			items: [{
				xtype: 'button',
				width: 45,
				text: '查询',
				handler: function(btn){
					var form = btn.findParentByType('form');
					var store = form.findParentByType('panel').findByType('ods.grid')[0].getStore();
					Ext.apply(store.baseParams, form.getForm().getValues());
					store.load();
				}
			}]
		}]
	},{
		region : 'center',
		xtype : 'ods.grid',
		pagesize : 10,
		initload: false,
	
		viewConfig : {
			forceFit : true
		},
		border : false,
		id: 'contract_subject_grid', 
		store : new Ext.data.Store( {
			url : '<%=local %>/confirem/list_info.ods',
			reader : new Ext.data.JsonReader({
				root : 'records',
				totalProperty : 'total'
			},[
				"contractSubjectPk","subjectClassPk","subjectClassName","aliasName1","aliasName2",
                "aliasName3","subjectClassEname","aliasEname1","aliasEname2","aliasEname3","aliasEname4",
                "aliasEname5","retain1","retain2","isKeyWord","orderNo","memo","createOrgPk","createUserPk",
                "createTime","deleteType"
			])
			,baseParams : {iskeyword: '<%=request.getParameter("iskeyword") %>'}
		}),
		columns : [
			new Ext.grid.CheckboxSelectionModel(),
			new Ext.grid.RowNumberer(),
			{header : '名称',		sortable:true,		dataIndex : 'subjectClassName'},
			{header : '排序号',	sortable:true,		dataIndex : 'orderNo'},
			{header: '创建时间', sortable: true, dataIndex: "createTime"}
			
		]
		,listeners:{
			rowdblclick:function(grid){
			var records=grid.getSelectionModel().getSelections();
			
			}
			}
		
		,
		tbar: [
		<%
		if(!request.getParameter("iskeyword").equals("1")){ 
		%>
		{
		
			text : '新增',
			iconCls : 'x-icon-add',
			id: 'leavelog_add_btn',
			tooltip : '新的检索主题分类记录',
			handler : function(btn) {
		
				var grid = btn.findParentByType('ods.grid');
				var three_grid = btn.findParentByType('ods.grid').findParentByType('panel').findParentByType('panel').findParentByType('panel').findByType('ods.grid')[0];
				if (typeof (three_grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选合同多选框内容" + "</b>");
				} else {
					var records = three_grid.getSelectionModel().getSelections();
					var mainDiaryPk = records[0].get('mainDiaryPk');
					if (records.length > 1) {
						Ext.example.msg("系统提示", "<b>" + "请勾选一条多选框内容" + "</b>");
					} else {
						win = new Ext.Window( {
							layout : 'border',
							title : '新的检索主题分类信息--网页对话框',
							store : grid.store,
							autoDestroy : true,
							width : 680,
							height : 250,
							plain : true,
							modal : true,
							iconCls : 'bogus',
							resizable : false,
							closable : true,
							items : [ {
								layout : 'fit',
								region : 'center',
								xtype : 'panel',
								plugins : [ new Ext.ux.Plugin.RemoteComponent( {
									url : '<%=local %>/jsp/data/confirm/contractsubject_add.jsp',
									params:{
										'contractPk' : grid.store.baseParams['contractPk']
									},
									method : 'post'
								}) ]
							} ]
						})
						win.show();
					}
				}
				
			}
		}
		,'-',
		<%} %>
		 
		{
			text : '删除',
			tooltip : '删除选中的检索分类',
			iconCls : 'x-icon-delete',
			handler : function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
				    var contractSubjectPks=[];
				    var subjectClassNames=[]; 
				    for(var i=0;i < records.length;i++){
        				contractSubjectPks.push("'"+records[i].get('contractSubjectPk')+"'");
					    subjectClassNames.push(records[i].get('subjectClassName'));
				    } 
					if (Ext.Msg.confirm("系统提示",'确定删除检索分类：' + subjectClassNames + '吗？',
						function(v) {
							if (v == "yes") {
								Ext.Ajax.request( {
									url : '<%=local %>/confirem/delete_info.ods',
									success : function(response) {
									    var checkup_grid2 = grid.findParentByType('panel').findParentByType('panel').findParentByType('panel').findByType('ods.grid')[2];
										var checkup_store2 = checkup_grid2.getStore();
										Ext.apply(checkup_store2.baseParams, {
											'contractPk' : grid.store.baseParams['contractPk']
										});
										checkup_store2.removeAll();
										checkup_store2.load();
										
										var responseText = Ext.util.JSON.decode(response.responseText);
										Ext.example.msg('系统提示',responseText.msg);
										grid.store.load();
									},
									params : {
										'contractSubject.contractSubjectPks' : contractSubjectPks,
										deleteType:1
									}
								});
							}
							var pwin = btn.findParentByType('window');
							if (pwin) {
								pwin.show();
							}
						}));
				}
			}
		}
   
		
		]
	}
