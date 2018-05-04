<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@page import="com.ods.util.type.StringUtil"%>
<% 
String local = request.getContextPath();
%>
{
	frame: true,
	xtype: 'ods.formpanel',
	border: false,
	buttonAlign: 'center',
	labelAlign: 'right',
	autoScroll: true,
	bodyStyle: 'padding-top: 15px',
	url: '<%=local %>/system/filemanage/directory_modify_info.ods',
	successAfter: function(f){
		var win=this.findParentByType('window');
		win.rootnode.reload();
		win.close();
	},
	items: [{
		xtype: 'panel',
		layout: 'column',
		defaults:{
			layout: 'form',
			columnWidth: 1,
			labelWidth: 65
		},
		items: [{
			xtype: 'panel',
			items: [{
				name: 'fileDirectory.directoryName',
				anchor: '97%',
				xtype: 'textfield',
				maxLength: 50,
				fieldLabel: '目录名称',
				allowBlank: false,
				readOnly: <%=StringUtil.equals("3",request.getParameter("validatetype")) %> ? true: false,
				value: '${fileDirectory.directoryName }'
			}]
		}]
	},{
		//主键
		name: 'fileDirectory.fileDirectoryPk',
		xtype: 'hidden',
		value: '${fileDirectory.fileDirectoryPk }'
	},{
		//父主键
		name: 'fileDirectory.fatherFileDirectoryPk',
		xtype: 'hidden',
		value: '${fileDirectory.fatherFileDirectoryPk }'
	},{
		//创建人主键
		name: 'fileDirectory.createUserPk',
		xtype: 'hidden',
		value: '${fileDirectory.createUserPk }'
	},{
		//创建时间
		name: 'fileDirectory.createTime',
		xtype: 'hidden',
		value: '${fileDirectory.createTime }'
	}],
	xbuttons: [<%if(!StringUtil.equals("3",request.getParameter("validatetype"))){ %>{
		text: '保存',
		iconCls: 'form_save',
		xbutton: 'this.submitXForm'
	},<%if(!StringUtil.equals("2",request.getParameter("validatetype"))){ %>{
		text: '重 置',
		iconCls: 'form_reset',
		handler: function(btn){
			var form=btn.findParentByType('ods.formpanel').getForm();
			form.reset();
			form.items.items[0].focus(true);
		}
	},<%} %><%} %>{
		text: '关闭',
		iconCls: 'from_exit',
		handler: function(btn){
			btn.findParentByType('window').close();
		}
	}]
}