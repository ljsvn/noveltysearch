<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
{
  region: 'center',
   buttonAlign: 'center',
   xtype: 'form', 
   labelWidth: 85, 
   frame: true, 
  bodyStyle: 'padding:5px 5px 0',
   autoScroll: false, 
   border: false, 
   fileUpload: true, 
  items: [
	      {
			allowBlank : false,
			name : 'execlFileImportInfo.importFileMethod',
			hiddenName : 'execlFileImportInfo.importFileMethod',
			fieldLabel : '导入方式',
			anchor : '90%',
			xtype : 'combo',
			triggerAction:'all',
			store : [[0,'新增导入']],
			value : 0
		},{
		name: 'execlFileImportInfo.file', 
		xtype: 'fileuploadfield',
		 fieldLabel: '选择文件',
		  buttonText: '',
		  anchor: '90%', 
		 allowBlank: false, 
		 blankText: '导入文件不能为空',
		buttonCfg: {iconCls: 'upload-icon'}
		
	}
	,{name: 'execlFileImportInfo.execlFileImportTypeId', value: '<%=request.getParameter("execlFileImportTypeId") %>', xtype: 'hidden'}
	,{name: 'contractPk', value: '<%=request.getParameter("contractPk") %>', xtype: 'hidden'}
  ], buttons: [
  {
    text: '上传', handler: function(btn)
    {
	  var win = btn.findParentByType('window');
	  var imgform = btn.findParentByType('form').getForm();
      if (imgform.isValid())
      {
	      imgform.submit({
	        waitMsg: '正在上传...', 
	        waitTitle:'请稍等...',
	        url: '<%=request.getContextPath() %>/execlfile/importinfo/upload_info.ods', 
	        success: function(form, action){
	        	win.store.load();
	        	win.close();
	        }
	        , failure: function(form, action)
	        {
	          if (action.failureType == Ext.form.Action.SERVER_INVALID){
	          	var responseText = Ext.util.JSON.decode(action.response.responseText);
				Ext.MessageBox.show({
           			title: '系统提示', 
           			msg: responseText.msg ,
          			buttons: Ext.MessageBox.OK,
           			icon: 'ext-mb-error'
       			});
	          }
	        }
	      });
      }
    }
  }
  ,
  {
    text: '关闭', handler: function(btn)
    {
      btn.findParentByType('window').close();
    }
  }
  ]
}