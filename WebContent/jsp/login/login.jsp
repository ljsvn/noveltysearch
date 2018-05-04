<%@page import="com.ods.util.config.bean.xml.ProductsDataCache"%>
<%@page import="com.ods.util.resource.ResourceUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%

ProductsDataCache productsDataCache=ProductsDataCache.getInstance(); 
%>
<html>
<head>
	<meta http-equiv="Content-Type"	content="text/html; charset=utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="chrome=1">
	<title><%=productsDataCache.getWebTitle()%></title>  
	<%String local = request.getContextPath(); %>
    <link rel="icon" href="<%=local%>/image/company/favicon.ico" type="image/x-icon"/>
    <link rel="shortcut icon" href="<%=local%>/image/company/favicon.ico" type="image/x-icon"/>
    <jsp:include page="/jsp/common/extjs_scr.jsp"></jsp:include> 	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/desktop/css/desktop.css" />
	 
	<!-- 防止按键盘的Backspace键 -->
 	<script type="text/javascript">

	// For IE 
	var ua = navigator.userAgent.toLowerCase();  
	if (ua.indexOf("msie")>-1||ua.indexOf("chrome")>-1) { 
		document.onkeydown = check;
		function check(e) {
		    var code;
		    if (!e) var e = window.event;
		    if (e.keyCode) code = e.keyCode;
		    else if (e.which) code = e.which;
		
		if (((event.keyCode == 8) &&                                                    //BackSpace 
		         ((event.srcElement.type != "text" && 
		         event.srcElement.type != "textarea" && 
		         event.srcElement.type != "password") || 
		         event.srcElement.readOnly == true)) || 
		        ((event.ctrlKey) && ((event.keyCode == 78) || (event.keyCode == 82)) )   //CtrlN,CtrlR 
		        ) {                                                  
		        event.keyCode = 0; 
		        event.returnValue = false; 
		    }
		
		return true;
		} 
	 } if (ua.indexOf("firefox")>-1) {   // FireFox/Others 
	  document.onkeypress = function(e) { 
	    var type = e.target.type; 
	    var code = e.keyCode; 
	    if ((code != 8 & code != 13) || 
	        (type == 'text' & code != 13 ) || 
	        (type == 'textarea') || 
	        (type == 'submit' & code == 13)) { 
	        return true ;
	    } else { 
	       // alert('你真的想放弃现在正在编辑的内容吗？再想想！'); 
	        return false ;
	    } 
	  } 
	} 
	
	</script>
	

</head>
<body style="overflow:scroll;overflow-y:hidden;overflow-x:hidden">
<script type="text/javascript">
/*输入用户名,密码的文本框*/

Ext .onReady(function()
  {
  var win = new Ext.Window(
    {
    title: "系统提示：请输入您的账号和密码，点击登录！", width: 665, height: 430, layout: 'border', closable: false, items: [
      {
      frame: true, region: 'center', xtype: 'ods.formpanel', labelAlign: 'right', bodyStyle: 'padding-top:10px', url: 'main/login.ods', 
      successAfter: function(f, a)
        {
        if (a && a.result)
          {
        	 var param = f.getValues(); delete_cookie('userid', '', '');
        	 set_cookie('userid', param['userLoginName'], 30); 
             window.location = 'main/frame.ods';
          }
        }
      , items: [
        {
        allowBlank: false
        , name: 'userLoginName'
        , anchor: '90%'
        , xtype: 'textfield'
        , fieldLabel: '用&nbsp;&nbsp;户&nbsp;&nbsp;名'
        , maxLength: 14
        , minLength: 3
        , value: get_cookie('userid')
       	,listeners :{
	  		'render' : function(c) {
			c.focus(true, 1200);
			}
        	,specialkey: function (value, e) { 
			   	if (e.getKey() == Ext.EventObject.ENTER) {
		   		var form = this.findParentByType('ods.formpanel');
		   		var password = form.getForm().findField('userPassword');
		   		password.focus(true, true);
			} 
			}
		}
        }
      ,
        {
        height: 6
        }
      ,
        {
        allowBlank: false
        , name: 'userPassword'
        , anchor: '90%'
        , xtype: 'textfield', fieldLabel: '密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码'
        , inputType: 'password'
        , maxLength: 14
       
        }
      ], xbuttons: [
        {
        text: '登&nbsp;&nbsp;录', xbutton: 'this.submitXForm'
        }
      ]
      }
    ,
      {
      region: 'north', xtype: 'panel', height: 280, baseCls: 'x-plain', bodyStyle: 'background:#f9f9f9 url(image/logo.png) no-repeat center center;'
      }
    ]
    }
  );
  win.show();
  });
</script>
</body>
</html>
