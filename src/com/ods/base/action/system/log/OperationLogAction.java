/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.action.system.log;
 

import com.ods.base.action.system.org.OrgAction;
import com.ods.base.bo.system.log.bo.OperationLog;
import com.ods.base.bo.system.user.bo.User;
import com.ods.util.action.ActionView;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.resource.ResourceUtil;
import com.ods.util.type.StringUtil;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * OperationLogAction.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * OperationLogAction类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * OperationLogAction类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 系统日志管理<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-1-4, cause, wang_zr, 新建<br>
 * 
 * @author :wang_zr
 * @since :2011-1-4
 * @version:1.0
 */
public class OperationLogAction extends ActionView {

    /**
     * 属性名：serialVersionUID、类型：long、作成日：2011-1-4.<br>
     * 含义：
     */
    private static final long serialVersionUID = -1454778871035957948L;

    /**
     * 属性名：user、类型：User、作成日：2011-1-8.<br>
     * 含义：
     */
    private User user;

    /**
     * user的获取.
     * 
     * @return user值返回.
     */
    public User getUser() {
        return user;
    }

    /**
     * user的值设定
     * 
     * @param user 设定user的值.
     */
    public void setUser(User user) {
        this.user = user;
    }

    /**
     * 系统日志列表加载.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.bo.system.log.action<br>
     * 方法名:logListInfo方法.<br>
     * 
     * @author:wang_zr
     * @since :1.0:2011-1-4
     * @return
     */
    public String logListInfo() {
        QueryCondition qc = newQueryConditionOfTable(getRequest(), false);
        QueryResult qr = null;
        String userPk = getRequest().getParameter("userPk");
        if(!StringUtil.empty(userPk)) {
            qc.equals("userPk", userPk);
        }
        // 获得开始时间
        String startTime = getRequest().getParameter("startTime");
        if(!StringUtil.empty(startTime)) {
            qc.greateEquals("createTime", startTime);
        }
        // 获得结束时间
        String endTime = getRequest().getParameter("endTime");
        if(!StringUtil.empty(endTime)) {
            qc.lessEquals("createTime", endTime);
        }

        try {

            // 按日志创建时间降序排列
            qc.orderDesc("createTime");
            // 查询系统日志表
            qr = getSpringHibernate().select(qc, OperationLog.class);
            // 遍历用户所有的日志信息
            for(Object object : qr) {
                OperationLog ol = (OperationLog) object;
                // 拼接日志信息
                StringBuffer logShowText = new StringBuffer();
                // 获得用户姓名
                logShowText.append("<span style=color:blue >");
                logShowText.append(ol.getUserName());
                logShowText.append("</span>");
                logShowText.append("<span>&nbsp;&nbsp; 在&nbsp;&nbsp;</span>");
                // 获得日志时间
                logShowText.append("<span style=color:blue >");
                logShowText.append(ol.getCreateTime());
                logShowText.append("</span>");
                // 获得操作内容
                logShowText.append(ol.getActionContent());
                // 设置日志列表显示内容
                ol.setLogShowText(logShowText.toString());
            }
            // 放入request作用域
            getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
            String[] fields = { "logShowText" };
            getRequest().setAttribute(SHOW_TABLE_COLMUN_NAME, fields);
            getRequest().setAttribute("userPk", userPk);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }

    /**
     * 根据userName清空日志内容.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.bo.system.log.action<br>
     * 方法名:clearLogInfo方法.<br>
     * 
     * @author:wang_zr
     * @since :1.0:2011-1-4
     * @return
     */
    public String clearLogInfo() {
        try {
            StringBuilder sbSql = new StringBuilder();
            // 获取前台提供的userPk
            String userPk = getRequest().getParameter("userPk");
            sbSql.append("delete from t_operation_log where 1=1");
            if(!StringUtil.empty(userPk)) {
                sbSql.append(" and user_pk='").append(userPk).append("'");
            }
            String startTime = getRequest().getParameter("startTime");
            if(!StringUtil.empty(startTime)) {
                sbSql.append(" and create_time>='").append(startTime).append("'");
            }
            String endTime = getRequest().getParameter("endTime");
            if(!StringUtil.empty(endTime)) {
                sbSql.append(" and create_time<='").append(endTime).append("'");
            }
            callDBProc("p_exec_sql_util", new Object[] { sbSql.toString() });
            saveActionLog("删除了系统用户中相应的系统日志");
            setRequestMessage(ResourceUtil.getResourceString("OperationLog.clear.data.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("OperationLog.clear.data.fail"), false);
            return ERROR;
        }
    }

    /**
     * 加载组织机构.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.log<br>
     * 方法名:treeInfo方法.<br>
     * 
     * @author:hou.manyuan@163.com
     * @since :1.0:2011-3-4
     * @return
     */
    public String treeInfo() {
        return new OrgAction().treeInfo();
    }

    /**
     * 所有人日志记录列表.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.log<br>
     * 方法名:logFulldeleteList方法.<br>
     * 
     * @author:hou.manyuan@163.com
     * @since :1.0:2011-4-18
     * @return
     */
    public String logFulldeleteList() {
        try {
            QueryCondition qc = newQueryConditionOfTable(getRequest(), false);
            String startTime = getRequest().getParameter("startTime");
            if(!StringUtil.empty(startTime)) {
                qc.greateEquals("createTime", startTime);
            }
            String endTime = getRequest().getParameter("endTime");
            if(!StringUtil.empty(endTime)) {
                qc.lessEquals("createTime", endTime + " 23:59:59");
            }
            // 按日志创建时间降序排列
            qc.orderDesc("createTime");
            // 查询系统日志表
            QueryResult qr = getSpringHibernate().select(qc, OperationLog.class);
            // 遍历用户所有的日志信息
            for(Object object : qr) {
                OperationLog ol = (OperationLog) object;
                // 拼接日志信息
                StringBuffer logShowText = new StringBuffer();
                // 获得用户姓名
                logShowText.append("<span style=color:blue >");
                logShowText.append(ol.getUserName());
                logShowText.append("</span>");
                logShowText.append("<span>&nbsp;&nbsp; 在&nbsp;&nbsp;</span>");
                // 获得日志时间
                logShowText.append("<span style=color:blue >");
                logShowText.append(ol.getCreateTime());
                logShowText.append("</span>");
                // 获得操作内容
                logShowText.append(ol.getActionContent());
                // 设置日志列表显示内容
                ol.setLogShowText(logShowText.toString());
            }
            // 放入request作用域
            getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
            String[] fields = { "logShowText" };
            getRequest().setAttribute(SHOW_TABLE_COLMUN_NAME, fields); 
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage("列表内容查询失败!", false);
            return ERROR;
        }
        return SUCCESS;
    }
    /**
     * 删除查询时间段中系统所有人日志.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.base.action.system.log<br>
     *方法名:logFulldeleteDelete方法.<br>
     *
     *@author:hou.manyuan@163.com
     *@since :1.0:2011-4-18
     *@return
     */
    public String logFulldeleteDelete() {
        try {
            StringBuilder sbSql = new StringBuilder(); 
            sbSql.append("delete from t_operation_log where 1=1"); 
            String startTime = getRequest().getParameter("startTime");
            if(!StringUtil.empty(startTime)) {
                sbSql.append(" and create_time>='").append(startTime).append("'");
            }
            String endTime = getRequest().getParameter("endTime");
            if(!StringUtil.empty(endTime)) {
                sbSql.append(" and create_time<='").append(endTime + " 23:59:59").append("'");
            }
            callDBProc("p_exec_sql_util", new Object[] { sbSql.toString() });
            saveActionLog("删除了系统用户从"+startTime+"至"+endTime+"中相应的系统日志");
            setRequestMessage("删除日志成功", true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("OperationLog.clear.data.fail"), false);
            return ERROR;
        }
    }
}
