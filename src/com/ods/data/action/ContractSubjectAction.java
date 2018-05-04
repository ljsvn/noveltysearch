/**
*copyright(C)2015
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.data.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import com.ods.base.bo.menu.xml.MenuDataCache;
import com.ods.base.bo.menu.xml.MenuOne;
import com.ods.base.bo.system.org.bo.Organization;
import com.ods.base.bo.system.role.bo.RoleOrg;
import com.ods.data.bo.contract.Contract;
import com.ods.data.bo.contractsubject.ContractSubject;
import com.ods.data.bo.subjectclass.SubjectClass;
import com.ods.util.action.ActionView;
import com.ods.util.db.DBHelper;
import com.ods.util.guid.GuidGender;
import com.ods.util.hibernate.query.OrderEntry;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.resource.ResourceUtil;
import com.ods.util.spring.SpringBeanFactory;
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
 *ContractSubjectAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *ContractSubjectAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *ContractSubjectAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *合同主题词和分类Action<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2015年5月2日,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :10325431@qq.com
 *@since  :2015年5月2日
 *@version:1.0
 */
public class ContractSubjectAction extends  ActionView{

    /**
    *属性名：serialVersionUID、类型：long、作成日：2015年5月2日.<br>
    *含义：
    */
    private static final long serialVersionUID = -6944916530885741754L;
    
    
    ContractSubject contractSubject = new ContractSubject();


    /**
     *contractSubject的获取.
     *@return contractSubject值返回.
     */
    public ContractSubject getContractSubject() {
        return contractSubject;
    }


    /**
     *contractSubject的值设定
     *@param contractSubject 设定contractSubject的值.
     */
    public void setContractSubject(ContractSubject contractSubject) {
        this.contractSubject = contractSubject;
    }
    
    
    
    
    
