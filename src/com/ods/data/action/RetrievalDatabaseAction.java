/**
*copyright(C)2015
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.data.action;

import com.ods.data.bo.contract.Contract;
import com.ods.data.bo.retrievaldatabase.RetrievalDatabase;
import com.ods.util.action.ActionView;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.resource.ResourceUtil;
import com.ods.util.type.StringUtil;

/**
 *<b>系统名称:</b><b>
 *
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 *<b>文件名:</b><br>
 *
 *RetrievalDatabaseAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *RetrievalDatabaseAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *RetrievalDatabaseAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *检索数据库以及策略Action类<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2015年6月14日,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :10325431@qq.com
 *@since  :2015年6月14日
 *@version:1.0
 */
public class RetrievalDatabaseAction extends  ActionView {

    /**
    *属性名：serialVersionUID、类型：long、作成日：2015年6月14日.<br>
    *含义：
    */
    private static final long serialVersionUID = -6912184011129416904L;
    
    RetrievalDatabase retrievalDatabase = new RetrievalDatabase();

    /**
     *retrievalDatabase的获取.
     *@return retrievalDatabase值返回.
     */
    public RetrievalDatabase getRetrievalDatabase() {
        return retrievalDatabase;
    }

    /**
     *retrievalDatabase的值设定
     *@param retrievalDatabase 设定retrievalDatabase的值.
     */
    public void setRetrievalDatabase(RetrievalDatabase retrievalDatabase) {
        this.retrievalDatabase = retrievalDatabase;
    }
    
    
    /**
     *查询条件.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:getQc方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年6月14日
     *@return
    */
    public QueryCondition getQc() {
        QueryCondition qc = newQueryConditionOfTable(getRequest());
        
        String contractPk = getRequest().getParameter("contractPk");
        if(!StringUtil.empty(contractPk)) {
            qc.equals("contractPk", contractPk);
        }
        //名称
        String subjectClassName =  getRequest().getParameter("subjectClassName");
        if(!StringUtil.empty(subjectClassName)) {
            qc.put("subjectClassName", subjectClassName);
        }
        
        
        qc.equals("deleteType", NUM_0);
        qc.orderAsc("orderNo");
        
        return qc;
    }
    
    /**
     *列表.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:listInfo方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年6月14日
     *@return
    */
    public String listInfo() {
        QueryResult qr = null;
        QueryCondition qc = getQc();
        try {
            qr = getSpringHibernate().select(qc, RetrievalDatabase.class);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            qr = null;
        }
        getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
        String[] fields = {"retrievalDatabasePk","contractPk","retrievalDatabaseName","url","ageLimit","searchStrategy"
                ,"retain1","retain2","orderNo","memo","createOrgPk","createUserPk","createTime","deleteType"};
        getRequest().setAttribute(SHOW_TABLE_COLMUN_NAME, fields);
        return SUCCESS;
    }
    
    
    /**
     *保存.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:modifyInfo方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年6月14日
     *@return
    */
    public String modifyInfo() {
        try {
            RetrievalDatabase retrievalDatabase = getRetrievalDatabase();
            if(StringUtil.empty(retrievalDatabase.getRetrievalDatabasePk())) {
                retrievalDatabase.setCreateOrgPk(getNonceOrgPk());
                retrievalDatabase.setCreateUserPk(getNonceUserPk());
                retrievalDatabase.setCreateTime(timeInstance());
                modifyContractState(retrievalDatabase.getContractPk());
                getSpringHibernate().save(retrievalDatabase);
                saveActionLog("新增了,在检索数据库信息");
            } else {
                getSpringHibernate().update(retrievalDatabase);
                saveActionLog("修改了,在检索数据库信息");
            }
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }
    
    public String modifyContractState(String contractPk ){
        if(contractPk.equals("")){
            return "";
        }
        try {
            Contract contract = (Contract) getSpringHibernate().selectByPk("contractPk",
                    contractPk, Contract.class);
            
            contract.setContractState("编写策略");//2
            
            getSpringHibernate().update(contract);
        } catch(Throwable e) {
            LogUtil.writeLog(e);setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);return ERROR;
        }
        
        
        
        return "";
        
    }
    
    
    /**
     *进入修改、查看页面.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:modifyPage方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年6月14日
     *@return
    */
    public String modifyPage() {
        String retrievalDatabasePk = getRequest().getParameter("retrievalDatabasePk");
        try {
            RetrievalDatabase retrievalDatabase = (RetrievalDatabase) getSpringHibernate().selectByPk("retrievalDatabasePk",
                    retrievalDatabasePk, RetrievalDatabase.class);
            getRequest().setAttribute("retrievalDatabase", retrievalDatabase);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }
    
    /**
     *软删除.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:deleteInfo方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年6月14日
     *@return
    */
    public String deleteInfo() {
        QueryCondition qc = new QueryCondition(getRequest());
        String[] retrievalDatabasePks = retrievalDatabase.getRetrievalDatabasePks();
        qc.in("retrievalDatabasePk", retrievalDatabasePks);
        String deleteType = getRequest().getParameter("deleteType");
        if(!StringUtil.empty(deleteType)) {
            qc.batchUpdate("deleteType", deleteType);
        } else {
            qc.batchUpdate("deleteType", NUM_1);
        }
        try {
            getSpringHibernate().batchUpdate(qc, RetrievalDatabase.class);
            String test = "在\"检索数据库信息中\"执行了软删除操作";
            if(StringUtil.equals(deleteType, "0")) {
                test = "在\"检索数据库信息中\"执行了恢复操作";
            } else {
                test = "在\"检索数据库信息中\"执行了删除操作";
            }
            saveActionLog(test);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }

}
