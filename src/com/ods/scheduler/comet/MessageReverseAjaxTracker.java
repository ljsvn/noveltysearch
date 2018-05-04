/**
 *copyright(C)2009
 *Ods信息技术软件有限公司& Service Corporation All rights reserved
 */
package com.ods.scheduler.comet;
  
 

import java.util.List;

import org.directwebremoting.Browser;
import org.directwebremoting.ScriptSessions; 


/**
 *<b>系统名称:</b><b> &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *信息发布</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *  
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>文件名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *MessageReverseAjaxTracker.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *MessageReverseAjaxTracker类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *MessageReverseAjaxTracker类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *使用dwr的全推形式进行信息发布<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2009-10-17, 99999, 10325431@qq.com, 新建<br>
 * 
 *@author :10325431@qq.com
 *@since :2009-10-17
 *@version:1.0
 */
public class MessageReverseAjaxTracker {

    /**
     *属性名：SEND_JS_METHOD、类型：String、作成日：2009-10-17.<br>
     *含义：页面js方法
     */
    private static final String SEND_JS_METHOD = "showMessageJustInTime";

    /**
     *属性名：SEND_JSP_NAME、类型：String、作成日：2009-10-18.<br>
     *含义：消息发送页面
     */
//    private static final String SEND_JSP_NAME = ServerContextFactory.get()
//            .getContextPath() + "/jsp/message/message_box.jsp";

    /**
     *构造函数
     */
    public MessageReverseAjaxTracker() {
       // new MessageRunnable().addListener(this);
    }

    /**
     * 
     *使用dwr进行信息全推的发送.<br>
     *工程名:odspspjetty<br>
     *包名:com.ods.comet<br>
     *方法名:sendMessage方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2009-10-18
     */
    public void sendAllMemberMessage(final String messageInfoJson) { 
        Browser.withAllSessions(new Runnable() {
            public void run() {
                ScriptSessions.addFunctionCall(SEND_JS_METHOD,messageInfoJson); 
            }
        });
    }
    /**
     * 
     *使用dwr进行信息全推的发送.<br>
     *工程名:odspspjetty<br>
     *包名:com.ods.comet<br>
     *方法名:sendMessage方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2009-10-18
     */
    public void sendAllMemberMessage(final List<String> contentList) { 
        Browser.withAllSessions(new Runnable() {
            public void run() {
                ScriptSessions.addFunctionCall(SEND_JS_METHOD,contentList); 
            }
        });
    }
}
