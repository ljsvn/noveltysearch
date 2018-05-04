/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.action.system.org;

import com.ods.base.bo.system.org.bo.Organization;
import com.ods.base.bo.system.user.bo.User;
import com.ods.util.UserContext;
import com.ods.util.action.ActionView;
import com.ods.util.hibernate.SpringHibernate;
import com.ods.util.hibernate.query.OrderEntry;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.pinyin.PingyinUtil;
import com.ods.util.resource.ResourceUtil;
import com.ods.util.spring.SpringBeanFactory;
import com.ods.util.type.NumberUtil;
import com.ods.util.type.StringUtil;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * OrgAction.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * OrgAction类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * OrgAction类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 组织机构管理<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-1-4, cause, wang_zr, 新建<br>
 * 
 * @author :wang_zr
 * @since :2011-1-4
 * @version:1.0
 */
public class OrgAction extends ActionView {

    /**
     * 属性名：serialVersionUID、类型：long、作成日：2011-1-4.<br>
     * 含义：序列化
     */
    private static final long serialVersionUID = -3575714280407336934L;

    /**
     * 属性名：organization、类型：Organization、作成日：2009-8-28.<br>
     * 含义：域模型
     */
    private Organization org;

    /**
     * org的获取.
     * 
     * @return org值返回.
     */
    public Organization getOrg() {
        return org;
    }

    /**
     * org的值设定
     * 
     * @param org 设定org的值.
     */
    public void setOrg(Organization org) {
        this.org = org;
    }

    /**
     * 一级组织机构树形菜单.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.bo.system.org.action<br>
     * 方法名:findOrgInfoOfJson方法.<br>
     * 
     * @author:wang_zr
     * @since :1.0:2011-1-4
     * @return
     */

