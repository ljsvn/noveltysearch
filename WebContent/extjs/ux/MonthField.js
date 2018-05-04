///<reference path="../ext/vswd-ext_2.0.2.js" />

Ext.namespace('Ext.ux');

/**
 * @class       Ext.ux.MonthField
 * @extends     Ext.form.TriggerField
 * @param       {Object} config configuration object
 * @CopyWrite   2009. LiYong 
 */
 
Ext.ux.MonthPicker =  Ext.extend(Ext.Component,{
    //ctCls           : 'x-menu-date-item',
    curYear         : (new Date()).getFullYear(),
    selYear         : (new Date()).getFullYear(),
    selMonth        : (new Date()).getMonth(),
    
    constructor: function(config){
        Ext.ux.MonthPicker.superclass.constructor.apply(this, arguments);
        this.addEvents('select');
        },
    onMonthClick:function(e, t){
        e.stopEvent();
        var el = new Ext.Element(t), td;
        if(el.is('a.x-date-mp-prev')){
            this.curYear -= 5;
            this.freshYear();
            }
        else if(el.is('a.x-date-mp-next')){
            this.curYear += 5;
            this.freshYear();
            }
        else if(td = el.up('td.x-date-mp-year', 2)){
            this.selYear = td.dom.num;
            this.freshYear();
            }
        else if(td = el.up('td.x-date-mp-month', 2)){
            this.selMonth = td.dom.num;
            this.freshMonth();
            var buf=[this.selYear+ ' 年 ','',this.selMonth+ ' 月'];
            this.fireEvent('select', this, buf.join(''))
            }
        },
    onRender : function(container, position){
        var m = [ '<div style="width: 160px; height:160px;"></div>' ]
        m[m.length] = '<div class="x-date-mp"></div>';
        var el = document.createElement("div");
        el.className = "x-date-picker";
        el.innerHTML = m.join("");
        container.dom.insertBefore(el, position);

        this.el = Ext.get(el);
        this.monthPicker = this.el.down('div.x-date-mp');
        this.monthPicker.enableDisplayMode('block');
        this.el.unselectable();

        this.createMonthPicker();
        var size = this.el.getSize();
        this.monthPicker.setSize(size);
        this.monthPicker.child('table').setSize(size);
        this.monthPicker.show();
        },
    createMonthPicker : function(){
        var buf = ['<table border="0" cellspacing="0">'];
        for(var i = 0; i < 6; i++){
            buf.push(
                '<tr>',
                i == 0 ?
                '<td class="x-date-mp-ybtn" align="center"><a class="x-date-mp-prev"></a></td><td class="x-date-mp-ybtn" align="center"><a class="x-date-mp-next"></a></td>' :
                '<td class="x-date-mp-year" colspan="2"><a href="#"></a></td>',
                '<td class="x-date-mp-month"><a href="#"></a></td>',
                '<td class="x-date-mp-month"><a href="#"></a></td>',
                '</tr>'
                );
            }
        buf.push('</table>');
        this.monthPicker.update(buf.join(''));
        this.monthPicker.on('click', this.onMonthClick, this);
        this.MonthTDs = this.monthPicker.select('td.x-date-mp-month');
        this.YearTDs = this.monthPicker.select('td.x-date-mp-year');
        this.freshYear();
        this.freshMonth();
        },
    freshYear:function(){
        this.YearTDs.removeClass('x-date-mp-sel');
        this.YearTDs.each(function(m, a, i){
            var y = this.curYear - 2 + i;
            m.dom.num = y;
            m.dom.firstChild.innerHTML = y + ' 年' ;
            if (y == this.selYear) m.addClass('x-date-mp-sel');
            i += 1;
            },this);
        },
    freshMonth:function(){
        this.MonthTDs.removeClass('x-date-mp-sel');
        this.MonthTDs.each(function(m, a, i){
            i += 1;
            m.dom.num = i;
            m.dom.firstChild.innerHTML = i + '月';
            if(i == this.selMonth) m.addClass('x-date-mp-sel');
            },this);
        }        
    }); 
    
Ext.ux.MonthMenu = Ext.extend(Ext.menu.Menu,{
    constructor: function(config){
        Ext.apply(this,{
            plain           : true,
            showSeparator   : false,
            items           : this.picker = new Ext.ux.MonthPicker({})
            });
        Ext.ux.MonthMenu.superclass.constructor.apply(this, arguments);
        this.relayEvents(this.picker, ["select"]);
        }
    });

Ext.ux.MonthField = Ext.extend(Ext.form.TriggerField,{
    constructor: function(config){
        Ext.ux.MonthField.superclass.constructor.apply(this, arguments);
        this.addEvents('select');
        if(this.handler) this.on("select", this.handler,  this.scope || this);
        },
    onTriggerClick: function(){
        if(this.disabled) return;
        this.onFocus();
        this.menu.show(this.el, "tl-bl?");
        this.menuEvents('on');
        },
    menuEvents: function(method){
        this.menu[method]('select', this.onSelect, this);
        this.menu[method]('hide', this.onMenuHide, this);
        this.menu[method]('show', this.onFocus, this);
        },
    onMenuHide: function(){
        this.focus(false, 60);
        this.menuEvents('un');
        },
    onSelect:function(menu, date){
        this.setValue(date);
        this.fireEvent('select', this, date);
        this.menu.hide();
        },
    menu :new Ext.ux.MonthMenu({})
    });
//==================================================================================

