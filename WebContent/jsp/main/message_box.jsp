<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type='text/javascript' src='<%=request.getContextPath()%>/dwr/interface/mesgRecive.js'></script>
<script type="text/javascript"> 
window.onload = function() {
	  dwr.engine.setActiveReverseAjax(true);
}
function showMessageJustInTime(messageInfoJson) {
	document.getElementById("mesgContentId").innerHTML=messageInfoJson;
}
</script>
<div width="100" height="200"  style=" background:#ddd; height:100px; position:absolute; bottom:10px; right:3px; width:100px;" id="mesgContentId">这是及时消息显示内容</div>
<script type="text/javascript">
Ext.onReady(function() {

var mk = new Ext.LoadMask('show', {
msg: '正在更新数据，请稍候!',
removeMask: true //完成后移除
});
mk.show();

    });
</script>
<title></title>
<div id="show" style="border:1pt solid #cccccc;margin:100px auto;width:300px;height:180px;"></div>
