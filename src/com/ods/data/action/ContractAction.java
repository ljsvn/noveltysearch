/**
*copyright(C)2015
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.data.action;


import com.ods.base.action.tools.SerialNumberUtil;
import com.ods.data.bo.contract.Contract;
import com.ods.util.action.ActionView;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.resource.ResourceUtil;
import com.ods.util.type.StringUtil;

/**
 *<b>系统名称:</b><b>
 *昆仑厂MES生产管理系统
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 *<b>文件名:</b><br>
 *
 *ContractAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *ContractAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *ContractAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *合同Action<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2015年4月29日,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :10325431@qq.com
 *@since  :2015年4月29日
 *@version:1.0
 */
public class ContractAction extends  ActionView{

    /**
    *属性名：serialVersionUID、类型：long、作成日：2015年4月29日.<br>
    *含义：
    */
    private static final long serialVersionUID = 1956344647349379338L;
    
    Contract contract = new Contract();

    /**
     *contract的获取.
     *@return contract值返回.
     */
    public Contract getContract() {
        return contract;
    }

    /**
     *contract的值设定
     *@param contract 设定contract的值.
     */
    public void setContract(Contract contract) {
        this.contract = contract;
    }
    
    /**
     *查新条件.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:getQc方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年5月1日
     *@return
    */
    public QueryCondition getQc() {
        QueryCondition qc = newQueryConditionOfTable(getRequest());
        //合同名称
        String contractName =  getRequest().getParameter("contractName");
        if(!StringUtil.empty(contractName)) {
            qc.put("contractName", contractName);
        }
        
        //单位
        String company = getRequest().getParameter("company");
        if(!StringUtil.empty(company)) {
            qc.put("company", company);
        }
        //电话
        String tel = getRequest().getParameter("tel");
        if(!StringUtil.empty(tel)) {
            qc.put("tel", tel);
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
       
        String workschedule = getRequest().getParameter("workschedule");
       // if(StringUtil.empty(workschedule)){
            qc.notEquals("contractState", "归档");   
        //}
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
     *@since :1.0:2015年5月1日
     *@return
    */
    public String listInfo() {
        QueryResult qr = null;
        QueryCondition qc = getQc();
        try {
            qr = getSpringHibernate().select(qc, Contract.class);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            qr = null;
        }
        getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
        String[] fields = {"contractPk","contractName","contractEname","company","lead","address","postCode"
                ,"linkman","tel","email","beginTime","endTime","leadingOfficial","officeHolder","purposeScope"
                ,"projectApproval","achievement","objectiveOther","noveltyPoint","keyWords","contractState","memo"
                ,"createOrgPk","createUserPk","createTime","deleteType","contractCode","taxpayerNo"};
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
     *@since :1.0:2015年5月1日
     *@return
    */
    public String modifyInfo() {
        try {
            Contract contract = getContract();
            if(StringUtil.empty(contract.getContractPk())) {
                contract.setCreateOrgPk(getNonceOrgPk());
                contract.setCreateUserPk(getNonceUserPk());
                contract.setCreateTime(timeInstance());
                //合同编号
                SerialNumberUtil sn = new SerialNumberUtil();
                String nowTime=timeInstanceTwo();  
                String condition=nowTime.substring(NUM_0, NUM_6)+"t_contract";
                //String scode ="CX"+ nowTime.substring(NUM_0, NUM_4)+sn.SerialNumber(condition, 4)+"";
                String scode =nowTime.substring(NUM_0, NUM_6)+sn.SerialNumber(condition, 3)+"";
                contract.setContractCode(scode);
                contract.setContractState("新建");
                getSpringHibernate().save(contract);
                saveActionLog("新增了,在合同记录管理信息");
            } else {
                getSpringHibernate().update(contract);
                saveActionLog("修改了,在合同记录管理信息");
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
     *进入修改页面.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:modifyPage方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年5月1日
     *@return
    */
    public String modifyPage() {
        String contractPk = getRequest().getParameter("contractPk");
        try {
            Contract contract = (Contract) getSpringHibernate().selectByPk("contractPk",
                    contractPk, Contract.class);
            //显示内容换行
            contract.setNoveltyPoint(contract.getNoveltyPoint().replace("\r\n", "\\r\\n"));
            contract.setNoveltyPoint(contract.getNoveltyPoint().replace("\n", "\\n"));
            contract.setSearchTermsStrategy(contract.getSearchTermsStrategy().replace("\r\n", "\\r\\n"));
            contract.setSearchTermsStrategy(contract.getSearchTermsStrategy().replace("\n", "\\n"));
            
            
            getRequest().setAttribute("contract", contract);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }
    
    /**
     *进入查看页面.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:viewPage方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2016年6月14日
     *@return
    */
    public String viewPage() {
        String contractPk = getRequest().getParameter("contractPk");
        try {
            Contract contract = (Contract) getSpringHibernate().selectByPk("contractPk",
                    contractPk, Contract.class);
            //显示内容换行
            contract.setNoveltyPoint(contract.getNoveltyPoint().replace("\r\n", "\\r\\n"));
            contract.setNoveltyPoint(contract.getNoveltyPoint().replace("\n", "\\n"));
            contract.setSearchTermsStrategy(contract.getSearchTermsStrategy().replace("\r\n", "\\r\\n"));
            contract.setSearchTermsStrategy(contract.getSearchTermsStrategy().replace("\n", "\\n"));
            
            getRequest().setAttribute("contract", contract);
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
     *@since :1.0:2015年5月1日
     *@return
    */
    public String deleteInfo() {
        QueryCondition qc = new QueryCondition(getRequest());
        String[] contractPks = contract.getContractPks();
        qc.in("contractPk", contractPks);
        String deleteType = getRequest().getParameter("deleteType");
        if(!StringUtil.empty(deleteType)) {
            qc.batchUpdate("deleteType", deleteType);
        } else {
            qc.batchUpdate("deleteType", NUM_1);
        }
        try {
            getSpringHibernate().batchUpdate(qc, Contract.class);
            String test = "在\"合同管理中\"执行了软删除操作";
            if(StringUtil.equals(deleteType, "0")) {
                test = "在\"合同管理中中\"执行了恢复操作";
            } else {
                test = "在\"合同管理中中\"执行了删除操作";
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
