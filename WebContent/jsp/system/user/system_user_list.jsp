<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.ods.util.type.StringUtil"%>
<%@ page import="com.ods.util.resource.ResourceUtil"%>
<%@ page import="com.ods.util.hibernate.query.QueryPageJavaBean"%>
<%@page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>
<% String local = request.getContextPath(); %>
<% String userName = com.ods.util.UserContext.getUserContext(request).getUser().getUserLoginName();%>
{
	region: 'center',
	xtype: 'ods.grid',
	initload: false,
	pagesize:10,
	sm: new Ext.grid.CheckboxSelectionModel(),
	viewConfig: {
		forceFit: true
	},
	border: false,
	store: new Ext.data.Store({
		url: '<%=local %>/employee/base/info/list_info.ods',
		reader: new Ext.data.JsonReader({
			root: 'records', totalProperty: 'total'
		},[
			"employeePk","userPk","parentUserPk","isSystemUser","employeeName","employeeCode","employeeSex","employeeBirthTime",
					"employeeEducation","employeeGraduated","employeeToWorkTime","employeeMaritalStatus","employeeAllOrgPk","employeeOrgPk",
					"employeeDuty","employeeJobs","employeeLevel","employeeHomeAddress","employeeOfficeTele","employeePhone","employeeOtherTele",
					"employeeEmail","employeeContacts","employeeContactsTele","createOrgPk","createUserPk","createTime","deleteType"
		]),
		baseParams: {isSystemUser: 1}
	}),
	columns: [
		new Ext.grid.CheckboxSelectionModel(),
		new Ext.grid.RowNumberer(),
		{header: '员工工号', sortable: true, dataIndex: "employeeCode"},
		{header: '姓名', sortable: true, dataIndex: "employeeName"},
		{header: '性别', sortable: true, dataIndex: "employeeSex",
			renderer: function(value){
				return value==0?'男' : '女';
			}
		},
		{header: '工种 ', sortable: true, dataIndex: "employeeJobs"},
		{header: '级别 ', sortable: true, dataIndex: "employeeLevel"},
		{header: '职务', sortable: true, dataIndex: "employeeDuty"},
		{header: '手机号码 ', sortable: true, dataIndex: "employeePhone"},
		{header: '帐户类型', sortable: true, dataIndex: "isSystemUser",
			renderer: function(value){
				return value==0?'<span style="color:red">普通帐号</span>': '<span style="color:blue">登录帐号</span>';
			}
		},
		{header: '状态', sortable: true, dataIndex: "deleteType",
			renderer: function(value){
				return value==1?'<span style="color:red">已删除</span>': '<span style="color:blue">正常</span>';
			}
		}
	],
	listeners:{
	  rowdblclick:function(grid){
	  var records = grid.getSelectionModel().getSelections();
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
								url : '<%=local %>/employee/base/info/view_page.ods?employeePk=' + employeePk,
								method : 'post'
							}) ]
								}]
							})
					win.show();
					  
	  }
	  }
	,tbar: [{
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
													url : '<%=local %>/employee/base/info/view_page.ods?employeePk=' + employeePk,
													method : 'post'
												}) ]
									} ]
								})
						win.show();
					}
				}
			}
		},'-',{
			text : '修改',
			tooltip : '修改选中的员工',
			iconCls : 'x-icon-edit',
			handler : function(btn) {
				var grid = btn.findParentByType('ods.grid');
				var grid1 = grid.findParentByType('panel').findParentByType('panel').findByType('ods.grid')[0];
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
		},'-',{
				text: '密码复位', id: 'pass_rest', iconCls: 'x-icon-reset-password', tooltip: '初始化密码', handler: function(btn)
				{
					var grid=btn.findParentByType('ods.grid');
					if(typeof(grid.getSelectionModel().getSelected())=='undefined')
					{
						Ext.example.msg("系统提示", "<b>"+"请勾选多选框内容"+"</b>");
					}
					else if(records=grid.getSelectionModel().getSelections().length>1)
					{
						Ext.example.msg("系统提示", "<b>"+"不能选择多条记录"+"</b>");
					}
					else
					{
						var records=grid.getSelectionModel().getSelections();
						var userPk=records[0].get('userPk');
						var longinName=records[0].get('employeeName');
						if(Ext.Msg.confirm("系统提示", '您选择的用户为：<br>'+longinName+'<br>确认复位密码吗？<br>复位后密码是：123456', function(v)
						{
							if(v=="yes")
							{
								Ext.Ajax.request(
								{
									url: '<%=local %>/system/user/reset_pass_word.ods', success: function(response)
									{
										var responseText=Ext.util.JSON.decode(response.responseText);Ext.example.msg('系统提示', responseText.msg, btn);
									}
									, params:
									{
										'user.userPk': userPk
									}
								}
								);
							}
							var pwin=btn.findParentByType('window');if(pwin)
							{
								pwin.show();
							}
						}
						))
							;
					}
				}
			}
		,'-',{
			text : '转到普通帐号',
			tooltip : '转到普通帐号',
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
        				employeePks.push(records[i].get('employeePk'));
					    employeeNames.push(records[i].get('employeeName'));
				    }
					if (Ext.Msg.confirm("系统提示",'确定将员工：' + employeeNames + '转为普通账号吗？',
						function(v) {
							if (v == "yes") {
								Ext.Ajax.request( {
									url : '<%=local %>/employee/base/info/exchange_info.ods',
									success : function(response) {
										var responseText = Ext.util.JSON.decode(response.responseText);
										Ext.example.msg('系统提示',responseText.msg);
										grid.store.load();
										grid.findParentByType('panel').findParentByType('panel').findByType('ods.grid')[0].store.load();
									},
									params : {
										'employee.employeePks' : employeePks,exchangeType: 0
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