    /**
     *查新条件.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:getQc方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年5月2日
     *@return
    */
    public QueryCondition getQc() {
        QueryCondition qc = newQueryConditionOfTable(getRequest());
        
        String contractPk = getRequest().getParameter("contractPk");
        if(!StringUtil.empty(contractPk)) {
            qc.equals("contractPk", contractPk);
        }
        String iskeyword =  getRequest().getParameter("iskeyword");
        if(!StringUtil.empty(iskeyword)) {
            qc.equals("isKeyWord", iskeyword);
        }
        //名称
        String subjectClassName =  getRequest().getParameter("subjectClassName");
        if(!StringUtil.empty(subjectClassName)) {
            qc.put("subjectClassName", subjectClassName);
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
     *@since :1.0:2015年5月2日
     *@return
    */
    public String listInfo() {
        QueryResult qr = null;
        QueryCondition qc = getQc();
        try {
            qr = getSpringHibernate().select(qc, ContractSubject.class);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            qr = null;
        }
        getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
        String[] fields = {"contractSubjectPk","subjectClassPk","subjectClassName","aliasName1","aliasName2",
                "aliasName3","subjectClassEname","aliasEname1","aliasEname2","aliasEname3","aliasEname4",
                "aliasEname5","retain1","retain2","isKeyWord","orderNo","memo","createOrgPk","createUserPk",
                "createTime","deleteType"};
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
     *@since :1.0:2015年5月3日
     *@return
    */
    public String modifyInfo() {
        try {
            ContractSubject contractSubject = getContractSubject();
            if(StringUtil.empty(contractSubject.getContractSubjectPk())) {
                contractSubject.setCreateOrgPk(getNonceOrgPk());
                contractSubject.setCreateUserPk(getNonceUserPk());
                contractSubject.setCreateTime(timeInstance());
                //
                //modifySubjectInfo(contractSubject);
                modifyContractState(contractSubject.getContractPk());
                
                getSpringHibernate().save(contractSubject);
                saveActionLog("新增了,在合同主题分类管理信息");
            } else {
                getSpringHibernate().update(contractSubject);
                saveActionLog("修改了,在合同主题分类管理信息");
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
     *更新合同状态.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:modifyContractState方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2016年7月15日
     *@param contractPk
     *@return
    */
    public String modifyContractState(String contractPk ){
        if(contractPk.equals("")){
            return "";
        }
        try {
            Contract contract = (Contract) getSpringHibernate().selectByPk("contractPk",
                    contractPk, Contract.class);
            
            contract.setContractState("确定主题词");//2
            
            getSpringHibernate().update(contract);
        } catch(Throwable e) {
            LogUtil.writeLog(e);setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);return ERROR;
        }
        
        
        
        return "";
        
    }
    
    /**
     *获得主题词 .<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:modifySubjectInfo方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年5月3日
     *@param subject_class_pk
     *@return
    */
    public String modifySubjectInfo(ContractSubject contractSubject ){
        try {
            //String subject_class_pk = getRequest().getParameter("subject_class_pk"); 
            if(!StringUtil.empty(contractSubject.getContractPk())) {
                QueryResult qr = null;
                QueryCondition qc =new QueryCondition();
                qc.put("fatherPkAll", contractSubject.getSubjectClassPk());
                qc.equals("isKeyWord","1");
                
                
                qr = getSpringHibernate().select(qc, SubjectClass.class);
                for(Object object : qr) {
                    SubjectClass sc = (SubjectClass) object;
                    ContractSubject cs = new  ContractSubject ();
                    cs.setCreateOrgPk(getNonceOrgPk());
                    cs.setCreateUserPk(getNonceUserPk());
                    cs.setCreateTime(timeInstance());
                    cs.setContractPk(contractSubject.getContractPk());
                    cs.setSubjectClassPk(sc.getSubjectClassPk());
                    cs.setSubjectClassName(sc.getSubjectClassName());
                    cs.setIsKeyWord(1);
                    
                    
                    getSpringHibernate().save(cs);
                }
                
                
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
     *@since :1.0:2015年5月3日
     *@return
    */
    public String modifyPage() {
        String contractSubjectPk = getRequest().getParameter("contractSubjectPk");
        try {
            ContractSubject contractSubject = (ContractSubject) getSpringHibernate().selectByPk("contractSubjectPk",
                    contractSubjectPk, ContractSubject.class);
            getRequest().setAttribute("contractSubject", contractSubject);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }
    
    
    /**
     *删除.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:deleteInfo方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年5月3日
     *@return
    */
    public String deleteInfo() {
        QueryCondition qc = new QueryCondition(getRequest());
        String[] contractSubjectPks = contractSubject.getContractSubjectPks();
        qc.in("contractSubjectPk", contractSubjectPks);
        String deleteType = getRequest().getParameter("deleteType");
        if(!StringUtil.empty(deleteType)) {
            qc.batchUpdate("deleteType", deleteType);
        } else {
            qc.batchUpdate("deleteType", NUM_1);
        }
        try {
            getSpringHibernate().batchUpdate(qc, ContractSubject.class);
            String test = "在\"合同主题分类中\"执行了软删除操作";
            if(StringUtil.equals(deleteType, "0")) {
                test = "在\"合同检索主题分类中中\"执行了恢复操作";
            } else {
                test = "在\"合同检索主题中\"执行了删除操作";
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
     *加载主题词树.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:resourceTreeInfo方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年6月13日
     *@return
    */
    public String resourceTreeInfo() {
        try {
            // 主键
            String subjectClassPk = getRequest().getParameter("subjectClassPk");
            String contractPk = getRequest().getParameter("contractPk");
            if(subjectClassPk == null || subjectClassPk.equals("")){
                subjectClassPk ="00000000-0000-0000-0000-000000000002"; 
            }
            // 从文件读取菜单信息
            List<MenuOne> menuOneList = MenuDataCache.getInstance().getMenu().getMenuOneList();
            MenuDataCache.getInstance().sortOrderMenuOne(menuOneList);
            // 声明查询条件
            QueryCondition qc = new QueryCondition(getRequest());
            //qc.put("subjectClassPk", subjectClassPk);
            qc.put("fatherPkAll", subjectClassPk);
            qc.equals("deleteType", Organization.NUM_0);
            qc.order("orderNo", OrderEntry.ORDER_ASC);
           
            QueryResult qrOrg = getSpringHibernate().select(qc, SubjectClass.class);
            QueryCondition mqc = new QueryCondition(getRequest());
            mqc.equals("contractPk", contractPk);
            mqc.equals("deleteType", Organization.NUM_0);
            // 查询数据库,找出该角色已经拥有的组织
            QueryResult Qr = getSpringHibernate().select(mqc, ContractSubject.class);
            List<String> haveOneMenuList = new ArrayList<String>();
          
            for(int i = 0; i < Qr.size(); i++) {
                ContractSubject cs = (ContractSubject) Qr.get(i);
                haveOneMenuList.add(cs.getSubjectClassPk());
            }
            // 声明返回的树形JSON
            StringBuffer sb = new StringBuffer("[");
            boolean ifchecked ;
            SubjectClass scroot = (SubjectClass) getSpringHibernate().selectByPk("subjectClassPk", subjectClassPk, SubjectClass.class);
            //orgTreeMake(subjectClassPk, sb, qrOrg, scroot, true, true);
            
            // {text:'首页',resourcePk:'firstPage',iconCls:'firstPage',checked:true,leaf:true}
            for(Object object : qrOrg) {
                SubjectClass sc = (SubjectClass) object;
                if(haveOneMenuList.contains(sc.getSubjectClassPk())) {
                    ifchecked = true;
                } else {
                    ifchecked = false;
                }
                // 拼接未被删除的信息
                orgTreeMake(contractPk, sb, qrOrg, sc, true, ifchecked);
            }
            
            sb.append("]");
            getRequest().setAttribute("JSON", sb);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            return ERROR;
        }
    }
    
    
    /**
     *子结构的树处理.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:orgTreeMake方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年6月13日
     *@param strOrgPk
     *@param sb
     *@param qr
     *@param org
     *@param queryType
     *@param ifchecked
    */
    private void orgTreeMake(String contractPk, StringBuffer sb, QueryResult qr, SubjectClass org, boolean queryType,
            boolean ifchecked) {
        // 如果当前机构信息父主键为所查义的机构信息则加载到树型节点中
        //if(StringUtil.equals(org.getFatherPk(), strOrgPk)){
            if(sb.length() > 1) {
                sb.append(",");
            }
            sb.append("{text:'");
      
            sb.append(org.getSubjectClassName());
            if(queryType) {
                Boolean falg = true;
                for(Object objectv : qr) {
                    SubjectClass orgv = (SubjectClass) objectv;
                    if(StringUtil.equals(orgv.getFatherPk(), org.getSubjectClassPk())) {
                        falg = false;
                        break;
                    }
                }
                sb.append("',leaf:").append(falg);
            } else {
                sb.append("',leaf:").append(true);
            }
            sb.append(",subjectClassPk:'").append(org.getSubjectClassPk()).append("'");
            sb.append(",subjectClassName:'").append(org.getSubjectClassName()).append("'");
            sb.append(",fatherPkAll:'").append(org.getFatherPkAll()).append("'");
            sb.append(",fatherPk:'").append(org.getFatherPk()).append("'");
            sb.append(",contractPk:'").append(contractPk).append("'");
            sb.append(",id:'").append(org.getSubjectClassPk()).append("'");
            if(ifchecked) {
                sb.append(",checked:").append(true);
            }else{
                sb.append(",checked:").append(false);
            }
            sb.append("}");
       // }
    }
    
    
    public String modiInfo() {

        Connection connection = null;
        PreparedStatement statementMenu = null;
        try {
            // 主键
            String contractPk = getRequest().getParameter("contractPk");
            // 主键
            String resourcePks = getRequest().getParameter("subjectClassPks");
            String fatherPk  = getRequest().getParameter("fatherPk");
            StringBuilder sbSql = new StringBuilder();
            sbSql.append("delete t_contract_subject ");
            sbSql.append("where contract_pk = '").append(contractPk).append("' ");
            sbSql.append(" and subject_class_pk in (select subject_class_pk from t_subject_class where father_pk_all like '%"+fatherPk+"%' ) ");
            
            //sbSql.append("and [menu_id_two] = '' ");
            // 删除原来的信息
            callDBProc("p_exec_sql_util", new Object[] { sbSql.toString() });
            // 添加新的信息
            connection = SpringBeanFactory.getConnection();
            // statementMenu = connection.prepareStatement("insert t_contract_subject values(?,?,?,?,?)");
            statementMenu = connection.prepareStatement("insert t_contract_subject (contract_subject_pk,subject_class_pk,contract_pk,subject_class_name,"
                       +"create_org_pk,create_user_pk,create_time) values(?,?,?,?,?,?,?)");
            for(String sID : resourcePks.split(",")) {
                SubjectClass subjectClass = (SubjectClass) getSpringHibernate().selectByPk("subjectClassPk", sID, SubjectClass.class); 
                statementMenu.setObject(1, new GuidGender(true).toString());// 主键
                statementMenu.setString(2, sID);// id
                statementMenu.setString(3, contractPk);// 用户id，现在没有用
                statementMenu.setString(4, subjectClass.getSubjectClassName());// 名称
                statementMenu.setString(5, getNonceOrgPk());
                statementMenu.setString(6, getNonceUserPk());
                statementMenu.setString(7, timeInstance());// 
                statementMenu.addBatch();
            }
            statementMenu.executeBatch();
            connection.commit();
            // 添加日志信息
            saveActionLog("修改了,合同主题词信息");
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        } finally {
            DBHelper.closeStatement(statementMenu);
            DBHelper.closeConnection(connection);
        }
    }
    
    

}
