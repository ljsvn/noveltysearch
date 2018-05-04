/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.dwr;

import com.ods.util.log.LogUtil;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * IndexBottomMsgDwr.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * IndexBottomMsgDwr类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * IndexBottomMsgDwr类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 页面下端消息提醒<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-2-23, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-2-23
 * @version:1.0
 */
public class IndexBottomMsgDwr extends DwrCommon {

    public String getIndexBottomMsg() {
        StringBuffer sb = new StringBuffer();
        try {
//            QueryCondition qc = new QueryCondition(getRequest(),false);
//            if(UserContext.getUserContext(getRequest())!=null){
//                qc.equals("userPk", UserContext.getUserContext(getRequest()).getUser().getUserPk());
//                qc.orderAsc("msgType");
//                QueryResult qr = getSpringHibernate().select(qc, UserMsgCountView.class); 
//                Map<Integer, String> msgTypeMap = getMsgTypeMap();
//                sb.append("<marquee direction='left' scrollamount='2' onmouseover='stop()' onmouseout='start()'>您有:");
//                for(Integer integer : msgTypeMap.keySet()) {
//                    UserMsgCountView countView = null;
//                    for(Object object : qr) {
//                        if(integer == ((UserMsgCountView) object).getMsgType()) {
//                            countView = (UserMsgCountView) object;
//                            break;
//                        }
//                    }
//                    if(null != countView) {
//                        sb.append("<a href='javaScript:onClickBottomLink(");
//                        sb.append(countView.getMsgType());
//                        sb.append(");'><font color='red'>");
//                        sb.append(countView.getMsgCount());
//                        sb.append("项</font>");
//                        sb.append(msgTypeMap.get(countView.getMsgType()));
//                        sb.append("</a>");
//                    } else {
//                        sb.append("0项").append(msgTypeMap.get(integer));
//                    }
//                    sb.append("&nbsp;&nbsp;");
//                }
//                sb.append("</marquee>");
//            }
            
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            sb = new StringBuffer();
        }
        return sb.toString();
    }

//    private Map<Integer, String> getMsgTypeMap() {
//        Map<Integer, String> msgTypeMap = new HashMap<Integer, String>();
//        msgTypeMap.put(1, "待看公文"); 
//        return msgTypeMap;
//    }
}
