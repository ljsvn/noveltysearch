/**
*copyright(C)2012
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.base.action.system.bulletin;

import org.directwebremoting.Browser;
import org.directwebremoting.ScriptSessions;
 

/**
 *<b>系统名称:</b><b>
 *武警遵义支队按纲建队系统
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 *<b>文件名:</b><br>
 *
 *DwrMessageSend.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *DwrMessageSend类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *DwrMessageSend类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *dwr消息发送实现类<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2012-1-17,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :10325431@qq.com
 *@since  :2012-1-17
 *@version:1.0
 */
public class DwrMessageSend {
    /**
     *属性名：SEND_JS_METHOD、类型：String、作成日：2009-10-17.<br>
     *含义：页面js方法
     */
    private static final String SEND_JS_METHOD = "showMessageJustInTime";

    public static void sendMsg(final String messageInfoJson) {
        Browser.withAllSessions(new Runnable() {
            public void run() {
                System.out.println("┣▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇═—");
                System.out.println("开始进行消息发送="+messageInfoJson);
                System.out.println("∝╬══→∝╬══→∝╬══→∝╬══→∝╬══→∝╬══→∝╬══→");
                ScriptSessions.addFunctionCall(SEND_JS_METHOD,messageInfoJson); 
            }
        });
    } 
}
