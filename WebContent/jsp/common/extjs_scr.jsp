<%--
    功能		:
    创建时间	: 2010-8-14 下午03:11:35
    创建者		: cui_wenke 
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<% String local = request.getContextPath(); %> 
	<link rel="icon" href="<%=local%>/image/company/favicon.ico" type="image/x-icon"/>
	<link rel="shortcut icon" href="<%=local%>/image/company/favicon.ico" type="image/x-icon"/>
	<link rel="stylesheet" type="text/css" href="<%=local%>/css/menucss.css" />
	<link rel="stylesheet" type="text/css" href="<%=local%>/css/system.css" />
	<link rel="stylesheet" type="text/css" href="<%=local%>/ext-3.4.2/resources/css/ext-all.css" /> 
    <link rel="stylesheet" type="text/css" href="<%=local%>/ext-3.4.2/examples/ux/css/ColumnHeaderGroup.css" />
    <link rel="stylesheet" type="text/css" href="<%=local%>/css/extend-ext.css" />
	<link rel="stylesheet" type="text/css" href="<%=local%>/css/resources/Portal.css" />
	<script type="text/javascript" src="<%=local%>/ext-3.4.2/adapter/ext/ext-base.js"></script>
	<script type="text/javascript" src="<%=local%>/ext-3.4.2/ext-all.js"></script>
	 <!-- 编辑行 -->
    <link rel="stylesheet" type="text/css" href="<%=local%>/ext-3.4.2/examples/ux/css/RowEditor.css" />
	
	<script type="text/javascript" src="<%=local%>/extjs/plugin/drawer.js"></script>
	<script type="text/javascript" src="<%=local%>/extjs/plugin/TabCloseMenu.js"></script>
	<script type="text/javascript" src="<%=local%>/extjs/plugin/slidingpager.js"></script>
	<script type="text/javascript" src="<%=local%>/extjs/plugin/progressbarpager.js"></script>
	<script type="text/javascript" src="<%=local%>/extjs/plugin/Ext.ux.Plugin.RemoteComponent.js"></script>
	
    <!-- 表单 -->
	<script type="text/javascript" src="<%=local%>/extjs/ux/form.js"></script>
   
    <script type="text/javascript" src="<%=local%>/extjs/ux/RowEditor.js"></script>
    <!-- 列表 -->
	<script type="text/javascript" src="<%=local%>/extjs/ux/grid.js"></script>
    <!-- 月份控件 -->
    <script type="text/javascript" src="<%=local%>/extjs/ux/MonthField.js"></script>
    <!-- 日期控件 -->
	<script type="text/javascript" src="<%=local%>/extjs/ux/DateTime.js"></script>
    <!-- 时间控件 -->
	<script type="text/javascript" src="<%=local%>/extjs/ux/xdatefield.js"></script>
    <!-- 查询树 -->
	<script type="text/javascript" src="<%=local%>/extjs/ux/filterTree.js"></script>
    <!-- 双栏多选 -->
	<script type="text/javascript" src="<%=local%>/extjs/ux/Multiselect.js"></script>
	<script type="text/javascript" src="<%=local%>/extjs/ux/ItemSelector.js"></script>
    <!-- 文件上传 -->
	<script type="text/javascript" src="<%=local%>/extjs/ux/FileUploadField.js"></script>
    <!-- 下拉树 -->
	<script type="text/javascript" src="<%=local%>/extjs/ux/treeCombo.js"></script>
	<script type="text/javascript" src="<%=local%>/extjs/ux/messagebox.js"></script>
	<script type="text/javascript" src="<%=local%>/extjs/ux/remoteValid.js"></script>
	<script type="text/javascript" src="<%=local%>/extjs/ux/colorpicker.js"></script>
	<script type="text/javascript" src="<%=local%>/extjs/ux/explorerview.js"></script>
	<script type="text/javascript" src="<%=local%>/extjs/ux/colorpickerfield.js"></script>
	<script type="text/javascript" src="<%=local%>/extjs/ux/Portal.js"></script>
	<script type="text/javascript" src="<%=local%>/extjs/ux/PortalColumn.js"></script>
	<script type="text/javascript" src="<%=local%>/extjs/ux/Portlet.js"></script>
	<script type="text/javascript" src="<%=local%>/extjs/ux/ImageView.js"></script>

	<script type="text/javascript" src="<%=local%>/extjs/ux/clock.js"></script>
	<script type="text/javascript" src="<%=local%>/extjs/ux/vtype.js"></script>
	<script type="text/javascript" src="<%=local%>/extjs/ux/cookies.js"></script>
	<script type="text/javascript" src="<%=local%>/extjs/ux/progress.js"></script>
	<script type="text/javascript" src="<%=local%>/extjs/ux/override.js"></script>
	
	<!-- <script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/ux/ColumnHeaderGroup.js"></script> -->
    <!-- Calendar-specific includes -->
	<!-- <link rel="stylesheet" type="text/css" href="<%=local%>/ext-3.4.2/examples/calendar/resources/css/calendar.css" />
    <script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/calendar/src/Ext.calendar.js"></script>
    <script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/calendar/src/templates/BoxLayoutTemplate.js"></script>
    <script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/calendar/src/templates/MonthViewTemplate.js"></script>
    <script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/calendar/src/dd/CalendarScrollManager.js"></script>
    <script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/calendar/src/dd/StatusProxy.js"></script>
    <script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/calendar/src/dd/CalendarDD.js"></script>
    <script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/calendar/src/dd/DayViewDD.js"></script>
    <script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/calendar/src/EventRecord.js"></script>
	<script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/calendar/src/views/MonthDayDetailView.js"></script>
    <script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/calendar/src/widgets/CalendarPicker.js"></script>
    <script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/calendar/src/WeekEventRenderer.js"></script>
    <script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/calendar/src/views/CalendarView.js"></script>
    <script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/calendar/src/views/MonthView.js"></script>
    <script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/calendar/src/views/DayHeaderView.js"></script>
    <script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/calendar/src/views/DayBodyView.js"></script>
    <script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/calendar/src/views/DayView.js"></script>
    <script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/calendar/src/views/WeekView.js"></script>
    <script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/calendar/src/widgets/DateRangeField.js"></script>
    <script type="text/javascript" src="<%=local%>/ext-3.4.2/examples/calendar/src/widgets/ReminderField.js"></script>-->
    <script type="text/javascript" src="<%=local%>/extjs/ux/CalendarPanel.js"></script>
    <script type="text/javascript" src="<%=local%>/extjs/ux/StarHtmleditor.js"></script>
	
	<!-- 功能菜单 -->
 	
 	<script type='text/javascript' src='<%=local%>/extjs/listeners/listeners.js' charset="UTF-8"></script>
	<script type="text/javascript" src="<%=local%>/extjs/locale/ext-lang-zh_CN.js" charset="UTF-8"></script>
	<script type="text/javascript" src="<%=local%>/extjs/locale/ods-ux-lang-zh_CN.js"  charset="UTF-8"></script>
	<!-- 导入DWR包 -->
	<script type='text/javascript' src='<%=local%>/dwr/util.js'></script>
	<script type='text/javascript' src='<%=local%>/dwr/engine.js'></script>
	
    <!-- 
    <script type='text/javascript' src='<%=request.getContextPath()%>/dwr/interface/userMsgCountDwr.js'></script>
	 -->
	<script type="text/javascript">Ext.BLANK_IMAGE_URL="<%=local%>/extjs/sgif/s.gif";</script>
	<script type="text/javascript">Ext.QuickTips.init();</script>
	
 