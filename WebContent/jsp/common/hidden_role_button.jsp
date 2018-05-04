<%--
    功能            :用户不用显示的权限按钮
    创建时间  :2011-1-6 下午09:57:16
    创建者        : 10325431@qq.com 
    Ods版权所有
--%>
<%@page import="java.util.List"%>
<%@page import="com.ods.util.UserContext"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
   UserContext uc=UserContext.getUserContext(request);
   List<String> hiddenButtonList=uc.getHiddenButtonList();
 %>   
 <script type="text/javascript">
  <%
    for(int i=0;i<hiddenButtonList.size();i++){
   %>
   Ext.getCmp('<%=hiddenButtonList.get(i)%>').hide();
   <%
    }
  %>
</script>
