//window.document.onkeydown=keySubmit;

function keySubmit()
{ 
    if(event.keyCode =="13")
	{
    	var text = Ext.getCmp('outboundphoneNumid');  
    	if(typeof(text)!='undefined'){ 
        	 if(text.getValue()!=''){				 	
     		 	beginCTIOutCall(text.getValue());				 	
     		 } else{
     		 	text.focus(true);
     		 } 
    	}
	}
}

/* 公告附件下载 */
function bulletin_file_download(infoPk) {
	Ext.Ajax.request( {
		url : '../bulletin/send/file_cleck_file.ods',
		success : function(response) {
			var responseText = Ext.util.JSON.decode(response.responseText);
			if (responseText.success) {
				window.location.href = '../bulletin/send/file_download.ods?infoPk=' + infoPk;
			} else {
				Ext.example.msg('系统提示', responseText.msg);
			}
		},
		params : {
			'infoPk' : infoPk
		}
	});
}

/*上传文献资料下载*/
function file_store_download(uploadpath){
	Ext.Ajax.request({
		url : '../system/filemanage/file_check.ods',
		success : function(response) {
			var responseText = Ext.util.JSON.decode(response.responseText);
			if (responseText.success) {
				window.location.href = '../system/filemanage/file_download.ods?uploadpath=' + uploadpath;
			} else {
				Ext.example.msg('系统提示', responseText.msg);
			}
		},
		params : {
			'uploadpath' : uploadpath
		}
	});
}

