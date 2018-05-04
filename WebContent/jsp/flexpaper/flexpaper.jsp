<%@page import="com.ods.util.web.WebContext"%>
<%@page import="java.io.File"%>
<%@page import="com.ods.util.type.FileUtil"%>
<%@page import="com.ods.util.type.StringUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	// 获取带路径名的swf文件
	String onlineReadFile = (String) request.getParameter("onlineReadFile");
	if (StringUtil.empty(onlineReadFile)) {
		onlineReadFile = (String) request.getAttribute("onlineReadFile");
	}
	
	if (StringUtil.empty(onlineReadFile)) {
		onlineReadFile = request.getContextPath()
				+ "/jsp/flexpaper/unOnlineRead.docx.swf";
	} else //在这里要把制定的文件拷贝到临时路径下进行显示阅读
	if(FileUtil.isFileExisted(onlineReadFile)){
		File srcFile=new File(onlineReadFile);
		String dstPath=WebContext.toHomeRootPath()+"temp"+File.separator;
		FileUtil.copy(srcFile,dstPath,srcFile.getName());
		onlineReadFile=request.getContextPath()+"/temp/"+srcFile.getName();
	} 

	String flexPaperViewer = request.getContextPath()
			+ "/jsp/flexpaper/FlexPaperViewer";
%>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/flexpaper/flexpaper_flash.js"></script>
<body>
<a id="viewerPlaceHolder"
	style="width:100%; height: 100%; display: block"></a>
 
<script type="text/javascript"> 
				var fp = new FlexPaperViewer(	
						 '<%=flexPaperViewer%>',
						 'viewerPlaceHolder', { config : {
						 SwfFile : '<%=onlineReadFile%>',
			Scale : 0.6,
			ZoomTransition : 'easeOut',
			ZoomTime : 0.5,
			ZoomInterval : 0.2,
			FitPageOnLoad : true,
			FitWidthOnLoad : true,
			FullScreenAsMaxWindow : false,
			ProgressiveLoading : false,
			MinZoomSize : 0.2,
			MaxZoomSize : 5,
			SearchMatchAll : true,
			InitViewMode : 'Portrait',
			ViewModeToolsVisible : true,
			ZoomToolsVisible : true,
			NavToolsVisible : true,
			CursorToolsVisible : true,
			SearchToolsVisible : true,
			localeChain : 'zn_CH'
		}
	});

	function onDocumentLoaded(totalPages) {
		$FlexPaper().searchText('');
	}
</script> 

</body>
