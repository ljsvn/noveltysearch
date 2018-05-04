<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@page import="com.ods.base.bo.system.org.bo.Organization"%>
<%@page import="com.ods.base.action.system.org.OrgAction"%>
<%@page import="com.ods.base.bo.system.user.bo.User"%>
<%@page import="com.ods.util.action.ActionView"%>
<%@ page import="com.ods.util.spring.SpringBeanFactory"%>
<%@ page import="com.ods.util.hibernate.SpringHibernate"%>
<%@ page import="com.ods.util.log.LogUtil"%>
<%@page import="com.ods.util.type.NumberUtil"%>
<%@ page import="com.ods.data.bo.subjectclass.SubjectClass" %>
<%
	User user = com.ods.util.UserContext.getUserContext(request).getUser();
	
	
	SpringHibernate springHibernate = (SpringHibernate) SpringBeanFactory.getBean("DAOProxy");
	SubjectClass sc = new SubjectClass();
	String subjectClassPk = sc.ROOT_NODE_PK;
	System.out.println(subjectClassPk);
	try {
		sc = (SubjectClass)springHibernate.selectByPk("subjectClassPk",subjectClassPk,SubjectClass.class);
		
	} catch(Throwable e) {
		LogUtil.writeLog(e);
		return;
    }
%>
{
  region: 'center', xtype: 'panel', autoScroll: true, autoDestroy: true, items: [

  {
    xtype: 'ods.filtertree',
    useArrows: true,
	trackMouseOver: true,
	containerScroll: true,
	split: true,
	animate: true,
	rootVisible: true,
	emptyFilterText: '请输入名称 ',
	autoScroll: true
    , loader: new Ext.tree.TreeLoader(
    {
      url: '<%=request.getContextPath()%>/subject/class/tree_info.ods?isKeyWord=0'

      , baseParams:
      {
        orgPk: '0'
      }
      , listeners:
      {
        'beforeload': function(load, node)
        {
          this.baseParams['subjectClassPk']=node.attributes.subjectClassPk;
        }
      }
    }
    )
    , root: new Ext.tree.AsyncTreeNode(
    {
     	
		subjectClassPk: '<%=sc.getSubjectClassPk()%>',
		text: '<%=sc.getSubjectClassName()%>',
		fatherPkAll: '<%=sc.getFatherPkAll() %>',
		checked: false,
		expanded : true
    }
    ), listeners:
    {
      'dblclick': function(n)
      {
        form.findField('contractSubject.subjectClassName').setValue(n.attributes.text.replace(/<\/*[^<>]*>/g, "").replace(/&nbsp;/g, ""));
        form.findField('contractSubject.subjectClassPk').setValue(n.attributes.subjectClassPk);
        this.findParentByType('window').close();
      }
    }

  }
  ]

}