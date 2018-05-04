<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String local = request.getContextPath();
%>
{
	xtype: 'panel',
	region: 'center',
	layout: 'fit',
	border: false,
	items: [{
		xtype: 'ods.filtertree',
		emptyFilterText: '请输入目录名称 ',
		useArrows: true,
		autoScroll: true,
		rootVisible: true,
		border: false,
		loader: new Ext.tree.TreeLoader({
			url: '<%=local%>/system/filemanage/directory_tree_info.ods',
			listeners:{
				'beforeload': function(load, node){
					this.baseParams['fileDirectoryPk']=node.attributes.fileDirectoryPk;
				}
			}
		}),
		root: new Ext.tree.AsyncTreeNode({
			text: '文献目录',
			fileDirectoryPk: '00000000-0000-0000-0000-000000000000',
			expanded: true,
			isRoot: true,
			checked: false
		}),
		listeners: {
			'beforeload': function(node){
				var panel = this.findParentByType('panel');
				Ext.each(panel.toolbars[0].items.items, function(bar){
					bar.disable();
				});
			},
			click: function(node,e){
				node.ui.checkbox.checked=true;
				node.ui.checkbox.defaultChecked=true;
				node.attributes.checked=true;
				node.fireEvent('checkchange',node,true);
			},
			checkchange: function(node,checked){
				var selNodes=node.getOwnerTree().getChecked();
				Ext.each(selNodes, function(p){
					if (p!=node){
						p.ui.checkbox.checked=false;
						p.ui.checkbox.defaultChecked=false;
						p.attributes.checked=false;
					}
				});
				var panel = this.findParentByType('panel');
				Ext.each(panel.toolbars[0].items.items, function(bar){
					if (checked) {
						if(!node.attributes.isRoot){
							bar.enable();
						}else{
							if(bar.isadd){
								bar.enable();
							}else{
								bar.disable();
							}
						}
					} else {
						bar.disable();
					}
				});
				var store = panel.findParentByType('panel').findParentByType('panel').findByType('ods.grid')[0].getStore();
				if(checked){
					Ext.apply(store.baseParams, {
						fileDirectoryPk: node.attributes.fileDirectoryPk
					});
				}else{
					Ext.apply(store.baseParams, {
						fileDirectoryPk: ''
					});
				}
				store.load();
			}
		}
	}],
	tbar:[{
		text: '新增',
		tooltip : '在所选目录下新增文献目录',
		iconCls: 'x-icon-add',
		disabled: true,
		isadd: true,
		handler: function(btn){
			var treepanel = this.findParentByType('panel').findByType('ods.filtertree')[0];
			var node = treepanel.getRootNode().getOwnerTree().getChecked()[0];
			if(treepanel.getChecked()[0]){
				var win = new Ext.Window({
					layout: 'fit',
					border: false,
					title: '新增文献目录信息--网页对话框',
					autoDestroy: true,
					width: 360,
					height: 150,
					plain: true,
					modal: true,
					iconCls: 'bogus',
					resizable: false,
					rootnode: treepanel.getRootNode(),
					plugins: [new Ext.ux.Plugin.RemoteComponent({
						url: '<%=local%>/system/filemanage/directory_into_page.ods',
						method: 'post',
						params: {
							fatherPk: node.attributes.fileDirectoryPk,
							validatetype: 1
						}
					})]
				});
				win.show();
			}else{
				Ext.example.msg("系统提示", "<b>" + "请选择一个文献目录" + "</b>");
			}
		}
	},'-',{
		text: '修改',
		tooltip : '修改所选的文献目录',
		iconCls: 'x-icon-edit',
		disabled: true,
		handler: function(btn){
			var treepanel = this.findParentByType('panel').findByType('ods.filtertree')[0];
			var node = treepanel.getRootNode().getOwnerTree().getChecked()[0];
			if(treepanel.getChecked()[0]){
				var win = new Ext.Window({
					layout: 'fit',
					border: false,
					title: '修改文献目录--网页对话框',
					autoDestroy: true,
					width: 360,
					height: 150,
					plain: true,
					modal: true,
					iconCls: 'bogus',
					resizable: false,
					rootnode: treepanel.getRootNode(),
					plugins: [new Ext.ux.Plugin.RemoteComponent({
						url: '<%=local%>/system/filemanage/directory_into_page.ods',
						method: 'post',
						params: {
							fileDirectoryPk: node.attributes.fileDirectoryPk,
							validatetype: 2
						}
					})]
				});
				win.show();
			}else{
				Ext.example.msg("系统提示", "<b>" + "请选择一个文献目录" + "</b>");
			}
		}
	},'-',{
		text: '删除',
		tooltip : '删除一个文献目录信息',
		iconCls: 'x-icon-delete',
		disabled: true,
		handler: function(btn){var treepanel = this.findParentByType('panel').findByType('ods.filtertree')[0];
			var node = treepanel.getRootNode().getOwnerTree().getChecked()[0];
			if(treepanel.getChecked()[0]){
				if(node.attributes.leaf){
					if (Ext.MessageBox.confirm("系统提示", '您确定要删除文献目录：'+node.attributes.text+'  吗?', function(v){
						if (v == "yes"){
							Ext.Ajax.request({
								url: '<%=local%>/system/filemanage/directory_delete_info.ods',
								success: function(response){
									var responseText = Ext.util.JSON.decode(response.responseText);
									Ext.example.msg('系统提示',responseText.msg);
									treepanel.getRootNode().reload();
							    },
							    params:{
									fileDirectoryPk: node.attributes.fileDirectoryPk
								}
							});
						}
					}));
				}else{
					Ext.example.msg("系统提示", "<b>" + "该目录有子目录不可删除,请先删除子目录！" + "</b>");
				}
			}else{
				Ext.example.msg("系统提示", "<b>" + "请选择一个文献目录" + "</b>");
			}
		}
	}]
}
