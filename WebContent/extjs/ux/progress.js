Ext.ns('Ext.ux.form');
Ext.ux.form.Progress = Ext.extend(Ext.ProgressBar,
		{
			load : function(lable) {
				lable.setValue(this.startn);
				if (this.url.length > 0) {
					this.begin(lable);
				} else {
					var endn = this.endn;
					var setTimeNomber = this.setTimeNomber;
					for ( var i = 1; i < endn + 2; i++) {
						setTimeout(this.modifybyself(i, endn, this), i
								* setTimeNomber);
					}
				}
			},
			modifybyself : function(v, endn, pbar) {
				return function() {
					if (v > endn) {
						pbar.updateText(pbar.modifyText);
					} else {
						pbar.updateProgress(v / endn, '总共: ' + endn + '已加载: '
								+ v);
					}
				};
			},
			begin : function(lable) {
				if (lable.getValue() < (this.endn + 2)) {
					setTimeout(this.modify(this, lable), this.setTimeNomber);
				}
			},
			modify : function(pbar, lable) {
				var v = lable.getValue();
				var endn = this.endn;

				return function() {
					Ext.Ajax.request( {
						url : pbar.url,
						success : function(response) {
							var responseText = Ext.util.JSON
									.decode(response.responseText);
							lable.setValue(responseText.msg);
						},
						params : {
							'flag' : v,
							'endn' : endn
						}
					});
					v = lable.getValue();
					if (v > endn) {
						pbar.updateText(pbar.modifyText);
					} else {
						pbar.updateProgress(v / endn, '总共: ' + endn + '已加载: '
								+ v);
						pbar.begin(lable);
					}
				};
			},
			startn : 1,
			endn : 10,
			setTimeNomber : 1000,
			modifyText : '加载完毕!',
			url : ''
		});

Ext.reg('odsProgress', Ext.ux.form.Progress);