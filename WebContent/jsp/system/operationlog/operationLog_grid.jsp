<%--
    功能            : 短信草稿箱
    创建时间  :2010-1-22 
    创建者        : xidf
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="com.ods.util.hibernate.query.QueryPageJavaBean"%>
<%
   String userPk = request.getParameter("userPk");
%>
{
		layout:'border'
		,xtype:'panel'
		,items:[{
			frame:true,layout:'column',region:'north'
			,xtype:'form'
			,height : 38,labelAlign : 'right',border : false,labelWidth:80
			,items:[{
				layout:'form'
				,xtype:'panel'
				,columnWidth : .4,border : false
				,items:[{
				format:'Y-m-d',name:'startTime',anchor:'95%'
				,xtype:'datefield'
				,fieldLabel:'开始时间'
				,selectOnFocus:true
					,vtype: 'daterange'
					,endDateField: 'endTime'
				,listeners :{
					'render' : function(c) {
						c.focus(true,true);
					}
				}
				,emptyText : '请选择时间'
				,format:'Y-m-d'
				}]
			},{
				layout:'form'
				,xtype:'panel'
				,columnWidth : .4,border : false
				,items:[{
					format:'Y-m-d',name:'endTime',anchor:'95%'
					,xtype:'datefield'
					,fieldLabel : '结束时间'
					,emptyText : '请选择时间'
					,startDateField: 'startTime'
					,format:'Y-m-d'		
				}]		
			},{
				layout:'form'
				,columnWidth : .18,border : false
				,items:[{
					xtype:'button',width:60
					,text : '查询'
					,handler : function(btn) {
						var form = btn.findParentByType('form');
						var startTime = form.getForm().findField('startTime').getValue();
						var endTime = form.getForm().findField('endTime').getValue();
						if(startTime !="" ){
						startTime = startTime.format('Y-m-d');
						}
						if(endTime !="" ){
						endTime = endTime.format('Y-m-d');
						}
						var grid = form.findParentByType('panel').findByType('ods.grid')[0];
						Ext.apply(grid.store.baseParams,{startTime : startTime,endTime : endTime});
						grid.store.load();
					}
				}]
			}, {
		name : 'userPk',
		value : '<%=userPk %>',
		xtype : 'hidden'
	    }]
		},{
			region:'center'
			,xtype:'ods.grid'
			,pagesize:100
			, viewConfig: {
			       forceFit: true
			   }
			,border : false
			,id:'roomInfo'
			,store: 
				new Ext.data.Store({
				url:'<%=request.getContextPath()%>/system/log/log_info.ods?limit=100'
				,reader:new Ext.data.JsonReader({root:'records',totalProperty:'total'},['logShowText'])
				,baseParams:{userName:'<%=request.getParameter("userName") %>',userPk:'<%=request.getParameter("userPk") %>'}
							
			})
			,columns:[
				{header : '操作信息',		sortable:true,		dataIndex : "logShowText"	}
			]
			,tbar : ['-',{
			text:'删除查询时间段日志'
			,iconCls : 'x-icon-delete'
		    ,tooltip : '彻底删除查询时间段日志记录'
			,handler:function(btn){
				var grid = btn.findParentByType('ods.grid');
				var form = btn.findParentByType('ods.grid').findParentByType('panel').findByType('form')[0];
				var startTime = form.getForm().findField('startTime').getValue();
				var endTime = form.getForm().findField('endTime').getValue();
				if(startTime !="" ){
				startTime = startTime.format('Y-m-d');
				}
				if(endTime !="" ){
				endTime = endTime.format('Y-m-d');
				}
				if(startTime || endTime){
					if (Ext.Msg.confirm("系统提示", '确定要删除'+startTime+'至'+endTime+'记录吗?', function(v) {
						if (v == "yes") {
							Ext.Ajax.request({
								url: '<%=request.getContextPath()%>/system/log/clear_info.ods?userPk=<%=userPk%>',
								success: function(response) {
									var responseText = Ext.util.JSON.decode(response.responseText);
									Ext.example.msg('系统提示','清空成功');
									grid.store.load();
								},
								params: { 
									startTime:startTime,
									endTime:endTime
								}
							});
						}
						var pwin = btn.findParentByType('window');
						if (pwin) {
							pwin.show();
						}
					}));
				}else{
					if (Ext.Msg.confirm("系统提示", '确定要删除所有记录吗?', function(v) {
						if (v == "yes") {
							Ext.Ajax.request({
							url: '<%=request.getContextPath()%>/system/log/clear_info.ods?userPk=<%=userPk%>',
							success: function(response) {
									var responseText = Ext.util.JSON.decode(response.responseText);
									Ext.example.msg('系统提示','清空成功');
									grid.store.load();
							},
							params: {
									userName:'<%=request.getParameter("userName") %>'
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
		}]
	}]
}
