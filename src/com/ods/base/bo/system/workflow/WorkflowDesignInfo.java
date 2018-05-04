/**
*copyright(C)2011
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.base.bo.system.workflow;
/**
 *<b>系统名称:</b><b>
 *武警遵义支队按纲建队系统
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 *<b>文件名:</b><br>
 *
 *WorkflowDesignInfo.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *WorkflowDesignInfo类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *WorkflowDesignInfo类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *工作流设计的实体类<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2011-12-22,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :10325431@qq.com
 *@since  :2011-12-22
 *@version:1.0
 */
public class WorkflowDesignInfo {
   //主键
    private String designInfoPk ;
     //流程名称
     private String  workflowName     ;
    //流程保存文件名(含路径)
    private String  workflowFileName    ;
     //流程类型 0：全局流程 1：个人定义流程
     private String   workflowType    ;
    //创建人主键
     private String  createUserPk ;
     //创建时间
      private String   createTime;
    /**
     *designInfoPk的获取.
     *@return designInfoPk值返回.
     */
    public String getDesignInfoPk() {
        return designInfoPk;
    }
    /**
     *designInfoPk的值设定
     *@param designInfoPk 设定designInfoPk的值.
     */
    public void setDesignInfoPk(String designInfoPk) {
        this.designInfoPk = designInfoPk;
    }
    /**
     *workflowName的获取.
     *@return workflowName值返回.
     */
    public String getWorkflowName() {
        return workflowName;
    }
    /**
     *workflowName的值设定
     *@param workflowName 设定workflowName的值.
     */
    public void setWorkflowName(String workflowName) {
        this.workflowName = workflowName;
    }
    /**
     *workflowFileName的获取.
     *@return workflowFileName值返回.
     */
    public String getWorkflowFileName() {
        return workflowFileName;
    }
    /**
     *workflowFileName的值设定
     *@param workflowFileName 设定workflowFileName的值.
     */
    public void setWorkflowFileName(String workflowFileName) {
        this.workflowFileName = workflowFileName;
    }
    /**
     *workflowType的获取.
     *@return workflowType值返回.
     */
    public String getWorkflowType() {
        return workflowType;
    }
    /**
     *workflowType的值设定
     *@param workflowType 设定workflowType的值.
     */
    public void setWorkflowType(String workflowType) {
        this.workflowType = workflowType;
    }
    /**
     *createUserPk的获取.
     *@return createUserPk值返回.
     */
    public String getCreateUserPk() {
        return createUserPk;
    }
    /**
     *createUserPk的值设定
     *@param createUserPk 设定createUserPk的值.
     */
    public void setCreateUserPk(String createUserPk) {
        this.createUserPk = createUserPk;
    }
    /**
     *createTime的获取.
     *@return createTime值返回.
     */
    public String getCreateTime() {
        return createTime;
    }
    /**
     *createTime的值设定
     *@param createTime 设定createTime的值.
     */
    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
      
}
