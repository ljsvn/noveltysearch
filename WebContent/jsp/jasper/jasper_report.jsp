<%--
    功能            :
    创建时间  :2011-1-12 下午01:22:20
    创建者        : 10325431@qq.com 
    Ods版权所有
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="com.ods.util.type.StringUtil"%>
<%@page import="com.ods.util.jasper.bo.xml.ReportDataCache"%>
<%@page import="com.ods.util.jasper.bo.JasperShowBean"%>
<%@page import="com.ods.util.jasper.util.JasperUtil"%>
<%@page import="com.ods.util.type.NumberUtil"%>
<%@page import="com.ods.util.jasper.bo.xml.Parameter"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%
   String reportId=(String)request.getParameter("reportId");
	 if(StringUtil.empty(reportId)){
		 return;
	 }
	 //解决业务传参数的问题
	 Map<String,String[]> parameterMap= request.getParameterMap();
	 StringBuilder otherParamterHidden=new StringBuilder();
	 String formElement="";
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
          if(!StringUtil.empty(condVal)&&!StringUtil.equals("null",condVal)){
        	  formElement+=condKey+":"+condVal+",";
              otherParamterHidden.append("<input type='hidden' name='").append(condKey).append("' value='").append(condVal).append("' >");
    	   }
         } 
	  if(formElement.length()>0){ 
		  formElement=formElement.substring(0,formElement.length()-1); 
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
 function onClickTurnOfPage(page_no){ 
	 document.getElementById("loading").style.display="";
	   if (typeof window['DWRUtil'] == 'undefined') {
		    window.DWRUtil = dwr.util; 
		   }  
	   var formMap=DWRUtil.getValues("jasperQuery"); 
	   var formElement="";
	   for(var key in formMap){
		   formElement+=key+":"+formMap[key]+",";
		   }  
	   jasperContentDwr.jasperHtmlBuilder('<%=reportId%>',page_no,formElement,jasperReportResult);  
	} 
	<%//回调方法%>
	var jasperReportResult=function(data){  
		document.getElementById("jasperContentId").innerHTML=data.showContent; 
	    document.getElementById("turnofPageId").innerHTML=data.turnOffPage;  
		 document.getElementById("loading").style.display="none";
	} 
	    <%//翻页%>
	   function onClickInputTurnOfPage(){  
			  var turnOfPageInputValue=document.getElementById("turnoffNumberId").value; 
			  if(turnOfPageInputValue&&turnOfPageInputValue!=0){
				  onClickTurnOfPage(turnOfPageInputValue);
				  }
			  
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
 <div style="height: 100%">
 <div id="loading" style="width:100;height:100; position:absolute; top:45%; left:40%; z-index:10;display:none" >
    <img alt="正在进行数据交互，请稍候......." src="<%=request.getContextPath()%>/image/progressBar.gif" width="100" height="100"> 
</div>
<input type="hidden" name="reportId" value="<%=reportId%>" > 
     <div> 
		 <table  style="font-size: 15px;width: 100%">
		 <tr>
		 <td height="10px" colspan="2">&nbsp;</td>
		 </tr>
	     <tr>
	     <td width="10px;">&nbsp;</td>
	     <td>
	       <%//查询页面 %> 
	       <%=otherParamterHidden.toString() %>
		 <jsp:include page="report_query.jsp">
		   <jsp:param name="reportId" value="<%=reportId %>" />
		   <jsp:param name="formElement" value="<%=formElement %>" />
		 </jsp:include> 
	     </td>
	     </tr>
	     </table> 
    </div>
	 <br>
	<%
    //文件下载
    %>
    <div  style="font-size: 15px">
     <table>
	     <tr>
	     <td width="10px;">&nbsp;</td>
	     <td>
	       <jsp:include page="report_download_page.jsp"> 
             <jsp:param name="reportId" value="<%=reportId %>" />
          </jsp:include>
	     </td>
	     </tr>
	     </table> 
     </div>
	 <br>
	 <%
	 JasperShowBean jasperShowBean=JasperUtil.jasperHtmlBuilder(request,reportId,String.valueOf(1),formElement); 
	   ReportDataCache reportDataCache = ReportDataCache.getInstance();
	   int detailColorStart=NumberUtil.toInt(reportDataCache.getJasperReportDetailColorStart(reportId),3);
	 %>
	  <%//报表内容页面 %>
	  <div  align="left" style="font-size: 15px;margin:0 auto;">
	     <table id="reportContentTableId">
	     <tr>
	     <td width="10px;">&nbsp;</td>
	     <td id="jasperContentId">
	      <%=jasperShowBean.getShowContent()%>
	     </td>
	     </tr>
	     </table> 
	  </div> 
	 
       <%//翻页 %>
      <div>
      <table>
	     <tr>
	     <td width="10px;">&nbsp;</td>
	     <td id="turnofPageId" style="font-size: 15px">
	      <%=jasperShowBean.getTurnOffPage() %>
	     </td>
	     </tr>
	     </table>  
      </div>  
   </div>
      </form> 

 <script type="text/javascript"> 
 
	   var trs=document.getElementById("jasperContentId").getElementsByTagName("tr");//获取tbid的table中所有tr的信息 
	 
	   for(var i=<%=detailColorStart%>;i<trs.length-1;i++) 
	   {  
		   if(i%2==0) 
	        trs[i].className="reporttr1"; 
	       else 
	        trs[i].className="reporttr2"; 
	   } 
	   </script>