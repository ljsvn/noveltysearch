<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%
String local = request.getContextPath();
%>
{
	region: 'center',
	xtype: 'form',
	labelWidth: 55,
	frame: true,
	bodyStyle: 'padding:5px 5px 0',
	autoScroll: false,
	border: false,
	fileUpload: true,
	items: [{
		name: 'fileUpload.upload',
		xtype: 'fileuploadfield',
	 	fieldLabel: '选择文件',
	  	buttonText: '',
	  	anchor: '90%',
	 	allowBlank: false,
	 	blankText: '请选择上传',
	 	regex : /^[^\.]+(\.)(doc|docx|DOCX|DOC)$/,
		regexText : '只能上传doc,docx的word文件',
		buttonCfg: {iconCls: 'upload-icon'}
	}],
	buttons: [{
		text: '上传',
		type: 'submit',
		handler: function(btn) {
			var win = btn.findParentByType('window');
			var fileform = btn.findParentByType('form').getForm();
			if (fileform.isValid()){
				fileform.submit({
					waitMsg: '正在上传......',
					url: '<%=local%>/file/upload/upload_info.ods',
					success: function(form, action){
						var filePath = action.result.filePath;
						var fileName = action.result.fileName;
						win.form.findField('<%=request.getParameter("filePath") %>').setValue(filePath);
						win.form.findField('<%=request.getParameter("fileName") %>').setValue(fileName);
						win.close();
					},
					failure: function(form, action){
					test(action)
						form.reset();
						if (action.failureType == Ext.form.Action.SERVER_INVALID)
						Ext.MessageBox.alert('警告', action.result.msg);
					}
				});
			}
		}
	},{
		text: '关闭',
		handler: function(btn){
			btn.findParentByType('window').close();
		}
	}]
}