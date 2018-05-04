<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.ods.util.type.StringUtil"%>
<%@ page import="com.ods.util.resource.ResourceUtil"%>
<%@ page import="com.ods.util.hibernate.query.QueryPageJavaBean"%>
<%@page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>
<% String local = request.getContextPath(); %>
<% String userName = com.ods.util.UserContext.getUserContext(request).getUser().getUserLoginName();%>
{
		region: 'center', xtype: 'ods.grid', initload: false, pagesize:10, sm: new Ext.grid.CheckboxSelectionModel(), viewConfig:
		{
			forceFit: true
		}
		, border: false, store: new Ext.data.Store(
		{
			url: '<%=local %>/employee/base/info/list_info.ods', reader: new Ext.data.JsonReader(
			{
				root: 'records', totalProperty: 'total'
			}
			, ["employeePk","userPk","parentUserPk","isSystemUser","employeeName","employeeCode","employeeSex","employeeBirthTime",
					"employeeEducation","employeeGraduated","employeeToWorkTime","employeeMaritalStatus","employeeAllOrgPk","employeeOrgPk",
					"employeeDuty","employeeJobs","employeeLevel","employeeHomeAddress","employeeOfficeTele","employeePhone","employeeOtherTele",
					"employeeEmail","employeeContacts","employeeContactsTele","createOrgPk","createUserPk","createTime","deleteType"])
			, baseParams: {isSystemUser: 0}
		}
		), columns: [new Ext.grid.CheckboxSelectionModel(), new Ext.grid.RowNumberer(),
		{
			header: '员工工号', sortable: true, dataIndex: "employeeCode"
		}
		,
		{
			header: '姓名', sortable: true, dataIndex: "employeeName"
		}
		,
		{
			header: '性别', sortable: true, dataIndex: "employeeSex", renderer: function(value)
			{
				return value==0?'男' : '女';
			}
		}
		,
		{
			header: '工种 ', sortable: true, dataIndex: "employeeJobs"
		}
		,
		{
			header: '级别 ', sortable: true, dataIndex: "employeeLevel"
		}
		,
		{
			header: '职务', sortable: true, dataIndex: "employeeDuty"
		}
		,
		{
			header: '手机号码 ', sortable: true, dataIndex: "employeePhone"
		}
		,
		{
			header: '帐户类型', sortable: true, dataIndex: "isSystemUser", renderer: function(value)
			{
				return value==0?'<span style="color:red">普通帐号</span>': '<span style="color:blue">登录帐号</span>';
			}
		}
		,
			{
				header: '状态', sortable: true, dataIndex: "deleteType", renderer: function(value)
				{
					return value==1?'<span style="color:red">已删除</span>': '<span style="color:blue">正常</span>';
				}
			}
		]
		, tbar: [
		
		{
			text : '新增',
			iconCls : 'x-icon-add',
			id: 'employee_add_btn',disabled: true,
			tooltip : '新增一个员工',
			handler : function(btn) {
				var grid = btn.findParentByType('ods.grid');
				var grid1 = grid.findParentByType('panel').findParentByType('panel').findByType('ods.grid')[1];
				var orgPk = grid.store.baseParams['employee.employeeOrgPk'];
				if(orgPk == null || orgPk == '' || orgPk == '-1'){
					Ext.example.msg("系统提示", "<b>" + "请先选择组织机构" + "</b>");
				}else{
				win = new Ext.Window( {
					layout : 'border',
					title : '新增员工信息--网页对话框',
					store : grid.store,
					store1 : grid1.store,
					autoDestroy : true,
					width : 800,
					height : 470,
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
							url : '<%=local %>/employee/base/info/add_page.ods',
							params:{
								'orgPk' : grid.store.baseParams['employee.employeeOrgPk']
								,'allOrgPk' : grid.store.baseParams['employee.employeeAllOrgPk']
								,'orgName' : grid.store.baseParams['orgName']
							},
							method : 'post'
						}) ]
					} ]
				})
				win.show();
			}}
		},
		'-',
		{
			text : '查看',
			tooltip : '查看选中的员工',
			iconCls : 'x-icon-view',
			handler : function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {

					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
					if (records.length > 1) {
						Ext.example.msg("系统提示", "<b>" + "请勾选一条多选框内容" + "</b>");
					} else {
						var employeePk = records[0].get('employeePk');
						win = new Ext.Window(
								{
									layout : 'border',
									title : '查看员工信息--网页对话框',
									autoDestroy : true,
									width : 800,
									height : 470,
									plain : true,
									modal : true,
									iconCls : 'bogus',
									resizable : false,
									closable : true,
									items : [ {
										layout : 'fit',
										region : 'center',
										xtype : 'panel',
										plugins : [ new Ext.ux.Plugin.RemoteComponent(
												{
													url : '<%=local %>/employee/base/info/view_page.ods',
													params:{
														employeePk : employeePk
														,'orgName' : grid.store.baseParams['orgName']
													},
													method : 'post'
												}) ]
									} ]
								})
						win.show();
					}
				}
			}
		},
		'-',
		{
			text : '修改',
			tooltip : '修改选中的员工',
			iconCls : 'x-icon-edit',
			handler : function(btn) {
				var grid = btn.findParentByType('ods.grid');
				var grid1 = grid.findParentByType('panel').findParentByType('panel').findByType('ods.grid')[1];
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
					if (records.length > 1 || records[0].get('deleteType') == 1) {
						Ext.example.msg("系统提示", "<b>" + "请勾选一条未被删除的员工" + "</b>");
					} else {
						var employeePk = records[0].get('employeePk');
						win = new Ext.Window(
								{
									layout : 'border',
									title : '修改员工信息--网页对话框',
									store : grid.store,
									store1 : grid1.store,
									autoDestroy : true,
									width : 800,
									height : 470,
									plain : true,
									modal : true,
									iconCls : 'bogus',
									resizable : false,
									closable : true,
									items : [ {
										layout : 'fit',
										region : 'center',
										xtype : 'panel',
										plugins : [ new Ext.ux.Plugin.RemoteComponent(
												{
													url : '<%=local %>/employee/base/info/modify_page.ods',
													params:{
														employeePk : employeePk
														,'orgName' : grid.store.baseParams['orgName']
													},
													method : 'post'
												}) ]

									} ]

								})
						win.show();
					}
				}
			}
		},
		'-',
		{
			text : '软删',
			tooltip : '修改员工的状态，可以通过\'软删恢复\'按钮进行恢复操作',
			iconCls : 'x-icon-delete',
			handler : function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
				    var employeePks=[];
				    var employeeNames=[];
				    for(var i=0;i < records.length;i++){
        				employeePks.push("'"+records[i].get('employeePk')+"'");
					    employeeNames.push(records[i].get('employeeName'));
				    }
					if (Ext.Msg.confirm("系统提示",'确定删除员工：' + employeeNames + '吗？',
						function(v) {
							if (v == "yes") {
								Ext.Ajax.request( {
									url : '<%=local %>/employee/base/info/delete_info.ods',
									success : function(response) {
										var responseText = Ext.util.JSON.decode(response.responseText);
										Ext.example.msg('系统提示',responseText.msg);
										grid.store.load();
									},
									params : {
										'employee.employeePks' : employeePks,
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
			,'-',
			{
				text : '软删恢复',
				iconCls : 'x-icon-undo',
				tooltip : '恢复已经删除的员工',
				handler : function(btn) {
					var grid = btn.findParentByType('ods.grid');
					if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
						Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
					} else {
						var records = grid.getSelectionModel().getSelections();
					    var employeePks=[];
					    var employeeNames=[];
					    for(var i=0;i < records.length;i++){
	        				employeePks.push("'"+records[i].get('employeePk')+"'");
						    employeeNames.push(records[i].get('employeeName'));
					    }
						if (Ext.Msg.confirm("系统提示",'确定恢复员工：' + employeeNames + '吗？',
							function(v) {
								if (v == "yes") {
									Ext.Ajax.request( {
										url : '<%=local %>/employee/base/info/delete_info.ods',
										success : function(response) {
											var responseText = Ext.util.JSON.decode(response.responseText);
											Ext.example.msg('系统提示',responseText.msg);
											grid.store.load();
										},
										params : {
											'employee.employeePks' : employeePks,
											deleteType:0
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
		,'-',
		{
			text : '转到登录帐号',
			tooltip : '转到登录帐号',
			iconCls : 'x-icon-checkUp',
			handler : function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
				    var employeePks=[];
				    var employeeNames=[];
				    for(var i=0;i < records.length;i++){
        				employeePks.push("'"+records[i].get('employeePk')+"'");
					    employeeNames.push(records[i].get('employeeName'));
				    }
					if (Ext.Msg.confirm("系统提示",'确定将员工：' + employeeNames + '转到登录帐号吗？',
						function(v) {
							if (v == "yes") {
								Ext.Ajax.request( {
									url : '<%=local %>/employee/base/info/exchange_info.ods',
									success : function(response) {
										var responseText = Ext.util.JSON.decode(response.responseText);
										Ext.example.msg('系统提示',responseText.msg);
										grid.store.load();
										grid.findParentByType('panel').findParentByType('panel').findByType('ods.grid')[1].store.load();
									},
									params : {
										'employee.employeePks' : employeePks,
										exchangeType: 1
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
		},'-',{
			text: '转移部门',
			tooltip : '将员工转移到新部门',
			iconCls : 'x-icon-refresh',
			handler : function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
				    var employeePks='';
				    var employeeNames=[];
				    var userPks='';
				    for(var i=0;i < records.length;i++){
				    	if(i >= 1){
				    		employeePks = employeePks + ",";
				    		userPks = userPks + ",";
				    	};
        				employeePks = employeePks + records[i].get('employeePk');
        				userPks = userPks + records[i].get('userPk');
					    employeeNames.push(records[i].get('employeeName'));
				    }
					win = new Ext.Window({
						layout : 'border',
						title : '转移员工部门--网页对话框',
						store : grid.store,
						autoDestroy : true,
						width : 400,
						height : 200,
						plain : true,
						modal : true,
						iconCls : 'bogus',
						resizable : false,
						closable : true,
						items : [{
							layout : 'fit',
							region : 'center',
							xtype : 'panel',
							plugins : [ new Ext.ux.Plugin.RemoteComponent({
								url : '<%=local %>/employee/base/info/transfer_page.ods',
								params:{
									employeePks : employeePks
									,userPks: userPks
								},
								method : 'post'
							})]
						}]
					})
					win.show();
				}
			}
		}
		]
}