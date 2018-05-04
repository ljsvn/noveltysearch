/**
 *copyright(C)2010
 *Ods信息技术软件有限公司& Service Corporation All rights reserved
 */
package com.ods.scheduler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator; 

import com.ods.base.action.system.bulletin.DwrMessageSend;
import com.ods.util.action.ActionView;
import com.ods.util.db.DBHelper;
import com.ods.util.guid.GuidGender;
import com.ods.util.hibernate.SpringHibernate;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.spring.SpringBeanFactory;
import com.ods.util.type.StringUtil;
import com.ods.util.type.TimeUtil;

/**
 *<b>系统名称:</b><b> 
*系统基本功能 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 *<b>文件名:</b><br>
 * 
 *SchedulerInsertMsg.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *SchedulerInsertMsg类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *SchedulerInsertMsg类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *Spring调度提醒<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2010-5-17, cause, 10325431@qq.com, 新建<br>
 * 
 *@author :10325431@qq.com
 *@since :2010-5-17
 *@version:1.0
 */
public class SchedulerRemindMsg extends ActionView {
    /**
     *属性名：serialVersionUID、类型：long、作成日：2010-7-30.<br>
     *含义：
     */
    private static final long serialVersionUID = 1L;

    /**
     * 根据配置文件把相关业务数据插入到消息发送数据库表中.<br>
     *工程名:odstv<br>
     *包名:com.ods.scheduler<br>
     *方法名:searchSendMsg方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2010-5-17
     */
    @SuppressWarnings("unchecked")
    public void searchSendMsg() {
        // 通过配置文件寻找需要发送的消息业务表
      //  Collection<ConfigFileJavaBean> configFileJavaBeans = MsgConfigFileCache.getInstance().getCacheMap().values();
      
        Connection conn = SpringBeanFactory.getConnection();
        Statement state = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        DwrMessageSend.sendMsg(TimeUtil.toString(TimeUtil.toString(Calendar.getInstance(), TimeUtil.theTimeFormat)));
        /**
         * select * from t_bulletin_send s where s.send_pk not in( select
         * content_pk from t_message_read m where m.config_id='bulletinInfoId')
         */
//        try {
//            for(ConfigFileJavaBean configFileJavaBean : configFileJavaBeans) {
//                StringBuilder querySql = new StringBuilder("select ");
//                // 首先把主键拼上
//                querySql.append(" s.").append(configFileJavaBean.getDbPk()).append(" content_pk,");
//                String[] fromComcolmuns = StringUtil.split(configFileJavaBean.getFromColmun(), ",");
//                String[] toColmuns = StringUtil.split(configFileJavaBean.getToColmun(), ",");
//                for(int i = 0; i < fromComcolmuns.length; i++) {
//                    querySql.append(" s.").append(fromComcolmuns[i]).append(" ").append(toColmuns[i]).append(",");
//                }
//                querySql.append("1 ");
//                // 查询的表
//                querySql.append("from ").append(configFileJavaBean.getDbtable()).append(" s ");
//                // 查询条件
//                querySql.append(" where s.").append(configFileJavaBean.getDbPk()).append(" not in (");
//                querySql.append("select content_pk from t_message_read m where m.config_id='");
//                querySql.append(configFileJavaBean.getId());
//                querySql.append("')");
//
//                // 进行联合查询，找到没有插入到阅读表中的数据
//
//                state = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
//
//                resultSet = state.executeQuery(querySql.toString());
//                // 其目的是获取本次查询是否有数据，如果没有就继续循环
//                resultSet.last(); // 移到最后一行
//                int rowCount = resultSet.getRow(); // 得到当前行号，也就是记录数
//                if(rowCount == 0) {
//                    continue;
//                } else {
//                    preparedStatement = conn.prepareStatement("insert into t_message_read values (?,?,?,?,?,?,?,?,?,?,?) ");
//                    resultSet.beforeFirst(); // 还要用到记录集，就把指针再移到初始化的位置
//                }
//                // 插入到t_message_read表中的主键
//                while (resultSet.next()) {
//                    //  
//                    preparedStatement.setBytes(1, new GuidGender(true).toString().getBytes());
//                    // 消息标题
//                    preparedStatement.setObject(2, resultSet.getString("message_title"));
//                    // 阅读人Pk
//                    preparedStatement.setObject(3, resultSet.getString("reader_pk"));
//                    // 消息内容Pk
//                    preparedStatement.setObject(4, resultSet.getString("content_pk"));
//                    // 消息内容的创建时间
//                    preparedStatement.setObject(5, resultSet.getString("content_create_time"));
//                    // 消息在配置文件Id
//                    preparedStatement.setObject(6, configFileJavaBean.getId());
//                    // 提醒时间
//                    preparedStatement.setObject(7, timeInstance(resultSet.getString("msg_show_time"), configFileJavaBean.getOldMsgShowTimeFormat()));
//                    // 是否已读 0:未读 1：已读
//                    preparedStatement.setObject(8, 0);
//                    // 是否删除 0:未删除 1：已删除
//                    preparedStatement.setObject(9, 0);
//                    // 发送人名
//                    preparedStatement.setObject(10, resultSet.getString("send_name"));
//
//                    // 创建时间
//                    preparedStatement.setObject(11, timeInstanceTwo());
//                    preparedStatement.addBatch();// 加入批处理
//                }
//
//                preparedStatement.executeBatch();
//                conn.commit();
//           }
            // //////////////////////////////////////////////////////////////////////////////////////////
            // 以下是即时消息的发送
//            QueryCondition qc = new QueryCondition(getRequest(),true);
//            qc.equals("showType", 0);
//            qc.lessEquals("msgShowTime", timeInstanceTwo());
//            qc.isNotNull("msgShowTime");
//            qc.notEquals("msgShowTime", "-1");
//            SpringHibernate springHibernate = (SpringHibernate) SpringBeanFactory.getBean("DAOProxy");
//            try {
//                MessageReverseAjaxTracker ajaxTracker = new MessageReverseAjaxTracker();
//                QueryResult qr = springHibernate.select(qc, MessageRead.class);
//                for(Iterator<MessageRead> iterator = qr.iterator(); iterator.hasNext();) {
//                    MessageRead messageRead = (MessageRead) iterator.next();
//                    messageRead.setMsgShowTime(TimeUtil.toString(messageRead.getMsgShowTime(), TimeUtil.otherTimeFormat, TimeUtil.theTimeFormat));
//                    ajaxTracker.sendAllMemberMessage(MessageUtil.messageFormat(messageRead));
//
//                }
//            } catch(Throwable e) {
//                e.printStackTrace();
//                LogUtil.writeLog(e);
//            }

//        } catch(Exception e) {
//            LogUtil.writeLog(e);
//        } finally {
//            DBHelper.closeResultSet(resultSet);
//            DBHelper.closeStatement(state);
//            DBHelper.closeConnection(conn);
//        }
    }
}
