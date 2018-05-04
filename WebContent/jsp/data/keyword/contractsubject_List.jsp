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
			url : '<%=local %>/key/word/list_info.ods',
			reader : new Ext.data.JsonReader({
				root : 'records',
				totalProperty : 'total'
			},[
				"subjectClassPk","subjectClassName","aliasName1","aliasName2","aliasName3"
                ,"subjectClassEname","aliasEname1","aliasEname2","aliasEname3","aliasEname4","aliasEname5"
                ,"retain1","retain2","isKeyWord","state","orderNo","memo","createOrgPk","createUserPk"
                ,"createTime","deleteType"
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
		{
			text : '选择',
			tooltip : '删除选中的检索词',
			iconCls : 'x-icon-add',
			handler : function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
				    var subjectClassPks=[];
				    var subjectClassNames=[]; 
				    for(var i=0;i < records.length;i++){
        				subjectClassPks.push("'"+records[i].get('subjectClassPk')+"'");
					    subjectClassNames.push(records[i].get('subjectClassName'));
				    } 
				    var grid = btn.findParentByType('ods.grid');
				    var three_grid = btn.findParentByType('ods.grid').findParentByType('panel').findParentByType('panel').findParentByType('panel').findByType('ods.grid')[0];
				    
					if (Ext.Msg.confirm("系统提示",'确定选择检索词：' + subjectClassNames + '吗？',
						function(v) {
							if (v == "yes") {
								Ext.Ajax.request( {
									url : '<%=local %>/key/word/select_info.ods',
									success : function(response) {
									   	var checkup_grid2 = grid.findParentByType('panel').findParentByType('panel').findParentByType('panel').findByType('ods.grid')[3];
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
										'subjectClass.subjectClassPks' : subjectClassPks,
										'contractPk' : grid.store.baseParams['contractPk'],
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
