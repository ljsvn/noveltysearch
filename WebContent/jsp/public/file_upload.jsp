<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>


{
  region: 'center', xtype: 'form', labelWidth: 55, frame: true, bodyStyle: 'padding:5px 5px 0', autoScroll: false, border: false, fileUpload: true, items: [
  {
    xtype: 'textfield', fieldLabel: '选择文件', name: 'kbContent.upload', inputType: 'file', allowBlank: false, blankText: '文件不能为空', height: 25, anchor: '90%'
  }
  ], buttons: [
  {
    text: '上传', type: 'submit', handler: function(btn)
    {
	  var win = btn.findParentByType('window');
	  var imgform = btn.findParentByType('form').getForm();
      if (imgform.isValid())
      {
	      imgform.submit({
	        waitMsg: '正在上传......', url: 'kb/content/upload_image_info.ods', success: function(form, action)
	        {
	        	var src = action.result.msg;
	        	win.form.findField('<%=request.getParameter("localImage") %>').setValue(src);
	 			win.panel.remove(0);win.panel.insert(0,new Ext.Panel({
					html:'<a href="#"><img height="<%=request.getParameter("height") %>" width="<%=request.getParameter("width") %>" src="'+src+'" /></a>'
					})
	 			);
				win.panel.doLayout(true);
				win.close();
	        }
	        , failure: function(form, action)
	        {
	          form.reset();if (action.failureType == Ext.form.Action.SERVER_INVALID)Ext.MessageBox.alert('警告', action.result.errors.msg);
	        }
	      });
      }
    }
  }
  ,
  {
    text: '关闭', type: 'submit', handler: function()
    {
      win.close(this);
    }
  }
  ]
}