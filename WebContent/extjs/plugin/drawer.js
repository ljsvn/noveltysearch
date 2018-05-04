/*
	Author       : Jay Garcia
	Site         : http://tdg-i.com
	Contact Info : jgarcia@tdg-i.com
	Purpose      : Window Drawers for Ext 2.x Ext.Window class, which emulates OS X behaviors
	Warranty     : none
	Price        : free
	Version      : 1 Alpha 1
	Date         : 09/12/08
	
*/
/*
	Need to override the Window DnD to allow events to fire.

*/
Ext.override(Ext.Window.DD, {
	// private - used for dragging
    startDrag : function(){
        var w = this.win;
		w.fireEvent('ghost', []);
        this.proxy = w.ghost();
        if(w.constrain !== false){
            var so = w.el.shadowOffset;
            this.constrainTo(w.container, {right: so, left: so, bottom: so});
        }else if(w.constrainHeader !== false){
            var s = this.proxy.getSize();
            this.constrainTo(w.container, {right: -(s.width-this.headerOffsets[0]), bottom: -(s.height-this.headerOffsets[1])});
        }
    }
});

/*
	Need to override the Window class to allow events to fire for front and back movement.

*/
Ext.override(Ext.Window, {
    setZIndex : function(index){
        
		var newZIndex = ++index;
		
		
		if(this.modal){
            this.mask.setStyle("z-index", index);
        }
        
		this.el.setZIndex(newZIndex);
        index += 5;

        if(this.resizer){
            this.resizer.proxy.setStyle("z-index", ++index);
        }
		if (newZIndex > this.lastZIndex) {
			this.fireEvent('tofront', this);
		}
		else {
			this.fireEvent('toback', this);
		}
        this.lastZIndex = index;
	}
});


