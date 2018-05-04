/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.action.system.bulletin;

import com.ods.base.bo.system.bulletin.BulletinReceive;
import com.ods.base.bo.system.bulletin.BulletinViewInfo;
import com.ods.base.bo.system.user.bo.User;
import com.ods.util.UserContext;
import com.ods.util.action.ActionView;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.resource.ResourceUtil;
import com.ods.util.type.StringUtil;

/**
 *<b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 *<b>文件名:</b><br>
 * 
 *BulletinReceiveAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *BulletinReceiveAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *BulletinReceiveAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *公告接收信息<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2012-1-13, cause, wang_zr, 新建<br>
 * 
 *@author :wang_zr
 *@since :2012-1-13
 *@version:1.0
 */
public class BulletinReceiveAction extends ActionView {

    /**
     *属性名：serialVersionUID、类型：long、作成日：2011-3-18.<br>
     *含义：
     */
    private static final long serialVersionUID = 7314000143213499223L;

    private BulletinReceive bulletinReceive;

    /**
     *bulletinReceive的获取.
     * 
     * @return bulletinReceive值返回.
     */
    public BulletinReceive getBulletinReceive() {
        return bulletinReceive;
    }

    /**
     *bulletinReceive的值设定
     * 
     * @param bulletinReceive 设定bulletinReceive的值.
     */
    public void setBulletinReceive(BulletinReceive bulletinReceive) {
        this.bulletinReceive = bulletinReceive;
    }

    /**
     *公告接收信息列表.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.base.action.system.bulletin<br>
     *方法名:listInfo方法.<br>
     * 
     *@author:wang_zr
     *@since :1.0:2012-1-13
     *@return
     */
    public String listInfo() {
        try {
            QueryCondition qc = newQueryConditionOfTable(getRequest(), false);
            QueryResult qr = null;
            // 公告标题
            String bulletinTitle = getRequest().getParameter("bulletinTitle");
            if(!StringUtil.empty(bulletinTitle)) {
                qc.put("bulletinTitle", bulletinTitle);
            }
            // 公告类型
            String bulletinType = getRequest().getParameter("bulletinType");
            if(!StringUtil.empty(bulletinType)) {
                qc.equals("bulletinType", bulletinType);
            }
            // 发送时间
            String createTimeS = getRequest().getParameter("createTimeS");
            if(!StringUtil.empty(createTimeS)) {
                qc.greateEquals("createTime", createTimeS + " 00:00:00");
            }
            String createTimeE = getRequest().getParameter("createTimeE");
            if(!StringUtil.empty(createTimeE)) {
                qc.lessEquals("createTime", createTimeE + " 59:59:59");
            }
            // 待阅/已阅
            String isread = getRequest().getParameter("isread");
            if(!StringUtil.empty(isread)) {
                qc.equals("bulletinIsread", isread);
            }
            // 如果是已发公告中的查看，不加以下条件
            if(StringUtil.empty(getRequest().getParameter("isSended"))) {
                User user = UserContext.getUserContext(getRequest()).getUser();
                qc.equals("sendType", getRequest().getParameter("sendType"));
                qc.equals("userPk", user.getUserPk());
            } else {
                qc.equals("bulletinPk", getRequest().getParameter("bulletinPk"));
            }
            qc.orderDesc("createTime");
            qr = getSpringHibernate().select(qc, BulletinViewInfo.class);
            getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
            String[] fields = { "viewPk", "bulletinPk", "sendType", "bulletinTitle", "imgPath", "filePath", "fileName",
                    "bulletinNote", "bulletinType", "isDraft", "createOrgPk", "createUserPk", "deleteType", "createTime",
                    "receivePk", "userPk", "bulletinIsread", "receiveOrgPk", "receiveUserPk", "receiveDeleteType",
                    "receiveCreateTime", "userName", "createUserName"};
            getRequest().setAttribute(SHOW_TABLE_COLMUN_NAME, fields);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            return ERROR;
        }
    }

    /**
     *更改接收公告的阅读状态.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.base.action.system.bulletin<br>
     *方法名:isRead方法.<br>
     * 
     *@author:wang_zr
     *@since :1.0:2012-1-13
     *@return
     */
    public String isRead() {
        String receivePk = getRequest().getParameter("receivePk");
        User user = UserContext.getUserContext(getRequest()).getUser();
        try {
            BulletinReceive bulletinReceive = (BulletinReceive) getSpringHibernate().selectByPk("receivePk", receivePk,
                    BulletinReceive.class);
            bulletinReceive.setBulletinIsread(NUM_1);
            bulletinReceive.setCreateOrgPk(user.getOrgPk());
            bulletinReceive.setCreateUserPk(user.getUserPk());
            bulletinReceive.setCreateTime(timeInstance());
            getSpringHibernate().update(bulletinReceive);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }

    /**
     *删除已阅公告信息.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.base.action.system.bulletin<br>
     *方法名:deleteInfo方法.<br>
     * 
     *@author:wang_zr
     *@since :1.0:2012-1-13
     *@return
     */
    public String deleteInfo() {
        String receivePk = getRequest().getParameter("receivePk");
        try {
            BulletinReceive bulletinReceive = (BulletinReceive) getSpringHibernate().selectByPk("receivePk", receivePk,
                    BulletinReceive.class);
            bulletinReceive.setDeleteType(NUM_1);
            getSpringHibernate().update(bulletinReceive);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }
}
