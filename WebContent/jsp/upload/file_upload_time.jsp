<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%
String local = request.getContextPath();
//获取上传的文件格式验证
String regexFormat=request.getParameter("regexFormat");
//获取上传的文件格式验证提示语句
String regexText=request.getParameter("regexText");
%>
{
	region: 'center',
	xtype: 'form',
	labelWidth: 75,
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
	 	regex : <%=regexFormat %>,
		regexText : '<%=regexText %>',
		emptyText:"小于10MB的文件",
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
					url: '<%=local%>/file/upload/upload_info_time.ods',
					success: function(form, action){
						var filePath = action.result.filePath;
						var fileName = action.result.fileName;
						var otherParameter = action.result.otherParameter;
						win.form.findField('<%=request.getParameter("filePath") %>').setValue(filePath);
						win.form.findField('<%=request.getParameter("fileName") %>').setValue(fileName);
						win.form.findField('<%=request.getParameter("otherParameter") %>').setValue(otherParameter);
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