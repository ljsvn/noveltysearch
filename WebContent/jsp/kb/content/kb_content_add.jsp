<%--
    功能            :知识点添加页面
    创建时间  :2009-11-14
    创建者        : jiangwenqi 
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@page import="com.ods.util.resource.ResourceUtil"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<% String local = request.getContextPath(); %>
<%//一个添加的窗口  开始 %>
{
	frame : true,
	layout : 'form',
	region : 'center',
	xtype : 'ods.formpanel',
	buttonAlign : 'center',
	labelAlign : 'right',
	url : '<%=local %>/kb/content/kbcontentCUD_saveInfo.ods',
	beforeSubmit : function() {
		var form = this.getForm();
		var value = form.getValues()['kbContent.kbContent'];
		var value1 = form.getValues()['kbContent.kbName'];
		var value2 = form.getValues()['kbContent.keyWord'];
		if (value1 == 'null' || value1 == 'NULL') {
			value = '';
			var field1 = form.findField('kbContent.kbName');
			field1.setValue(value);
		}
		if (value2 == 'null' || value2 == 'NULL') {
			value = '';
			var field1 = form.findField('kbContent.keyWord');
			field1.setValue(value);
		}
		if (value == 'null' || value == 'NULL') {
			value = '';
			var field1 = form.findField('kbContent.kbContent');
			field1.setValue(value);
		}
		var text = form.findField('kbContent.kbFrePk').lastSelectionText;
		form.findField('kbContent.kbFreName').setValue(text);
		var text1 = form.findField('kbContent.kbTypePk').lastSelectionText;
		form.findField('kbContent.kbTypeName').setValue(text1);
	},
	successAfter : function(f, a) {
		var win = this.findParentByType('window');
		win.n.appendChild( {
			kbDirCode : win.n.attributes.kbDirPk,
			kbPk : a.result.kbPk,
			text : f.findField('kbContent.kbName').getValue(),
			leaf : true
		});
		delete win.n;
		win.close();
	}

	,
	items : [
			{
				name : 'kbContent.kbDirPk',
				value : '',
				anchor : '95%',
				xtype : 'hidden'
			},
			{
				name : 'kbContent.kbDirName',
				value : '',
				anchor : '95%',
				xtype : 'hidden'
			},
			{
				name : 'kbContent.kbTypeName',
				value : '',
				anchor : '95%',
				xtype : 'hidden'
			},
			{
				name : 'kbContent.kbFreName',
				value : '',
				anchor : '95%',
				xtype : 'hidden'
			},
			{
				name : 'kbContent.kbInmage',
				value : '',
				anchor : '95%',
				xtype : 'hidden'
			},
			{
				layout : 'form',
				xtype : 'panel',
				items : [ {
					layout : 'column',
					fieldLabel : '知识点标题',
					items : [
							{
								allowBlank : false,
								name : 'kbContent.kbName',
								value : '',
								anchor : '95%',
								xtype : 'textfield',
								columnWidth : .82,
								maxLength : 50,
								minLength : 2,
								emptyText : '请填写知识点标题'

							},
							{
								text : '校验',
								columnWidth : .12,
								xtype : 'button',
								handler : function(btn) {
									var form = btn
											.findParentByType('ods.formpanel');
									var kbDirCode = form.getForm().findField(
											'kbContent.kbDirPk').getValue();
									var kbName = form.getForm().findField(
											'kbContent.kbName').getValue();
									var kbDirName = form.getForm().findField(
											'kbContent.kbDirName').getValue();
									Ext.Ajax
											.request( {
												url : '<%=local %>/kb/content/validkbInfoName.ods',
												method : 'post',
												params : {
													'kbContent.kbName' : kbName,
													'kbContent.kbDirPk' : kbDirCode,
													'kbContent.kbDirName' : kbDirName
												},
												success : function(reponse) {
													var JSON = Ext.util.JSON
															.decode(reponse.responseText);
													if (JSON.success) {
														Ext.example.msg('系统提示',
																JSON.msg);
													} else {
														Ext.example.msg('系统提示',
																JSON.msg);
														form
																.getForm()
																.findField(
																		'kbContent.kbName')
																.setValue('');
													}
												}
											});
								}
							} ]

				} ]

			},
			{
				layout : 'column',
				xtype : 'panel',
				defaults : {
					columnWidth : .5,
					layout : 'form'
				}

				,
				items : [ {
					xtype : 'panel',
					items : [

					{
						typeAhead : true,
						mode : 'local',
						triggerAction : 'all',
						selectOnFocus : true,
						hiddenName : 'kbContent.areaCode',
						forceSelection : true,
						name : 'kbContent.areaCode',
						value : '',
						anchor : '100%',
						xtype : 'combo',
						fieldLabel : '级别',
						disabled : true,
						value : 'L',
						store : [ [ 'L', '地方' ] ]

					}, {
						name : 'kbContent.areaCodeValue',
						value : '',
						anchor : '95%',
						xtype : 'hidden',
						value : '0'

					}, {
						name : 'kbContent.kbType',
						value : '',
						anchor : '95%',
						xtype : 'hidden',
						value : '1'

					}, {
						name : 'kbContent.areaCode',
						value : '',
						anchor : '95%',
						xtype : 'hidden',
						value : 'L'

					}

					, {
						name : 'kbContent.kbFrePk',
						value : '',
						anchor : '95%',
						xtype : 'hidden'
					} ]

				}, {
					xtype : 'panel',
					items : [

					{
						typeAhead : true,
						mode : 'local',
						triggerAction : 'all',
						selectOnFocus : true,
						hiddenName : 'kbContent.kbTypePk',
						forceSelection : true,
						name : 'kbContent.kbTypePk',
						value : '',
						anchor : '90%',
						xtype : 'combo',
						fieldLabel : '知识点类型 ',
						value:'<s:property value="#request.typeqr[0].kbTypePk"/>',
						store:[
						  	<s:iterator value="#request.typeqr" id="kb" status="stas">
						  	['${kb.kbTypePk }','${kb.kbTypeContent }']
						  	<s:if test="!#stas.last">,</s:if>
							</s:iterator>
						]

					} ]

				} ]

			},
			{
				layout : 'form',
				xtype : 'panel',
				items : [

				{
					name : 'kbContent.keyWord',
					value : '',
					anchor : '95%',
					xtype : 'textfield',
					fieldLabel : '搜索关键字',
					minLength : 2,
					maxLength : 50

				}

				]

			},
			{
				layout : 'form',
				xtype : 'panel',
				items : [ {
					layout : 'table',
					fieldLabel : '关联知识点',
					items : [
							{
								name : 'kbContent.kbLink',
								value : '${kbContent.kbLink }',
								anchor : '95%',
								xtype : 'textfield',
								width : 600,
								minLength : 2,
								maxLength : 500

							},
							{
								name : 'kbContent.kbLinkPK',
								value : '${kbContent.kbLinkPK }',
								anchor : '95%',
								xtype : 'hidden'
							},
							{
								text : '查看',
								width : 35,
								xtype : 'button',
								handler : function(btn) {
									var leftx = btn.findParentByType('window').x
									var y = btn.findParentByType('window').y
									var x = leftx + 650;
									if (leftx > 700) {
										x = leftx - 300;
									}
									var form = btn.findParentByType(
											'ods.formpanel').getForm();
									test(btn.findParentByType('ods.formpanel'));
									var awin = new Ext.Window(
											{
												layout : 'border'

												,
												form : form,
												autoDestroy : true,
												title : '请选择关联知识点',
												width : 300,
												x : x,
												y : y,
												height : 400,
												autoDestroy : true,
												modal : true,
												plain : true,
												iconCls : 'bogus',
												items : [

												{
													layout : 'fit',
													region : 'center',
													xtype : 'panel',
													plugins : [ new Ext.ux.Plugin.RemoteComponent(
															{
																url : '<%=local %>/kb/content/kbtreeView.ods',
																method : 'post'
															}) ]

												} ]

											})

									awin.show();
								}
							} ]

				} ]

			}, {
				layout : 'form',
				xtype : 'panel',
				items : [ {
					allowBlank : false,
					name : 'kbContent.kbContent',
					value : '',
					anchor : '95%',
					xtype : 'StarHtmleditor',
					fieldLabel : '具体内容',
					minLength : 2,
					height : 200,
					emptyText : '请填写知识点内容'

				} ]

			} ]

	,
	xbuttons : [ {
		text : '保存',
		disableEnter : true,
		xbutton : 'this.submitXForm'
	}, {
		text : '重置'

		,
		handler : function(btn) {
			btn.findParentByType('ods.formpanel').form.reset()
		}
	}, {
		text : '关闭'

		,
		handler : function(btn) {
			btn.findParentByType('window').close();
		}
	} ],
	listeners : {
		'render' : function() {
			var win = this.findParentByType('window');
			this.getForm().findField('kbContent.kbDirPk').setValue(
					win.n.attributes.kbDirPk);
			this.getForm().findField('kbContent.kbDirName')
					.setValue(win.n.text);
			this.getForm().findField('kbContent.kbDirPk').setValue(
					win.n.attributes.kbDirPk);
			this.findByType('textfield')[0].focus(true, true);
		}
	}

}


			