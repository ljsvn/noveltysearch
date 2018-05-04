<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%
String local = request.getContextPath();
%>
{
	region: 'center', xtype: 'form', labelWidth: 55, frame: true, 
	bodyStyle: 'padding:5px 5px 0', autoScroll: false, 
	border: false, fileUpload: true, 
	items: [
   	{
		name: 'bulletinInfo.imgUpload', 
		xtype: 'fileuploadfield',
	 	fieldLabel: '选择图片',
	  	buttonText: '',
	  	anchor: '90%', 
	 	allowBlank: false, 
	 	blankText: '请选择上传',
		regex : /^(([^\n])+\.)+(\jpg)|(\JPG)|(\JPEG)|(\jpeg)|(\JPE)|(\jpe)|(\gif)|(\GIF)|(\png)|(\PNG)+$/,
		regexText : '只能上传jpg,jpeg,png,gif文件',
		buttonCfg: {iconCls: 'upload-icon'}
	}
  ], buttons: [
  {
    text: '上传', type: 'submit', handler: function(btn)
    {
	  var win = btn.findParentByType('window');
	  var imgform = btn.findParentByType('form').getForm();
      if (imgform.isValid()){
	      imgform.submit({
        	waitMsg: '正在上传......', 
	        url: '<%=local%>/bulletin/image/bulletin_image_info.ods',
	        success: function(form, action){
	        	var src = action.result.msg;
	        	win.form.findField('<%=request.getParameter("imagePath") %>').setValue(src);
	 			win.panel.remove(0);
	 			win.panel.insert(0, new Ext.Panel({
					html:'<a href="#"><img height="<%=request.getParameter("height") %>" width="<%=request.getParameter("width") %>" src="'+src+'" /></a>'
				}));
				win.panel.doLayout(true);
				win.close();
	        },
	        failure: function(form, action){
	          	form.reset();
	          	if (action.failureType == Ext.form.Action.SERVER_INVALID)
	          	Ext.MessageBox.alert('警告', action.result.errors.msg);
        	}
	      });
      }
    }
  },{
	text: '关闭',
	handler: function(btn){
		btn.findParentByType('window').close();
	}
  }
  ]
}