<%--
    功能		:
    创建时间	: 2010-9-7 下午06:46:46
    创建者		: cui_wenke 
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="com.ods.dic.bo.datadictionarycommon.DataDictionaryCommon"%>
<%@ page import="com.ods.util.hibernate.query.QueryPageJavaBean"%>
<%@ page import="com.ods.util.resource.ResourceUtil"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<% String local = request.getContextPath(); %>
{
	autoScroll : true,
	region : 'center',
	xtype : 'treepanel',
	id : 'tree_panel_info',
	rootVisible : true,
	border : false,
	dictType : null,
	 animate:false,
    enableDD:true,
     checkModel:'cascade',  
	emptyFilterText : '请输入查询内容'
	,root : new Ext.tree.AsyncTreeNode( {
		dicCommonPk : '-1',
        text:'提示：请点击左侧目录，对系统参数进行管理。',
		expanded : true,
		allowDrag:false,   //false表示不能被拖动 
		iconCls : 'x-icon-docs'
	}),
	loader : new Ext.tree.TreeLoader( {
		url : '<%=local%>/system/dict/tree_info.ods',
		baseParams : {
			dicCommonPk : '-1',
			dictType : null
		},
		listeners : {
			'beforeload' : function(load, node) {
				this.baseParams['dictType'] = node.getOwnerTree().dictType;
				this.baseParams['dicCommonPk'] = node.attributes.dicCommonPk;
			}
		}
	}),
	tbar: [
	    	{
		      text: '新增', id: "dict_add", paramsValue: '', isinit: false, disabled: true,iconCls: 'x-icon-add', 
		      handler: function(btn){
			    var tree_panel_info=btn.findParentByType('treepanel');
		    	var win=new Ext.Window({
		    	  layout: 'border', title: '新增参数信息--网页对话框', rootnode: tree_panel_info.getRootNode(), autoDestroy: true, 
		    	  width: 380, height: 200, plain: true, modal: true, iconCls: 'bogus', resizable: false, items: [
		    	  {
		    	    layout: 'fit', region: 'center', xtype: 'panel', plugins: [new Ext.ux.Plugin.RemoteComponent(
		    	    {
		    	      url: '<%=local%>/system/dict/add_page.ods',method: 'post', params:
                      {
		    	    	   dictType: tree_panel_info.dictType
		    	    	  ,dicCommonPk: btn.paramsValue
                      }
		    	    }
		    	    )]
		    	  }
		    	  ]
		    	});
		    	win.show();
			  }
		    }
		    , '-',
		    {
		      text: '查看', id: "dict_view",paramsValue: '',disabled: true,isinit: true, iconCls: 'x-icon-view', handler: function(btn){
			    var tree_panel_info=btn.findParentByType('treepanel');
	    		var win=new Ext.Window({
		    	  layout: 'border', title: '查看参数信息--网页对话框', ownertree: tree_panel_info.getRootNode(), autoDestroy: true, 
		    	  width: 380, height: 200, plain: true, modal: true, iconCls: 'bogus', resizable: false, items: [
		    	  {
		    	    layout: 'fit', region: 'center', xtype: 'panel', plugins: [new Ext.ux.Plugin.RemoteComponent(
		    	    {
		    	      url: '<%=local%>/system/dict/view_page.ods',method: 'post', params:
                      {
		    	    	  dicCommonPk: btn.paramsValue
                      }
		    	    }
		    	    )]
		    	  }
		    	  ]
		    	});
		    	win.show();
			  }
		    }
		    , '-',
		    {
		      text: '修改', id: "dict_upda",paramsValue: '',disabled: true,isinit: true, iconCls: 'x-icon-edit', handler: function(btn){
	    		var tree_panel_info=btn.findParentByType('treepanel');
	    		var win=new Ext.Window({
		    	  layout: 'border', title: '修改参数信息--网页对话框', rootnode: tree_panel_info.getRootNode(), autoDestroy: true, 
		    	  width: 380, height: 200, plain: true, modal: true, iconCls: 'bogus', resizable: false, items: [
		    	  {
		    	    layout: 'fit', region: 'center', xtype: 'panel', plugins: [new Ext.ux.Plugin.RemoteComponent(
		    	    {
		    	      url: '<%=local%>/system/dict/update_page.ods',method: 'post', params:
                      {
		    	    	  dicCommonPk: btn.paramsValue
                      }
		    	    }
		    	    )]
		    	  }
		    	  ]
		    	});
		    	win.show();
			  }
		    }
		    , '-',
		    {
		      text: '删除', id: "dict_dele",paramsValue: '',disabled: true,isinit: true, iconCls: 'x-icon-delete', handler: function(btn){
		        if (Ext.Msg.confirm("系统提示", '您真的要删除当前选中的参数吗?', function(v)
		          {
        		  var tree_panel_info=btn.findParentByType('treepanel');
		          if (v == "yes")
		            {
		  		      Ext.Ajax.request(
		  		        {
		  		        url: '<%=local%>/system/dict/delete_info.ods', success: function(response)
		  		          {
		  		          var responseText = Ext.util.JSON.decode(response.responseText);
		  		          Ext.example.msg('系统提示', responseText.msg);
		  		          tree_panel_info.getRootNode().reload();
		  		          Ext.getCmp('dict_add').paramsValue = tree_panel_info.dictType;
		  		          }
		  		        , params:
		  		          {
		  		          'dicCommonPk': btn.paramsValue, 'deleteType': 1
		  		          }
		  		        }
		  		      );
		            }
		          }
		        ));
			  }
		    }
	    ]
	, listeners: {
    	  'checkchange': function(node, checked)
    	  {
    	    var selNodes=node.getOwnerTree().getChecked();
    	    Ext.each(selNodes, function(p){
    	      if (p != node)
    	      {
    	        p.ui.checkbox.checked=false;
    	        p.ui.checkbox.defaultChecked=false;
    	        p.attributes.checked=false;
    	      }
    	    });
    	    Ext.each(node.getOwnerTree().toolbars[0].items.items, function(bar){
   	    		if(checked){
   	    		  bar.paramsValue = node.attributes.dicCommonPk;
   	    		  if (bar.disabled)
   	    		  {
   	    		    bar.enable();
   	    		  }
       	    	}else{
   	    		  if (bar.isinit)
   	    		  {
   	    		    bar.disable();
   	    		  }
   	    		  bar.paramsValue = node.getOwnerTree().dictType;
           	    }
   	    	});
    	  },
			'nodedrop':function(e){   
			var tree_panel_info=Ext.getCmp('tree_panel_info');
			var moveFlag='';
			    if(e.point=='append'){      
                   moveFlag='append';    
               } else if(e.point=='above'){   
                   moveFlag='above'; 
                   
               }else if(e.point=='below'){ 
               
                   moveFlag='below';
         };
              Ext.Ajax.request({
				   url : '<%=local%>/system/dict/moveTreeNode.ods',
				   params : {
					'moveNodeId':e.dropNode.id,
					'targetNodeId':e.target.id,
					'moveFlag':moveFlag
				},
				success : function(response) {
		            var responseText = Ext.util.JSON.decode(response.responseText); 
		            Ext.example.msg('系统提示',responseText.msg);
				}
			}); 
			setTimeout(function(){
						 tree_panel_info.getRootNode().reload();
					}, 1000);
			
			}
    	}
}