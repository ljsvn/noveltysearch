/**
 *copyright(C)2010
 *Ods信息技术软件有限公司& Service Corporation All rights reserved
 */
package com.ods.scheduler;
 
import java.util.Calendar;
import java.util.List;
 

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.ods.util.config.bean.xml.Product;
import com.ods.util.config.bean.xml.ProductsDataCache;
import com.ods.util.db.DBIExecutePlsql;
import com.ods.util.log.LogUtil;
import com.ods.util.type.FileUtil;
import com.ods.util.type.StringUtil;
import com.ods.util.type.TimeUtil;
import com.ods.util.web.WebContext;

/**
 * <b>系统名称:</b><b>
 * 
 * odslicense</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>子系统名：</b><br>
 * 
 * 系统调度<br>
 * 
 * 
 * <b>文件名:</b><br>
 * Scheduler12320.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * Scheduler12320类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * Scheduler12320类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 每天晚上进行的调度<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2010-9-10, cause, puxiaolong, 新建<br>
 * 
 * @author :10325431@qq.com
 * @since :2010-9-10
 * @version:1.0
 */
public class SchedulerDay extends QuartzJobBean {

    /**
     * 每天深夜进行的任务调度.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.scheduler<br>
     * 方法名:executeInternal方法.<br>
     * 
     * {@inheritDoc} author :10325431@qq.com
     * 
     * @see org.springframework.scheduling.quartz.QuartzJobBean#executeInternal(org.quartz.JobExecutionContext)
     * @param arg0
     * @throws JobExecutionException
     */
    @Override
    protected void executeInternal(JobExecutionContext arg0) throws JobExecutionException {

        try {
            // 删除报表临时文件
            deleteReportTempFile();
            //删除上传的临时文件
            deleteUpLoadTempFile();
        } catch(Throwable e) {
            LogUtil.writeLog(e);
        }  

    } 

    // 删除上传的临时文件
    private void deleteUpLoadTempFile() {
        String applicationPath = WebContext.toHomeRootPath(); 
        // 删除上传的临时文件
        FileUtil.deleteDirectory(applicationPath + "/jsp/temp/", false); 
    }
    // 删除报表临时文件
    private void deleteReportTempFile() {
        String applicationPath = WebContext.toHomeRootPath();
        String applicationPathWebINF = WebContext.toHomeWEBINFPath();
        // 删除图形文件临时文件
        FileUtil.deleteDirectory(applicationPath + "/jsp/jasper/temp/", false);
        // 删除导出临时文件
        FileUtil.deleteDirectory(applicationPathWebINF + "classes/jasper/temp", false);
    }

}
