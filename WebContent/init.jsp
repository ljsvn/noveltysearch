<%--
    功能            :
    创建时间  : 2009-9-01 下午01:34:58
    创建者       : cui_wenke
    Ods版权所有
--%>
<%@page import="com.ods.util.license.LicenseKey"%>
<%@page import="com.ods.util.config.bean.xml.ProductsDataCache"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	LicenseKey licenseKey=new LicenseKey();
	%>
<style>
<!--
.contentChart{
 width: 200px;
 height: 24px;
 vertical-align: middle;
 text-align: right;
}
-->
</style>
<%
ProductsDataCache productsDataCache=ProductsDataCache.getInstance();
%>
<table width="100%" cellpadding="0" cellspacing="0" border="0" align="center"">
	<tr>
		<td colspan="10" align="center"><%="\""+productsDataCache.getWebTitle()+"\""%>初始化</td>
	</tr>
	<tr>
		<td width="200"  class="contentChart">系统特征码:</td>
		<td><%=licenseKey.getLicenseKey()%></td>
	</tr>
</table>

