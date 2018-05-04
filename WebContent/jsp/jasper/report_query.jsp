<%--
    功能            :
    创建时间  :2011-1-12 下午01:57:24
    创建者        : 10325431@qq.com 
    Ods版权所有
--%> 
<%@page import="com.ods.base.bo.system.user.bo.User"%>
<%@page import="com.ods.util.UserContext"%>
<%@page import="com.ods.util.jasper.bo.xml.ReportDataCache"%>
<%@page import="com.ods.util.jasper.util.JasperConfigData"%>
<%@page import="com.ods.util.jasper.util.JasperUtil"%>
<%@page import="java.lang.reflect.Method"%>
<%@page import="com.ods.util.web.html.BaseHtmlOption"%>
<%@page import="com.ods.util.type.StringUtil"%>
<%@page import="com.ods.util.jasper.bo.xml.Parameter"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script language="JavaScript" type="text/javascript" src="<%=request.getContextPath()%>/jsp/jasper/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
    function checkINputContent(checkContent,checkRegular,warnContent ){  
    	//var reg=new RegExp("/^\d+(\.\d{1,2})?$/","i"); 
    	//alert(reg.test(2));
    	//if (!reg.test(checkContent)){
    	//	alert(warnContent);
    	//}  
    }         
</script>
<%
    String reportId = request.getParameter("reportId");  
     String formElement=request.getParameter("formElement");
    //ReportDataCache reportDataCache = ReportDataCache.getInstance();
    List<Parameter> parameterList = JasperUtil.setParameterValue(formElement,reportId,"1");  
    if(parameterList.size()>0){ 
   boolean buttonShow=false;
   String type;
    for(Parameter parameter:parameterList){ 
        type=parameter.getType(); 
     if(StringUtil.equalsIgnoreCase(type,Parameter.TYPE_HIDDEN)){
       out.println("<input type='hidden' id='"+parameter.getName()+"'name='"+parameter.getName()+"' value='"+parameter.getValue()+"'/>");
     }else  if(StringUtil.equalsIgnoreCase(type,Parameter.TYPE_SESSION)){ 
       out.println("<input type='hidden' id='"+parameter.getName()+"'name='"+parameter.getName()+"' value='"+parameter.getValue()+"'/>");
     }
     
     else  if(StringUtil.equalsIgnoreCase(type,Parameter.TYPE_BR)){
         out.println("</br>");
         out.println("</br>");
     }else  if(StringUtil.equalsIgnoreCase(type,Parameter.TYPE_TEXT)){
         if(StringUtil.equals(parameter.getShowName(),"-")){
             out.println("&nbsp;"+parameter.getShowName());
         }else{
             out.println("&nbsp;"+parameter.getShowName()+":");
         }  
         if(!StringUtil.empty(parameter.getCheckRegular())){
             out.println("<input type='text' id='"+parameter.getName()+"' name='"+parameter.getName()+"' value='"+parameter.getValue()
             +"' onblur=javascript:checkINputContent('"+parameter.getValue()+"','"+parameter.getCheckRegular()+"','"+parameter.getWarnContent()+"')  size=12/>&nbsp;&nbsp;");
             }else{
             out.println("<input type='text' id='"+parameter.getName()+"' name='"+parameter.getName()+"' value='"+parameter.getValue()+"' size=12/>&nbsp;&nbsp;");
           }
           buttonShow=true;
     }else  if(StringUtil.equalsIgnoreCase(type,Parameter.TYPE_TIME)){
         if(StringUtil.equals(parameter.getShowName(),"-")){
             out.println("&nbsp;"+parameter.getShowName());
         }else{
             out.println("&nbsp;"+parameter.getShowName()+":");
         }
        if(StringUtil.equalsIgnoreCase(parameter.getTimeFormat(),"yyyy-MM")){
            out.println("<input  type='text' id='"+parameter.getName()+"' name='"+parameter.getName()+"' value='"+parameter.getValue()+"' size=12 onfocus=\"WdatePicker({skin:'blue',el:'"+parameter.getName()+"',dateFmt:'"+parameter.getTimeFormat()+"'})\"/>&nbsp;&nbsp;");  
        } else if(StringUtil.equalsIgnoreCase(parameter.getTimeFormat(),"yyyy")){
            out.println("<input  type='text' id='"+parameter.getName()+"' name='"+parameter.getName()+"' value='"+parameter.getValue()+"' size=12 onfocus=\"WdatePicker({skin:'whyGreen',el:'"+parameter.getName()+"',dateFmt:'"+parameter.getTimeFormat()+"'})\"/>&nbsp;&nbsp;");  
        } else{
            out.println("<input  type='text' id='"+parameter.getName()+"' name='"+parameter.getName()+"' value='"+parameter.getValue()+"' size=12 onfocus=\"WdatePicker({skin:'YcloudRed',el:'"+parameter.getName()+"',dateFmt:'"+parameter.getTimeFormat()+"'})\"/>&nbsp;&nbsp;");  
        }
         buttonShow=true;
     }else  if(StringUtil.equalsIgnoreCase(type,Parameter.TYPE_CHARACTER)){
         out.println("&nbsp;&nbsp;"+parameter.getValue()+"&nbsp;&nbsp;");
     }else  if(StringUtil.equalsIgnoreCase(type,Parameter.TYPE_SELECT)){
         out.println("&nbsp;"+parameter.getShowName()+":");
         out.println("<select  id='"+parameter.getName()+"'name='"+parameter.getName()+"'>"); 
         try {  
             Object object=Class.forName(parameter.getClassName()).newInstance(); 
             Method method = object.getClass().getMethod(parameter.getMethodNamePage());
             List<BaseHtmlOption> htmlOptionList=(List<BaseHtmlOption>)method.invoke(object, new Object[] {});
              for(BaseHtmlOption htmlOption:htmlOptionList){    
                     out.println("<option value='"+htmlOption.getValue()+"'");
                  if(StringUtil.equals(parameter.getValue(),htmlOption.getValue())){
                      out.println(" selected >"+htmlOption.getLabel()+"</option>");
                  } else{
                      out.println(">"+htmlOption.getLabel()+"</option>");
                  }
                  
              }
              buttonShow=true;
         } catch(Throwable e) {
             e.printStackTrace();
             parameter.setValue("");
         }
         out.println("</select>");
     }
    %>
     
     <%} if( buttonShow){%> 
     <input type="button" onClick='javascript:onClickTurnOfPage(1);' value="搜" style="FONT-WEIGHT: bold;font-family:宋体;font-size: 14px; repeat-x;border: solid 0px #ffffff;color: #007AB5;width:80px;height: 25px;background: url(<%= request.getContextPath() %>/image/search.gif) no-repeat;">
	 <%}  }%>
	 <br>
	 <br>
    <div style="width:1000;font-size:0px;">
    <img
			src='<%=request.getContextPath()%>/image/jasper/bu_separator.gif'
			height="1"
			width="1000"
		/>
    </div>

