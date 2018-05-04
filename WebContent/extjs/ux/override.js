
// ******************************* Bugs fix ***********************************    
function test(str){
	return str;
}
Ext.override(Ext.chart.Chart, {  
    onDestroy: function(){  
        this.bindStore(null);  
        var tip = this.tipFnName;  
        if(!Ext.isEmpty(tip)){  
            delete window[tip];  
        }  
        Ext.chart.Chart.superclass.onDestroy.call(this);  
    }  
});    
Ext.override(Ext.form.TextField,{  
    autoSize : function(){  
        if(!this.grow || !this.rendered){  
            return;  
        }  
        if(!this.metrics){  
            this.metrics = Ext.util.TextMetrics.createInstance(this.el);  
        }  
        var el = this.el;  
        var v = el.dom.value;  
        var d = document.createElement('div');  
        d.appendChild(document.createTextNode(v));  
        v = d.innerHTML;  
        Ext.removeNode(d);  
        d = null;  
        v += '&#160;';  
        var w = Math.min(this.growMax, Math.max(this.metrics.getWidth(v) + /* add extra padding */ 10, this.growMin));  
        this.el.setWidth(w);  
        this.fireEvent('autosize', this, w);  
    }  
});    
Ext.override(Ext.Component, {  
    onRender : function(ct, position){  
        if(!this.el && this.autoEl){  
            if(Ext.isString(this.autoEl)){  
                this.el = document.createElement(this.autoEl);  
            }else{  
                var div = document.createElement('div');  
                Ext.DomHelper.overwrite(div, this.autoEl);  
                this.el = div.firstChild;  
            }  
            if (!this.el.id) {  
                this.el.id = this.getId();  
            }  
        }  
        if(this.el){  
            this.el = Ext.get(this.el);  
            if(this.allowDomMove !== false){  
                ct.dom.insertBefore(this.el.dom, position);  
                if (div) {  
                    Ext.removeNode(div);  
                    div = null;  
                }  
            }  
        }  
    }  
});  
// ************************* improve **********************    
(function(){  
    Ext.util.TextMetrics.Instance = function(bindTo, fixedWidth){  
        var ml = new Ext.Element(document.createElement('div'));  
        document.body.appendChild(ml.dom);  
        ml.position('absolute');  
        ml.setLeftTop(-1000, -1000);  
        ml.hide();  
  
        if(fixedWidth){  
            ml.setWidth(fixedWidth);  
        }  
  
        var instance = {  
            getSize : function(text){  
                ml.update(text);  
                var s = ml.getSize();  
                ml.update('');  
                return s;  
            },  
            bind : function(el){  
                ml.setStyle(  
                    Ext.fly(el).getStyles('font-size','font-style', 'font-weight', 'font-family','line-height', 'text-transform', 'letter-spacing')  
                );  
            },  
            setFixedWidth : function(width){  
                ml.setWidth(width);  
            },  
            getWidth : function(text){  
                ml.dom.style.width = 'auto';  
                return this.getSize(text).width;  
            },  
            getHeight : function(text){  
                return this.getSize(text).height;  
            },  
            // Add by clue  
            destroy :   function(){  
                Ext.destroy(ml);  
                delete ml;  
            }  
        };  
  
        instance.bind(bindTo);  
  
        return instance;  
    };  
})();  
// ******************************* Memory Release *****************************    
Ext.override(Ext.Component,{   
    onDestroy   :   function(){   
        if(this.plugins){  
            Ext.destroy(this.plugins);  
        }  
        Ext.destroy(this.el);
		this.el = null;
		//alert(this.el);  
    }  
});  

/*
Ext.Window.prototype.beforeDestroy = function(){   
        Ext.destroy(     
    		this.focusEl,  // 新增   
    		this.bwrap, // 新增     
            this.resizer,   
            this.dd,   
            this.proxy,   
            this.mask   
        );   
        Ext.Window.superclass.beforeDestroy.call(this);
        
    	this.focusEl=null;  // 新增   
    	//alert(this.focusEl);
    	this.bwrap=null;    // 新增
        this.resizer=null;   
        this.dd=null;   
        this.proxy=null;   
        this.mask=null;    	
}  
 */
  
Ext.override(Ext.Panel,{  
    onDestroy : function(){  
        Ext.destroy(  
            this.header,  
            this.tbar,  
            this.bbar,  
            this.footer,  
            this.body,  
            this.bwrap,  
            this.dd  
        );  
        Ext.Panel.superclass.onDestroy.call(this);  
            this.header=null;  
            this.tbar=null;  
            this.bbar=null;  
            this.footer=null;  
            this.body=null;  
            this.bwrap=null;  
            this.dd=null;  
    }  
});  
  
