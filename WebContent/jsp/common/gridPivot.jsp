<%--
    创建时间  :2009-8-8 上午11:50:47
    创建者    : qq911110yufei@gmail.com
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.File"%>
<%@ page import="java.lang.reflect.Field"%>
<%@ page import="java.lang.reflect.Method"%>
<%@ page import="com.ods.util.hibernate.query.QueryResult"%>
<%@ page import="com.ods.util.log.LogUtil"%>
<%@ page import="com.ods.util.type.StringUtil"%>
<%
	String[] fieldList = (String[]) request.getAttribute("fields");
	QueryResult qr = (QueryResult) request.getAttribute("qr");
	String result = "";
	StringBuilder builder = new StringBuilder(); 
	builder.append("{rows:[");
	String flag = "";
	int idValue=1;
	if(qr.size()==0){
	    builder.append(flag).append("{}");
	}
	for (int i = 0; qr != null && i < qr.size(); i++) {
		builder.append(flag).append("{");
		builder.append("id:").append(idValue).append(",");
		idValue++;
		Object obj = qr.get(i);
		String item = "";
		for (int arrayIndex = 0; fieldList != null
				&& arrayIndex < fieldList.length; arrayIndex++) {
			try {
				Field field = obj.getClass().getDeclaredField(
						fieldList[arrayIndex]);
				if (field != null) {
					builder.append(item).append(fieldList[arrayIndex])
							.append(":");
					String methodName = new StringBuilder("get")
							.append(
									StringUtil
											.upperFirst(fieldList[arrayIndex]))
							.toString();
					Method method = obj.getClass()
							.getMethod(methodName);
					String value = String.valueOf(method.invoke(obj,
							new Object[] {}));
					if (StringUtil.empty(value)
							|| StringUtil.equals("null", value
									.toLowerCase())) {
						value = "";
					}
					value = value.replaceAll(File.separator + "r", "");
					value = value.replaceAll(File.separator + "r"
							+ File.separator + "n", "");
					value = value.replaceAll(File.separator + "n", "");
					builder.append("'").append(value).append("'");
					item = ",";
				}
			} catch (Exception e) {
				LogUtil.writeLog(e);
			}
		}
		builder.append("}");
		flag = ",";
	}
	builder.append("]");
	builder.append("}");
%><%=builder.toString()%>
