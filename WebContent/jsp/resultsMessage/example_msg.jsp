<%--
    功能            :操作结果信息页面
    创建时间  :2009-9-28 下午01:34:58
    创建者        : cui_wenke
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:i18n name="com.ods.rbac.action.user.UserAction">
{
	success:${successState}
	,msg:'${messageText}'
	,taskGUID:'${TaskGUID}'
	,errorContentList:'${errorContentList}'
	,sourceFileName:'${sourceFileName}'
	,descFileName:'${descFileName}'
	,inboundPk:'${inboundPk}'
	,name:'${name}'
	,code:'${code}'
	,number:'${number}'
	,remark1:'${remark1}'
	,remark2:'${remark2}'
}   
</s:i18n>