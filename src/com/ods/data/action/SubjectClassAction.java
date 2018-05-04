/**
*copyright(C)2015
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.data.action;

import com.ods.data.bo.subjectclass.SubjectClass;
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
 *SubjectClassAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *SubjectClassAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *SubjectClassAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *主题分类Action<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2015年4月25日,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :10325431@qq.com
 *@since  :2015年4月25日
 *@version:1.0
 */
public class SubjectClassAction extends  ActionView{

    /**
    *属性名：serialVersionUID、类型：long、作成日：2015年4月25日.<br>
    *含义：
    */
    private static final long serialVersionUID = -4752588356335287034L;
    
    
    SubjectClass subjectClass = new SubjectClass();


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
    
    
    
    public String treeInfo() {
        String strOrgPk = StringUtil.toEmptySafe(getRequest().getParameter("subjectClassPk"), SubjectClass.ROOT_NODE_PK);
       
        // strOrgPk = strOrgPk.length() > 30 ? strOrgPk:
        // Organization.ROOT_NODE_PK;
        // 声明JSON格式的字符串
        StringBuffer sb = new StringBuffer();
        sb.append("[");
        try {
            QueryCondition qc = new QueryCondition(getRequest());
            qc.equals("deleteType", SubjectClass.NUM_0);
            String  isKeyWord=  getRequest().getParameter("isKeyWord");
            if(!StringUtil.empty(isKeyWord)) {
                qc.put("isKeyWord", isKeyWord);
            }
            QueryResult qr = getSpringHibernate().select(qc, SubjectClass.class);
            // 遍历集合
            for(Object object : qr) {
                SubjectClass sc = (SubjectClass) object;
                // 拼接未被删除的信息
                orgTreeMake(strOrgPk, sb, qr,sc, true, true);
            }
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        sb.append("]");
        getRequest().setAttribute("JSON", sb);
        return SUCCESS;
    }
    
    private void orgTreeMake(String strOrgPk, StringBuffer sb, QueryResult qr, SubjectClass org, boolean queryType,
            boolean ifchecked) {
        // 如果当前机构信息父主键为所查义的信息则加载到树型节点中
        if(StringUtil.equals(org.getFatherPk(), strOrgPk)) {
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
            sb.append(",id:'").append(org.getSubjectClassPk()).append("'");
            if(ifchecked) {
                sb.append(",checked:").append(false);
            }
            sb.append("}");
        }
    }
    
    public String addInfo() {
            try {
                // 设置基本信息
                subjectClass.setCreateUserPk(getNonceUserPk());
                subjectClass.setCreateTime(timeInstance());
                subjectClass.setCreateOrgPk(getNonceOrgPk());
                
                // 保存对象
                getSpringHibernate().save(subjectClass);
                saveActionLog("在\"分类主题词表中\"新增了" + subjectClass.getSubjectClassName());
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
     *@since :1.0:2015年4月26日
     *@return
    */
    public String modifyPage() {
        try {
            // 获得前台传过来的Pk
            String subjectClassPk = getRequest().getParameter("subjectClassPk");
            SubjectClass subjectClass = (SubjectClass) getSpringHibernate().selectByPk("subjectClassPk", subjectClassPk, SubjectClass.class);
            getRequest().setAttribute("subjectClass", subjectClass);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }
    
    /**
     *更新.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:updateInfo方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年4月26日
     *@return
    */
    public String updateInfo() {
        SubjectClass subjectClass = getSubjectClass();
        try {
            // 修改
            getSpringHibernate().update(subjectClass);
            saveActionLog("在\"分类和主题词中\"修改了" + subjectClass.getSubjectClassName());
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        
    }
    
    
    public String updateSubjectClass() {
        try {
            String subjectClassPk = getRequest().getParameter("subjectClassPk");
            if(!StringUtil.empty(subjectClassPk)) {
                SubjectClass subjectClass =(SubjectClass) getSpringHibernate().selectByPk("subjectClassPk", 
                        subjectClassPk, SubjectClass.class);
                getRequest().setAttribute("subjectClass", subjectClass);
            }

        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        return SUCCESS;
    }
    /**
     *删除.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.data.action<br>
     *方法名:deleteInfo方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年4月26日
     *@return
    */
    @SuppressWarnings("static-access")
    public String deleteInfo() {
        // 获取前台传过来的参数
        String subjectClassPk = getRequest().getParameter("subjectClassPk");
        String deleteType = getRequest().getParameter("deleteType");
        // 1:新建对象
        SubjectClass sc = new SubjectClass();
        // 2：为该对象设置pk
        sc.setSubjectClassPk(subjectClassPk);
        try {
            // 3：删除
            if(!StringUtil.empty(subjectClassPk)) {
                // 4:判断组织机构下面是否存在用户
                QueryCondition qc = new QueryCondition(getRequest());
                QueryResult qr = null;
                qc.equals("fatherPk",subjectClassPk);
                qc.equals("deleteType", subjectClass.NUM_0);
                qr = getSpringHibernate().select(qc, SubjectClass.class);
                
                    if(qr.size() > 0) {
                        setRequestMessage("还有下级，不能删除！", false);
                        return ERROR;
                    }
                // 7:删除组织机构
                QueryCondition qcsc = new QueryCondition(getRequest()); 
                qcsc.equals("subjectClassPk", subjectClassPk);
                qcsc.batchUpdate("deleteType", deleteType);
                getSpringHibernate().batchUpdate(qcsc, SubjectClass.class);
                saveActionLog("\"在分类和主题词管理中\"删除了" + sc.getSubjectClassName());
                setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
                return SUCCESS;
            } else {
                return ERROR;
            }
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }
    
    
    
    
    
    

}
