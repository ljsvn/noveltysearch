Ext.ns('ods.ux');
ods.ux.ImgView = Ext.extend(Ext.Panel, {
	img_index : 0,
	autoHeight : true,
	bodyBorder : true,
	border: true,
	collapsible : true,
	bodyStyle : 'padding-top:10px;padding-left:10px',
	img_view_id : this.id + '_img',
	set_img: function(offset){
		     if((this.img_index+offset) ==0 ){
			      Ext.getCmp(this.id + '_pre_btn').setDisabled(true);
			     // return;
		     }else{
		       		Ext.getCmp(this.id + '_pre_btn').setDisabled(false);
		     }
		     var tem = this.img_index + offset+1;
		     if(tem == this.src.length){
		       	Ext.getCmp(this.id + '_next_btn').setDisabled(true);
		     }else{
		        Ext.getCmp(this.id + '_next_btn').setDisabled(false);
		     }  
			 //Ext.getCmp(this.id + '_next_btn').setDisabled(((this.img_index + offset) == (this.src.length -1)) ? true:false);
			 //Ext.getCmp(this.id + '_pre_btn').setDisabled(((this.img_index + offset) == 0) ? true:false);
			 
		   	 Ext.get(this.img_view_id).dom.src = this.src[this.img_index + offset];
			 this.img_index = this.img_index + offset;
	},
	setfanyebar:false,
	set_zoom: function(bool){
	   this.zoom( Ext.get(this.img_view_id), 1.5, bool);
	},
	initComponent : function() {
		var cmp = this;
		 var h = this.height -200;
		this.html = '<img align=\'left\' height=\''+h+'\' id=\'' + this.img_view_id + '\' src=\'' + this.src[0]
				+ '\' ></img>';
		if(this.setfanyebar){
				  this.tbar =[
							{
								text:'上一张',
								id:this.id+'_pre_btn',
								iconCls : 'x-icon-pre',
								disabled:true,
								handler:function(){
									 cmp.set_img(-1);
								}
							},'-',{
								text:'下一张',
								id:this.id+'_next_btn',
								iconCls : 'x-icon-next',
								disabled:false,
								handler:function(){
									 cmp.set_img(1);
								}
							},'-',{
								text:'放大',
								iconCls : 'x-icon-zoomOut',
								handler:function(){
									cmp.set_zoom(true);
								}
							},'-',{
								text:'缩小',
								iconCls : 'x-icon-zoomIn',
								handler:function(){
									  cmp.set_zoom(false);
								}
							}
				];
		}else{
				this.tbar =[{
								text:'放大',
								iconCls : 'x-icon-zoomOut',
								handler:function(){
									cmp.set_zoom(true);
								}
							},'-',{
								text:'缩小',
								iconCls : 'x-icon-zoomIn',
								handler:function(){
									  cmp.set_zoom(false);
								}
							}
				];
	    }
		ods.ux.ImgView.superclass.initComponent.call(this);
	},
	afterRender : function() {
		ods.ux.ImgView.superclass.afterRender.call(this);
		Ext.get(this.img_view_id).parent = this;
		//Ext.get(this.img_view_id).center();
		new Ext.dd.DD(Ext.get(this.img_view_id), 'pic');
		// Ext.get(this.img_view_id).dom.title='双击放大 右击缩小';
		Ext.get(this.img_view_id).on({
					'dblclick' : {
						fn : function(e) {
							Ext.get(this).parent.zoom(Ext.get(this), 1.5, true);
						}
					},
					'contextmenu' : {
						fn : function(e) {
							//阻止浏览器默认事件
							e.preventDefault();
							Ext.get(this).parent
									.zoom(Ext.get(this), 1.5, false);
						}
					},
					'mousewheel':{ 
					   fn : function(e){
						        var delta = e.getWheelDelta();
						        if (delta > 0) {
						        	Ext.get(this).parent.zoom(Ext.get(this), 1.5, true);
						        }
						        else
						            if (delta < 0) {
						            	Ext.get(this).parent.zoom(Ext.get(this), 1.5, false);
						            }
					    	}
			    	}
				});
	},
	// 放大、缩小
	zoom : function(el, offset, type) {
		var width = el.getWidth();
		var height = el.getHeight();
		var nwidth = type ? (width * offset) : (width / offset);
		var nheight = type ? (height * offset) : (height / offset);
		var left = type ? -((nwidth - width) / 2) : ((width - nwidth) / 2);
		var top = type ? -((nheight - height) / 2) : ((height - nheight) / 2);
		el.animate({
					height : {
						to : nheight,
						from : height
					},
					width : {
						to : nwidth,
						from : width
					},
					left : {
						by : left
					},
					top : {
						by : top
					}
				}, null, null, 'backBoth', 'motion');
	}
});
Ext.reg('ods.imageiview', ods.ux.ImgView);
