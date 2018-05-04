 Ext.calendar.CalendarPanel = Ext.extend(Ext.Panel, {
    showDayView: false,
    showWeekView: false,
    showMonthView: true,
    showNavBar: true,
    todayText: '今天',
    showTodayText: true,
    showTime: true,
    dayText: '天',
    monthText: '本月',

    // private
    layoutConfig: {
        layoutOnCardChange: true,
        deferredRender: true
    },

    // private property
    startDate: new Date(),
    
    // 设置月份的时间值
    setMonthField: function(){
    	Ext.getCmp(this.id + '-month-field').setValue(this.startDate.getFullYear()+' 年 '+(this.startDate.getMonth()+1)+' 月');
    },

    // private
    initComponent: function() {
        this.tbar = {
            cls: 'ext-cal-toolbar',
            border: true,
            buttonAlign: 'center',
            items: [
            new Ext.ux.MonthField({
            	id: this.id + '-month-field',
                onSelect:function(menu, date){
        			this.findParentByType('ods.calendarpanel').setStartDate(new Date(menu.selYear,menu.selMonth-1));
            		//时间控件被选中后
                    this.setValue(date);
                    this.fireEvent('select', this, date);
                    this.menu.hide();
                    }
            })
            ]
        };
        //设置当前时间
        this.setMonthField();
        this.viewCount = 0;

        if (this.showMonthView || this.viewCount == 0) {
            this.tbar.items.push({
                id: this.id + '-tb-prev',
                scope: this,iconCls: 'x-tbar-page-prev',
                handler: function(){
            		this.onPrevClick();
            		this.setMonthField();
            	}
            });
            this.tbar.items.push({
                id: this.id + '-tb-month',
                scope: this,text: this.monthText,
                handler: function(){
            		this.setStartDate(new Date());
            		Ext.getCmp(this.id + '-month-field').setValue(new Date().getFullYear()+' 年 '+(new Date().getMonth()+1)+' 月');
	        	}
            });
            this.tbar.items.push({
                id: this.id + '-tb-next',
                scope: this,iconCls: 'x-tbar-page-next',
                handler: function(){
            		this.onNextClick();
            		this.setMonthField();
	        	}
            });
            this.tbar.items.push('->');
//            this.tbar.items.push({
//                text: '导入',
//                scope: this,
//                iconCls: 'x-icon-oper-end'
//            });
            this.viewCount++;
            this.showMonthView = true;
        }

        var idx = this.viewCount - 1;
        this.activeItem = this.activeItem === undefined ? idx: (this.activeItem > idx ? idx: this.activeItem);

        Ext.calendar.CalendarPanel.superclass.initComponent.call(this);

        this.addEvents({
            eventadd: true,
            eventupdate: true,
            eventdelete: true,
            eventcancel: true,
            viewchange: true
        });

        this.layout = 'card';
        // do not allow override
        if (this.showMonthView) {
            var month = Ext.applyIf({
                xtype: 'monthview',
                title: this.dayText,
                showToday: this.showToday,
                showTodayText: this.showTodayText,
                showTime: this.showTime,
                listeners: {
                    'weekclick': {
                        fn: function(vw, dt) {
                            //this.showWeek(dt);
                        },
                        scope: this
                    }
                }
            },
            this.monthViewCfg);

            month.id = this.id + '-month';
            month.store = month.store || this.eventStore;
            this.initEventRelay(month);
            this.add(month);
        }
        /*
        this.add(Ext.applyIf({
            xtype: 'eventeditform',
            id: this.id + '-edit',
            calendarStore: this.calendarStore,
            listeners: {
                'eventadd': {
                    scope: this,
                    fn: this.onEventAdd
                },
                'eventupdate': {
                    scope: this,
                    fn: this.onEventUpdate
                },
                'eventdelete': {
                    scope: this,
                    fn: this.onEventDelete
                },
                'eventcancel': {
                    scope: this,
                    fn: this.onEventCancel
                }
            }
        },
        this.editViewCfg));
         * */

    },

    // private
    initEventRelay: function(cfg) {
        cfg.listeners = cfg.listeners || {};
        cfg.listeners.afterrender = {
            fn: function(c) {
                // relay the view events so that app code only has to handle them in one place
                this.relayEvents(c, ['eventsrendered', 'eventclick', 'eventover', 'eventout', 'dayclick',
                'eventmove', 'datechange', 'rangeselect', 'eventdelete', 'eventresize', 'initdrag']);
            },
            scope: this,
            single: true
        };
    },

    // private
    afterRender: function() {
        Ext.calendar.CalendarPanel.superclass.afterRender.call(this);
        this.fireViewChange();
    },

    // private
    onLayout: function() {
        Ext.calendar.CalendarPanel.superclass.onLayout.call(this);
        if (!this.navInitComplete) {
            this.updateNavState();
            this.navInitComplete = true;
        }
    },

    // private
    onEventAdd: function(form, rec) {
        rec.data[Ext.calendar.EventMappings.IsNew.name] = false;
        this.eventStore.add(rec);
        this.hideEditForm();
        this.fireEvent('eventadd', this, rec);
    },

    // private
    onEventUpdate: function(form, rec) {
        rec.commit();
        this.hideEditForm();
        this.fireEvent('eventupdate', this, rec);
    },

    // private
    onEventDelete: function(form, rec) {
        this.eventStore.remove(rec);
        this.hideEditForm();
        this.fireEvent('eventdelete', this, rec);
    },

    // private
    onEventCancel: function(form, rec) {
        this.hideEditForm();
        this.fireEvent('eventcancel', this, rec);
    },

    /**
     * Shows the built-in event edit form for the passed in event record.  This method automatically
     * hides the calendar views and navigation toolbar.  To return to the calendar, call {@link #hideEditForm}.
     * @param {Ext.calendar.EventRecord} record The event record to edit
     * @return {Ext.calendar.CalendarPanel} this
     */
    showEditForm: function(rec) {
        this.preEditView = this.layout.activeItem.id;
        this.setActiveView(this.id + '-edit');
        this.layout.activeItem.loadRecord(rec);
        return this;
    },

    /**
     * Hides the built-in event edit form and returns to the previous calendar view. If the edit form is
     * not currently visible this method has no effect.
     * @return {Ext.calendar.CalendarPanel} this
     */
    hideEditForm: function() {
        if (this.preEditView) {
            this.setActiveView(this.preEditView);
            delete this.preEditView;
        }
        return this;
    },

    // private
    setActiveView: function(id) {
        var l = this.layout;
        l.setActiveItem(id);

        if (id == this.id + '-edit') {
            this.getTopToolbar().hide();
            this.doLayout();
        }
        else {
            l.activeItem.refresh();
            this.getTopToolbar().show();
            this.updateNavState();
        }
        this.activeView = l.activeItem;
        this.fireViewChange();
    },

    // private
    fireViewChange: function() {
        var info = null,
            view = this.layout.activeItem;

        if (view.getViewBounds) {
            vb = view.getViewBounds();
            info = {
                activeDate: view.getStartDate(),
                viewStart: vb.start,
                viewEnd: vb.end
            };
        };
        this.fireEvent('viewchange', this, view, info);
    },

    // private
    updateNavState: function() {
        if (this.showNavBar !== false) {
            var item = this.layout.activeItem,
            suffix = item.id.split(this.id + '-')[1];

            var btn = Ext.getCmp(this.id + '-tb-' + suffix);
            btn.toggle(true);
        }
    },

    /**
     * Sets the start date for the currently-active calendar view.
     * @param {Date} dt
     */
    setStartDate: function(dt) {
        this.layout.activeItem.setStartDate(dt, true);
        this.updateNavState();
        this.fireViewChange();
    },

    // private
    showWeek: function(dt) {
        this.setActiveView(this.id + '-week');
        this.setStartDate(dt);
    },

    // private
    onPrevClick: function() {
        this.startDate = this.layout.activeItem.movePrev();
        this.updateNavState();
        this.fireViewChange();
    },

    // private
    onNextClick: function() {
        this.startDate = this.layout.activeItem.moveNext();
        this.updateNavState();
        this.fireViewChange();
    },

    // private
    onDayClick: function() {
        this.setActiveView(this.id + '-day');
    },

    // private
    onWeekClick: function() {
        this.setActiveView(this.id + '-week');
    },

    // private
    onMonthClick: function() {
        this.setActiveView(this.id + '-month');
    },

    /**
     * Return the calendar view that is currently active, which will be a subclass of
     * {@link Ext.calendar.CalendarView CalendarView}.
     * @return {Ext.calendar.CalendarView} The active view
     */
    getActiveView: function() {
        return this.layout.activeItem;
    }
});

Ext.reg('ods.calendarpanel', Ext.calendar.CalendarPanel);