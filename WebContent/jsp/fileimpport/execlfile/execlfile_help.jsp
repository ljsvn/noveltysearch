<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function downloadFile(fileType){
	window.location  = '<%=request.getContextPath() %>/execlfile/importinfo/download_help_info.ods?fileType='+fileType;
}
</script>
</head>
<body>
<h3 align="center">模版示例</h3>
<br/>
<div style="padding-left: 36px">
1:	<a href="javascript: downloadFile('addresslistImportId')"> 通讯录导入模板</a><br/>
</div>
</body>
</html>