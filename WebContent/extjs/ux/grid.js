Ext.ns('ods.ux');
ods.ux.Grid =  Ext.extend(Ext.grid.EditorGridPanel, {
	pagesize:20
	,hideBottomBar:false
	,stripeRows: true
	,trackMouseOver: true
	,loadMask: {
		msg:"loading..."
	}
	,loadMaskMsg:'loading...'
	,refresh: function() {
		this.store.load();
	}
	,rowClickHandler:function (grid) {
		if (!grid.cellClick && grid.rowClick) {
			grid.rowClick.apply(this, arguments);
		}	
	} 
	,cellClickHandler:function (grid) {
		if (grid.cellClick) {
			grid.cellClick.apply(this, arguments);
		}
	}
	,rowDblClickHandler:function (grid) {
		if (!grid.cellDblClick && grid.rowDblClick) {
			grid.rowDblClick.apply(this, arguments);
		}	
	}
	,cellDblClickHandler:function (grid) {
		if (grid.cellDblClick) {
			grid.cellDblClick.apply(this, arguments);
		}
	}
	,initComponent:function() {	
        if(!this.selModel){
            this.selModel = new Ext.grid.RowSelectionModel();
        }
        Ext.apply(this.loadMask, {msg:this.loadMaskMsg});
		var paging = this.initBottomToolbar();
		if (this.hideBottomBar === false) {
			Ext.apply(this, {bbar:paging});
		}		
		ods.ux.Grid.superclass.initComponent.apply(this, arguments);
	}
	,initBottomToolbar : function () {
		var params = {
	        pageSize:this.pagesize,
	        store: this.store,
	        displayInfo: true		        
		}
		if (this.bbarType == 'sliding') {
			Ext.apply(params, {plugins: new Ext.ux.SlidingPager()});
		} else {
			Ext.apply(params, {plugins: new Ext.ux.ProgressBarPager()});
		}
		return new Ext.PagingToolbar(params);
	}
	,initload: true
	,onRender:function() {  
	 	ods.ux.Grid.superclass.onRender.apply(this, arguments);	 	
		if (this.hasFormParam) {
			this.store.on("beforeload", this.appendFormParam);	
		}
		
		if (this.cellDblClickHandler) {
			this.on('celldblclick', this.cellDblClickHandler, this);
		}
		if (this.cellClickHandler) {
			this.on('cellclick', this.cellClickHandler, this);
		}
		if (this.rowDblClickHandler) {
			this.on('rowdblclick', this.rowDblClickHandler, this);
		}		
		if (this.rowClickHandler) {
			this.on('rowclick', this.rowClickHandler, this);
		}
		if(this.initload){
		 	this.store.load();
		}
	 }
});
Ext.reg('ods.grid', ods.ux.Grid);
