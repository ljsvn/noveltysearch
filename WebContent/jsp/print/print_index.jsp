<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<title>WEB打印控件LODOP的使用说明和样例目录</title>
</head>

<body>

<h2><b><font color="#009999">WEB打印控件Lodop(V6.x)使用说明及样例</font></b></h2>
<table cellpadding="0" cellspacing="0" border="0" width="569"><tr  valign="top" ><td align="right"  nowrap width="6"></td><td width="812"><table width="777" height="45"><tr><td style="vertical-align: top" width="747" height="18"><p><b><font color="#0000FF" face="黑体" size="3">Lodop</font></b>(标音:劳道谱,俗称:露肚皮)是专业WEB控件,用它既可裁剪输出页面内容，又可用程序代码直接实现</p></td></tr><tr><td  style="vertical-align: top" width="747" height="1"><p>复杂打印。控件功能强大,却简单易用,所有调用如同<font size="2">JavaScript</font>扩展语句,主要接口函数如下：</p></td></tr></table></td></tr></table><table cellpadding="0" cellspacing="0" border="0" width="550" height="202"><tr  valign="top" ><td align="right"  nowrap width="6" height="202"></td><td width="812" height="202"><table   width="775" height="174"><tr><td  style="vertical-align: top" width="13" height="1"><font color="#0000FF"><font size="1">●</font></font></td><td  style="vertical-align: top" width="752" height="1"><font color="#0000FF" size="2">PRINT_INIT(strPrintTaskName)打印初始化</font>
          </td></tr><tr><td  style="vertical-align: top" width="13" height="18"><font size="1" color="#0000FF">●</font></td><td  style="vertical-align: top" width="752" height="18"><font color="#0000FF" size="2">SET_PRINT_PAGESIZE(intOrient,intPageWidth,intPageHeight,strPageName)设定纸张大小</font>
          </td></tr><tr><td  style="vertical-align: top" width="13" height="18"><font color="#0000FF"><font size="1">●</font></font></td><td  style="vertical-align: top" width="752" height="18"><font color="#0000FF" size="2">ADD_PRINT_HTM(intTop,intLeft,intWidth,intHeight,strHtml)增加超文本项</font>
          </td></tr><tr><td  style="vertical-align: top" width="13" height="18"><font color="#0000FF"><font size="1">●</font></font></td><td  style="vertical-align: top" width="752" height="18"><font color="#0000FF" size="2">ADD_PRINT_TEXT(intTop,intLeft,intWidth,intHeight,strContent)增加纯文本项</font>
          </td></tr>
        <tr><td  style="vertical-align: top" width="13" height="18"><font color="#0000FF"><font size="1">●</font></font></td><td  style="vertical-align: top" width="752" height="18"><font color="#0000FF" size="2">ADD_PRINT_TABLE(intTop,intLeft,intWidth,intHeight,strHtml)增加表格项</font>
          </td></tr>
        <tr>
          <td  style="vertical-align: top" width="13" height="1"><font size="1" color="#0000FF">●</font></td><td  style="vertical-align: top" width="752" height="1">
          <font color="#0000FF" size="2">ADD_PRINT_SHAPE(intShapeType,intTop,intLeft,intWidth,intHeight,intLineStyle,intLineWidth,intColor)画图形</font>
          </td>
        </tr>
        <tr>
          <td  style="vertical-align: top" width="13" height="1"><font size="1" color="#0000FF">●</font></td><td  style="vertical-align: top" width="752" height="1">
          <font color="#0000FF" size="2">SET_PRINT_STYLE(strStyleName,                                          
          varStyleValue)设置对象风格</font>        
          </td>    
        </tr>    
        <tr>    
          <td  style="vertical-align: top" width="13" height="1"><font size="1" color="#0000FF">●</font></td><td  style="vertical-align: top" width="752" height="1"><font color="#0000FF" size="2">PREVIEW打印预览</font>    
          </td>    
        </tr>    
        <tr>    
          <td  style="vertical-align: top" width="13" height="1"><font size="1" color="#0000FF">●</font></td><td  style="vertical-align: top" width="752" height="1"><font color="#0000FF" size="2">PRINT直接打印</font>    
          </td>    
        </tr>    
        <tr>    
          <td  style="vertical-align: top" width="13" height="14"><font size="1" color="#0000FF">●</font></td><td  style="vertical-align: top" width="752" height="14"><font color="#0000FF" size="2">PRINT_SETUP打印维护</font>    
          </td>    
        </tr>    
        <tr>    
          <td  style="vertical-align: top" width="13" height="1"><font size="1" color="#0000FF">●</font></td><td  style="vertical-align: top" width="752" height="1"><font color="#0000FF" size="2">PRINT_DESIGN打印设计</font>    
          </td>    
        </tr>    
      </table></td></tr></table><table cellpadding="0" cellspacing="0" border="0" width="572"><tr  valign="top" ><td align="right"  nowrap width="6"></td><td width="812"><table   width="774" height="144"><tr><td  style="vertical-align: top" width="744" height="18"><p>可邮件<a href="mailto:gungho999@sina.com">gungho999@sina.com</a>索取技术手册或访问<a href="http://blog.sina.com.cn/s/blog_721e77e50100q45u.html" target="_blank">官博简明教程</a>了解更多详细资料。</p></td></tr>    
        <tr>    
          <td  style="vertical-align: top" width="744" height="18">最基本的打印过程至少有<b>初始化语句</b>、<b>添内容语句</b>和<b>打印语句</b>三部分组成，例如：</td>  
        </tr>  
        <tr>  
          <td  style="vertical-align: top; border: 1 dotted #0000FF" width="744" height="52">  
          <font color="#0000FF" size="2">  
          LODOP.PRINT_INIT(&quot;打印任务名&quot;);&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
          </font><font size="2">//首先一个初始化语句</font>
          <font color="#0000FF" size="2"><br>
            LODOP.ADD_PRINT_TEXT(0,0,100,20,&quot;文本内容一&quot;);</font><font size="2">//然后多个ADD语句及SET语句</font>
          <font color="#0000FF" size="2"><br>
            LODOP.PRINT();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          </font><font size="2">//最后一个打印(或预览、维护、设计)语句</font></td> 
        </tr> 
        <tr><td  style="vertical-align: top" width="744" height="18"><p>下面通过演示样例来理解，为容易看懂源代码，每个样例尽量简单，一个样例代</p></td></tr><tr><td  style="vertical-align: top" width="744" height="18">表一类或多类功能,在实际应用中它们都可以混合并存或交叉使用。</td></tr></table></td></tr></table><table cellpadding="0" cellspacing="0" border="0" width="572"><tr  valign="top" ><td align="right"  nowrap width="6"></td><td width="812"><table   width="681" height="571"><tr><td  width="667" colspan="2" height="18">  
            <p><b><font color="#009999" face="宋体" size="3">样例清单</font></b></p>  
                            </td></tr>  
        <tr>  
          <td  width="16" height="18">1.  
                            </td><td  style="vertical-align: top" width="651" height="18"><p >如何在页面内嵌入控件见<font color="#0000ff"><a href="<%=request.getContextPath()%>/jsp/print/PrintSample1.html" target="_blank">样例一</a></font>  
            </p></td>  
        </tr>  
        <tr>  
          <td  width="16" height="18">2.  
                            </td><td  style="vertical-align: top" width="651" height="18"><p >如何选材打印当前页面内容见<font color="#0000ff"><a href="<%=request.getContextPath()%>/jsp/print/PrintSample2.html" target="_blank">样例二</a></font>  
            </p></td>  
        </tr>  
        <tr>  
          <td  width="16" height="18">3.  
                            </td><td  style="vertical-align: top" width="651" height="18"><p >如何用代码生成打印页见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample3.html" target="_blank">样例三</a>  
            </p></td>  
        </tr>  
        <tr>  
          <td  width="16" height="18">4.  
                            </td><td  style="vertical-align: top" width="651" height="18"><p >如何打印设计和定位套打见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample4.html" target="_blank">样例四</a>  
            </p></td>  
        </tr>  
        <tr>  
          <td  width="16" height="18">5.  
                            </td><td  style="vertical-align: top" width="651" height="18">如何控制纸张大小和连续打印见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample5.html" target="_blank">样例五</a>  
          </td>  
        </tr>  
        <tr>  
          <td  width="16" height="18">6.  
                            </td><td  style="vertical-align: top" width="651" height="18">如何输出多页长文档及双面打印见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample6.html" target="_blank">样例六</a>  
          </td>  
        </tr>  
        <tr>  
          <td  width="16" height="18">7.  
                            </td><td  style="vertical-align: top" width="651" height="18">如何定向输出见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample7.html" target="_blank">样例七</a>  
          </td>  
        </tr>  
        <tr>  
          <td  width="16" height="18">8.  
                            </td><td  style="vertical-align: top" width="651" height="18">如何打印图片见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample8.html" target="_blank">样例八</a>  
          </td>  
        </tr>  
        <tr>  
          <td  width="16" height="18">9.  
                            </td><td  style="vertical-align: top" width="651" height="18">如何用程序加载打印维护背景图见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample9.html" target="_blank">样例九</a>  
          </td>  
        </tr>  
        <tr>  
          <td  width="16" height="18">10  
                            </td><td  style="vertical-align: top" width="651" height="18">如何控制打印样式(STYLE)见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample10.html" target="_blank">样例十</a>  
          </td>  
        </tr>  
        <tr>  
          <td  width="16" height="18">11  
                            </td><td  style="vertical-align: top" width="651" height="18">如何直接打印条形码见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample11.html" target="_blank">样例十一</a>  
          </td>  
        </tr>  
        <tr>  
          <td  width="16" height="18">12  
                            </td><td  style="vertical-align: top" width="651" height="18">如何读写本地文件(如写WORD文档)见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample12.html" target="_blank">样例十二</a>  
          </td>  
        </tr>  
        <tr>  
          <td  width="16" height="18">13  
                            </td><td  style="vertical-align: top" width="651" height="18">如何让页内部分内容旋转见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample13.html" target="_blank">样例十三</a>  
          </td>  
        </tr>  
        <tr>  
          <td  width="16" height="18">14  
                            </td><td  style="vertical-align: top" width="651" height="18">如何按URL打印见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample14.html" target="_blank">样例十四</a>  
          </td>  
        </tr>  
        <tr>  
          <td  width="16" height="18">15  
                            </td><td  style="vertical-align: top" width="651" height="18">如何打印表格的页头页尾见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample15.html" target="_blank">样例十五</a>  
          </td>  
        </tr>  
        <tr>  
          <td  width="16" height="18">16  
                            </td><td  style="vertical-align: top" width="651" height="18">如何设置预览窗口大小见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample16.html" target="_blank">样例十六</a>  
          </td>  
        </tr>  
        <tr>  
          <td  width="16" height="18">17  
                            </td><td  style="vertical-align: top" width="651" height="18">如何发打印机指令或直接读写端口见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample17.html" target="_blank">样例十七</a>  
          </td>  
        </tr>  
        <tr>  
          <td  width="16" height="18">18  
                            </td><td  style="vertical-align: top" width="651" height="18">如何打印幅面高度不固定的票据见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample18.html" target="_blank">样例十八</a>  
          </td>  
        </tr>  
        <tr>  
          <td  width="16" height="18">19  
                            </td><td  style="vertical-align: top" width="651" height="18">如何内嵌显示及预览时包含背景图见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample19.html" target="_blank">样例十九</a>  
          </td>  
        </tr>  
        <tr> 
          <td  width="16" height="18">20  
                            </td><td  style="vertical-align: top" width="651" height="18">如何强制分页并预览多页卡片见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample20.html" target="_blank">样例二十</a>  
          </td>  
        </tr> 
        <tr>  
          <td  width="16" height="18">  
                            21  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何控制打印维护的功能权限见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample21.html" target="_blank">样例二十一</a>  
          </td>  
        </tr>  
        <tr> 
          <td  width="16" height="18">  
                            22  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何构建自己的纯WEB打印预览见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample22.html" target="_blank">样例二十二</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            23  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何居中打印超文本见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample23.html" target="_blank">样例二十三</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="17">  
                            24  
                            </td><td  style="vertical-align: top" width="651" height="17">  
          如何选择界面皮肤见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample24.html" target="_blank">样例二十四</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="17">  
                            25  
                            </td><td  style="vertical-align: top" width="651" height="17">  
          如何指定输出到哪页或仅预览见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample25.html" target="_blank">样例二十五</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="17">  
                            26  
                            </td><td  style="vertical-align: top" width="651" height="17">  
          如何提高多页打印的性能见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample26.html" target="_blank">样例二十六</a>  
          </td>  
        </tr> 
        <tr>  
          <td  width="16" height="18">  
                            27  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何导出数据到Excel或图片文件见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample27.html" target="_blank">样例二十七</a>  
          </td>  
        </tr>  
        <tr>  
          <td  width="16" height="18">  
                            28  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何快速读取客户端系统信息见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample28.html" target="_blank">样例二十八</a>  
          </td>  
        </tr>  
        <tr> 
          <td  width="16" height="18">  
                            29  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何使用其它长度单位见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample29.html" target="_blank">样例二十九</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            30  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何分页输出页面内容见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample30.html" target="_blank">样例三十</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            31  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何打印表格的分页小计或合计见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample31.html" target="_blank">样例三十一</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            32  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何实现清晰的图表打印见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample32.html" target="_blank">样例三十二</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            33  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何实现甘特图等的图表打印见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample33.html" target="_blank">样例三十三</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            34  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何使用百分比%和满页打印见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample34.html" target="_blank">样例三十四</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            35  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何获得打印结果和程序代码见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample35.html" target="_blank">样例三十五</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            36  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何在设计过程中用js编辑内容见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample36.html" target="_blank">样例三十六</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            37  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何打印公章效果图见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample37.html" target="_blank">样例三十七</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            38  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何用BASE64编码输出图片见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample38.html" target="_blank">样例三十八</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            39  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何打印田字格、上划线等文本见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample39.html" target="_blank">样例三十九</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            40  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何进行数据格式转换见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample40.html" target="_blank">样例四十</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            41  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何把内容关联后按顺序打印见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample41.html" target="_blank">样例四十一</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            42  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何把整页内容缩放打印见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample42.html" target="_blank">样例四十二</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            43  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何分页打印综合表格见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample43.html" target="_blank">样例四十三</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            44  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何缩放打印单个超文本内容见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample44.html" target="_blank">样例四十四</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            45  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何获得打印状态及控制打印见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample45.html" target="_blank">样例四十五</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            46  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何设置右边距和下边距见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample46.html" target="_blank">样例四十六</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            47  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何嵌套打印LODOP自身见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample47.html" target="_blank">样例四十七</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            48  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何进行文字朗读见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample48.html" target="_blank">样例四十八</a>  
          </td>  
        </tr> 
        <tr> 
          <td  width="16" height="18">  
                            49  
                            </td><td  style="vertical-align: top" width="651" height="18">  
          如何让某些页整体旋转见<a href="<%=request.getContextPath()%>/jsp/print/PrintSample49.html" target="_blank">样例四十九</a>  
          </td>  
        </tr> 
      </table></td></tr></table>  
 
 
<p>　</p> 
<p>　</p> 
 
 
</body> 
 
</html> 
 
