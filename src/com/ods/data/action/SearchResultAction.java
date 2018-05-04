package com.ods.data.action;

import com.ods.data.bo.contract.Contract;
import com.ods.data.bo.searchresult.SearchResult;
import com.ods.data.util.SubjectClassOrder;
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
 *SearchResultAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *SearchResultAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *SearchResultAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *检索结果Action<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2015年5月7日,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :10325431@qq.com
 *@since  :2015年5月7日
 *@version:1.0
 */
public class SearchResultAction extends  ActionView{

    /**
    *属性名：serialVersionUID、类型：long、作成日：2015年5月7日.<br>
    *含义：
    */
    private static final long serialVersionUID = 6076677025063264859L;
    
    SearchResult searchResult = new SearchResult();

    /**
     *searchResult的获取.
     *@return searchResult值返回.
     */
    public SearchResult getSearchResult() {
        return searchResult;
    }

    /**
     *searchResult的值设定
     *@param searchResult 设定searchResult的值.
     */
    public void setSearchResult(SearchResult searchResult) {
        this.searchResult = searchResult;
    }
    
    
    
    /**
     *查询条件.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:getQc方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年5月7日
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
        qc.orderDesc("retain7");
        return qc;
    }
    
    
    /**
     *列表.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:listInfo方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年5月7日
     *@return
    */
    public String listInfo() {
        QueryResult qr = null;
        QueryCondition qc = getQc();
        try {
            qr = getSpringHibernate().select(qc, SearchResult.class);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            qr = null;
        }
        getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
        String[] fields = {"searchResultPk","contractPk","searchResultName","author","company","source","issn"
                ,"resultAbstract","keyword","resultClass","retain1","retain2","retain3","retain4","retain5","retain6"
                ,"retain7","orderNo","memo","createOrgPk","createUserPk","createTime","deleteType"};
        getRequest().setAttribute(SHOW_TABLE_COLMUN_NAME, fields);
        return SUCCESS;
    }
    
    
    
    /**
     *save.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:modifyInfo方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年5月7日
     *@return
    */
    public String modifyInfo() {
        try {
            SearchResult searchResult = getSearchResult();
            if(StringUtil.empty(searchResult.getSearchResultPk())) {
                searchResult.setCreateOrgPk(getNonceOrgPk());
                searchResult.setCreateUserPk(getNonceUserPk());
                searchResult.setCreateTime(timeInstance());
                
                modifyContractState(searchResult.getContractPk());
                
                getSpringHibernate().save(searchResult);
                
                saveActionLog("新增了,在检索结果信息");
            } else {
                getSpringHibernate().update(searchResult);
                saveActionLog("修改了,在检索结果信息");
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
            
            contract.setContractState("文献排序");//2
            
            getSpringHibernate().update(contract);
        } catch(Throwable e) {
            LogUtil.writeLog(e);setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);return ERROR;
        }
        
        
        
        return "";
        
    }
    
    
    /**
     *进入修改或者查看页面.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:modifyPage方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年5月7日
     *@return
    */
    public String modifyPage() {
        String searchResultPk = getRequest().getParameter("searchResultPk");
        try {
            SearchResult searchResult = (SearchResult) getSpringHibernate().selectByPk("searchResultPk",
                    searchResultPk, SearchResult.class);
            getRequest().setAttribute("searchResult", searchResult);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }
    
    
    
    
    public String deleteInfo() {
        QueryCondition qc = new QueryCondition(getRequest());
        String[] searchResultPks = searchResult.getSearchResultPks();
        qc.in("searchResultPk", searchResultPks);
        String deleteType = getRequest().getParameter("deleteType");
        if(!StringUtil.empty(deleteType)) {
            qc.batchUpdate("deleteType", deleteType);
        } else {
            qc.batchUpdate("deleteType", NUM_1);
        }
        try {
            getSpringHibernate().batchUpdate(qc, SearchResult.class);
            String test = "在\"检索结果管理中\"执行了软删除操作";
            if(StringUtil.equals(deleteType, "0")) {
                test = "在\"检索结果管理中中\"执行了恢复操作";
            } else {
                test = "在\"检索结果管理中中\"执行了删除操作";
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
    
    /**
     *排序.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:orderInfo方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年6月22日
     *@return
    */
    public String orderInfo() {
       
        try { 
            String contractPk = getRequest().getParameter("contractPk");
            SubjectClassOrder sco = new SubjectClassOrder();
            
            sco.doOrder(contractPk);
            
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        
    }
    
    
    //searchresult_add.jsp
    
    

}
