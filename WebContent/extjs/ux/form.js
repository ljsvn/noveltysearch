ods.ux.FormPanel = Ext.extend(Ext.form.FormPanel, {
	messageTitle:'System Message'
	,waitTitle:'Please Wait...'
	,waitMsg:'Save Data...'
	,message:'<b>Record Update Success!<b>'
	,enterKey: true
	,initComponent:function() {
			if (!this.xbuttons) {
			    this.xbuttons = [];
			}			    
			Ext.each(this.xbuttons, function(btn){
				if (btn && btn.xbutton) {
					if (btn.xbutton == 'this.submitXForm') {
						this.keys = this.keys || [];
						if (!btn.disableEnter || btn.disableEnter === false) {
							this.keys.push({
					        	key: this.enterKey ? Ext.EventObject.ENTER : false,
					            fn:btn.handler||this.submitXForm,
					            scope:this
					        });
						}

					}
					if (!btn.handler){
						Ext.apply(btn, {handler:eval(btn.xbutton).createDelegate(this, [btn])}); 
					}
					
				}
			}, this);
			Ext.apply(this, {buttons:this.xbuttons});
		ods.ux.FormPanel.superclass.initComponent.apply(this, arguments);
	}
	,onRender:function() {  
	 	ods.ux.FormPanel.superclass.onRender.apply(this, arguments);
	 }
	,cancelForm :function(btn) {
		var win = this.findParentByType('window');
		var tabpanel = this.findParentByType('tabpanel');
		if (win) {
			win.destroy();
		} 
		else if (tabpanel) {
			var p = tabpanel.getActiveTab();
			tabpanel.remove(p);
			p.destroy();
		} else {
			window.history.back();
		}
	}
	,hideWindows : function (btn){
		var win = this.findParentByType('window');
		win.hide();
	}
	,submitXForm:function(btn) {
		var store = null;
		var success = btn.success;
		var failure = btn.failure;
		this.submitBaseForm(store, success, failure, null, btn.params);
	}
	,showMsg:function(store){
	    var msg = Ext.MessageBox.showClassMsg({
	    	title:this.messageTitle, 
	    	html: this.message, 
	    	iconCls:'x-icon-information' 
	    });
		if (store) {
			store.removeListener('load', this.showMsg, this);
		}
    	
	}
	,submitBaseForm: function(store, success, failure, url, params) {
			 var form = this.getForm();
			 var v = form.isValid();
			 if (this.beforeSubmit) {
				this.beforeSubmit();
			 }			 
		     if (v) {
				var formpanel = this;

				var submitFun = function(f,a) {
					if(a && a.result){
						//f.reset();
						var msg = a.result;
						if (msg.success === true) {			
							if (formpanel.successAfter) {
								formpanel.successAfter(f,a,params);							
							}							
							if (typeof(msg.msg) != 'string' && msg.msg.length > 0){								
								for (var i = 0; i < msg.msg.length; i++) {
									/* Ext.MessageBox.showClassMsg({
								    	title:formpanel.messageTitle, 
								    	html: "<b>" + msg.msg[i].msg + "</b>", 
								    	iconCls:'x-icon-information'
								    });*/
									Ext.example.msg(formpanel.messageTitle, "<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + msg.msg[i].msg + "</b>");
								}
							} else {
								/*Ext.MessageBox.showClassMsg({
							    	title:formpanel.messageTitle, 
							    	html: "<b>" + msg.msg + "</b>", 
							    	iconCls:'x-icon-information'
							    });*/
								if(Ext.example){
									Ext.example.msg(formpanel.messageTitle, "<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + msg.msg + "</b>");
								}
								
							}
							if (store) {
								store.load({params:{start:1, limit:20}});
							}								
						}
					}
				};
			if (!!success) {
				submitFun = function(f,a) {
					Ext.callback(success,formpanel, [f, a]);
				}
			}
				form.submit({
					url:url ? url : this.url,
					params:params||{},
					waitMsg:this.waitMsg,
					waitTitle:this.waitTitle,
					method :'post',
					success: submitFun,
					failure : failure ? function(f,a) {
						Ext.callback(failure,formpanel, [f, a]);
					} : function(f, a) {
						if(a && a.result){
							Ext.MessageBox.show({
			           			title: formpanel.messageTitle, 
			           			msg: typeof(a.result.msg) == "string" ? a.result.msg : a.result.msg[0].msg ,
			          			buttons: Ext.MessageBox.OK,
			           			icon: 'ext-mb-error'
			       			});
						}	
					}
				});                    	
		     }
	}
});
Ext.reg('ods.formpanel', ods.ux.FormPanel);