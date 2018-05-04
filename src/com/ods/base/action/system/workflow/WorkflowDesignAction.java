/**
*copyright(C)2011
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.base.action.system.workflow;

import com.ods.base.bo.system.workflow.WorkflowDesignInfo;
import com.ods.util.action.ActionView;

/**
 *<b>系统名称:</b><b>
 *武警遵义支队按纲建队系统
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 *<b>文件名:</b><br>
 *
 *WorkflowDesignAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *WorkflowDesignAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *WorkflowDesignAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *流程设计器的业务处理类<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2011-12-22,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :10325431@qq.com
 *@since  :2011-12-22
 *@version:1.0
 */
public class WorkflowDesignAction extends ActionView {
    
    private WorkflowDesignInfo workflowDesignInfo;

    /**
     *workflowDesignInfo的获取.
     *@return workflowDesignInfo值返回.
     */
    public WorkflowDesignInfo getWorkflowDesignInfo() {
        return workflowDesignInfo;
    }

    /**
     *workflowDesignInfo的值设定
     *@param workflowDesignInfo 设定workflowDesignInfo的值.
     */
    public void setWorkflowDesignInfo(WorkflowDesignInfo workflowDesignInfo) {
        this.workflowDesignInfo = workflowDesignInfo;
    }
    
    /**
     * 流程设计模板列表.<br>
     *工程名:MES<br>
     *包名:com.ods.base.action.system.workflow<br>
     *方法名:workFlowDesignList方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2011-12-22
     *@return
     */
    public String workFlowDesignList(){
        
        
        return SUCCESS;
    }

}
