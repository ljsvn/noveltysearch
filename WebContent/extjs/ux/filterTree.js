Ext.ns('ods.ux.tree');

ods.ux.tree.FilterTree = Ext.extend(Ext.tree.TreePanel, {
	emptyFilterText:'Find a Class'
	,clickHandler:function (node) {
		var tree = node.getOwnerTree();
		if (tree.clickAction) {
			tree.clickAction.apply(this, arguments);
		}
	}
	,initComponent:function() {
		if (this.region && this.region == 'west' && !this.width) {
			this.width = 175;
		}
		this.textFilter = new Ext.form.TextField({
			width: 120,
			emptyText:this.emptyFilterText
		});
		this.textFilter.on('render', this.setKeyDownEvent, this, {buffer: 350});
        Ext.apply(this, {
        		sorter:this.sort ? new Ext.tree.TreeSorter(this) : undefined
        		,tbar:[' ', this.textFilter, ' ', ' ',{
		                iconCls: 'icon-expand-all',
						tooltip: '打开所有树形节点',
						handler:this.expandAll.createDelegate(this)
					}, '-', {
		                iconCls: 'icon-collapse-all',
		                tooltip: '关闭所有树形节点',
		                handler:this.collapseAll.createDelegate(this)
		            },'-']
        });		
        if (this.xtbar) {        	
        	for (var i = 0; i < this.xtbar.length; i++) {
        		this.tbar.push(this.xtbar[i]);
        	}
        }
		// call parent
        ods.ux.tree.FilterTree.superclass.initComponent.apply(this, arguments);
	}
	,onRender:function() {
		ods.ux.tree.FilterTree.superclass.onRender.apply(this, arguments);
		this.on('click', this.clickHandler);
		if (this.evClick) {
	 		this.on('click', this.evClick);
	 	}
		this.filter = new Ext.tree.TreeFilter(this, {
			clearBlank: true,
			autoClear: true
		});
		this.hiddenPkgs = [];
	}
	,setKeyDownEvent:function(f){
		f.el.on('keydown', this.filterTree, this, {buffer: 350});
	}
	,filterTree : function(e) {
		
		var text = e.target.value;
		Ext.each(this.hiddenPkgs, function(n){
			n.ui.show();
		});
		if(!text){
			this.filter.clear();
			return;
		}
		this.expandAll();
		var re = new RegExp('.*' + Ext.escapeRe(text) + '.*', 'i');
		this.filter.filterBy(function(n){
			return !n.leaf || re.test(n.text);
		});
		
		// hide empty packages that weren't filtered
		this.hiddenPkgs = [];
		this.root.cascade(function(n){
			if(!n.leaf  && n.ui.ctNode.offsetHeight < 3){
				n.ui.hide();
				this.hiddenPkgs.push(n);
			}
		}, this);	
	}
}); // eo extend
 
// register xtype
Ext.reg('ods.filtertree', ods.ux.tree.FilterTree); 