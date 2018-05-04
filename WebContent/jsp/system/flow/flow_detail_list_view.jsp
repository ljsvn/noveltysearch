<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String local = request.getContextPath(); %>
{
	region: 'center',
	xtype: 'ods.grid',
	border: false,
	initload: '' == '${flowInfoPk }' ? false : true,
	viewConfig: {
		forceFit: true
	},
	store: new Ext.data.Store({
		url: '<%=local %>/system/flow/detail_list_info.ods',
		reader: new Ext.data.JsonReader({
			root: 'records',
			totalProperty: 'total'
		},[
			"flowDetailsPk","flowInfoPk","flowNumber","dealUserPk","dealUserName","memo","firstOrgPk","createOrgPk","createUserPk","createTime","deleteType"
		]),
		baseParams:{
			flowInfoPk: '' == '${flowInfoPk }' ? 'null1' : '${flowInfoPk }'
		}
	}),
	columns: [
		{header: '处理人顺序', sortable: true, dataIndex: "flowNumber"},
		{header: '处理人姓名', sortable: true, dataIndex: "dealUserName"}
	]
}