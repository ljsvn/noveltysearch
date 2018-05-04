/**
 *copyright(C)2012
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.action.system.org;

import com.ods.base.bo.system.org.bo.OrganizationDetail;
import com.ods.base.bo.system.user.bo.User;
import com.ods.util.UserContext;
import com.ods.util.action.ActionView;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.resource.ResourceUtil;
import com.ods.util.type.StringUtil;

/**
 *<b>系统名称:</b><b> 居家养老管理系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 *<b>文件名:</b><br>
 * 
 *OrgDetailAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *OrgDetailAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *OrgDetailAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *组织机构详细信息<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2012-4-18, cause, wangpei, 新建<br>
 * 
 *@author :wangpei
 *@since :2012-4-18
 *@version:1.0
 */
public class OrgDetailAction extends ActionView {

    /**
     *属性名：serialVersionUID、类型：long、作成日：2012-4-18.<br>
     *含义：
     */
    private static final long serialVersionUID = -5806533145690645719L;

    private OrganizationDetail organizationDetail = new OrganizationDetail();

    /**
     *organizationDetail的获取.
     * 
     * @return organizationDetail值返回.
     */
    public OrganizationDetail getOrganizationDetail() {
        return organizationDetail;
    }

    /**
     *organizationDetail的值设定
     * 
     * @param organizationDetail 设定organizationDetail的值.
     */
    public void setOrganizationDetail(OrganizationDetail organizationDetail) {
        this.organizationDetail = organizationDetail;
    }

    public String intoPage() {
        OrganizationDetail organizationDetail = new OrganizationDetail();
        String orgPk = getRequest().getParameter("orgPk");
        if(StringUtil.empty(orgPk)) {
            setRequestMessage("组织机构错误，请重新选择", false);
            return ERROR;
        }
        QueryCondition qc = new QueryCondition();
        QueryResult qr = new QueryResult();
        qc.equals("deleteType", NUM_0);
        qc.equals("orgPk", orgPk);
        try {
            qr = getSpringHibernate().select(qc, OrganizationDetail.class);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        if(qr.size() > 0) {
            organizationDetail = (OrganizationDetail)qr.get(NUM_0);
            String[] orgAddress = organizationDetail.getOrgAddress().split(">");
            if(orgAddress.length > 2) {
                getRequest().setAttribute("address1", orgAddress[1]);
                getRequest().setAttribute("address2", orgAddress[2]);
            }
        } else {
            User user = UserContext.getUserContext(getRequest()).getUser();
            organizationDetail.setOrgPk(orgPk);
            organizationDetail.setCreateUserPk(user.getUserPk());
            organizationDetail.setCreateTime(timeInstance());
            organizationDetail.setDeleteType(NUM_0);
        }
        getRequest().setAttribute("organizationDetail", organizationDetail);
        return SUCCESS;
    }

    /**
     *保存.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.data.action.station.demand<br>
     *方法名:modifyInfo方法.<br>
     * 
     *@author:wangpei
     *@since :1.0:2012-3-6
     *@return
     */
    public String modifyInfo() {
        OrganizationDetail organizationDetail = getOrganizationDetail();
        String orgAddress = getRequest().getParameter("address0") + ">" + getRequest().getParameter("address1") + ">" + getRequest().getParameter("address2");
        organizationDetail.setOrgAddress(orgAddress);
        try {
            if(StringUtil.empty(organizationDetail.getOrgDetailPk())) {
                getSpringHibernate().save(organizationDetail);
                saveActionLog("新增了组织机构详细信息");
            } else {
                getSpringHibernate().update(organizationDetail);
                saveActionLog("修改了组织机构详细信息");
            }
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
        return SUCCESS;
    }
}
