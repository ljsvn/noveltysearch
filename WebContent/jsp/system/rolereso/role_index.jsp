<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ods.base.bo.system.role.bo.Role"%>
<% String local = request.getContextPath(); %>
{
  layout: 'border', xtype: 'panel', items: [
  {
    title: "角色信息",region: 'west', xtype: 'treepanel', width: 350, tbar: [
    {
      text: '新增', id: "resource_add", isinit: false, iconCls: 'x-icon-add', handler: function(btn)
      {
        var tree_panel_role=btn.findParentByType('treepanel');
        var win=new Ext.Window(
        {
          layout: 'border', title: '新增角色信息--网页对话框', rootnode: tree_panel_role.getRootNode(), autoDestroy: true, 
          width: 380, height: 280, plain: true, modal: true, iconCls: 'bogus', resizable: false, items: [
          {
            layout: 'fit', region: 'center', xtype: 'panel', items: [<%@ include file="/jsp/system/rolereso/role_add.jsp" %>]
          }
          ]
        });
        win.show();
      }
    }
    , '-',
    {
      text: '修改', id: "resource_upda", paramsValue: '', disabled: true, isinit: true, iconCls: 'x-icon-edit', handler: function(btn)
      {
        var tree_panel_role=btn.findParentByType('treepanel');
        var win=new Ext.Window(
        {
          layout: 'border', title: '修改角色信息--网页对话框', rootnode: tree_panel_role.getRootNode(), autoDestroy: true, 
          width: 380, height: 280, plain: true, modal: true, iconCls: 'bogus', resizable: false, items: [
          {
            layout: 'fit', region: 'center', xtype: 'panel', plugins: [new Ext.ux.Plugin.RemoteComponent(
            {
              url: '<%=local%>/system/resource/update_page.ods', method: 'post', params:
              {
                rolePk: btn.paramsValue
              }
            }
            )]
          }
          ]
        }
        );
        win.show();
      }
    }
    , '-',
    {
      text: '删除', id: "resource_dele", paramsValue: '', nodeText: '', disabled: true, isinit: true, iconCls: 'x-icon-delete', handler: function(btn)
      {
        var tree_panel_role=btn.findParentByType('treepanel');
        if (Ext.Msg.confirm("系统提示", '您确定要删除角色：'+btn.nodeText+'  吗?', function(v)
        {
          if (v == "yes")
          {
            Ext.Ajax.request(
            {
              url: '<%=local%>/system/resource/deleorreset_info.ods', success: function(response)
              {
                var responseText=Ext.util.JSON.decode(response.responseText);
                Ext.example.msg('系统提示', responseText.msg);
                tree_panel_role.getRootNode().reload();
		        Ext.each(btn.findParentByType('panel').toolbars[0].items.items, function(bar)
		        {
		        	if(bar.isinit){
		            	bar.disable();
		        	}
		        });
              }
              , params:
              {
                'rolePk': btn.paramsValue, 'deleteType': 1
              }
            }
            );
          }
        }
        ));
      }
    }
    , '-',
    {
      text: '恢复', id: "resource_undo", paramsValue: '', nodeText: '', disabled: true, isinit: true, iconCls: 'x-icon-undo', handler: function(btn)
      {
        var tree_panel_role=btn.findParentByType('treepanel');
        if (Ext.Msg.confirm("系统提示", '您确定要恢复角色：'+btn.nodeText+'  吗?', function(v)
        {
          if (v == "yes")
          {
            Ext.Ajax.request(
            {
              url: '<%=local%>/system/resource/deleorreset_info.ods', success: function(response)
              {
                var responseText=Ext.util.JSON.decode(response.responseText);
                Ext.example.msg('系统提示', responseText.msg);
                tree_panel_role.getRootNode().reload();
		        Ext.each(btn.findParentByType('panel').toolbars[0].items.items, function(bar)
		        {
		        	if(bar.isinit){
		            	bar.disable();
		        	}
		        });
              }
              , params:
              {
                'rolePk': btn.paramsValue, 'deleteType': 0
              }
            }
            );
          }
        }
        ))
          ;
      }
    }
    , '-',
    {
      text: '授权', id: "resource_vcardEdit", paramsValue: '', disabled: true, isinit: true, iconCls: 'x-icon-vcardEdit', 
      handler: function(btn)
      {
        var tree_panel_role=btn.findParentByType('treepanel');
        var win=new Ext.Window({
          layout: 'border', title: '授权角色信息--网页对话框', rootnode: tree_panel_role.getRootNode(), 
          autoDestroy: true, width: 600, height: 500, modal: true, iconCls: 'bogus', resizable: false, items: [
          {
            layout: 'fit', region: 'center', xtype: 'panel',plugins: [new Ext.ux.Plugin.RemoteComponent(
            {
              url: '<%=local%>/system/resource/resource_tree_page.ods', method: 'post', params:
              {
                rolePk: btn.paramsValue
              }
            }
            )]
          }
          ], listeners:{
				close: function(src)
				{
			        Ext.getCmp('tree_panel_resource').getRootNode().reload();
			        Ext.getCmp('tree_panel_portal').getRootNode().reload();
				}
			}
        });
        win.show();
      }
    }
    ], rootVisible: false, autoScroll: true, margins: '5 5 5 0', root: new Ext.tree.AsyncTreeNode(
    {
      expanded: true
    }
    ), loader: new Ext.tree.TreeLoader(
    {
      url: '<%=local%>/system/resource/role_tree_info.ods', baseParams:
      {
        rolePk: '<%=Role.ROOT_NODE_PK%>'
      }
    }
    ), listeners:
    {
      'checkchange': function(node, checked)
      {
        var selNodes=node.getOwnerTree().getChecked();
        Ext.each(selNodes, function(p)
        {
          if (p != node)
          {
            p.ui.checkbox.checked=false;p.ui.checkbox.defaultChecked=false;p.attributes.checked=false;
          }
        });
        Ext.each(node.getOwnerTree().toolbars[0].items.items, function(bar)
        {
          if (checked)
          {
	        var tree_panel_resource=Ext.getCmp('tree_panel_resource');
	        tree_panel_resource.loader.baseParams['rolePk']=node.attributes.rolePk;
	        tree_panel_resource.getRootNode().reload();
	        
	        var tree_panel_portal=Ext.getCmp('tree_panel_portal');
	        tree_panel_portal.loader.baseParams['rolePk']=node.attributes.rolePk;
	        tree_panel_portal.getRootNode().reload();
	        
            bar.paramsValue = node.attributes.rolePk;
            bar.nodeText = node.text;
            if (bar.disabled)
            {
              bar.enable();
            }
          }
          else
          {
            if (bar.isinit)
            {
              bar.disable();
            }
          }
        });
      }
    }
  }
  ,
  {
    title: "角色菜单权限内容",region: 'center', xtype: 'ods.filtertree', id: 'tree_panel_resource', 
    rootVisible: false, autoScroll: true, margins: '5 5 5 0', root: new Ext.tree.AsyncTreeNode(
    {
      expanded: false
    }
    ), loader: new Ext.tree.TreeLoader(
    {
      url: '<%=local%>/system/resource/role_menu_tree_info_view.ods', baseParams:
      {
        rolePk: '',onClickNodeId:''
      }, listeners:
		{
		   'beforeload': function(load, node){    
		       this.baseParams['onClickNodeId']=node.attributes.resourcePk;
			}
		}
    }
    )
  }
  ,
  {
    title: "角色门户权限内容"
    ,region: 'east'
    , xtype: 'ods.filtertree'
    , id: 'tree_panel_portal'
    , width:280
    , rootVisible: false
    , autoScroll: true
    , margins: '5 5 5 0'
    , loader: new Ext.tree.TreeLoader(
    {
      url: '<%=local%>/system/resource/role_portal_tree_info_view.ods', baseParams:
      {
        rolePk: ''
      }
    }  )
    , root: new Ext.tree.AsyncTreeNode(
    {
      expanded: false
    })
  }
  ]
}