/**
*copyright(C)2015
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.data.action;

import com.ods.data.bo.contractsubject.ContractSubject;
import com.ods.data.bo.subjectclass.SubjectClass;
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
 *KeyWordAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *KeyWordAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *KeyWordAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *检索词处理<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2015年5月5日,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :10325431@qq.com
 *@since  :2015年5月5日
 *@version:1.0
 */
public class KeyWordAction extends   ActionView {

    /**
    *属性名：serialVersionUID、类型：long、作成日：2015年5月5日.<br>
    *含义：
    */
    private static final long serialVersionUID = -3962171264404335095L;
    
    SubjectClass subjectClass = new SubjectClass();
    
    /**
     *查询条件.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:getQc方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年5月5日
     *@return
    */
    public QueryCondition getQc() {
        QueryCondition qc = newQueryConditionOfTable(getRequest());
        QueryCondition qc1 = new QueryCondition();
        
        QueryResult qr = null; QueryResult query = new QueryResult();
        String contractPk = getRequest().getParameter("contractPk");
        if(!StringUtil.empty(contractPk)) {
            qc1.equals("contractPk", contractPk);
        }
        //qc1.equals("isKeyWord", "0");
        qc1.equals("deleteType", "0");
        try {
              //找出合同所以的分类
             qr = getSpringHibernate().select(qc1, ContractSubject.class);
             for(Object objectv : qr) {
                 ContractSubject ob = (ContractSubject) objectv;
                 QueryCondition qctemp =new QueryCondition();
                 qctemp.put("fatherPkAll", ob.getSubjectClassPk());
                 qctemp.equals("isKeyWord","1");
                 System.out.println(ob.getSubjectClassPk());
                 //所以分类下的关键词
                 QueryResult qrtemp  = getSpringHibernate().select(qctemp, SubjectClass.class);
                 for(Object obtemp : qrtemp) {
                     SubjectClass sc = (SubjectClass) obtemp;
                     boolean bl = true;
                     for(int i=0;i<qr.size();i++){
                         ContractSubject objtemp =(ContractSubject) qr.get(i);
                         if(objtemp.getSubjectClassPk().equals(sc.getSubjectClassPk())){
                             bl = false;
                         }
                     }
                     if(bl) query.add(sc.getSubjectClassPk());
                 }
             }
        } catch(Throwable e) {
        }
        
        
       String subjectClassPk = getRequest().getParameter("subjectClassPk");
        if(!StringUtil.empty(subjectClassPk)) {
            qc.put("fatherPkAll", subjectClassPk);
        }else{
           qc.equals("subjectClassPk", SubjectClass.ROOT_NODE_PK);   
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
        qc.orderAsc("orderNo");
        qc.orderDesc("createTime");
        return qc;
    }
    
    
    
    public String listInfo() {
        QueryCondition qc = getQc();
        QueryResult qr = null;
        try {
            qr = getSpringHibernate().select(qc, SubjectClass.class);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            qr = null;
        }
        
        getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
        String[] fields = { "subjectClassPk","fatherPk","fatherPkAll","subjectClassName","aliasName1",
                "aliasName2","aliasName3","subjectClassEname","aliasEname1","aliasEname2","aliasEname3",
                "aliasEname4","aliasEname5","retain1","retain2","isKeyWord","state","orderNo","memo","createOrgPk"
                ,"createUserPk","createTime","deleteType","aliasName4","aliasName5","aliasName6","aliasEname6",
                "aliasEname7","aliasEname8","aliasEname9","retain3"};
        getRequest().setAttribute(SHOW_TABLE_COLMUN_NAME, fields);
        return SUCCESS;
    }
    
    
    
    @SuppressWarnings("unused")
    public String selectInfo() {
        QueryCondition qc = new QueryCondition(getRequest());
        String contractPk = getRequest().getParameter("contractPk");
        
        String[] subjectClassPks = subjectClass.getSubjectClassPks();
        
        try {
           for(int i=0;i<subjectClassPks.length;i++){
               String subjectClassPk =subjectClassPks[i];
               subjectClassPk = subjectClassPk.replace("'", "");
               SubjectClass sc = (SubjectClass) getSpringHibernate().selectByPk("subjectClassPk", subjectClassPk, SubjectClass.class);
               ContractSubject cs = new  ContractSubject ();
               cs.setCreateOrgPk(getNonceOrgPk());
               cs.setCreateUserPk(getNonceUserPk());
               cs.setCreateTime(timeInstance());
               cs.setContractPk(contractPk);
               cs.setSubjectClassPk(subjectClassPk);
               cs.setSubjectClassName(sc.getSubjectClassName());
               cs.setIsKeyWord(1);
               
               
               getSpringHibernate().save(cs);
               
           }
           setRequestMessage("完成操作", true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }



    /**
     *subjectClass的获取.
     *@return subjectClass值返回.
     */
    public SubjectClass getSubjectClass() {
        return subjectClass;
    }



    /**
     *subjectClass的值设定
     *@param subjectClass 设定subjectClass的值.
     */
    public void setSubjectClass(SubjectClass subjectClass) {
        this.subjectClass = subjectClass;
    }
    
    

}
