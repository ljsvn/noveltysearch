Ext.ns('ods.ux');
//支持显示树的下拉选择框
ods.ux.TreeCombo = Ext.extend(Ext.form.TriggerField,
{
  defaultAutoCreate:
  {
    tag: "input", type: "text", size: "24", autocomplete: "off"
  }
  , shadow: 'sides', maxHeight: 300, hideTrigger: false, rootVisible: true, resizable: true, minListWidth: 70, handleHeight: 8, editable: false, lazyInit: true, initComponent: function()
  {
    ods.ux.TreeCombo.superclass.initComponent.call(this); this.addEvents('expend', 'collapse', 'select');
  }
  , onRender: function(ct, position)
  {
    ods.ux.TreeCombo.superclass.onRender.call(this, ct, position); if (this.hiddenName)
    {
      this.hiddenField = this.el.insertSibling(
      {
        tag: 'input', type: 'hidden', name: this.hiddenName, id: (this.hiddenId || this.hiddenName)
      }
      , 'before', true); this.hiddenField.value = this.hiddenValue !== undefined ? this.hiddenValue : this.value !== undefined ? this.value : ''; this.el.dom.removeAttribute('name');
    }
    this.el.dom.setAttribute('readOnly', true); this.el.on('mousedown', this.onTriggerClick, this); this.el.addClass('x-combo-noedit'); this.initTreeLayer();
  }
  ,rootId: 0
  , initTreeLayer: function()
  {
    if (!this.treeLayer)
    {
      var cls = 'x-combo-list'; this.list = new Ext.Layer(
      {
        shadow: this.shadow, cls: [cls].join(' '), constrain: false
      }
      ); var lw = this.listWidth || Math.max(this.wrap.getWidth() - this.trigger.getWidth(), this.minListWidth); this.list.setWidth(lw); this.list.swallowEvent('mousewheel'); this.assetHeight = 0;

      this.view = new Ext.tree.TreePanel(
      {
        applyTo: this.list, autoScroll: true, checkModel: this.checkModel, onlyLeafCheckable: false, animate: true, width: this.width?this.width:300, height: 180, rootVisible: this.rootVisible, containerScroll: true, loader: new Ext.tree.TreeLoader(
        {
          dataUrl: this.dataUrl, baseAttrs: this.checkModel && this.checkModel == 'cascade' ?
          {
            uiProvider: Ext.tree.TreeCheckNodeUI
          }
          : null
        }
        ), root: new Ext.tree.AsyncTreeNode(
        {
          id: this.rootId
        }
        )
      }
      ); this.view.on('click', this.onViewClick, this); this.view.on('checkchange', this.onCheckChange, this); this.resizer = new Ext.Resizable(this.list,
      {
        pinned: true, handles: 'se'
      }
      ); this.resizer.on('resize', function(r, w, h)
      {
        this.view.setHeight(h - this.handleHeight);
      }
      , this);

    }
  }
  , onTriggerClick: function()
  {
    if (this.disabled)
    {
      return ;
    }
    if (this.isExpanded())
    {
      this.collapse(); this.el.focus();
    }
    else
    {
      this.onFocus({}
      ); this.expand(); this.el.focus();
    }
  }
  , onViewClick: function(doFocus)
  {
    var node = this.view.getSelectionModel().getSelectedNode();

    var alltext = node.text.replace(/<\/*[^<>]*>/g, "").replace(/&nbsp;/g, "");
    while (node.parentNode)
    {
      node = node.parentNode;
      if(node.text){alltext = node.text.replace(/<\/*[^<>]*>/g, "").replace(/&nbsp;/g, "") + '-' + alltext;}
      
    }
    ods.ux.TreeCombo.superclass.setValue.call(this, alltext);this.collapse();
  }
  , onSelect: function(node)
  {
    this.setValue(node.id); this.collapse(); this.fireEvent('select', this, node);
  }
  , setValue: function(text)
  {
      ods.ux.TreeCombo.superclass.setValue.call(this, text ? text : '');
  }
  , onCheckChange: function(node)
  {
    if (this.checkModel && this.checkModel == 'cascade')
    {
      //只针对单选和级联多选的处理
      this.setValue(this.view.getChecked('id'));
    }
  }
  , isExpanded: function()
  {
    return this.list && this.list.isVisible();
  }
  ,

  expand: function()
  {
    if (this.isExpanded() || !this.hasFocus)
    {
      return ;
    }
    this.list.alignTo(this.wrap, this.listAlign); this.list.show(); var zindex = Ext.WindowMgr.zseed + 5000; this.list.setStyle("z-index", zindex.toString()); Ext.getDoc().on('mousewheel', this.collapseIf, this); Ext.getDoc().on('mousedown', this.collapseIf, this); this.fireEvent('expand', this);
  }
  ,

  collapse: function()
  {
    if (!this.isExpanded())
    {
      return ;
    }
    this.list.hide(); Ext.getDoc().un('mousewheel', this.collapseIf, this); Ext.getDoc().un('mousedown', this.collapseIf, this); this.fireEvent('collapse', this);
  }
  ,

  collapseIf: function(e)
  {
    if (!e.within(this.wrap) && !e.within(this.list))
    {
      this.collapse();
    }
  }
  , clearValue: function()
  {
    if (this.hiddenField)
    {
      this.hiddenField.value = '';
    }
    setValue(''); this.applyEmptyText();
  }
  , onDestroy: function()
  {
    if (this.view)
    {
      this.view.el.removeAllListeners(); this.view.el.remove(); this.view.purgeListeners();
    }
    if (this.list)
    {
      this.list.destroy();
    }

    ods.ux.TreeCombo.superclass.onDestroy.call(this);
  }
  , getValue: function()
  {
    if (this.valueField)
    {
      return typeof this.value != 'undefined' ? this.value : '';
    }
    else
    {
      return ods.ux.TreeCombo.superclass.getValue.call(this);
    }
  }

}

);
Ext.reg('ods.treecombo', ods.ux.TreeCombo);