<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.ods.util.hibernate.query.QueryPageJavaBean"%>
<%@ page import="com.ods.util.resource.ResourceUtil"%>
<%@ page import="com.ods.util.type.StringUtil"%>
<% String local = request.getContextPath(); %>
{
	xtype:'tabpanel',
	region : 'center',
	margins:'0 5 5 0',
	resizeTabs: true,
	plugins: new Ext.ux.TabCloseMenu(),
	autoScroll : true,
	activeTab: 0,
	enableTabScroll: true,
	border : false,
	contractPk: '',
	productCode: '',
	partsCode: '',
	partsName: '',
	listeners : {
		tabchange : function(tabPanel,panel) {
			var contractPk  = this.contractPk;
			
			if(contractPk ){
	            switch (panel.mtype) {
	                case 1:
	                	panel.insert(0,<jsp:include page="/jsp/data/filequery/searchtermsstrategy_list.jsp"></jsp:include>);
	                    break;
	                case 2:
	                	panel.insert(0,<jsp:include page="/jsp/data/filequery/searchdatabase_list.jsp"></jsp:include>);
	                    break;
	            }
	            if(panel.mtype){panel.mtype = 0;}
				panel.doLayout(true);
				var store = tabPanel.activeTab.findByType('ods.grid')[0].getStore();
				Ext.apply(store.baseParams, {
					'contractPk' : contractPk
					
				});
				store.load();
			}
		}
	},
	items : 
		[
			{
				xtype : 'panel',layout:'border',title:'主题词列表',
				items : [<jsp:include page="/jsp/data/filequery/contractsubject_List.jsp"></jsp:include>]
			},{
				xtype : 'panel',layout:'fit',title:'检索数据库列表',mtype:1
			},{
				xtype : 'panel',layout:'fit',title:'检索结果',mtype:2
			}
		]
	}
