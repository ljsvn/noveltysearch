<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%> 
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.ods.util.resource.ResourceUtil"%>
<%@ page import="com.ods.dic.action.datadictionarycommon.DataDictionaryCommonAction"%>
<% String local = request.getContextPath(); %>
{
  layout: 'border', xtype: 'panel', border : false, items: [
  
  {
		frame : true, layout : 'column', xtype : 'form', labelAlign : 'right',
		border : false, region : 'north', height : 38, labelWidth : 70,
		items : [
		{
			layout : 'form', columnWidth : .15, border : false,
			items : [{
				name : 'contractName', fieldLabel : '名称', anchor : '95%', xtype : 'textfield',
				listeners: {
					'render' : function(c) {
						c.focus(true, true);
			   		 }
				}
			}]
		},{
			layout : 'form', columnWidth : .2, border : false,
			items : [{
				name : 'company', fieldLabel : '单位', anchor : '95%', xtype : 'textfield'
			}]
		}
		,{
			layout : 'form', columnWidth : .2, border : false,
			items : [{
				name : 'tel', fieldLabel : '电话', anchor : '95%', xtype : 'textfield'
			}]
		}
		,{
			layout: 'form', columnWidth: .15, border: false, 
			items: [{
				name: 'createTimeS', fieldLabel: '时间', anchor: '95%', xtype: 'datefield', 
				format: 'Y-m-d', vtype: 'daterange', endDateField: 'createTimeE'
			}]
		},{
			layout: 'form', columnWidth: .1, labelSeparator:'', border: false, labelWidth : 10,
			items: [{
				name: 'createTimeE', fieldLabel: '--', anchor: '95%', xtype: 'datefield',
				format: 'Y-m-d', vtype: 'daterange', startDateField: 'createTimeS'
			}]
		},{
			layout : 'form', columnWidth : .06, border : false,
			items : [
			{
				xtype : 'button', width:60, text : '<%=ResourceUtil.getResourceString("button.query")%>',
				handler : function(btn) {
					var form = btn.findParentByType('form');
					var store = form.findParentByType('panel').findByType('ods.grid')[0].getStore();
					Ext.apply(store.baseParams, form.getForm().getValues());
					store.load();
				}
			} ]
		},{
			layout : 'form', columnWidth : .06, border : false,
			items : [
			{
				xtype : 'button', width: 60, text : '<%=ResourceUtil.getResourceString("button.reset")%>',
				handler : function(btn) {
					var form = btn.findParentByType('form');
					form.getForm().reset();
					form.getForm().setValues('');
					var store = form.findParentByType('panel').findByType('ods.grid')[0].getStore();
					Ext.apply(store.baseParams, form.getForm().getValues());
					store.load();
				}
			} ]
		} ]
	}
	,
  {
    region: 'center', xtype: 'ods.grid', pagesize: 20, sm: new Ext.grid.CheckboxSelectionModel(), viewConfig:
    {
      forceFit: true
    }
    , border: false, store: new Ext.data.Store(
    {
      url: '<%=local %>/contract/list_info.ods', reader: new Ext.data.JsonReader(
      {
        root: 'records', totalProperty: 'total'
      }
      , ["contractPk","contractName","contractEname","company","lead","address","postCode"
                ,"linkman","tel","email","beginTime","endTime","leadingOfficial","officeHolder","purposeScope"
                ,"projectApproval","achievement","objectiveOther","noveltyPoint","keyWords","contractState","memo"
                ,"createOrgPk","createUserPk","createTime","deleteType","contractCode"])
    }
    ), columns: [new Ext.grid.CheckboxSelectionModel(), new Ext.grid.RowNumberer(),
    {
      header: '编号', sortable: true, dataIndex: "contractCode"
    }
    ,
    {
      header: '查新课题名称', sortable: true, dataIndex: "contractName"
    }
    ,
    {
      header: '委托单位', sortable: true, dataIndex: "company"
    }
    ,
    {
      header: '查新人员', sortable: true, dataIndex: "officeHolder"
    }
    ,
    {
      header: '通讯地址', sortable: true, dataIndex: "address"
    }
    ,
    {
      header: '联系人', sortable: true, dataIndex: "linkman"
    }
    ,
    {
      header: '电话', sortable: true, dataIndex: "tel"
    }
    ,
    {
      header: '预计完成时间', sortable: true, dataIndex: "endTime"
    }
    ]
    ,listeners:{
			rowdblclick:function(grid){
			var records=grid.getSelectionModel().getSelections();
			new Ext.Window(
			{
				layout: 'border', title: '查看合同管理记录--网页对话框', autoDestroy: true, width: 900, height: 650,
				plain: true, modal: true, iconCls: 'bogus', resizable: false, maximizable : true,
				items : [
				{
				layout : 'fit', region : 'center', xtype : 'panel',
			        plugins : [ new Ext.ux.Plugin.RemoteComponent(
				{
					url : '<%=local %>/contract/view_page.ods',
					params : {
					   contractPk : records[0].get('contractPk'),
				      },
				method : 'post'
				})]
				}]}).show();
			}
			}
    , tbar: [
    {
      text: '新增', iconCls: 'x-icon-add', tooltip: '新增合同记录', handler: function(btn)
      {
        var grid=btn.findParentByType('ods.grid');
        win=new Ext.Window(
        {
          layout: 'border', title: '新增合同记录--网页对话框', store: grid.store, autoDestroy: true, width: 900, height: 650, plain: true, modal: true, iconCls: 'bogus', resizable: true, closable: true, items: [
          {
            layout: 'fit', region: 'center', xtype: 'panel', plugins: [new Ext.ux.Plugin.RemoteComponent(
            {
              url: '<%=local %>/jsp/data/contract/contract_Add.jsp', method: 'post'
            }
            )]
          }
          ]
        });win.show();
      }
    }
    , '-',
    {
      text: '查 看', tooltip: '查看选中的合同管理记录', iconCls: 'x-icon-view', handler: function(btn)
      {
        var grid=btn.findParentByType('ods.grid');
        if (typeof(grid.getSelectionModel().getSelected()) == 'undefined')
        {
          Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
        }
        else
        {
          var records=grid.getSelectionModel().getSelections();
          if (records.length>1)
          {
            Ext.example.msg("系统提示", "<b>" + "请勾选一条多选框内容" + "</b>");
          }
          else
          {
            var records=grid.getSelectionModel().getSelections();
            var contractPk=records[0].get('contractPk');
            win=new Ext.Window(
            {
              layout: 'border', title: '查看选中的合同管理记录--网页对话框', autoDestroy: true, width: 900, height: 650, plain: true, modal: true, iconCls: 'bogus', resizable: false, closable: true, items: [
              {
                layout: 'fit', region: 'center', xtype: 'panel', plugins: [new Ext.ux.Plugin.RemoteComponent(
                {
                  url: '<%=local %>/contract/view_page.ods', method: 'post', params:
                  {
                    'contractPk': contractPk
                  }
                }
                )]
              }
              ]
            });win.show();
          }
        }
      }
    }
    , '-',
    {
      text: '修改', tooltip: '修改选中的合同管理记录', iconCls: 'x-icon-edit', handler: function(btn)
      {
        var grid=btn.findParentByType('ods.grid');
        if (typeof(grid.getSelectionModel().getSelected()) == 'undefined')
        {
          Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
        }
        else
        {
          var records=grid.getSelectionModel().getSelections();
          if (records.length>1)
          {
            Ext.example.msg("系统提示", "<b>" + "请勾选一条多选框内容" + "</b>");
          }
          else
          {
            var contractPk=records[0].get('contractPk');
            win=new Ext.Window(
            {
              layout: 'border', title: '修改选中的合同管理记录--网页对话框', store: grid.store, autoDestroy: true, width: 900, height: 650, plain: true, modal: true, iconCls: 'bogus', resizable: false, closable: true, items: [
              {
                layout: 'fit', region: 'center', xtype: 'panel', plugins: [new Ext.ux.Plugin.RemoteComponent(
                {
                  url: '<%=local %>/contract/modify_page.ods', method: 'post', params:
                  {
                    'contractPk': contractPk
                  }
                }
                )]
              }
              ]
            });win.show();
          }
        }
      }
    }
    , '-',
    {
			text : '删除',
			tooltip : '删除选中的合同记录信息',
			iconCls : 'x-icon-delete',
			handler : function(btn) {
				var grid = btn.findParentByType('ods.grid');
				if (typeof (grid.getSelectionModel().getSelected()) == 'undefined') {
					Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
				} else {
					var records = grid.getSelectionModel().getSelections();
				    var contractPks=[];
				    var contractNames=[]; 
				    for(var i=0;i < records.length;i++){
        				contractPks.push("'"+records[i].get('contractPk')+"'");
					    contractNames.push(records[i].get('contractName'));
				    } 
					if (Ext.Msg.confirm("系统提示",'确定删除合同记录：' + contractNames + '吗？',
						function(v) {
							if (v == "yes") {
								Ext.Ajax.request( {
									url : '<%=local %>/contract/delete_info.ods',
									success : function(response) {
										var responseText = Ext.util.JSON.decode(response.responseText);
										Ext.example.msg('系统提示',responseText.msg);
										grid.store.load();
									},
									params : {
										'contract.contractPks' : contractPks,
										deleteType:1
									}
								});
							}
							var pwin = btn.findParentByType('window');
							if (pwin) {
								pwin.show();
							}
						}));
				}
			}
		}
		, '-',
		{
			text: '附件', iconCls: 'x-icon-zrw', 
			handler: function(btn){
			
			var grid=btn.findParentByType('ods.grid');
	        if (typeof(grid.getSelectionModel().getSelected()) == 'undefined')
	        {
	          Ext.example.msg("系统提示", "<b>" + "请勾选多选框内容" + "</b>");
	        }
	        else
	        {
	          var records=grid.getSelectionModel().getSelections();
	          if (records.length>1)
	          {
	            Ext.example.msg("系统提示", "<b>" + "请勾选一条多选框内容" + "</b>");
	          }
	          else
	          {
	            var contractPk=records[0].get('contractPk');
	          	var win=new Ext.Window({
							layout: 'border', title: '附件信息--网页对话框', autoDestroy: true, width: 760, height: 500, 
							plain: true, modal: true, iconCls: 'bogus',resizable: true, 
							items: [{
								layout: 'fit', region: 'center',xtype: 'panel', 
						plugins : [ new Ext.ux.Plugin.RemoteComponent(
						{
							url : '<%=local %>/file/importinfo/index_page.ods?execlFileImportTypeId=searchResultImportId',
								    method : 'post',
								    params : {
										'filePk' : contractPk
									}
								   }) ]
							}]
							,listeners:{
								close: function(src){
									grid.store.load();
								}
							}
						}
						);
	            win.show();
	          }
	        }
			}
		}
    ]
  }
  ]
}