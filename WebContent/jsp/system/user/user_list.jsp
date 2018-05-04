<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>
<% String local = request.getContextPath(); %>
<% String userName = com.ods.util.UserContext.getUserContext(request).getUser().getUserLoginName();%>
{
	layout: 'border',
	region: 'center',
	border: false,
	items: [{
		frame: true, 
		layout: 'column',
		region: 'north',
		xtype: 'form',
		height: 40,
		labelAlign: 'right',
		border: false,
		labelWidth: 60,
		items: [{
			layout: 'form',
			columnWidth: .2,
			border: false,
			items: [{
				name: 'userLoginName',
				fieldLabel: '登录名',
				anchor: '95%',
				xtype: 'textfield'
			}]
		},{
			layout: 'form',
			columnWidth: .2,
			border: false,
			items: [{
				name: 'userRealName',
				fieldLabel: '姓名',
				anchor: '95%',
				xtype: 'textfield'
			}]
		},{
			layout: 'form',
			columnWidth: .2,
			border: false,
			items: [{
				name: 'userSex',
				fieldLabel: '警号',
				anchor: '95%',
				xtype: 'textfield'
			}]
		},{
			layout: 'form',
			columnWidth: .2,
			border: false,
			items: [{
			}]
		},{
			layout: 'form',
			columnWidth: .1,
			border: false,
			items: [{
				xtype: 'button',
				width: 60,
				text: '查询',
				handler: function(btn){
					var form=btn.findParentByType('form');
					if(form.getForm().isValid()){
						var form=btn.findParentByType('form');
						var store=form.findParentByType('panel').findByType('ods.grid')[0].getStore();
						Ext.apply(store.baseParams, form.getForm().getValues());
						store.load();
					}
				}
			}]
		},{
			layout: 'form',
			columnWidth: .1,
			border: false,
			items: [{
				xtype: 'button',
				width: 60,
				text: '重置',
				handler: function(btn) {
					var form = btn.findParentByType('form').getForm();
					form.reset();
					form.items.items[0].focus(true);
				}
			} ]
		}]
	},{
		region: 'center',
		xtype: 'ods.grid',
		initload: false,
		pagesize: 20,
		border: false,
		sm: new Ext.grid.CheckboxSelectionModel(),
		viewConfig: {
			forceFit: true
		},
		border: false,
		store: new Ext.data.Store({
			url: '<%=local %>/system/user/list_info.ods',
			reader: new Ext.data.JsonReader({
				root: 'records', totalProperty: 'total'
			},[
				"userPk","parentUserPk","orgPk","allOrgPk","firstOrgPk","userLoginName","userRealName","userSex","userDutyName","userEducation",
				"userBirthday","userNative","userPhone","isSystemUser","userMaritalStatus","userPassword","beforeLoginTime","memo","createOrgPk",
				"createUserPk","createTime","deleteType"
			]),
			baseParams: {isSystemUser: 1}
		}),
		columns: [
			new Ext.grid.CheckboxSelectionModel(),
			new Ext.grid.RowNumberer(),
			{header: '登录名', sortable: true, dataIndex: "userLoginName"},
			{header: '警号', sortable: true, dataIndex: "userSex"},
			{header: '姓名', sortable: true, dataIndex: "userRealName"},
			{header: '性别', sortable: true, dataIndex: "userMaritalStatus",
				renderer: function(value){
					return value==0?'男': '女';
				}
			},
			{header: '职务', sortable: true, dataIndex: "userDutyName"},
			{header: '手机号码 ', sortable: true, dataIndex: "userEducation"},
			{header: '帐号类型', sortable: true, dataIndex: "isSystemUser",
				renderer: function(value){
					return value==0?'<span style="color:blue">登录帐号</span>': '<span style="color:red">普通帐号</span>';
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
		var userPk = records[0].get('userPk');
		new Ext.Window({
				layout: 'fit',
				title: '查看人员信息--网页对话框',
				autoDestroy: true,
				width: 800,
				height: 400,
				plain: true,
				modal: true,
				iconCls: 'bogus',
				resizable: false,
				closable: true,
				plugins: [ new Ext.ux.Plugin.RemoteComponent({
				url: '<%=local %>/system/user/view_page.ods',
				method: 'post',
				params:{
					userPk: userPk
								}
							})]
						}).show();
		}
		}
		,tbar: [{
			text: '新增',
			iconCls: 'x-icon-add',
			tooltip: '新增人员',
			handler: function(btn) {
				var grid = btn.findParentByType('ods.grid');
				var orgPk = grid.store.baseParams['orgPk'];
				if(orgPk == null || orgPk == '' || orgPk == '-1'){
					Ext.example.msg("系统提示", "<b>" + "请先选择组织机构" + "</b>");
				}else{
					win = new Ext.Window( {
						layout: 'fit',
						title: '新增人员信息--网页对话框',
						store: grid.store,
						autoDestroy: true,
						width: 700,
						height: 360,
						plain: true,
						modal: true,
						iconCls: 'bogus',
						resizable: false,
						closable: true,
						plugins: [ new Ext.ux.Plugin.RemoteComponent({
							url: '<%=local %>/system/user/add_page.ods',
							method: 'post',
							params:{
								'orgPk': grid.store.baseParams['orgPk'],
								'allOrgPk': grid.store.baseParams['allOrgPk'],
								'firstOrgPk': grid.store.baseParams['firstOrgPk']
							}
						})]
					})
					win.show();
				}
			}
		},'-',{
			text: '查看',
			tooltip: '查看选中的人员',
			iconCls: 'x-icon-view',
			handler: function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
					if (records.length > 1) {
						Ext.example.msg("系统提示", "<b>" + "请勾选一条多选框内容" + "</b>");
					} else {
						var userPk = records[0].get('userPk');
						win = new Ext.Window({
							layout: 'fit',
							title: '查看人员信息--网页对话框',
							autoDestroy: true,
							width: 700,
							height: 360,
							plain: true,
							modal: true,
							iconCls: 'bogus',
							resizable: false,
							closable: true,
							plugins: [ new Ext.ux.Plugin.RemoteComponent({
								url: '<%=local %>/system/user/view_page.ods',
								method: 'post',
								params:{
									userPk: userPk
								}
							})]
						})
						win.show();
					}
				}
			}
		},'-',{
			text: '修改',
			tooltip: '修改选中的人员',
			iconCls: 'x-icon-edit',
			handler: function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
					if (records.length > 1) {
						Ext.example.msg("系统提示", "<b>" + "请勾选一条多选框内容" + "</b>");
					} else {
						var userPk = records[0].get('userPk');
						win = new Ext.Window({
							layout: 'fit',
							title: '修改人员信息--网页对话框',
							store: grid.store,
							autoDestroy: true,
							width: 700,
							height: 360,
							plain: true,
							modal: true,
							iconCls: 'bogus',
							resizable: false,
							closable: true,
							plugins: [ new Ext.ux.Plugin.RemoteComponent({
								url: '<%=local %>/system/user/update_page.ods',
								method: 'post',
								params:{
									userPk: userPk
								}
							})]
						})
						win.show();
					}
				}
			}
		},'-',{
			text: '密码复位',
			id: 'pass_rest',
			iconCls: 'x-icon-reset-password',
			tooltip: '初始化密码',
			handler: function(btn){
				var grid=btn.findParentByType('ods.grid');
				if(typeof(grid.getSelectionModel().getSelected())=='undefined'){
					Ext.example.msg("系统提示", "<b>"+"请勾选多选框内容"+"</b>");
				}else if(records=grid.getSelectionModel().getSelections().length>1){
					Ext.example.msg("系统提示", "<b>"+"不能选择多条记录"+"</b>");
				}else{
					var records=grid.getSelectionModel().getSelections();
					var userPk=records[0].get('userPk');
					var longinName=records[0].get('employeeName');
					if(Ext.Msg.confirm("系统提示", '您选择的用户为：<br>'+longinName+'<br>确认复位密码吗？<br>复位后密码是：123456', function(v){
						if(v=="yes"){
							Ext.Ajax.request({
								url: '<%=local %>/system/user/reset_pass_word.ods',
								success: function(response){
									var responseText=Ext.util.JSON.decode(response.responseText);
									Ext.example.msg('系统提示', responseText.msg, btn);
								},
								params:{
									'user.userPk': userPk
								}
							});
						}
					}));
				}
			}
		},'-',{
			text: '转到登录帐号',
			tooltip: '转到登录帐号',
			iconCls: 'x-icon-checkUp',
			handler: function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
				    var userPks=[];
				    var userNames=[];
				    for(var i=0;i < records.length;i++){
        				userPks.push("'"+records[i].get('userPk')+"'");
					    userNames.push(records[i].get('userRealName'));
				    }
					if (Ext.Msg.confirm("系统提示",'确定将员工：' + userNames + '转到登录帐号吗？',function(v) {
						if (v == "yes") {
							Ext.Ajax.request( {
								url: '<%=local %>/system/user/change_login_state.ods',
								success: function(response) {
									var responseText = Ext.util.JSON.decode(response.responseText);
									Ext.example.msg('系统提示',responseText.msg);
									grid.store.load();
								},
								params: {
									userPks: userPks,
									isSystemUser: 0
								}
							});
						}
					}));
				}
			}
		},'-',{
			text: '转到普通帐号',
			tooltip: '转到普通帐号',
			iconCls: 'x-icon-checkUp',
			handler: function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
				    var userPks=[];
				    var userNames=[];
				    for(var i=0;i < records.length;i++){
        				userPks.push("'"+records[i].get('userPk')+"'");
					    userNames.push(records[i].get('userRealName'));
				    }
					if (Ext.Msg.confirm("系统提示",'确定将员工：' + userNames + '转到普通帐号吗？',function(v) {
						if (v == "yes") {
							Ext.Ajax.request( {
								url: '<%=local %>/system/user/change_login_state.ods',
								success: function(response) {
									var responseText = Ext.util.JSON.decode(response.responseText);
									Ext.example.msg('系统提示',responseText.msg);
									grid.store.load();
								},
								params: {
									userPks: userPks,
									isSystemUser: 1
								}
							});
						}
					}));
				}
			}
		},'-',{
			text: '软删',
			tooltip: '删除员工，可以通过\'软删恢复\'按钮进行恢复操作',
			iconCls: 'x-icon-delete',
			handler: function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
				    var userPks=[];
				    var userNames=[];
				    for(var i=0;i < records.length;i++){
        				userPks.push("'"+records[i].get('userPk')+"'");
					    userNames.push(records[i].get('userRealName'));
				    }
					if (Ext.Msg.confirm("系统提示",'确定删除员工：' + userNames + '吗？',function(v) {
						if (v == "yes") {
							Ext.Ajax.request( {
								url: '<%=local %>/system/user/delete_info.ods',
								success: function(response) {
									var responseText = Ext.util.JSON.decode(response.responseText);
									Ext.example.msg('系统提示',responseText.msg);
									grid.store.load();
								},
								params: {
									userPks: userPks,
									deleteType: 1
								}
							});
						}
					}));
				}
			}
		},'-',{
			text: '软删恢复',
			iconCls: 'x-icon-undo',
			tooltip: '恢复已经删除的员工',
			handler: function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
				    var userPks=[];
				    var userNames=[];
				    for(var i=0;i < records.length;i++){
        				userPks.push("'"+records[i].get('userPk')+"'");
					    userNames.push(records[i].get('userRealName'));
				    }
					if (Ext.Msg.confirm("系统提示",'确定恢复员工：' + userNames + '吗？',function(v) {
						if (v == "yes") {
							Ext.Ajax.request( {
								url: '<%=local %>/system/user/delete_info.ods',
								success: function(response) {
									var responseText = Ext.util.JSON.decode(response.responseText);
									Ext.example.msg('系统提示',responseText.msg);
									grid.store.load();
								},
								params: {
									userPks: userPks,
									deleteType: 0
								}
							});
						}
					}));
				}
			}
		},'-',{
			text: '转移部门',
			tooltip: '将员工转移到新部门',
			iconCls: 'x-icon-refresh',
			handler: function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
				    var userNames=[];
				    var userPks='';
				    for(var i=0;i < records.length;i++){
				    	if(i >= 1){
				    		userPks = userPks + ",";
				    	};
        				userPks = userPks + records[i].get('userPk');
					    userNames.push(records[i].get('userRealName'));
				    }
				    if (Ext.Msg.confirm("系统提示",'确定将员工：' + userNames + '转移部门吗？',function(v) {
					    if (v == "yes") {
							win = new Ext.Window({
								layout: 'border',
								title: '转移员工部门--网页对话框',
								store: grid.store,
								autoDestroy: true,
								width: 400,
								height: 200,
								plain: true,
								modal: true,
								iconCls: 'bogus',
								resizable: false,
								closable: true,
								items: [{
									layout: 'fit',
									region: 'center',
									xtype: 'panel',
									plugins: [ new Ext.ux.Plugin.RemoteComponent({
										url: '<%=local %>/system/user/transfer_page.ods',
										params:{
											userPks: userPks
										},
										method: 'post'
									})]
								}]
							})
							win.show();
						}
				    }));
				}
			}
		}]
	}]
}