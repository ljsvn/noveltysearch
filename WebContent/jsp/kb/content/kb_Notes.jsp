<%--
    功能            :资料库维护提示
    创建时间  :2009-9-2 
    创建者        : jiangwenqi 
    Ods版权所有
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
  <div>
	    <div class="col-last" >
	        <div class="res-block">
	            <div class="res-block-inner">
	                <h3><font color="red">注意事项：</font></h3>
	                <ul>
	                	<li>优化过程中可以继续使用搜索功能,但不能在<font color="red">优化时</font>增删改索引文件</li>
	                    <li>如果长时间不优化索引，等到索引库很庞大之后优化的时间就会更长，需要的空间和内存更多。</li>
	                    <li>建立数据库为索引，<font color="red">会删除以前的索引文件</font>，重新创建新的索引</li>
	                </ul>
	            </div>
	        </div>
	        <div class="res-block">
	            <div class="res-block-inner">
	                <h3><font color="red">使用方法：</font></h3>
	                <ul>
	                    <li><font color="red">优化索引:</font>建议晚上2点到4点去执行</li>
	                    <li><font color="red">建立索引:</font>建议在批量导入知识点后使用,建立完毕后在优化索引</li>
	                    <li>不要<font color="red">频繁</font>使用索引优化或者建立索引功能，如果搜索速度正常，不建议使用索引优化。</li>	 
	                    <li>请在建立索引完毕后，紧接着对索引进行优化</li>	                  
	                </ul>
	            </div>
	        </div>
	    </div>
	    
	   
</div>
