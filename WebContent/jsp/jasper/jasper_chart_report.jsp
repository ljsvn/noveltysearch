<%--
    功能            :
    创建时间  :2011-1-12 下午01:22:20
    创建者        : 10325431@qq.com 
    Ods版权所有
--%>
<%@page import="com.ods.util.type.StringUtil"%>
<%@page import="com.ods.util.UserContext"%>
<%@page import="java.util.Map"%>
<%@page import="com.ods.util.jasper.bo.JasperShowBean"%>
<%@page import="com.ods.util.jasper.util.JasperUtil"%>
<%@page import="com.ods.util.type.NumberUtil"%>
<%@page import="com.ods.util.jasper.bo.xml.Parameter"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.ods.util.jasper.bo.xml.ReportDataCache"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%
   String reportId=(String)request.getParameter("reportId");
 String pageWith=(String)request.getParameter("pageWith"); 
 String pageHeight=(String)request.getParameter("pageHeight"); 
 String queryshow=(String)request.getParameter("queryshow"); 
 String formElementValue=(String)request.getParameter("formElementValue"); 
 //解决业务传参数的问题
Map<String,String[]> parameterMap= request.getParameterMap();
StringBuilder otherParamterHidden=new StringBuilder();
 if(StringUtil.empty(formElementValue)){
     formElementValue="";
 }
 for(Iterator<Map.Entry<String, String[]>> it = parameterMap
         .entrySet().iterator(); it.hasNext();) {
     Map.Entry<String, String[]> entry = (Map.Entry<String, String[]>) it
             .next();
     String condKey = entry.getKey();
     Object condValObject = entry.getValue();
     String  condVal="";
     if (condValObject instanceof String[]){
         String[] condVals = (String[])condValObject;
         if(condVals.length>0){
             condVal = condVals[0];
         } 
      }else{
          condVal = condValObject.toString();
      }
     if(StringUtil.equals("reportId", condKey)){
         continue; 
      }
     if(StringUtil.equals("pageWith", condKey)){
         continue; 
      } 
     if(StringUtil.equals("pageHeight", condKey)){
         continue; 
     }
     if(StringUtil.equals("queryshow", queryshow)){
         continue; 
     }
     if(StringUtil.equals("formElementValue", formElementValue)){
         continue; 
     }
     if(!StringUtil.empty(condVal)&&!StringUtil.equals("null",condVal)){
    	 formElementValue+=condKey+":"+condVal+",";
   }
    }
 String descFileName="";
 String parameterValue="reportId="+reportId+"&pageWith="+pageWith+"&pageHeight="+pageHeight+"&queryshow="+queryshow;
 try{
     String userPk=UserContext.getUserContext(request).getUser().getUserPk();
     descFileName=request.getContextPath()+JasperUtil.chartJasperFileMake(reportId,userPk, request,formElementValue)+"?"+Math.random(); 
 }catch(Throwable e){ 
 }
   
 %>
<style> 
.reporttr1{background-color:#FFFFFF;} 
.reporttr2{background-color:#F0FFF0;} 
</style> 
<!-- 导入DWR包 -->
	<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/util.js'></script>
	<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/engine.js'></script>
  <script type='text/javascript' src='<%=request.getContextPath()%>/dwr/interface/jasperContentDwr.js'></script> 
 <form target="_self"  id='jasperQuery' name="jasperQuery" method='post' action="<%=request.getContextPath()%>/jasper/index_page.ods?reportId=<%=reportId %>">
 <script type="text/javascript"> 
 function onClickSearch(){  
	 document.getElementById("loading").style.display="";
	   if (typeof window['DWRUtil'] == 'undefined') {
		    window.DWRUtil = dwr.util; 
		   }  
	   var formMap=DWRUtil.getValues("jasperQuery"); 
	   var formElement="";
	   for(var key in formMap){
		   formElement+=key+":"+formMap[key]+",";
		  // alert(key+":"+formMap[key]+",");
		   } 
 	 var objForm = document.getElementById("jasperQuery");
     objForm.action='<%=request.getContextPath()%>/jsp/jasper/jasper_chart_report.jsp?<%=parameterValue%>&formElementValue='+formElement; 
     objForm.submit();   
	}  
 <%//文件下载%>
 function downloadJapser( downloadType )
{ 
	 document.getElementById("loading").style.display="";
	   if (typeof window['DWRUtil'] == 'undefined') {
		    window.DWRUtil = dwr.util; 
		   }  
	   var formMap=DWRUtil.getValues("jasperQuery"); 
	   var formElement="";
	   for(var key in formMap){
		   formElement+=key+":"+formMap[key]+",";
		   } 
 	document.getElementById("loading").style.display="";
 	jasperContentDwr.downloadJapserFile('<%=request.getParameter("reportId")%>',downloadType,formElement,downloadJapserFileCallBack);  
 }
 downloadJapserFileCallBack=function(data){
 	document.getElementById("loading").style.display="none"; 
 	if(data==null||data==''){
 		return;
 	}
 	var objForm = document.getElementById("jasperQuery"); 
 	objForm.destFileName.value=data;
     objForm.action='<%=request.getContextPath()%>/jsp/jasper/report_download.jsp';
     objForm.submit();  
 }
 </script>
 <div style="height: 100%;left: 1px;">
 <div id="loading" style="width:100;height:100; position:absolute; top:45%; left:40%; z-index:10;display:none" >
    <img alt="正在进行数据交互，请稍候......." src="<%=request.getContextPath()%>/image/progressBar.gif" width="100" height="100"> 
</div>
<input type="hidden" name="reportId" value="<%=reportId%>" > 
 <%if(!StringUtil.equals(queryshow,"false")){
%>
     <div> 
		 <table  style="font-size: 15px;width: 100%">  
		 <tr>
		 <td height="10px" colspan="2">&nbsp;</td>
		 </tr>
	     <tr>
	     <td width="10px;">&nbsp;</td>
	     <td>
	       <%//查询页面 %>
		 <jsp:include page="report_chart_query.jsp">
		   <jsp:param name="reportId" value="<%=reportId %>" />
		 </jsp:include> 
	     </td>
	     </tr>
	     </table> 
    </div>
	 <br>
	   <% 
		 } 
    //文件下载
    %>
    <div  style="font-size: 15px">
     <table>
	     <tr>
	     <td width="10px;">&nbsp;</td>
	     <td>
	       <jsp:include page="report_download_chart_page.jsp"> 
             <jsp:param name="reportId" value="<%=reportId %>" />
          </jsp:include>
	     </td>
	     </tr>
	     </table> 
     </div>
	 <br>
	  <%//报表内容页面 %>
	  <div  style="background-color#000000;text-align:left;font-size: 15px;margin:0px; ">
	     <table id="reportContentTableId" background="#000000" style="text-align: left;" border="0" cellpadding="0" cellspacing="0" align="left">
	     <tr align="left">
	     <td width="20px">&nbsp;</td> 
	     <td id="jasperContentId" align="left" width="100%"> 
	     <iframe marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" style="margin:0 auto;left: 0px;" width="<%=pageWith %>" height="<%=pageHeight %>"  src="<%=descFileName%> "></iframe>
	     </td>
	     </tr>
	     </table> 
	  </div>   
     <div id="printContentId" style="display: none"></div>
   </div>
 </form>