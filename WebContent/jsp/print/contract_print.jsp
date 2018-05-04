<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.ods.util.hibernate.query.QueryResult"%>
<%@ page import="com.ods.data.bo.contract.Contract"%>
<%@ page import="com.ods.util.hibernate.SpringHibernate" %>
<%@ page import="com.ods.util.spring.SpringBeanFactory" %>

<%
   SpringHibernate springHibernate = (SpringHibernate) SpringBeanFactory.getBean("DAOProxy");
   String contractPk = request.getParameter("contractPk");
   Contract c = 
		   (Contract) springHibernate.selectByPk("contractPk",contractPk, Contract.class);  

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title></title>
<script language="javascript" src="LodopFuncs.js"></script>
    <style>
.header {
    width: 300px;
    height:50px;
    margin:0 auto;
}
    </style>
</head>
<body>
<div class="header">
<a href="javascript:prn1_preview()" style="text-decoration:none;"><input name="print" type="button" value="  打 印  " /></a>
<input name="print" type="button" value="  关 闭  "  onclick="window.close();"/>
</div>
		<h2>
			<font color="#009999">科 技 查 新 合 同</font>
		</h2>
		<form id="form1">
		
		</form>
		<br>
		<script language="javascript" type="text/javascript">
					var LODOP; //声明为全局变量 
					function prn1_preview() {
						CreateOneFormPage();
						window.close();
						LODOP.PREVIEW();

					};
					function prn1_print() {
						CreateOneFormPage();
						LODOP.PRINT();
					};
					function prn1_printA() {
						CreateOneFormPage();
						LODOP.PRINTA();
					};
					function CreateOneFormPage() {
						LODOP = getLodop();
						LODOP.PRINT_INIT("陕西国际联机信息检索中心");
						LODOP.SET_PRINT_STYLE("FontSize", 18);
						LODOP.SET_PRINT_STYLE("Bold", 1);
						LODOP
								.ADD_PRINT_TEXT(50, 200, 460, 39,
										"科 技 查 新 合 同");
						LODOP.ADD_PRINT_HTM(90,38,677,330, document
								.getElementById("form1").innerHTML);
					};
					
					
					function PreviewMytable(){
						LODOP=getLodop();  
						LODOP.PRINT_INITA(10,10,754,453,"打印控件功能演示_Lodop功能_多页文档");
						LODOP.ADD_PRINT_TEXT(21,300,151,30,"自动居中的标题\n");
						LODOP.SET_PRINT_STYLEA(0,"FontSize",15);
						LODOP.SET_PRINT_STYLEA(0,"ItemType",1);
						LODOP.SET_PRINT_STYLEA(0,"Horient",2);
						LODOP.ADD_PRINT_TEXT(63,38,677,330,document.getElementById("doc1").value);
						LODOP.SET_PRINT_STYLEA(0,"FontSize",15);
						LODOP.SET_PRINT_STYLEA(0,"ItemType",4);
						LODOP.SET_PRINT_STYLEA(0,"Horient",3);
						LODOP.SET_PRINT_STYLEA(0,"Vorient",3);
						LODOP.SET_PRINT_STYLEA(0,"TextNeatRow",document.getElementById("check0").checked);
						LODOP.ADD_PRINT_LINE(53,23,52,725,0,1);
						LODOP.SET_PRINT_STYLEA(0,"ItemType",1);
						LODOP.SET_PRINT_STYLEA(0,"Horient",3);
						LODOP.ADD_PRINT_LINE(414,23,413,725,0,1);
						LODOP.SET_PRINT_STYLEA(0,"ItemType",1);
						LODOP.SET_PRINT_STYLEA(0,"Horient",3);
						LODOP.SET_PRINT_STYLEA(0,"Vorient",1);
						LODOP.ADD_PRINT_TEXT(421,37,144,22,"左下脚的文本小标题");
						LODOP.SET_PRINT_STYLEA(0,"ItemType",1);
						LODOP.SET_PRINT_STYLEA(0,"Vorient",1);
						LODOP.ADD_PRINT_TEXT(421,542,165,22,"右下脚的页号：第#页/共&页");
						LODOP.SET_PRINT_STYLEA(0,"ItemType",2);
						LODOP.SET_PRINT_STYLEA(0,"Horient",1);
						LODOP.SET_PRINT_STYLEA(0,"Vorient",1);
					};
				</script>
</body>
</html>