Ext.override(Ext.dd.DragDrop,{   
    onDestroy   :   Ext.emptyFn,  
    destroy : function(){  
        this.onDestroy();  
        this.unreg();  
    }  
});  
  
Ext.override(Ext.dd.DragSource,{   
    onDestroy   :   function(){  
        Ext.destroy(this.proxy);  
        Ext.dd.DragSource.superclass.onDestroy.call(this);
		this.proxy=null;
    }  
});  
  
Ext.override(Ext.grid.GridDragZone,{  
    onDestroy   :   function(){  
        Ext.destroy(this.ddel);  
        Ext.grid.GridDragZone.superclass.onDestroy.call(this);
		this.ddel=null;  
    }  
});  
  
Ext.override(Ext.dd.StatusProxy,{   
    onDestroy   :   Ext.emptyFn,  
    destroy : function(){  
        this.onDestroy();  
        Ext.destroy(this.anim,this.el,this.ghost);
		this.anim=null;
		this.el=null;
		this.ghost=null;
    }  
});  
  
Ext.override(Ext.grid.GridView,{  
    destroy : function(){  
        if(this.colMenu){  
            Ext.menu.MenuMgr.unregister(this.colMenu);  
            this.colMenu.destroy();  
        }  
        if(this.hmenu){  
            Ext.menu.MenuMgr.unregister(this.hmenu);  
            this.hmenu.destroy();  
        }  
        this.initData(null, null);  
        this.purgeListeners();  
  
        if(this.grid.enableColumnMove){  
            delete Ext.dd.DDM.locationCache[this.columnDrag.id];  
            Ext.destroy(this.columnDrag,this.columnDrop);  
        }  
  
        Ext.fly(this.innerHd).removeAllListeners();  
        Ext.removeNode(this.innerHd);  
  
        Ext.destroy(  
            this.el,  
            this.mainWrap,  
            this.mainHd,  
            this.scroller,  
            this.mainBody,  
            this.focusEl,  
            this.resizeMarker,  
            this.resizeProxy,  
            this.activeHdBtn,  
            this.dragZone,  
            this.splitZone,  
            this._flyweight  
        );  
        Ext.EventManager.removeResizeListener(this.onWindowResize, this);
            this.el=null;  
            this.mainWrap=null;  
            this.mainHd=null;  
            this.scroller=null;  
            this.mainBody=null;  
            this.focusEl=null;  
            this.resizeMarker=null;
            this.resizeProxy=null;  
            this.activeHdBtn=null;  
            this.dragZone=null;  
            this.splitZone=null;  
            this._flyweight=null;  
    }  
});  
  
Ext.override(Ext.tree.TreePanel,{   
    onDestroy : function(){  
        if(this.rendered){  
            this.body.removeAllListeners();  
            Ext.dd.ScrollManager.unregister(this.body);  
            Ext.destroy(this.dropZone,this.dragZone,this.innerCt);  
        }  
        Ext.destroy(this.root);  
        Ext.tree.TreePanel.superclass.onDestroy.call(this);  
    }  
});  
Ext.override(Ext.grid.HeaderDropZone,{   
 onDestroy   :   function(){  
  Ext.destroy(this.proxyTop,this.proxyBottom);  
  Ext.grid.HeaderDropZone.superclass.onDestroy.call(this);  
 }  
});  
  
Ext.override(Ext.menu.Menu,{  
 onDestroy : function(){  
  Ext.destroy(this.el);  
  Ext.menu.MenuMgr.unregister(this);  
  Ext.EventManager.removeResizeListener(this.hide, this);  
  if(this.keyNav) {  
   this.keyNav.disable();  
  }  
  var s = this.scroller;  
  if(s){  
   Ext.destroy(s.topRepeater, s.bottomRepeater, s.top, s.bottom);  
  }  
  this.purgeListeners();  
  Ext.menu.Menu.superclass.onDestroy.call(this);  
 }  
});  
  
Ext.override(Ext.TabPanel,{ // Ext.Panel  
 onDestroy   :   function(){  
  Ext.destroy(  
   this.stack,  
   this.stripWrap,  
   this.stripSpacer,  
   this.strip,  
   this.edge,  
   this.leftRepeater,  
   this.rightRepeater  
  );  
  Ext.TabPanel.superclass.onDestroy.call(this);  
   this.stack=null;  
   this.stripWrap=null;  
   this.stripSpacer=null;  
   this.strip=null;  
   this.edge=null;  
   this.leftRepeater=null;
   this.rightRepeater=null; 
 }  
});  
  
