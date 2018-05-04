<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>
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
	url: '<%=local %>/system/flow/detail_modify_info.ods',
	successAfter: function(f){
		var win=this.findParentByType('window');
		win.store.load();
		win.store=null;
		win.close();
	},
	items: [{
		xtype: 'panel',
		layout: 'column',
		defaults:{
			layout: 'form',
			columnWidth: .8,
			labelWidth: 65
		},
		items: [{
			xtype: 'panel',
			items: [{
				name: 'flowDetails.dealUserName',
				anchor: '97%',
				xtype: 'textfield',
				maxLength: 50,
				fieldLabel: '流程处理人',
				allowBlank: false,
				emptyText:'请输入处理人...',
				readOnly: <%=StringUtil.equals("3",request.getParameter("validatetype")) %> ? true: false,
				value: '${flowDetails.dealUserName }'
			}]
		},{
			xtype: 'panel',
			columnWidth: .2,
			items: [{
				xtype: 'button',
				width: 55,
				text: '选择',
				handler: function(btn) {
					var form = btn.findParentByType('form').getForm();
					win = new Ext.Window({
						layout: 'border',
						title: '选择质检人--网页对话框',
						form: form,
						width: 900,
						height: 500,
						maximizable: true,
						plain: true,
						modal: true,
						iconCls: 'bogus',
						resizable: false,
						items: [{
							layout: 'fit',
							region: 'center',
							xtype: 'panel',
							plugins: [ new Ext.ux.Plugin.RemoteComponent({
								url: '<%=local %>/system/user/select_user_tree_list.ods',
								params: {
									userRealName: 'flowDetails.dealUserName',
									userPk: 'flowDetails.dealUserPk'
								},
								method: 'post'
							})]
						}]
					})
					win.show();
				}
			}]
		}]
	},{
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
				name: 'flowDetails.memo',
				anchor: '97%',
				xtype: 'textarea',
				height: 80,
				maxLength: 250,
				fieldLabel: '备注',
				readOnly: <%=StringUtil.equals("3",request.getParameter("validatetype")) %> ? true: false,
				value: '${flowDetails.memo }'
			}]
		}]
	},{
		//主键
		name: 'flowDetails.flowDetailsPk',
		xtype: 'hidden',
		value: '${flowDetails.flowDetailsPk }'
	},{
		//流程模板主键
		name: 'flowDetails.flowInfoPk',
		xtype: 'hidden',
		value: '${flowDetails.flowInfoPk }'
	},{
		//处理人主键
		name: 'flowDetails.dealUserPk',
		xtype: 'hidden',
		value: '${flowDetails.dealUserPk }'
	},{
		//处理人序号
		name: 'flowDetails.flowNumber',
		xtype: 'hidden',
		value: '${flowDetails.flowNumber }'
	},{
		//一级组织机构主键
		name: 'flowDetails.firstOrgPk',
		xtype: 'hidden',
		value: '${flowDetails.firstOrgPk }'
	},{
		//创建人组织机构主键
		name: 'flowDetails.createOrgPk',
		xtype: 'hidden',
		value: '${flowDetails.createOrgPk }'
	},{
		//创建人主键
		name: 'flowDetails.createUserPk',
		xtype: 'hidden',
		value: '${flowDetails.createUserPk }'
	},{
		//创建时间
		name: 'flowDetails.createTime',
		xtype: 'hidden',
		value: '${flowDetails.createTime }'
	}],
	xbuttons: [<%if(!StringUtil.equals("3",request.getParameter("validatetype"))){ %>{
		text: '保存',
		iconCls: 'form_save',
		handler: function(btn){
			var form=btn.findParentByType('form');
			if(form.getForm().isValid()){
				form.getForm().submit({
					waitTitle: '请稍等...',
					waitMsg: '正在提交信息...',
					url: form.url,
					success: function(f, action){
						form.successAfter(form);
					},
					failure: function(f, action){
						var responseText = Ext.util.JSON.decode(action.response.responseText);
						Ext.MessageBox.show({
							title: '系统提示', msg: responseText.msg, buttons: Ext.MessageBox.OK, icon: 'ext-mb-error'
						});
					}
				});
			}
		}
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