/*
	Drawer Base Class
*/
Ext.namespace('ods.ux.plugin');
ods.ux.plugin.Drawer = Ext.extend( Ext.Window, {
	resizable : false,
	closable : false,
	init : function(parent) {
		this.win = parent;
		
		parent.drawers = parent.drawers || {};
		
	
		this.resizeHandles = this.side;
		parent.drawers[this.side] = this;
		
		
		this.el.on("mousedown",  this.win.toFront, this.win);

		this.win.on('tofront', this.onBeforeShow, this);
		
		this.win.on('toback', this.onBeforeShow, this);
		
		this.win.on('ghost', this.onBeforeResize, this);
		
		this.win.on('beforehide', function() {
			this.hide(true);
			
		}, this);
	
			
		this.win.on('move', this.setAlignAndShow, this);
		
		var drawerSetAlignAndShow = this.setAlignAndShow.createDelegate(this); // Needed for the anon function so we don't confuse scope.
		
		(function() {
			if (this.win.resizer) {
				this.win.resizer.on('resize', this.setAlignAndShow.createDelegate(this));
			}
			this.win.el.win = this.win; //need this reference
			
			/*
				Hook after the window's element.moveTo method
			*/
			this.win.el.moveTo = this.win.el.moveTo.createSequence(function() {
				drawerSetAlignAndShow();
			},this.win.el);
			
		
		}).defer(500, this);
		//this.win.on('resize',  this.setAlignAndShow.createDelegate(this), this);
		
		if(this.resizable){
            this.resizer = new Ext.Resizable(this.el, {
                minWidth      : this.minWidth,
                minHeight     : this.minHeight,
				handles       : this.resizeHandles || null,
                pinned        : true,
                resizeElement : this.resizerAction
            });
            this.resizer.window = this;
            this.resizer.on("beforeresize", this.beforeResize, this);
        }
	
	},
	
	initComponent : function() {
		
		Ext.apply(this, {
			renderTo      : Ext.getBody(),	  
			frame         : true,
			closeAction   : 'hide',
			draggable     : false,
			//title         : '',
			alignToParams : {}
		});
		this.on('beforeshow', this.onBeforeShow, this);
			
		if (this.size) {
			if (this.side == 'e' || this.side == 'w') {
				this.width = this.size;	
			}
			else {
				this.height = this.size;	
			}
		}
		ods.ux.plugin.Drawer.superclass.initComponent.call(this, arguments);
		
	},
	setAlignAndShow : function() {
		this.setAlignments();
		if (! this.hidden) {
			this.el.alignTo(this.win.el, this.alignToParams.alignTo, this.alignToParams.alignToXY );
			
			/*
				Simple fix for IE, where the bwrap doesn't properly resize.
			*/
			if (Ext.isIE) {
				this.bwrap.hide();
				this.bwrap.show();
				Ext.log('here');
			}
	
		
		}
		else {
			this.el.alignTo(document.body, 'tl', [-1, -1]);
		}
		
		if (this.showAgain) {
			this.show(true);
		}
		this.showAgain = false;		
	},
	onBeforeResize : function() {
		if (! this.hidden) {
			this.showAgain = true;
		}

		this.hide(true);	
	},
	onBeforeShow : function() {
		this.setAlignments();
		this.setZIndexModified(this.win.el.getZIndex() - 10);
	},
    show : function(skipAnim){
		if (! this.hidden) {
			return;	
		}
		skipAnim = skipAnim || false;
		
        if(!this.rendered){
            this.render(Ext.getBody());
        }
        if(this.fireEvent("beforeshow", this) === false){
            return;
        }

        this.hidden = false;
        this.beforeShow();
		this.afterShow(skipAnim);

	},
	 showt : function(skipAnim){
		if (! this.hidden) {
			return;	
		}
		skipAnim = skipAnim || false;
		
        if(!this.rendered){
            this.render(Ext.getBody());
        }
        if(this.fireEvent("beforeshow", this) === false){
            return;
        }

        this.hidden = false;
        this.beforeShow();
		this.afterShow(skipAnim);

	},
	afterShow : function(skipAnim){	
		this.el.alignTo(this.win.el, this.alignToParams.alignTo, this.alignToParams.alignToXY );

		if (this.animate && ! skipAnim) {
			this.el.slideIn(this.alignToParams.slideDirection, {
				duration : this.animDuration || .25
			});
		}
		else {
			ods.ux.plugin.Drawer.superclass.afterShow.call(this);
		}
   	},
	setAlignments:  function() {
		switch (this.side) {
			case 'n' :
				this.setWidth(this.win.el.getWidth() - 10);

				this.alignToParams = Ext.apply(this.alignToParams, {
					alignTo        : 'tl',
					alignToXY      :  [ 5, (this.el.getComputedHeight() * -1) + 5],
					slideDirection : 'b'
				});	
				
			break;
			
			case 's' :
				this.setWidth(this.win.el.getWidth() - 10);

				this.alignToParams = Ext.apply(this.alignToParams, {
					alignTo        : 'bl',
					alignToXY      :  [5, (Ext.isIE6) ? -2 :  -7],
					slideDirection : 't'
				});

			break;
			
			case 'e' :
				this.setHeight(this.win.el.getHeight() - 10);
				this.alignToParams = Ext.apply(this.alignToParams, {
					alignTo        : 'tr',
					alignToXY      :  [-5, 5],
					slideDirection : 'l'
				});
				
			break;
			
			
			case 'w' :
				this.setHeight(this.win.el.getHeight() - 10);
				this.alignToParams = Ext.apply(this.alignToParams, {
					alignTo        : 'tl',
					alignToXY      :  [(this.el.getComputedWidth() * -1) + 5, 5],
					slideDirection : 'r'
				});
	
			break;
		}
	},
	beforeHide : function() {
		//console.info('beforehide');
		
	},
    hide : function(skipAnim){
		skipAnim = skipAnim || false;
		if (this.hidden) {
			return;	
		}
		
		//this.hidden = true;
		if(this.animate === true && skipAnim === false){
			this.el.disableShadow(true);

			this.el.slideOut(this.alignToParams.slideDirection, {
				duration : this.animDuration || .25,
				callback : function() {
					ods.ux.plugin.Drawer.superclass.hide.call(this);	 
				},
				scope    : this
			});
		}
    	else {
			ods.ux.plugin.Drawer.superclass.hide.call(this);	
		}

	},
	hidet : function(skipAnim){
		skipAnim = skipAnim || false;
		if (this.hidden) {
			return;	
		}
		ods.ux.plugin.Drawer.superclass.hide.call(this);	
		return;
		//this.hidden = true;
		if(this.animate === true && skipAnim === false){
			this.el.disableShadow(true);

			this.el.slideOut(this.alignToParams.slideDirection, {
				duration : this.animDuration || .25,
				callback : function() {
					ods.ux.plugin.Drawer.superclass.hide.call(this);	 
				},
				scope    : this
			});
		}
    	else {
			ods.ux.plugin.Drawer.superclass.hide.call(this);	
		}

	},
    // private
    initEvents : function(){
        Ext.Window.superclass.initEvents.call(this);
        if(this.animateTarget){
            this.setAnimateTarget(this.animateTarget);
        }
        if(this.draggable){
            this.header.addClass("x-window-draggable");
        }
        this.initTools();

        this.el.on("mousedown", this.toFront, this);
        this.manager = this.manager || Ext.WindowMgr;
        this.manager.register(this);
        this.hidden = true;
        if(this.maximized){
            this.maximized = false;
            this.maximize();
        }
        if(this.closable){
            var km = this.getKeyMap();
            km.on(27, this.onEsc, this);
            km.disable();
        }
    },
	
	toFront   : Ext.emptyFn,
    setZIndex : Ext.emptyFn,
	
	setZIndexModified : function(index){
        if(this.modal){
            this.mask.setStyle("z-index", index);
        }
        this.el.setZIndex(++index);
        index += 5;

        if(this.resizer){
            this.resizer.proxy.setStyle("z-index", ++index);
        }

        this.lastZIndex = index;
   	}
		   
});