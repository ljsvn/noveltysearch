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
				name: 'searchDatabaseName',
				fieldLabel: '名称',
				anchor: '95%',
				xtype: 'textfield'
			}]
		},{
			layout: 'form',
			columnWidth: .3,
			border: false,
			items: [{
				name: 'url',
				fieldLabel: 'URL',
				anchor: '95%',
				xtype: 'textfield'
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
			url: '<%=local %>/search/database/list_info.ods',
			reader: new Ext.data.JsonReader({
				root: 'records',
				totalProperty: 'total'
			},[
				"searchDatabasePk","searchDatabaseName","url","ageLimit","searchStrategy","retain1"
                 ,"retain2","orderNo","memo","createOrgPk","createUserPk","createTime","deleteType"
			])
		}),
		columns: [
			new Ext.grid.RowNumberer(),
		    {
		      header: '名称', sortable: true, dataIndex: "searchDatabaseName"
		    }
		    ,
		    {
		      header: 'URL', sortable: true, dataIndex: "url"
		    }
		    ,
		    {
		      header: '年限', sortable: true, dataIndex: "ageLimit"
		    }
		],
		listeners: {
			rowdblclick: function(grid) {
				var wind = this.findParentByType('window');
				var selecteds = grid.getSelectionModel().getSelected();
				<%
				String url = request.getParameter("url");
				String retrievalDatabaseName = request.getParameter("retrievalDatabaseName");
				String ageLimit = request.getParameter("ageLimit");
			
			
				if(null != retrievalDatabaseName){
					%>wind.form.findField('<%=retrievalDatabaseName %>').setValue(selecteds.get('searchDatabaseName'));<%
				}
				if(null != url){
					%>wind.form.findField('<%=url %>').setValue(selecteds.get('url'));<%
				}
				if(null != ageLimit){
					%>wind.form.findField('<%=ageLimit %>').setValue(selecteds.get('ageLimit'));<%
				}
			
				
				%>
				wind.close();
			}
		}
	}]
}