Ext.override(Ext.layout.ColumnLayout,{   
 destroy :   function(){  
  Ext.destroy(this.innerCt);  
 }  
});  
  
Ext.override(Ext.form.Field,{   
 onDestroy   :   function(){  
  Ext.destroy(this.errorEl,this.errorIcon);  
  Ext.form.Field.superclass.onDestroy.call(this);  
 }  
}); 
Ext.override(Ext.form.TextField,{  
onDestroy   :   function(){  
Ext.destroy(this.metrics);  
if(this.validationTask){  
this.validationTask.cancel();  
this.validationTask = null;  
}  
Ext.form.TextField.superclass.onDestroy.call(this);  
}  
});
Ext.override(Ext.Element, {
	getColor: function(attr, defaultValue, prefix){
		var v = this.getStyle(attr), color = typeof prefix == "undefined" ? "#" : prefix, h;
		if (!v || /transparent|inherit/.test(v)) {
			return defaultValue;
		}
		if (/^r/.test(v)) {
			Ext.each(v.slice(4, v.length - 1).split(','), function(s){
				h = parseInt(s, 10);
				color += (h < 16 ? '0' : '') + h.toString(16);
			});
		} else {
			v = v.replace('#', '');
			color += v.length == 3 ? v.replace(/^(\w)(\w)(\w)$/, '$1$1$2$2$3$3') : v;
		}
		return (color.length > 5 ? color.toLowerCase() : defaultValue);
	}
});
Ext.ux.SearchField = Ext.extend(Ext.form.TwinTriggerField, {
    initComponent : function(){
    	this.addEvents('beforesearch');
        if(!this.store.baseParams){
			this.store.baseParams = {};
		}
		Ext.ux.SearchField.superclass.initComponent.call(this);
		this.on('specialkey', function(f, e){
            if(e.getKey() == e.ENTER){
                this.onTrigger2Click();
            }
        }, this);
    },

    validationEvent:false,
    validateOnBlur:false,
    trigger1Class:'x-form-clear-trigger',
    trigger2Class:'x-form-search-trigger',
    hideTrigger1:true,
    width:180,
    hasSearch : false,
    paramName : 'query',

    onTrigger1Click : function(){
        if(this.hasSearch){
            this.store.baseParams[this.paramName] = '';
			this.store.removeAll();
			this.el.dom.value = '';
            this.triggers[0].hide();
            this.hasSearch = false;
			this.focus();
        }
    },

    onTrigger2Click : function(){
    	this.fireEvent('beforesearch', this);    
        var v = this.getRawValue();
        if(v.length < 1){
            this.onTrigger1Click();
            return;
        }
		if(v.length < 2){
			Ext.example.msg('系统提示', '你必须输入2个字符才能查询');
			return;
		}
		this.store.baseParams[this.paramName] = v;
        var o = {start: 0};
        this.store.reload({params:o});
        this.hasSearch = true;
        this.triggers[0].show();
		this.focus();
    }
});
Ext.reg('xsearchfield', Ext.ux.SearchField);
if (Ext.MessageBox) {
	Ext.MessageBox.showClassMsg = function(c) {
		var config = {
			//autoDestroy: true,//default = true
            autoHeight: true,
			//autoHide: true,//default = true
            bodyStyle: 'text-align:center',
            hideFx: {
                delay: 3000,
                //duration: 0.25,
                mode: 'standard',//null,'standard','custom',or default ghost
                useProxy: false //default is false to hide window instead
            },
            showFx: {
                delay: 0,
                duration: 0.5, //defaults to 1 second
                mode: 'standard',//null,'standard','custom',or default ghost
                useProxy: false //default is false to hide window instead
            }, 
            width: 250 //optional (can also set minWidth which = 200 by default)
		};
		Ext.apply(config,c);
		return new Ext.ux.window.MessageWindow(config).show(Ext.getDoc());
	}
	Ext.MessageBox.showMsg = function() {
		var config = {html:arguments[0]};
		if (arguments[1]) {
			config.title = arguments[1];
		}
		if (arguments[2]) {
			config.iconCls = arguments[2];
		}
		if (arguments[3]){
			config.hideFx = {};
			config.hideFx.delay = arguments[3];
		}
		return this.showMsg(config);	
	}
}
 