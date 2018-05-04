/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.scheduler;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.ods.scheduler.comet.MessageReverseAjaxTracker;
import com.ods.util.db.DBHelper;
import com.ods.util.log.LogUtil;
import com.ods.util.spring.SpringBeanFactory;
import com.ods.util.type.TimeUtil;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * SchedulerKanban.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * SchedulerKanban类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * SchedulerKanban类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 系统看板数据广播<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-3-2, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-3-2
 * @version:1.0
 */
public class SchedulerKanban extends QuartzJobBean {

    /**
     * spring管理的定时任务方法.<br>
     * 工程名:12320<br>
     * 包名:com.ods.scheduler<br>
     * 方法名:executeInternal方法.<br>
     * 
     * {@inheritDoc} author :10325431@qq.com
     * 
     * @see org.springframework.scheduling.quartz.QuartzJobBean#executeInternal(org.quartz.JobExecutionContext)
     * @param arg0 任务执行上下文
     * @throws JobExecutionException 任务执行错误
     */
    @Override
    protected void executeInternal(JobExecutionContext arg0) throws JobExecutionException {
//        Calendar calendar = Calendar.getInstance();
//        String yearNo = TimeUtil.toString(calendar, "yyyy");
//        String monthNo = TimeUtil.toString(calendar, "MM");
//        Connection connection = null;
//        Statement statement = null;
//        ResultSet result = null;
//        try {
//            String sqlQuery = "select * from rpt_month_plan_all_produce_parts_view where yyyyMM='" + yearNo + "-" + monthNo+"'";
//            connection = SpringBeanFactory.getConnection();
//            statement = connection.createStatement();
//            result = statement.executeQuery(sqlQuery);
//            List<String> kanbanList = new ArrayList<String>();
//            String tdStart="";
//            String tdStart1 = "<td style=\"text-align: left; padding: .5em; border: 1px solid #fff; background: #cccccc;\">";
//            String tdStart2 = "<td style=\"text-align: left; padding: .5em; border: 1px solid #fff; background: #e5f1f4;\">";
//            String tdEnd = "</td>\r\t";
//            int i=0;
//            while (result.next()) {
//                if(i%2==0){
//                    tdStart=tdStart2;
//                } else{
//                    tdStart=tdStart1;
//                }
//                // 产品
//                String kanbanDetail =tdStart+result.getString("product_code")+tdEnd;
//                // 件号
//                kanbanDetail += tdStart+result.getString("part_code")+tdEnd;
//                // 单位件数
//                kanbanDetail += tdStart+result.getInt("production_unit_sum")+tdEnd;  
//                // 成品月预计结存
//                kanbanDetail += tdStart+result.getInt("product_store")+tdEnd;
//                // 在制月预计结存
//                kanbanDetail += tdStart+result.getInt("mading_store")+tdEnd;
//                //本月计划投入
//                kanbanDetail += tdStart+result.getInt("produce_input")+tdEnd;
//                //本月计划产出
//                kanbanDetail += tdStart+result.getInt("produce_output")+tdEnd;
//                //本月已入库成品数量
//                kanbanDetail += tdStart+result.getInt("produce_product_finished")+tdEnd;
//                //本月在制品数
//                kanbanDetail += tdStart+result.getInt("produce_product_wip")+tdEnd;
//                //本月次品数量
//                kanbanDetail += tdStart+result.getInt("defective_parts_number")+tdEnd;
//                //本月疑品数量
//                kanbanDetail += tdStart+result.getInt("suspect_parts_number")+tdEnd;
//                //本月废品数量
//                kanbanDetail += tdStart+result.getInt("produce_product_reject")+tdEnd;
//                // 生产工区
//                kanbanDetail += tdStart+result.getString("org_name_two")+tdEnd; 
//                // 开工时间
//                kanbanDetail += tdStart+result.getString("start_make_date")+tdEnd; 
//                // 完工时间
//                kanbanDetail += tdStart+result.getString("end_make_date")+tdEnd; 
//                
//                kanbanList.add(kanbanDetail);
//                i++;
//            }
//            //看板内容发送
//            if(kanbanList.size()>0){
//                MessageReverseAjaxTracker ajaxTracker = new MessageReverseAjaxTracker();
//                ajaxTracker.sendAllMemberMessage(kanbanList);
//            }
//           
//        } catch(Exception e) {
//            LogUtil.writeLog(e);
//            e.printStackTrace();
//        } finally {
//            DBHelper.closeResultSet(result);
//            DBHelper.closeStatement(statement);
//            DBHelper.closeConnection(connection);
//        } 
    }

}
