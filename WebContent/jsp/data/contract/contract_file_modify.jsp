<%--
    功能		:
    创建时间	: 2010-9-26 下午06:25:42
    创建者		: cui_wenke 
    ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>
<% String local = request.getContextPath(); %>
	{
	layout: 'border', xtype: 'panel', items: [
		{
			xtype: 'ods.formpanel', autoScroll: true, border: false, bodyStyle: 'padding-top:15px', url: '<%=local %>/suspect/irregularity/modify_info.ods', border: false, labelWidth: 80
			,frame: true, region: 'center', labelAlign: 'right', successAfter: function(f)
				{
				this.findParentByType('panel').findByType('ods.grid')[0].getStore().load();
				f.reset();
				f.items.items[1].focus(true);
				}
			, tbar: [
				{
				text: '保存', iconCls: 'x-icon-save',isinit:true, handler: function(btn)
					{
					var form = btn.findParentByType('ods.formpanel');
					if (form.getForm().isValid())
						{
						form.submitXForm(btn);
						}
					}
				}
			, '-',
				{
				text: '新增', iconCls: 'x-icon-add',isinit:true, handler: function(btn)
					{
					var form = btn.findParentByType('ods.formpanel');
					Ext.each(form.toolbars[0].items.items, function(bar) {
						if(!bar.isinit){
							bar.disable();
						}
					});
					form.getForm().reset();
					form.getForm().items.items[1].focus(true);
					}
				}
			, '-',
			{
			text: '删除', iconCls: 'x-icon-delete',disabled: true, handler: function(btn)
				{
				      var form = btn.findParentByType('ods.formpanel');
				      if (Ext.Msg.confirm("系统提示", '您真的要删除当前选中的线索相关人员信息吗?', function(v)
				        {
				        if (v == "yes")
				          {
						      var grid = form.findParentByType('panel').findByType('ods.grid')[0];
						      Ext.Ajax.request(
						        {
						        url: '<%=local %>/suspect/irregularity/deleorreset_info.ods', success: function(response)
						          {form.getForm().reset();
		          Ext.each(btn.findParentByType('panel').toolbars[0].items.items, function(bar){if (!bar.isinit){bar.disable();}});
		          
						          var responseText = Ext.util.JSON.decode(response.responseText); Ext.example.msg('系统提示', responseText.msg); grid.store.load();
						          }
						        , params:
						          {
						          'objectPk': form.getForm().findField('suspectLawAskInfo.lawAskPk').getValue()
						          }
						        }
						      );
				          }
				        }
				      ));
				}
			}
			], items: [
				{
				layout: 'column', xtype: 'panel', defaults:
					{
					layout: 'form', columnWidth: .5
					}
				, items: [
					{
					xtype: 'panel',items: [
						{name: 'irregularity.personnelName', value: '${irregularity.personnelName }',readOnly: true,anchor: '90%', xtype: 'textfield', maxLength: 25, fieldLabel: '姓名'},
						{name: 'irregularity.oftenActionRept', anchor: '90%', xtype: 'textfield', maxLength: 25, fieldLabel: '经常活动场所',allowBlank: false}
					]
					},
					{
					xtype: 'panel',items: [
						{name: 'irregularity.suspectAction', anchor: '90%', xtype: 'textfield', maxLength: 25, fieldLabel: '可疑活动',allowBlank: false},	
						{name: 'irregularity.hometown', anchor: '90%', xtype: 'textfield', maxLength: 25, fieldLabel: '实际居住地',allowBlank: false}
					]
					},
					{
					xtype: 'panel',items: [
						{name: 'irregularity.remark', anchor: '90%', xtype: 'textarea', maxLength: 256, height: 80, fieldLabel: '备注'}
					]
					},
					{
					xtype: 'panel',items: [
						{name: 'irregularity.inquiryUserName', anchor: '90%', xtype: 'textfield', maxLength: 25, fieldLabel: '调控民警',allowBlank: false},
						{name: 'irregularity.inquiryTime', anchor: '90%', xtype: 'textfield', maxLength: 25, fieldLabel: '调控日期',allowBlank: false},
						{name: 'irregularity.inquiryOrgName', anchor: '90%', xtype: 'textfield', maxLength: 25, fieldLabel: '调控单位',allowBlank: false}
					]
					}
				]
				}
				//主键
				,{name: 'irregularity.suspectIrregularityPk', value: '${irregularity.suspectIrregularityPk }', xtype: 'hidden'}
				//刑嫌主健
				,{name: 'irregularity.suspectPk', value: '${irregularity.suspectPk }', xtype: 'hidden'}
				//调控民警
				,{name: 'irregularity.inquiryUserPk', value: '${irregularity.inquiryUserPk }', xtype: 'hidden'}
				//调控单位
				,{name: 'irregularity.inquiryOrgPk', value: '${irregularity.inquiryOrgPk }', xtype: 'hidden'}
				//删除状态
				,{name: 'irregularity.deleteType', value: '${irregularity.deleteType }', xtype: 'hidden'}
				//创建人
				,{name: 'irregularity.createUserPk', value: '${irregularity.createUserPk }', xtype: 'hidden'}
				//创建人组织机构
				,{name: 'irregularity.createOrgPk', value: '${irregularity.createOrgPk }', xtype: 'hidden'}
				//创建时间
				,{name: 'irregularity.createTime', value: '${irregularity.createTime }', xtype: 'hidden'}
			]
		}
	,
		{
		region: 'east', xtype: 'ods.grid', title: '简要信息(双击修改列表内容)', width: 238, minSize: 175, maxSize: 300, animate: true, enableDD: false, enableDrag: true, containerScroll: true, lines: true, rootVisible: true, autoScroll: true, split: true, collapsible: true, margins: '0 0 5 5', cmargins: '0 0 0 0', border: false, pagesize: 20, viewConfig:
			{
			forceFit: true
			}
		, border: false, sm: new Ext.grid.CheckboxSelectionModel(), store: new Ext.data.Store(
			{
			url: '<%=local %>/suspect/irregularity/list_info.ods', reader: new Ext.data.JsonReader(
				{
				root: 'records', totalProperty: 'total'
				}
			, ["suspectIrregularityPk", "suspectPk", "personnelName", "suspectAction", "oftenActionRept", "hometown", "inquiryUserPk", "inquiryUserName",
                "inquiryTime", "inquiryOrgPk", "inquiryOrgName", "remark", "deleteType", "createUserPk", "createOrgPk", "createTime"]), baseParams:
				{
				suspectPk: '<%=request.getParameter("suspectPk") %>'
				}
			}
		), columns: [new Ext.grid.CheckboxSelectionModel(), new Ext.grid.RowNumberer()
		,{header : '调控民警',	sortable:true,		dataIndex : 'inquiryUserName'}
		,{header : '调控日期',	sortable:true,		dataIndex : 'inquiryTime'}

		], listeners:
			{
			rowdblclick: function(grid)
				{
				var selecteds = grid.getSelectionModel().getSelected();
				var formpanel = grid.findParentByType('window').findByType('ods.formpanel')[0];
				var formValues =
					{
						//主键
						 'irregularity.suspectIrregularityPk': selecteds.get('suspectIrregularityPk')
						//刑嫌主健
						,'irregularity.suspectPk': selecteds.get('suspectPk')
						//刑嫌人员姓名
						,'irregularity.personnelName': selecteds.get('personnelName')
						//可疑活动
						,'irregularity.suspectAction': selecteds.get('suspectAction')
						//经常活动场所
						,'irregularity.oftenActionRept': selecteds.get('oftenActionRept')
						//实际居住地
						,'irregularity.hometown': selecteds.get('hometown')
						//调控民警
						,'irregularity.inquiryUserPk': selecteds.get('inquiryUserPk')
						//调控民警
						,'irregularity.inquiryUserName': selecteds.get('inquiryUserName')
						//调控日期
						,'irregularity.inquiryTime': selecteds.get('inquiryTime')
						//调控单位
						,'irregularity.inquiryOrgPk': selecteds.get('inquiryOrgPk')
						//调控单位
						,'irregularity.inquiryOrgName': selecteds.get('inquiryOrgName')
						//备注
						,'irregularity.remark': selecteds.get('remark')
						//删除状态
						,'irregularity.deleteType': selecteds.get('deleteType')
						//创建人
						,'irregularity.createUserPk': selecteds.get('createUserPk')
						//创建人组织机构
						,'irregularity.createOrgPk': selecteds.get('createOrgPk')
						//创建时间
						,'irregularity.createTime': selecteds.get('createTime')
				};
				formpanel.getForm().reset();
				formpanel.getForm().setValues(formValues);
				Ext.each(formpanel.toolbars[0].items.items, function(bar) {
					if(bar.disabled){
					bar.enable();
					}
				});
				}
			}
		}
	]
	}