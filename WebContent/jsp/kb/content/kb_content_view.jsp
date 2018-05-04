<%--
    功能            :知识点浏览
    创建时间  :2009-9-2 
    创建者        : jiangwenqi 
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%@page import="com.ods.util.hibernate.query.QueryPageJavaBean"%>

<%@page import="com.ods.util.type.StringUtil"%><s:i18n name="com.ods.kb.action.kbcontent.KbcontentAction">
	<div class="body-wrap">
	<h1><s:text name="kbinputinfo.kbName" />--<s:property value="#request.kbContent.kbName" /> </h1>

	<table cellspacing="0" width="500">
		<tbody>
			<tr>
				<td colspan="5" class="label"></td>
			</tr>
			<tr >
				<td class="label" nowrap="nowrap"><img
					src="<%=request.getContextPath()%>/css/resources/images/default/s.gif"
					class="item-icon icon-cls" /><s:text name="kbinputinfo.createName" />:</td>
				<td class="hd-info" nowrap="nowrap"><s:property
					value="#request.kbContent.inputName" /></td>
					<td width="50"></td>
				<td class="label" nowrap="nowrap"><img
					src="<%=request.getContextPath()%>/css/resources/images/default/s.gif"
					class="item-icon icon-cls" /><s:text name="kbinputinfo.createTime" />:</td>
				<td class="hd-info" nowrap="nowrap"><s:property
					value="#request.kbContent.createTime" /></td>
			</tr>
			<tr>
				<td class="label" nowrap="nowrap"><img
					src="<%=request.getContextPath()%>/css/resources/images/default/s.gif"
					class="item-icon icon-cls" /><s:text name="kbinputinfo.updateName" />:</td>
				<td class="hd-info" nowrap="nowrap"><s:property
					value="#request.kbContent.updateName" /></td>
					<td width="50"></td>
					<td class="label" nowrap="nowrap"><img
					src="<%=request.getContextPath()%>/css/resources/images/default/s.gif"
					class="item-icon icon-cls" /><s:text name="kbinputinfo.updateTime" />:</td>
				<td class="hd-info" nowrap="nowrap"><s:property
					value="#request.kbContent.updateTime" /></td>
			</tr>
			<tr>
				<td class="label" nowrap="nowrap"><img
					src="<%=request.getContextPath()%>/css/resources/images/default/s.gif"
					class="item-icon icon-cls" /><s:text name="kbinputinfo.kbCount" />:</td>
				<td class="hd-info" nowrap="nowrap"><s:property
					value="#request.kbContent.kbCount" /></td>
					<td width="50"></td>
				<td class="label" nowrap="nowrap"><img
					src="<%=request.getContextPath()%>/css/resources/images/default/s.gif"
					class="item-icon icon-cls" /><s:text name="kbinputinfo.kbViewCount" />:</td>
				<td class="hd-info" nowrap="nowrap"><s:property
					value="#request.kbContent.kbViewCount" /></td>
			</tr>
			<tr>
				<td class="label" nowrap="nowrap"><img
						src="<%=request.getContextPath()%>/css/resources/images/default/s.gif"
						class="item-icon icon-cls" /><s:text name="kbinputinfo.kbTypeName" />:</td>
				<td class="hd-info" nowrap="nowrap"><s:property
						value="#request.kbContent.kbTypeName" /></td>
				<td width="50"></td>
				<td class="label" nowrap="nowrap"><img
					src="<%=request.getContextPath()%>/css/resources/images/default/s.gif"
					class="item-icon icon-cls" /><s:text name="kbContent.dirName" />:</td>
				<td class="hd-info"  nowrap="nowrap"><s:property
					value="#request.kbContent.kbDirName" /></td>
			</tr>
			<tr><%//关联知识点 %>
				<td class="label" nowrap="nowrap"><img
					src="<%=request.getContextPath()%>/css/resources/images/default/s.gif"
					class="item-icon icon-cls" /><s:text name="kbContent.kbLinkCode" />:</td>
				<td class="hd-info" nowrap="nowrap">
				  <%String  kbLinkCode = (String)request.getAttribute("kbLinkCode");
				         if(!StringUtil.empty(kbLinkCode)){
				  %>
				  <a ext:kbName='<s:property value="#request.kbContent.kbName"/>' ext:kbPk='<s:property value="#request.kbContent.kbPk"/>' ext:kbLinkCodes='<s:property value="#request.kbContent.kbLinkPK"/>' href="#"> 查看关联知识点 </a>
				  <%}else { %>
					 无关联知识点
					 <% }%>
					</td>
				<td width="50"></td>
			</tr>
		</tbody>
	</table>
	
	<div class="description">
	<h2><img
		src="<%=request.getContextPath()%>/css/resources/images/default/s.gif"
		class="item-icon icon-cls" /><s:text name="kbinputinfo.keyWord" />：</h2>
	<pre > <s:property escape="false"
		value="#request.kbContent.keyWord" /></pre>
	</div>
	
	<div class="description">
	<h2><img
		src="<%=request.getContextPath()%>/css/resources/images/default/s.gif"
		class="item-icon icon-cls" /><s:text name="kbContent.kbContent" />：</h2>
	<pre > <s:property escape="false"
		value="#request.kbContent.kbContent" /></pre>
	</div>
	
	</div>
</s:i18n>
