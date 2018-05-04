<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
{
  xtype: 'tabpanel'
	 ,margins:'0 5 5 0'
	 ,resizeTabs: true
     ,plugins: new Ext.ux.TabCloseMenu()
     ,autoScroll : true
     ,activeTab: 0
     ,enableTabScroll: true
     ,border : false 
     ,listeners : {
		tabchange : function(tabPanel,panel) {
            switch (panel.mtype) {
                case 1:<%//模块权限 %>
                	panel.insert(0,<jsp:include page="/jsp/system/rolereso/module_filtertree.jsp" ></jsp:include>);
                    break;
                case 2:<%//功能权限 %>
                	panel.insert(0,<jsp:include page="/jsp/system/rolereso/function_filtertree.jsp" ></jsp:include>);
                    break;
                case 3:
                	panel.insert(0,<jsp:include page="/jsp/system/rolereso/portal_filtertree.jsp" ></jsp:include>);
                    break;
                case 4:<%//组织机构树权限 %>
                	panel.insert(0,<jsp:include page="/jsp/system/rolereso/org_filtertree.jsp" ></jsp:include>);
                    break;
            }
            if(panel.mtype){panel.mtype = 0;}
			panel.doLayout(true);
		}
	}
  , items: [
  {layout:'fit',title:'模块权限',mtype:1}
  ,
  {layout:'fit',title:'菜单权限',mtype:2} 
  ,
  {layout:'fit',title:'门户权限',mtype:3}
  ,
  {layout:'fit',title:'组织权限',mtype:4}
  ]
}