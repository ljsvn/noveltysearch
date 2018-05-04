/**
 *copyright(C)2010
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.scheduler;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.ods.util.log.LogUtil;

/**
 * <b>系统名称:</b><b> 特情刑嫌管理 </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * SchedulerMonth.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * SchedulerMonth类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * SchedulerMonth类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 每月进行的一次任务检查<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2010-12-13, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2010-12-13
 * @version:1.0
 */
public class SchedulerMonth extends QuartzJobBean {

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
        // 在每个月的最后一天，把下个月的考情记录先初始化进去考情表中，先默认是正常上班，如果有请假，考勤记录导入等进行相关的修改即可
        try {
          
        } catch(Throwable e) {
            LogUtil.writeLog(e);
        }

    }

    
}
