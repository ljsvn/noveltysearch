
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<script> 
	var wInfoWin;
	var sURL='<%=request.getContextPath()%>/jsp/main/main_content.jsp'; 
	var win_info = "menubar=no,location=no,directories=no,toolbar=false,resizable=yes,scrollbars=yes";
	wInfoWin = window.open(sURL,"_self",win_info);
	wInfoWin.focus(); 
	</script>
