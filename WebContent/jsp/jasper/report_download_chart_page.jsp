<%--
    功能            :
    创建时间  :2011-2-7 下午02:42:25
    创建者        : 10325431@qq.com 
    Ods版权所有
--%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<input name="destFileName" type="hidden" value=""/>
<table
	width="100%"
	class="report_action_line"
>
	<tr 
		align="center"
	>
		<td align='left'> 
		 <img
			src='<%=request.getContextPath()%>/image/jasper/bu_xls.gif'
			style='cursor: pointer;'
			width="16"
			height="16"
			alt='excel 2003文件下载'
            title="excel 2003文件下载"
			onClick="javascript:downloadJapser('xls');"
		/> <img
			src='<%=request.getContextPath()%>/image/jasper/bu_separator.gif'
			height="16"
		/> <img
			src='<%=request.getContextPath()%>/image/jasper/bu_xlsx.gif'
			style='cursor: pointer;'
			width="16"
			height="16"
			alt='excel 2007文件下载'
            title="excel 2007文件下载"
			onClick="javascript:downloadJapser('xlsx');"
		/> <img
			src='<%=request.getContextPath()%>/image/jasper/bu_separator.gif'
			height="16"
		/> <img
			src='<%=request.getContextPath()%>/image/jasper/bu_pdf.jpg'
			style='cursor: pointer;'
			width="16"
			height="16"
			alt='PDF文件下载'
            title="PDF文件下载"
			onClick="javascript:downloadJapser('pdf');"
		/></td>
	</tr>
</table>