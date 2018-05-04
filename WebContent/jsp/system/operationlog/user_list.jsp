<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.ods.util.hibernate.query.QueryPageJavaBean"%>
<%@ page import="com.ods.util.resource.ResourceUtil"%>
<%@ page import="com.ods.util.type.StringUtil"%>
<% String local = request.getContextPath(); 

%> 
{
	frame: true,
	layout: 'column',
	region: 'north',
	xtype: 'form',
	height: 38,
	labelAlign: 'right',
	labelWidth: 60,
	border: false,
	items: [{
		layout: 'form',
		columnWidth: .3,
		border: false,
		items: [{
			name: 'userLoginName',
			fieldLabel: '登录名',
			anchor: '95%',
			xtype: 'textfield'
		}]
	},{
		layout: 'form',
		columnWidth: .3,
		border: false,
		items: [{
			name: 'userRealName',
			fieldLabel: '用户姓名',
			anchor: '95%',
			xtype: 'textfield',
			maxLength: 50
		}]
	},{
		layout: 'form',
		columnWidth: .1,
		border: false,
		items: [{
			xtype: 'button',
			width: 60,
			text: '查询',
			handler: function(btn) {
				var form = btn.findParentByType('form');
				if (form.getForm().isValid()) {
					if(form.getForm().isValid()){
						var form=btn.findParentByType('form');
						var store=form.findParentByType('panel').findByType('ods.grid')[0].getStore();
						Ext.apply(store.baseParams, form.getForm().getValues());
						store.load();
					}
				}
			}
		}]
	}]
},{
	region: 'center',
	xtype: 'ods.grid',
	title:'请双击选中用户，查看其对应的系统日志信息',
	pagesize: 100,
	initload: false, 
	viewConfig: {
		forceFit: true
	},
	border: false,
	store: new Ext.data.Store( {
	    url: '<%=local %>/system/user/list_info.ods?limit=100',
		reader: new Ext.data.JsonReader( {
			root: 'records',
			totalProperty: 'total'
		}, ["userPk", "userNouserNo", "orgPk", "allOrgPk", "userTypePk", "userTypeName", "userPostPk",
                 "userPostName", "userMarriage", "userLevel", "userDutyPk", "userDutyName", "fatherUserPk", "userLoginName",
                 "userPassword", "userState", "userRealName", "userSex", "userPhone", "officeTele", "deleteType",
                 "createUserPk", "createTime"])
	}),
	columns: [
		new Ext.grid.RowNumberer(),
		{header: '登录名', sortable: true, dataIndex: "userLoginName"},
		{header: '警号', sortable: true, dataIndex: "userSex"},
		{header: '姓名', sortable: true, dataIndex: "userRealName"},
		{header: '性别', sortable: true, dataIndex: "userMaritalStatus",
			renderer: function(value){
				return value==0?'男': '女';
			}
		},
		{header: '职务', sortable: true, dataIndex: "userDutyName"}
	],
	listeners: {
		rowdblclick: function(grid) {
			var selecteds = grid.getSelectionModel().getSelected();
			var records = grid.getSelectionModel().getSelections();
			var loginname = records[0].get('userRealName');
			var win = new Ext.Window( {
				title: '"'+loginname+'"的系统操作日志详情--网页对话框',
				layout: 'fit',
				autoDestroy: true,
				width: 720,
				height: 480,
				plain: true,
				modal: true,
				iconCls: 'bogus',
				items: [{
					xtype: 'panel',
					region: 'center',
					layout: 'fit',
					plugins: [new Ext.ux.Plugin.RemoteComponent( {
					    url: '<%=request.getContextPath()%>/system/log/log_listInfo.ods',
						params: {
							'userPk': selecteds.get('userPk')
							,'userName':loginname
						},
						method: 'post'
					})]
				}]
			});
			win.show();
		}
	}
}