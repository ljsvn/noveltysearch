/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.scheduler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.ods.util.db.DBHelper;
import com.ods.util.db.DBIExecutePlsql;
import com.ods.util.guid.GuidGender;
import com.ods.util.hibernate.SpringHibernate;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.spring.SpringBeanFactory;
import com.ods.util.type.StringUtil;
import com.ods.util.type.TimeUtil;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * Scheduler5Minute.java<br>
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
 * Scheduler5Minute类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 每隔5分钟处理相关业务<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-3-2, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-3-2
 * @version:1.0
 */
public class Scheduler5Minute extends QuartzJobBean {

    /**
     * 每隔5分钟处理相关业务.<br>
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
        // 生产异常的处理abnormal
//        getProduceAbnormalInfo();
        System.out.println("***************Scheduler5Minute*******************");

    }

   

}
