Ext.apply(Ext.form.VTypes, {
	daterange: function(val, field) {
		var date = field.parseDate(val);	    
	    // We need to force the picker to update values to recaluate the disabled dates display
	    var dispUpd = function(picker) {
	      var ad = picker.activeDate;
	      picker.activeDate = null;
	      picker.update(ad);
	    };	    
	    if (field.startDateField) {
	      var sd = Ext.getCmp(field.startDateField);
	      if (!sd) {
	    	  var form = field.findParentBy(function(c) {
	    		  return c.getForm && c.getForm();
	    	  });
	    	  sd = form.getForm().findField(field.startDateField);
	      }
	      if (!sd.maxValue || (date.getTime() != sd.maxValue.getTime())) {
	          sd.setMaxValue(date);
	          sd.validate();
	      }
	    } else if (field.endDateField) {
	      var ed = Ext.getCmp(field.endDateField);
	      if (!ed) {
	    	  var form = field.findParentBy(function(c) {
	    		  return c.getForm && c.getForm();
	    	  });
	    	  ed = form.getForm().findField(field.endDateField);	    	  
	      }
	      if (!ed.minValue || (date.getTime() != ed.minValue.getTime())) {
	          ed.setMinValue(date);
	          ed.validate();
	      }
	    }
	    return true;
	}
	,folder:function(val) {
		var folder = new RegExp('^[^\\\\/:"<>\\|]+$');
		return folder.test(val);
	}
	,folderText:'A file name cannot contain any of the following characters: \ / : * ? " < > | '
	,driveChar:function(val) {
		var drive = new RegExp('^[a-zA-Z]$');
		return drive.test(val);
	}
	,driveCharText:'The Drive field is not an English char'
	,filedir:function(val) {
		var filedir = new RegExp('^[a-zA-Z]:\\\\([^\\\\/:"<>\\|]+(\\\\)?)*$');
		return filedir.test(val);
	}
	,filedirText:'A file name cannot contain any of the following characters: \ / : * ? " < > | '
	,ip:function(val) {
		var ip = new RegExp("^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\.([01]?\\d\\d?|2[0-4]\\d|25[0-5])$");
		return ip.test(val);
	}
	,ipMask:/[0-9\.]/i
	,ipText:'Invalid IP Address'
	,password: function(val, field) {
    	if (field.initialPassField && field.initialPassField != '') {
      		var pwd = Ext.getCmp(field.initialPassField);
      		return (val == pwd.getValue());
    	}
    	return true;
  	}
  	,passwordText: 'Passwords do not match'
});