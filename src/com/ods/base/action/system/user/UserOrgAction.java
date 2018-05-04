/**
 *copyright(C)2010
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.action.system.user;
 

import com.ods.util.action.ActionView;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.resource.ResourceUtil;
import com.ods.util.type.StringUtil;

/**
 * <b>系统名称:</b><b> 特情刑嫌管理 </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * UserOrgAction.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * UserOrgAction类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * UserOrgAction类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 用户组织机构业务处理过程<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2010-12-25, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2010-12-25
 * @version:1.0
 */
public class UserOrgAction extends ActionView {

    /**
    *属性名：serialVersionUID、类型：long、作成日：2010-12-25.<br>
    *含义：
    */
    private static final long serialVersionUID = 3430979617825546898L;
    /**
     * 属性名：userOrg、类型：UserOrg、作成日：2010-12-25.<br>
     * 含义：用户组织机构实体类
     */
    private UserOrg userOrg;

    /**
     * userOrg的获取.
     * 
     * @return userOrg值返回.
     */
    public UserOrg getUserOrg() {
        return userOrg;
    }

    /**
     * userOrg的值设定
     * 
     * @param userOrg 设定userOrg的值.
     */
    public void setUserOrg(UserOrg userOrg) {
        this.userOrg = userOrg;
    }

    /**
     * 翻页的用户组织机构列表.<br>
     * 工程名:sumpolice<br>
     * 包名:com.ods.rbac.action.user<br>
     * 方法名:userOrgSelectList方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2010-12-25
     * @return
     */
    public String userOrgSelectList() {
        String queryUserName = getRequest().getParameter("queryUserName");
        String queryUserRealname = getRequest().getParameter("queryUserRealname"); 
        
        QueryCondition qc = newQueryConditionOfTable(getRequest());
        if(!StringUtil.empty(queryUserName)){
            qc.equals("userName", queryUserName);
        }
        if(!StringUtil.empty(queryUserRealname)){
            qc.equals("userRealname", queryUserRealname);
        }  
        qc.orderDesc("createTime");
        try {
            QueryResult qr=this.getSpringHibernate().select(qc, UserOrg.class);
            getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
            //String[] fields = { "userPk", "orgPk", "userNo","userLoginName","userRealname","userSex","userState","orgWardNo","orgPoliceTeam","orgName","createTime" };
            String[] fields = { "userPk", "orgPk", "userNo","userLoginName","userRealname","userSex","userState","orgWardNo","orgName","createTime" };
            getRequest().setAttribute(SHOW_TABLE_COLMUN_NAME, fields);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }

        return SUCCESS;
    }
}