Ext.ux.SeasonPicker =  Ext.extend(Ext.Component,{
    //ctCls           : 'x-menu-date-item',
    curYear         : (new Date()).getFullYear(),
    selYear         : (new Date()).getFullYear(),
    selMonth        : (new Date()).getMonth(),
    
    constructor: function(config){
        Ext.ux.SeasonPicker.superclass.constructor.apply(this, arguments);
        this.addEvents('select');
        },
    onMonthClick:function(e, t){
        e.stopEvent();
        var el = new Ext.Element(t), td;
        if(el.is('a.x-date-mp-prev')){
            this.curYear -= 4;
            this.freshYear();
            }
        else if(el.is('a.x-date-mp-next')){
            this.curYear += 4;
            this.freshYear();
            }
        else if(td = el.up('td.x-date-mp-year', 2)){
            this.selYear = td.dom.num;
            this.freshYear();
            }
        else if(td = el.up('td.x-date-mp-month', 2)){
            this.selMonth = td.dom.num;
            this.freshMonth();
            var buf=[this.selYear,this.selMonth>9 ? '' : '0',this.selMonth];
            this.fireEvent('select', this, buf.join(''))
            }
        },
    onRender : function(container, position){
        var m = [ '<div style="width: 160px; height:130px;"></div>' ]
        m[m.length] = '<div class="x-date-mp"></div>';
        var el = document.createElement("div");
        el.className = "x-date-picker";
        el.innerHTML = m.join("");
        container.dom.insertBefore(el, position);

        this.el = Ext.get(el);
        this.SeasonPicker = this.el.down('div.x-date-mp');
        this.SeasonPicker.enableDisplayMode('block');
        this.el.unselectable();

        this.createSeasonPicker();
        var size = this.el.getSize();
        this.SeasonPicker.setSize(size);
        this.SeasonPicker.child('table').setSize(size);
        this.SeasonPicker.show();
        },
    createSeasonPicker : function(){
        var buf = ['<table border="0" cellspacing="0">'];
        for(var i = 0; i < 5; i++){
            buf.push(
                '<tr>',
                i == 0 ?
                '<td class="x-date-mp-ybtn" align="center"><a class="x-date-mp-prev"></a></td><td class="x-date-mp-ybtn" align="center"><a class="x-date-mp-next"></a></td>' :
                '<td class="x-date-mp-year" colspan="2"><a href="#"></a></td>',
                '<td class="x-date-mp-month"><a href="#"></a></td>',
                //'<td class="x-date-mp-month"><a href="#"></a></td>',
                '</tr>'
                );
            }
        buf.push('</table>');
        this.SeasonPicker.update(buf.join(''));
        this.SeasonPicker.on('click', this.onMonthClick, this);
        this.MonthTDs = this.SeasonPicker.select('td.x-date-mp-month');
        this.YearTDs = this.SeasonPicker.select('td.x-date-mp-year');
        this.freshYear();
        this.freshMonth();
        },
    freshYear:function(){
        this.YearTDs.removeClass('x-date-mp-sel');
        this.YearTDs.each(function(m, a, i){
            var y = this.curYear - 2 + i;
            m.dom.num = y;
            m.dom.firstChild.innerHTML = y + ' 年' ;
            if (y == this.selYear) m.addClass('x-date-mp-sel');
            i += 1;
            },this);
        },
    freshMonth:function(){
        this.MonthTDs.removeClass('x-date-mp-sel');
        this.MonthTDs.each(function(m, a, i){
            if(i>0 && i<5){
                
                m.dom.num = (i-1)*3+1;
                m.dom.firstChild.innerHTML = i + '季度';
                if( (i-1)*3+1 == this.selMonth) m.addClass('x-date-mp-sel');
                }
                i += 1;
            },this);
            
        }        
    }); 
    
Ext.ux.SeasonMenu = Ext.extend(Ext.menu.Menu,{
    constructor: function(config){
        Ext.apply(this,{
            plain           : true,
            showSeparator   : false,
            items           : this.picker = new Ext.ux.SeasonPicker({})
            });
        Ext.ux.SeasonMenu.superclass.constructor.apply(this, arguments);
        this.relayEvents(this.picker, ["select"]);
        }
    });

Ext.ux.SeasonField = Ext.extend(Ext.form.TriggerField,{
    constructor: function(config){
        Ext.ux.SeasonField.superclass.constructor.apply(this, arguments);
        this.addEvents('select');
        if(this.handler) this.on("select", this.handler,  this.scope || this);
        },
    onTriggerClick: function(){
        if(this.disabled) return;
        this.onFocus();
        this.menu.show(this.el, "tl-bl?");
        this.menuEvents('on');
        },
    menuEvents: function(method){
        this.menu[method]('select', this.onSelect, this);
        this.menu[method]('hide', this.onMenuHide, this);
        this.menu[method]('show', this.onFocus, this);
        },
    onMenuHide: function(){
        this.focus(false, 60);
        this.menuEvents('un');
        },
    onSelect:function(menu, date){
        this.setValue(date);
        this.fireEvent('select', this, date);
        this.menu.hide();
        },
    menu :new Ext.ux.SeasonMenu({})
    });

Ext.override(Ext.grid.RowSelectionModel, {
    handleMouseDown : function(g, rowIndex, e){
        if(e.button !== 0 || this.isLocked()){
            return;
        }
        var view = this.grid.getView();
        if(e.shiftKey && !this.singleSelect && this.last !== false){
            var last = this.last;
            this.selectRange(last, rowIndex, e.ctrlKey);
            this.last = last; // reset the last
            // view.focusRow(rowIndex);
        }else{
            var isSelected = this.isSelected(rowIndex);
            if(e.ctrlKey && isSelected){
                this.deselectRow(rowIndex);
            }else if(!isSelected || this.getCount() > 1){
                this.selectRow(rowIndex, e.ctrlKey || e.shiftKey);
                // view.focusRow(rowIndex);
            }
        }
    }
}); 

