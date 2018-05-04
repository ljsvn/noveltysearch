/**
*copyright(C)2015
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.data.action;

import com.ods.data.bo.searchdatabase.SearchDatabase;
import com.ods.util.action.ActionView;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.resource.ResourceUtil;
import com.ods.util.type.StringUtil;

/**
 *<b>系统名称:</b><b>
 *系统
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 *<b>文件名:</b><br>
 *
 *SearchDatabaseAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *SearchDatabaseAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *SearchDatabaseAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *检索数据库Action<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2015年6月21日,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :10325431@qq.com
 *@since  :2015年6月21日
 *@version:1.0
 */
public class SearchDatabaseAction extends  ActionView{

    /**
    *属性名：serialVersionUID、类型：long、作成日：2015年6月21日.<br>
    *含义：
    */
    private static final long serialVersionUID = 745600740713680260L;
    
   
    SearchDatabase searchDatabase = new SearchDatabase();


    /**
     *searchDatabase的获取.
     *@return searchDatabase值返回.
     */
    public SearchDatabase getSearchDatabase() {
        return searchDatabase;
    }


    /**
     *searchDatabase的值设定
     *@param searchDatabase 设定searchDatabase的值.
     */
    public void setSearchDatabase(SearchDatabase searchDatabase) {
        this.searchDatabase = searchDatabase;
    }
    
    /**
     *条件 .<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:getQc方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年6月21日
     *@return
    */
    public QueryCondition getQc() {
        QueryCondition qc = newQueryConditionOfTable(getRequest());
        //合同名称
        String searchDatabaseName =  getRequest().getParameter("searchDatabaseName");
        if(!StringUtil.empty(searchDatabaseName)) {
            qc.put("searchDatabaseName", searchDatabaseName);
        }
        
        //url
        String url = getRequest().getParameter("url");
        if(!StringUtil.empty(url)) {
            qc.put("url", url);
        }
      
        
        // 时间
        String createTimeS = getRequest().getParameter("createTimeS");
        if(!StringUtil.empty(createTimeS)) {
            qc.greateEquals("createTime", createTimeS + " 00:00:00");
        }
        String createTimeE = getRequest().getParameter("createTimeE");
        if(!StringUtil.empty(createTimeE)) {
            qc.lessEquals("createTime", createTimeE + " 59:59:59");
        }
       
        
        qc.equals("deleteType", NUM_0);
        qc.orderDesc("createTime");
        return qc;
    }
    
    /**
     *列表.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:listInfo方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年6月21日
     *@return
    */
    public String listInfo() {
        QueryResult qr = null;
        QueryCondition qc = getQc();
        try {
            qr = getSpringHibernate().select(qc, SearchDatabase.class);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            qr = null;
        }
        getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
        String[] fields = {"searchDatabasePk","searchDatabaseName","url","ageLimit","searchStrategy"
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
     *@since :1.0:2015年6月21日
     *@return
    */
    public String modifyInfo() {
        try {
            SearchDatabase searchDatabase = getSearchDatabase();
            if(StringUtil.empty(searchDatabase.getSearchDatabasePk())) {
                searchDatabase.setCreateOrgPk(getNonceOrgPk());
                searchDatabase.setCreateUserPk(getNonceUserPk());
                searchDatabase.setCreateTime(timeInstance());
                getSpringHibernate().save(searchDatabase);
                saveActionLog("新增了,在检索数据库信息");
            } else {
                getSpringHibernate().update(searchDatabase);
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
    
    /**
     *进入修改或者查看页面.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:modifyPage方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年6月21日
     *@return
    */
    public String modifyPage() {
        String searchDatabasePk = getRequest().getParameter("searchDatabasePk");
        try {
            SearchDatabase searchDatabase = (SearchDatabase) getSpringHibernate().selectByPk("searchDatabasePk",
                    searchDatabasePk, SearchDatabase.class);
            
            getRequest().setAttribute("searchDatabase", searchDatabase);
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
     *@since :1.0:2015年6月21日
     *@return
    */
    public String deleteInfo() {
        QueryCondition qc = new QueryCondition(getRequest());
        String[] searchDatabasePks = searchDatabase.getSearchDatabasePks();
        qc.in("searchDatabasePk", searchDatabasePks);
        String deleteType = getRequest().getParameter("deleteType");
        if(!StringUtil.empty(deleteType)) {
            qc.batchUpdate("deleteType", deleteType);
        } else {
            qc.batchUpdate("deleteType", NUM_1);
        }
        try {
            getSpringHibernate().batchUpdate(qc, SearchDatabase.class);
            String test = "在\"检索数据库中\"执行了软删除操作";
            if(StringUtil.equals(deleteType, "0")) {
                test = "在\"检索数据库中\"执行了恢复操作";
            } else {
                test = "在\"检索数据库中\"执行了删除操作";
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
