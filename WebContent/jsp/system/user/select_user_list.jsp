<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ods.util.type.StringUtil"%>
<%@	page import="com.ods.base.bo.system.user.bo.User"%>
<%
	String local = request.getContextPath();
	User user = com.ods.util.UserContext.getUserContext(request).getUser();
%>
{
	region: 'center',
	layout: 'border',
	xtype: 'panel',
	items: [{
		frame: true,
		layout: 'column',
		region: 'north',
		xtype: 'form',
		labelWidth: 55,
		height: 38,
		labelAlign: 'right',
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
				fieldLabel: '姓名',
				anchor: '95%',
				xtype: 'textfield'
			}]
		},{
			layout: 'form',
			columnWidth: .3,
			border: false,
			items: [{
				name: 'userSex',
				hiddenName: 'userSex',
				fieldLabel: '性别',
				anchor: '95%',
				xtype: 'combo',
				triggerAction:'all',
				forceSelection: true,
				store: [[0,'男'],[1,'女']]
			}]
		},{
			layout: 'form',
			columnWidth: .1,
			border: false,
			items: [{
				xtype: 'button',
				width: 50,
				text: '查询',
				handler: function(btn) {
					var form = btn.findParentByType('form');
					if (form.getForm().isValid()) {
						var form = btn.findParentByType('form');
						var store = form.findParentByType('panel').findByType('ods.grid')[0].getStore();
						Ext.apply(store.baseParams, form.getForm().getValues());
						store.load();
					}
				}
			}]
		}]
	},{
		region: 'center',
		xtype: 'ods.grid',
		title: '请双击选中项进行选择',
		pagesize: 10,
		sm: new Ext.grid.CheckboxSelectionModel({singleSelect: true}),
		viewConfig: {
			forceFit: true
		},
		border: false,
		store: new Ext.data.Store( {
			url: '<%=local %>/system/user/list_info.ods',
			reader: new Ext.data.JsonReader({
				root: 'records',
				totalProperty: 'total'
			},[
				"userPk","parentUserPk","orgPk","allOrgPk","firstOrgPk","userLoginName","userRealName","userSex","userDutyName","userEducation",
				"userBirthday","userNative","userPhone","isSystemUser","userMaritalStatus","userPassword","beforeLoginTime","memo","createOrgPk",
				"createUserPk","createTime","deleteType","orgName"
			]),
			baseParams: {
				orgPk: '<%=request.getParameter("orgPk") %>'
			}
		}),
		columns: [
			new Ext.grid.RowNumberer(),
			{header: '登录名', sortable: true, dataIndex: "userLoginName"},
			{header: '姓名', sortable: true, dataIndex: "userRealName"},
			{header: '性别', sortable: true, dataIndex: "userSex",
				renderer: function(value){
					return value==0?'男': '女';
				}
			},
			{header: '职务', sortable: true, dataIndex: "userDutyName"},
			{header: '手机号码 ', sortable: true, dataIndex: "userPhone"}
		],
		listeners: {
			rowdblclick: function(grid) {
				var wind = this.findParentByType('window');
				var selecteds = grid.getSelectionModel().getSelected();
				<%
				String userPk = request.getParameter("userPk");
				String userLoginName = request.getParameter("userLoginName");
				String userRealName = request.getParameter("userRealName");
				String orgName = request.getParameter("orgName");
				String orgPk = request.getParameter("orgPk");
				
				if(null != userPk){
					%>wind.form.findField('<%=userPk %>').setValue(selecteds.get('userPk'));<%
				}
				if(null != userLoginName){
					%>wind.form.findField('<%=userLoginName %>').setValue(selecteds.get('userLoginName'));<%
				}
				if(null != userRealName){
					%>wind.form.findField('<%=userRealName %>').setValue(selecteds.get('userRealName'));<%
				}
				if(null != orgName){
					%>wind.form.findField('<%=orgName %>').setValue(selecteds.get('orgName'));<%
				}
				
				%>
				wind.close();
			}
		}
	}]
}