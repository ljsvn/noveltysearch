/**
 * 重载EXTJS-HTML编辑器
 * 
 * @class HTMLEditor
 * @extends Ext.form.HtmlEditor
 * @author wuliangbo
 */
HTMLEditor = Ext.extend(Ext.form.HtmlEditor, {
	addImage : function() {
		var editor = this;
		var imgform = new Ext.FormPanel({
			region : 'center',
			labelWidth : 55,
			frame : true,
			bodyStyle : 'padding:5px 5px 0',
			autoScroll : false,
			border : false,
			fileUpload : true,
			items : [{
						xtype : 'textfield',
						fieldLabel : '选择文件',
						name : 'kbContent.upload',
						inputType : 'file',
						allowBlank : false,
						blankText : '文件不能为空',
						height : 25,
						anchor : '90%'
					}],
			buttons : [{
				text : '上传',
				type : 'submit',
				handler : function() {
					if (!imgform.form.isValid()) {return;}
					imgform.form.submit({
						waitMsg : '正在上传......',
						url : 'kb/content/upload_image_info.ods',
						success : function(form, action) {
							var element = document.createElement("img");
							element.src = action.result.msg;
							if (Ext.isIE) {
								editor.win.focus();
					            var doc = editor.getDoc(),r = doc.selection.createRange();
					            if(r){
					                r.pasteHTML(element.outerHTML);
					                editor.syncValue();
					                editor.deferFocus();
					            }
							} else {
								var selection = editor.win.getSelection();
								if (!selection.isCollapsed) {
									selection.deleteFromDocument();
								}
								selection.getRangeAt(0).insertNode(element);
							}
							if((editor.name == 'kbContent.kbContent')){
								var kbInmage = editor.findParentByType('ods.formpanel').form.findField('kbContent.kbInmage');
								if(kbInmage.getValue()){
									kbInmage.setValue(action.result.msg+','+kbInmage.getValue());
								}else{
									kbInmage.setValue(action.result.msg);
								}
							}
							win.hide();
						},
						failure : function(form, action) {
							form.reset();
							if (action.failureType == Ext.form.Action.SERVER_INVALID)
								Ext.MessageBox.alert('警告',
										action.result.errors.msg);
						}
					});
				}
			}, {
				text : '关闭',
				type : 'submit',
				handler : function() {
					win.close(this);
				}
			}]
		})

		var win = new Ext.Window({
					title : "上传图片",
					width : 300,
					height : 200,
					modal : true,
					border : false,
					iconCls : "../css/desktop/images/picture.png",
					layout : "fit",
					items : imgform

				});
		win.show();
	},
	createToolbar : function(editor) {
		HTMLEditor.superclass.createToolbar.call(this, editor);
		this.tb.insertButton(16, {
					cls : "x-btn-icon",
					icon : "../css/desktop/images/picture.png",
					handler : this.addImage,
					scope : this
				});
	}
});
Ext.reg('StarHtmleditor', HTMLEditor);