    public String treeInfoFirstOrg() {
        String strOrgPk = StringUtil.toEmptySafe(getRequest().getParameter("orgPk"), UserContext.getUserContext(getRequest())
                .getUser().getFirstOrgPk());
        String orgClassify = StringUtil.toEmptySafe(getRequest().getParameter("orgClassify"), "0");
        // strOrgPk = strOrgPk.length() > 30 ? strOrgPk:
        // Organization.ROOT_NODE_PK;
        // 声明JSON格式的字符串
        StringBuffer sb = new StringBuffer();
        sb.append("[");
        try {
            // 查询登录用户一级组织机构的信息
            // 如果是超级用户管理员，所有的组织机构都出来
            User user = UserContext.getUserContext(getRequest()).getUser();
            QueryCondition qc = null;
            if(StringUtil.equals(user.getUserLoginName(), "admin") || !StringUtil.empty(getRequest().getParameter("all"))) {
                qc = new QueryCondition(getRequest());
            } else {
                qc = new QueryCondition(getRequest());
            }
            qc.equals("fatherOrgPk", Organization.ROOT_NODE_PK);
            qc.equals("orgClassify", orgClassify);
            qc.equals("deleteType", Organization.NUM_0);
            qc.order("nodeOrderby", OrderEntry.ORDER_ASC);
            QueryResult qr = getSpringHibernate().select(qc, Organization.class);
            // 遍历集合
            for(Object object : qr) {
                Organization org = (Organization) object;
                if(StringUtil.equals(org.getFatherOrgPk(), Organization.ROOT_NODE_PK)) {
                    // 拼接未被删除的信息
                    orgTreeMake(strOrgPk, sb, qr, org, false, true);
                }

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

    /**
     * 所有生产组织机构树形菜单.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.bo.system.org.action<br>
     * 方法名:findOrgInfoOfJson方法.<br>
     * 
     * @author:wang_zr
     * @since :1.0:2011-1-4
     * @return
     */

    public String treeInfo() {
        String strOrgPk = StringUtil.toEmptySafe(getRequest().getParameter("orgPk"), UserContext.getUserContext(getRequest())
                .getUser().getFirstOrgPk());
        String orgClassify = StringUtil.toEmptySafe(getRequest().getParameter("orgClassify"), "0");
        // strOrgPk = strOrgPk.length() > 30 ? strOrgPk:
        // Organization.ROOT_NODE_PK;
        // 声明JSON格式的字符串
        StringBuffer sb = new StringBuffer();
        sb.append("[");
        try {
            QueryCondition qc = new QueryCondition(getRequest());
            qc.equals("orgClassify", orgClassify);
            qc.equals("deleteType", Organization.NUM_0);
            qc.order("nodeOrderby", OrderEntry.ORDER_ASC);
            QueryResult qr = getSpringHibernate().select(qc, Organization.class);
            // 遍历集合
            for(Object object : qr) {
                Organization org = (Organization) object;
                // 拼接未被删除的信息
                orgTreeMake(strOrgPk, sb, qr, org, true, true);
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

    /**
     *拼接组织机构树详细内容.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.base.action.system.org<br>
     *方法名:orgTreeMake方法.<br>
     * 
     *@author:hou.manyuan@163.com
     *@since :1.0:2011-4-17
     *@param strOrgPk
     *@param sb
     *@param qr
     *@param org
     *@param queryType：true:显示所有的组织机构，false:只显示1级组织机构
     *@param ifchecked：true:有checkbox，false:无checkbox
     */
    private void orgTreeMake(String strOrgPk, StringBuffer sb, QueryResult qr, Organization org, boolean queryType,
            boolean ifchecked) {
        // 如果当前机构信息父主键为所查义的机构信息则加载到树型节点中
        if(StringUtil.equals(org.getFatherOrgPk(), strOrgPk)) {
            if(sb.length() > 1) {
                sb.append(",");
            }
            sb.append("{text:'");
            //sb.append("[<span style=color:red >");
            //sb.append(org.getOrgType());
            //sb.append("</span>");
            //sb.append("<span style=color:red >").append("-");
            //sb.append(org.getOrgType()).append("</span>").append("]");
            sb.append(org.getOrgName());
            if(queryType) {
                Boolean falg = true;
                for(Object objectv : qr) {
                    Organization orgv = (Organization) objectv;
                    if(StringUtil.equals(orgv.getFatherOrgPk(), org.getOrgPk())) {
                        falg = false;
                        break;
                    }
                }
                sb.append("',leaf:").append(falg);
            } else {
                sb.append("',leaf:").append(true);
            }
            sb.append(",orgPk:'").append(org.getOrgPk()).append("'");
            sb.append(",orgName:'").append(org.getOrgName()).append("'");
            sb.append(",fatherOrgPkAll:'").append(org.getFatherOrgPkAll()).append("'");
            sb.append(",firstOrgPk:'").append(org.getFirstOrgPk()).append("'");
            sb.append(",orgClassify:'").append(org.getOrgClassify()).append("'");
            sb.append(",id:'").append(org.getOrgPk()).append("'");
            if(ifchecked) {
                sb.append(",checked:").append(false);
            }
            sb.append("}");
        }
    }

    // 下拉组织机构树
    public String comboxTreeInfo() {
        String strOrgPk = getRequest().getParameter("node");
        String orgClassify = StringUtil.toEmptySafe(getRequest().getParameter("orgClassify"), "0");
        if(StringUtil.equals(strOrgPk, "0")) {
            strOrgPk = "-1";
        }
        // 声明JSON格式的字符串
        StringBuffer sb = new StringBuffer();
        sb.append("[");
        try {
            // 查询所有组织机构的信息
            QueryCondition qc = new QueryCondition(getRequest());
            qc.equals("orgClassify", orgClassify);
            qc.equals("deleteType", Organization.NUM_0);
            qc.order("nodeOrderby", OrderEntry.ORDER_ASC);
            QueryResult qr = getSpringHibernate().select(qc, Organization.class);
            // 遍历集合
            for(Object object : qr) {
                Organization org = (Organization) object;
                orgTreeMake(strOrgPk, sb, qr, org, true, false);
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

    // 组织机构和员工树
    public String orgUserTreeInfo() {
        try {
            String strOrgPk = StringUtil.toEmptySafe(getRequest().getParameter("orgPk"), Organization.ROOT_NODE_PK);
            Object organiza = getSpringHibernate().selectByPk("orgPk", strOrgPk, Organization.class);
            String orgClassify = StringUtil.toEmptySafe(getRequest().getParameter("orgClassify"), "0");
            StringBuffer treeNode = new StringBuffer();
            treeNode.append("[");

            QueryCondition qcOrg = new QueryCondition();
            qcOrg.equals("deleteType", NUM_0);
            qcOrg.equals("orgClassify", orgClassify);
            qcOrg.equals("fatherOrgPk", strOrgPk);

            qcOrg.order("nodeOrderby", OrderEntry.ORDER_ASC);
            QueryResult qrOrg = getSpringHibernate().select(qcOrg, Organization.class);
            for(Object object : qrOrg) {
                Organization organization = (Organization) object;
                if(treeNode.length() > 1) {
                    treeNode.append(",");
                }
                treeNode.append("{text:'").append(organization.getOrgName());
                treeNode.append("',orgPk:'").append(organization.getOrgPk());
                treeNode.append("',leaf:false");
                treeNode.append(",orgClassify:'").append(organization.getOrgClassify()).append("'");
                treeNode.append(",checked:false");
                treeNode.append("}");
            }

            QueryCondition qc = new QueryCondition();
            qc.equals("deleteType", NUM_0);
            qc.equals("orgPk", strOrgPk);
            qc.notEquals("orgPk", Organization.ROOT_NODE_PK);
            QueryResult qr = getSpringHibernate().select(qc, User.class);
            for(Object object : qr) {
                User user = (User) object;
                if(treeNode.length() > 1) {
                    treeNode.append(",");
                }
                String userName = user.getUserRealName();
                treeNode.append("{text:'").append(userName);
                treeNode.append("',userPk:'").append(user.getUserPk());
                treeNode.append("',userName:'").append(userName);
                treeNode.append("',orgPk:'").append(user.getOrgPk());
                treeNode.append("',orgName:'").append(null == organiza ? "": ((Organization) organiza).getOrgName());
                treeNode.append("',leaf:true");
                treeNode.append(",checked:").append(false);
                treeNode.append("}");
            }

            treeNode.append("]");
            getRequest().setAttribute("JSON", treeNode);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            return NONE;
        }
    }

    /**
     * 新增分厂的时候初始化四条库房信息 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.org<br>
     * 方法名:addWarehouse方法.<br>
     * 
     * @author:wangpei
     * @since :1.0:2011-3-10
     * @param org
     * @throws Throwable
     */
    // private void addWarehouse(Organization org) throws Throwable {
    // String warehouseNames[] = { "材料库", "工具库", "在制品库 ", "成品库" };
    // WarehouseBaseInfo warehouseBaseInfo = new WarehouseBaseInfo();
    // for(int i = 0; i <= 3; i++) {
    // String warehouseNo = "000" + (i + 1);
    // String warehouseName = org.getOrgName() + warehouseNames[i];
    // warehouseBaseInfo.setWarehouseNo(warehouseNo);
    // warehouseBaseInfo.setWarehouseName(warehouseName);
    // warehouseBaseInfo.setWarehouseType(i);
    // warehouseBaseInfo.setWarehouseOrgPk(org.getOrgPk());
    // warehouseBaseInfo.setCreateUserPk(org.getCreateUserPk());
    // warehouseBaseInfo.setCreateOrgPk(org.getOrgPk());
    // warehouseBaseInfo.setCreateTime(org.getCreateTime());
    // warehouseBaseInfo.setDeleteType(NUM_0);
    // getSpringHibernate().save(warehouseBaseInfo);
    // saveActionLog("在\"库房中\"新增了" + warehouseName);
    // }
    // }
    /**
     * 新增保存组织机构.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.bo.system.org.action<br>
     * 方法名:addInfo方法.<br>
     * 
     * @author:wang_zr
     * @since :1.0:2011-1-4
     * @return
     */
    public String addInfo() {
        if(validateUnique()) { // 验证通过
            try {
                // org的父主键如果为空则默认加在根节点下
                if(StringUtil.empty(org.getFatherOrgPk())) {
                    org.setFatherOrgPk(Organization.ROOT_NODE_PK);
                    org.setFatherOrgPkAll(Organization.ROOT_NODE_PK);
                }
                // 设置基本信息
                org.setCreateUserPk(getNonceUserPk());
                org.setCreateTime(timeInstance());
                // 保存组织机构对象
                // 设置汉语拼音
                String orgName = org.getOrgName();
                org.setFirstAlphabet(PingyinUtil.converterToFirstSpell(orgName));
                org.setFullAlphabet(PingyinUtil.converterToSpell(orgName));
                getSpringHibernate().save(org);
                if(StringUtil.equals(org.getFatherOrgPk(), Organization.ROOT_NODE_PK)) {
                    org.setFirstOrgPk(org.getOrgPk());
                    getSpringHibernate().update(org);
                }
                saveActionLog("在\"组织机构中\"新增了" + org.getOrgName());
                setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
                return SUCCESS;
            } catch(Throwable e) {
                LogUtil.writeLog(e);
                setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
                return ERROR;
            }
        } else {
            // 验证失败
            getRequest().setAttribute("msg", getText("该组织机构已存在，请重新输入！"));
            return ERROR;
        }
    }

    // 组织机构拼音码
    public String alphabetByName() {
        try {
            String orgName = getRequest().getParameter("orgName");
            setRequestMessage(PingyinUtil.converterToFirstSpell(orgName), true);
            return SUCCESS;
        } catch(Throwable e) {
            // 返回错误信息
            LogUtil.writeLog(e);
            return ERROR;
        }
    }

    // 组织机构名称唯一性验证
    public boolean validateUnique() {
        String orgPk = getRequest().getParameter("orgPk");
        String orgName = getRequest().getParameter("orgName");
        // 0:表示新增页面；1：表示修改页面
        String validateFlag = getRequest().getParameter("validateFlag");
        boolean state = true;
        QueryCondition qc = new QueryCondition(getRequest());
        QueryResult qr = null;
        try {
            qc.order("nodeOrderby", OrderEntry.ORDER_ASC);
            qr = getSpringHibernate().select(qc, Organization.class);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
        }
        for(int i = 0; i < qr.size(); i++) {
            Organization org = (Organization) qr.get(i);
            org.getFatherOrgPk();
            if(NumberUtil.toInt(validateFlag) == 0) { // 新增验证
                if(StringUtil.equals(orgName, org.getOrgName()) && StringUtil.equals(orgPk, org.getFatherOrgPk())) {
                    state = false;
                    break;
                }
            } else if(NumberUtil.toInt(validateFlag) == 1) { // 修改验证
                String fatherPk = getRequest().getParameter("fatherPk");
                if(!StringUtil.equals(orgPk, org.getOrgPk()) && StringUtil.equals(orgName, org.getOrgName()) && StringUtil
                        .equals(fatherPk, org.getFatherOrgPk())) {
                    state = false;
                    break;
                }
            }
        }
        return state;
    }

    /**
     * 进入组织机构查看、修改页面<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.bo.system.org.action<br>
     * 方法名:updateOrgPage方法.<br>
     * 
     * @author:wang_zr
     * @since :1.0:2011-1-4
     * @return
     */
    public String modifyPage() {
        try {
            // 获得前台传过来的组织机构Pk
            String orgPk = getRequest().getParameter("orgPk");
            Organization org = (Organization) getSpringHibernate().selectByPk("orgPk", orgPk, Organization.class);
            getRequest().setAttribute("org", org);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }

    /**
     * 修改组织机构信息.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.bo.system.org.action<br>
     * 方法名:updateOrg方法.<br>
     * 
     * @author:wang_zr
     * @since :1.0:2011-1-4
     * @return
     */
    public String updateInfo() {
        Organization org = getOrg();
        if(validateUnique()) { // 验证通过
            try {
                // 设置汉语拼音
                String orgName = org.getOrgName();
                org.setFirstAlphabet(PingyinUtil.converterToFirstSpell(orgName));
                org.setFullAlphabet(PingyinUtil.converterToSpell(orgName));
                // 修改组织机构
                getSpringHibernate().update(org);
                saveActionLog("在\"组织机构中\"修改了" + org.getOrgName());
                setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
                return SUCCESS;
            } catch(Throwable e) {
                LogUtil.writeLog(e);
                setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
                return ERROR;
            }
        } else {
            // 验证失败
            getRequest().setAttribute("msg", getText("该组织机构已存在，请重新输入！"));
            return ERROR;
        }
    }

    /**
     * 删除指定的组织机构节点信息.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.bo.system.org.action<br>
     * 方法名:deleteOrg方法.<br>
     * 
     * @author:wang_zr
     * @since :1.0:2011-1-4
     * @return
     */
    public String deleteInfo() {
        // 获取前台传过来的参数
        String orgPk = getRequest().getParameter("orgPk");
        String deleteType = getRequest().getParameter("deleteType");
        // 1:新建组织机构对象
        Organization org = new Organization();
        // 2：为该对象设置pk
        org.setOrgPk(orgPk);
        try {
            // 3：删除组织 机构
            if(!StringUtil.empty(orgPk)) {
                // 4:判断组织机构下面是否存在用户
                QueryCondition qc = new QueryCondition(getRequest());
                QueryResult qr = null;
                qr = getSpringHibernate().select(qc, User.class);
                for(int i = 0; i < qr.size(); i++) {
                    User user = (User) qr.get(i);
                    if(StringUtil.equals(user.getOrgPk(), orgPk)) {
                        setRequestMessage("该组织机构下面存在用户，不能删除！", false);
                        return ERROR;
                    }
                }
                // 7:删除组织机构
                qc.equals("orgPk", orgPk);
                qc.batchUpdate("deleteType", deleteType);
                getSpringHibernate().batchUpdate(qc, Organization.class);
                saveActionLog("\"在组织及用户管理中\"删除了" + org.getOrgName());
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

    /**
     * 
     *根据pk查询分厂组织结构<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.base.action.system.org<br>
     *方法名:selectByPk方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2011-8-15
     *@param orgpk
     *@return
     */
    public static Organization selectByPk(String orgpk) {
        SpringHibernate springHibernate = (SpringHibernate) SpringBeanFactory.getBean("DAOProxy");

        try {
            return (Organization) springHibernate.selectByPk("orgPk", orgpk, Organization.class);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            return null;
        }
    }

    /**
     * 
     *webservice调用 查询生产单位.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.base.action.system.org<br>
     *方法名:queryFirstOrg方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2011-8-16
     *@param orgPk
     *@param orgName
     *@return
     */
    public static QueryResult queryFirstOrg(String orgPk, String orgName) {
        try {
            SpringHibernate springHibernate = (SpringHibernate) SpringBeanFactory.getBean("DAOProxy");
            QueryCondition qc = new QueryCondition();
            if(!StringUtil.empty(orgPk)) {
                qc.equals("orgPk", orgPk);
            }
            if(!StringUtil.empty(orgName)) {
                qc.equals("orgName", orgName);
            }
            qc.equals("fatherOrgPk", Organization.ROOT_NODE_PK);
            qc.equals("deleteType", Organization.NUM_0);
            qc.order("nodeOrderby", OrderEntry.ORDER_ASC);
            QueryResult tempqr = springHibernate.select(qc, Organization.class);
            QueryResult qr = new QueryResult();
            // 遍历集合
            for(Object object : tempqr) {
                Organization org = (Organization) object;
                if(StringUtil.equals(org.getFatherOrgPk(), Organization.ROOT_NODE_PK)) {
                    if(org.getDeleteType() == 0) {
                        qr.add(org);

                    }
                }

            }
            return qr;

        } catch(Throwable e) {
            LogUtil.writeLog(e);
            return null;
        }
    }
}
