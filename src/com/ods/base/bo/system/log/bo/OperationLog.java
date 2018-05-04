/**
 *copyright(C)2010
 *Ods信息技术软件有限公司& Service Corporation All rights reserved
 */
package com.ods.base.bo.system.log.bo;

/**
 *<b>系统名称:</b><b> 紫薇地产998幸福热线 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 *<b>文件名:</b><br>
 * 
 *Operationlog.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *Operationlog类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *Operationlog类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *系统日志<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2010-5-7, cause, wangzr, 新建<br>
 * 
 *@author :wangzr
 *@since :2010-5-7
 *@version:1.0
 */
public class OperationLog {
    /**
     *属性名：logPk、类型：String、作成日：2010-12-10.<br>
     *含义：主键
     */
    private String logPk;

    /**
     *属性名：userPk、类型：String、作成日：2010-12-10.<br>
     *含义：操作人姓名
     */
    private String userPk;
    /**
     *属性名：userName、类型：String、作成日：2010-12-10.<br>
     *含义：操作人姓名
     */
    private String userName;
    /**
     *属性名：firstOrgPk、类型：String、作成日：2010-12-10.<br>
     *含义：操作人姓名
     */
    private String firstOrgPk;

    /**
     *属性名：actionContent、类型：String、作成日：2010-12-10.<br>
     *含义：操作的内容
     */
    private String actionContent;

    /**
     *属性名：actionIp、类型：String、作成日：2010-12-10.<br>
     *含义：操作IP
     */
    private String actionIp;

    /**
     *属性名：createTime、类型：String、作成日：2010-12-10.<br>
     *含义：创建时间
     */
    private String createTime;

    private String logShowText;

    /**
     *logShowText的获取.
     *@return logShowText值返回.
     */
    public String getLogShowText() {
        return logShowText;
    }

    /**
     *logShowText的值设定
     *@param logShowText 设定logShowText的值.
     */
    public void setLogShowText(String logShowText) {
        this.logShowText = logShowText;
    }
    
    public String getLogPk() {
        return logPk;
    }

    public void setLogPk(String logPk) {
        this.logPk = logPk;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getActionContent() {
        return actionContent;
    }

    public void setActionContent(String actionContent) {
        this.actionContent = actionContent;
    }

    public String getActionIp() {
        return actionIp;
    }

    public void setActionIp(String actionIp) {
        this.actionIp = actionIp;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    /**
     *userPk的获取.
     *@return userPk值返回.
     */
    public String getUserPk() {
        return userPk;
    }

    /**
     *userPk的值设定
     *@param userPk 设定userPk的值.
     */
    public void setUserPk(String userPk) {
        this.userPk = userPk;
    }

    /**
     *firstOrgPk的获取.
     *@return firstOrgPk值返回.
     */
    public String getFirstOrgPk() {
        return firstOrgPk;
    }

    /**
     *firstOrgPk的值设定
     *@param firstOrgPk 设定firstOrgPk的值.
     */
    public void setFirstOrgPk(String firstOrgPk) {
        this.firstOrgPk = firstOrgPk;
    }

}
