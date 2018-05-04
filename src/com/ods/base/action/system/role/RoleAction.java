/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.action.system.role;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.ods.base.bo.menu.xml.ChildMenuFour;
import com.ods.base.bo.menu.xml.ChildMenuThree;
import com.ods.base.bo.menu.xml.ChildMenuTwo;
import com.ods.base.bo.menu.xml.Menu;
import com.ods.base.bo.menu.xml.MenuDataCache;
import com.ods.base.bo.menu.xml.MenuOne;
import com.ods.base.bo.menu.xml.Portal;
import com.ods.base.bo.menu.xml.Portals;
import com.ods.base.bo.system.org.bo.Organization;
import com.ods.base.bo.system.role.bo.Role;
import com.ods.base.bo.system.role.bo.RoleMenu;
import com.ods.base.bo.system.role.bo.RoleOrg;
import com.ods.base.bo.system.role.bo.RolePortal;
import com.ods.util.UserContext;
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
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * RoleAction.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * RoleAction类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * RoleAction类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 角色信息管理<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-1-6, cause, cui_wenke, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-1-6
 * @version:1.0
 */
public class RoleAction extends ActionView {

    /**
     * 属性名：serialVersionUID、类型：long、作成日：2011-1-6.<br>
     * 含义：
     */
    private static final long serialVersionUID = 545170605735974620L;

    private Role role = new Role();

    /**
     * role的获取.
     * 
     * @return role值返回.
     */
    public Role getRole() {
        return role;
    }

    /**
     * role的值设定
     * 
     * @param role 设定role的值.
     */
    public void setRole(Role role) {
        this.role = role;
    }

    public String addPortalResourceInfo() {

        return SUCCESS;
    }

    /**
     * 角色的门户权限.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.role<br>
     * 方法名:rolePortalTreeInfo方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2011-1-10
     * @return
     */
    public String rolePortalTreeInfo() {
        try {
            // 角色主键
            String rolePk = getRequest().getParameter("rolePk");
            // 声明JSON格式的字符串
            StringBuffer treeNode = new StringBuffer();
            treeNode.append("[");
            if(!StringUtil.empty(rolePk)) {
                QueryCondition qc = new QueryCondition(getRequest());
                qc.equals("rolePk", rolePk);
                // 从数据库查询已有的门户权限信息
                QueryResult qr = getSpringHibernate().select(qc, RolePortal.class);
                // 声明门户组的权限集合
                Map<String, List<String>> portaMap = new HashMap<String, List<String>>();
                for(Object object : qr) {
                    RolePortal portal = (RolePortal) object;
                    if(!portaMap.containsKey(portal.getPortalsId())) {
                        portaMap.put(portal.getPortalsId(), new ArrayList<String>());
                    }
                    portaMap.get(portal.getPortalsId()).add(portal.getPortalId());
                }
                // 从文件读取所有门户权限
                List<Portals> portalsAllList = MenuDataCache.getInstance().getMenu().getPortalsList();

                for(Portals portals : portalsAllList) {
                    String id = portals.getId();
                    List<Portal> listPortal = portals.getPortalList();
                    if(treeNode.length() > 1) {
                        treeNode.append(",");
                    }
                    treeNode.append("{");
                    treeNode.append("resourcePk:'").append(portals.getId()).append("',text:'");
                    if(portals.getColumnNo() == 1) {
                        treeNode.append("页面左边Portal");
                    } else if(portals.getColumnNo() == 2) {
                        treeNode.append("页面中间Portal");
                    } else if(portals.getColumnNo() == 3) {
                        treeNode.append("页面右边Portal");
                    } else {
                        treeNode.append(portals.getColumnNo());
                    }

                    treeNode.append("'");
                    treeNode.append(",children:[");
                    int i = 0;
                    for(Portal portal : listPortal) {
                        if(i > 0) {
                            treeNode.append(",");
                        }
                        treeNode.append("{");
                        treeNode.append("resourcePk:'").append(portal.getId()).append("',text:'").append(portal.getTitle())
                                .append("'");
                        boolean havaReso = portaMap.containsKey(id) ? portaMap.get(id).contains(portal.getId()): false;
                        treeNode.append(",checked:").append(havaReso);
                        treeNode.append(",leaf:").append(true);
                        treeNode.append("}");
                        i++;

                    }
                    treeNode.append("]").append("}");
                }
            }
            if(treeNode.length() <= 1) {
                treeNode.append("{").append("text:'<font color=red>没有查询到相应的门户权限！</font>'").append(",leaf:true}");
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
     * 角色的门户权限展现.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.role<br>
     * 方法名:rolePortalTreeInfo方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2011-1-10
     * @return
     */
    public String rolePortalTreeInfoView() {
        try {
            // 角色主键
            String rolePk = getRequest().getParameter("rolePk");
            // 声明JSON格式的字符串
            StringBuffer treeNode = new StringBuffer();
            treeNode.append("[");
            if(!StringUtil.empty(rolePk)) {
                // 查询所有供应商的信息
                QueryCondition qc = new QueryCondition(getRequest());
                qc.equals("rolePk", rolePk);
                // 从数据库查询已有的门户权限信息
                QueryResult qr = getSpringHibernate().select(qc, RolePortal.class);
                // 声明门户组的权限集合
                Map<String, List<RolePortal>> portaMap = new HashMap<String, List<RolePortal>>();
                for(Object object : qr) {
                    RolePortal portal = (RolePortal) object;
                    if(!portaMap.containsKey(portal.getPortalsId())) {
                        portaMap.put(portal.getPortalsId(), new ArrayList<RolePortal>());
                    }
                    portaMap.get(portal.getPortalsId()).add(portal);
                }
                int j = 0;
                for(Iterator<Map.Entry<String, List<RolePortal>>> it = portaMap.entrySet().iterator(); it.hasNext();) {
                    Map.Entry<String, List<RolePortal>> entry = (Map.Entry<String, List<RolePortal>>) it.next();
                    String portalsId = entry.getKey();
                    // 门户对象
                    Portals portals = MenuDataCache.getInstance().getPortalsByPortalsId(portalsId);
                    List<RolePortal> rolePortalList = entry.getValue();
                    if(rolePortalList.size() > 0) {
                        // 添加父节点的JSON相关信息
                        treeNode.append("{");
                        treeNode.append("resourcePk:'");
                        treeNode.append(portals.getId());
                        treeNode.append("',text:'");
                        if(portals.getColumnNo() == 1) {
                            treeNode.append("页面左边Portal");
                        } else if(portals.getColumnNo() == 2) {
                            treeNode.append("页面中间Portal");
                        } else if(portals.getColumnNo() == 3) {
                            treeNode.append("页面右边Portal");
                        } else {
                            treeNode.append(portals.getColumnNo());
                        }
                        treeNode.append("',children:[");
                        for(int i = 0; i < rolePortalList.size(); i++) {
                            RolePortal rolePortal = rolePortalList.get(i);
                            treeNode.append("{");
                            treeNode.append("resourcePk:'");
                            treeNode.append(rolePortal.getPortalId());
                            treeNode.append("',text:'");
                            treeNode.append(MenuDataCache.getInstance().getPortalByPortalId(rolePortal.getPortalId()).getTitle());
                            treeNode.append("',leaf:true");
                            if(i == rolePortalList.size() - 1) {
                                treeNode.append("}");
                            } else {
                                treeNode.append("},");
                            }
                        }
                        if(j != portaMap.size() - 1) {
                            treeNode.append("]},");
                        } else {
                            treeNode.append("]}");
                        }
                        j++;
                    }
                }
            }
            if(treeNode.length() <= 1) {
                treeNode.append("{").append("text:'<font color=red>没有查询到相应的门户权限！</font>'").append(",leaf:true}");
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
     * 角色信息的JSON格式.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.role<br>
     * 方法名:roleTreeInfo方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2011-1-7
     * @return
     */
    public String roleTreeInfo() {
        try {
            String rolePk = getRequest().getParameter("rolePk");
            if(!StringUtil.empty(rolePk)) {
                // 声明JSON格式的字符串
                StringBuffer treeNode = new StringBuffer();
                treeNode.append("[");
                QueryCondition qc = null;
                if(StringUtil.equals(UserContext.getUserContext(getRequest()).getUser().getUserLoginName(), "admin")) {
                    qc = new QueryCondition(getRequest());
                } else {
                    qc = new QueryCondition(getRequest());
                }
                qc.equals("fatherRolePk", rolePk);
                QueryResult qr = getSpringHibernate().select(qc, Role.class);
                // 遍历集合
                for(Object obj : qr) {
                    Role role = (Role) obj;
                    if(treeNode.length() > 1) {
                        treeNode.append(",");
                    }
                    treeNode.append("{");
                    treeNode.append("rolePk:'").append(role.getRolePk());
                    String text = role.getRoleName();
                    // 判断禁用状态
                    treeNode.append("',text:'").append(text);
                    if(role.getRoleState() > 0) {
                        treeNode.append("<font color=#CC6600>[已禁用]</font>");
                    }
                    // 判断删除状态
                    if(role.getDeleteType() > 0) {
                        treeNode.append("<font color=#336600>[已删除]</font>");
                    }
                    treeNode.append("',checked:").append(false);
                    treeNode.append(",leaf:").append(true);
                    treeNode.append("}");

                }
                treeNode.append("]");
                getRequest().setAttribute("JSON", treeNode);
            }
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            return NONE;
        }
    }

    /**
     * 模块权限赋予权限时信息的JSON格式.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.role<br>
     * 方法名:resourceOneMenuTreeInfo方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2011-1-7
     * @return
     */
    public String resourceOneMenuTreeInfo() {
        try {// 角色主键
            String rolePk = getRequest().getParameter("rolePk");
            // 从文件读取菜单信息
            List<MenuOne> menuOneList = MenuDataCache.getInstance().getMenu().getMenuOneList();
            MenuDataCache.getInstance().sortOrderMenuOne(menuOneList);
            // 声明查询条件
            QueryCondition qc = new QueryCondition(getRequest());
            qc.equals("rolePk", rolePk);
            qc.equals("menuIdTwo", "");
            qc.orderAsc("menuOneOrder");
            // 查询数据库,找出该角色已经拥有的一级菜单
            QueryResult menuQr = getSpringHibernate().select(qc, RoleMenu.class);
            List<String> haveOneMenuList = new ArrayList<String>();
            for(int i = 0; i < menuQr.size(); i++) {
                RoleMenu menu = (RoleMenu) menuQr.get(i);
                haveOneMenuList.add(menu.getMenuIdOne());
            }
            // 声明返回的树形JSON
            StringBuffer sb = new StringBuffer("[");
            // {text:'首页',resourcePk:'firstPage',iconCls:'firstPage',checked:true,leaf:true}
            for(MenuOne menuOne : menuOneList) {
                sb.append("{text:'");
                sb.append(menuOne.getName());
                sb.append("',resourcePk:'");
                sb.append(menuOne.getId());
                sb.append("',iconCls:'");
                sb.append(menuOne.getId());
                sb.append("',leaf:true");
                if(haveOneMenuList.contains(menuOne.getId())) {
                    sb.append(",checked:true");
                } else {
                    sb.append(",checked:false");
                }
                sb.append("},");
            }
            sb.deleteCharAt(sb.length() - 1);
            sb.append("]");
            getRequest().setAttribute("JSON", sb);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            return ERROR;
        }
    }
    
    public String resourceOrgTreeInfo() {
        try {
            // 角色主键
            String rolePk = getRequest().getParameter("rolePk");
            String orgPk = getRequest().getParameter("orgPk");
            if(orgPk.equals("")){
                orgPk ="00000000-0000-0000-0000-000000000000"; 
            }
            // 从文件读取菜单信息
            List<MenuOne> menuOneList = MenuDataCache.getInstance().getMenu().getMenuOneList();
            MenuDataCache.getInstance().sortOrderMenuOne(menuOneList);
            // 声明查询条件
            QueryCondition qc = new QueryCondition(getRequest());
            //qc.equals("fatherOrgPk", Organization.ROOT_NODE_PK);
            qc.equals("deleteType", Organization.NUM_0);
            qc.order("nodeOrderby", OrderEntry.ORDER_ASC);
           
            QueryResult qrOrg = getSpringHibernate().select(qc, Organization.class);
            QueryCondition mqc = new QueryCondition(getRequest());
            mqc.equals("rolePk", rolePk);
            mqc.equals("deleteType", Organization.NUM_0);
            // 查询数据库,找出该角色已经拥有的组织
            QueryResult menuQr = getSpringHibernate().select(mqc, RoleOrg.class);
            List<String> haveOneMenuList = new ArrayList<String>();
          
            for(int i = 0; i < menuQr.size(); i++) {
                RoleOrg menu = (RoleOrg) menuQr.get(i);
                haveOneMenuList.add(menu.getOrgId());
            }
            // 声明返回的树形JSON
            StringBuffer sb = new StringBuffer("[");
            boolean ifchecked ;
            // {text:'首页',resourcePk:'firstPage',iconCls:'firstPage',checked:true,leaf:true}
            for(Object object : qrOrg) {
                Organization org = (Organization) object;
                if(haveOneMenuList.contains(org.getOrgPk())) {
                    ifchecked = true;
                } else {
                    ifchecked = false;
                }
                // 拼接未被删除的信息
                orgTreeMake(orgPk, sb, qrOrg, org, true, ifchecked);
            }
            
            sb.append("]");
            getRequest().setAttribute("JSON", sb);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            return ERROR;
        }
    }
    private void orgTreeMake(String strOrgPk, StringBuffer sb, QueryResult qr, Organization org, boolean queryType,
            boolean ifchecked) {
        // 如果当前机构信息父主键为所查义的机构信息则加载到树型节点中
        if(StringUtil.equals(org.getFatherOrgPk(), strOrgPk)){
            if(sb.length() > 1) {
                sb.append(",");
            }
            sb.append("{text:'");
      
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
            sb.append(",orgClassify:'").append(org.getOrgClassify()).append("'");
            sb.append(",id:'").append(org.getOrgPk()).append("'");
            if(ifchecked) {
                sb.append(",checked:").append(true);
            }else{
                sb.append(",checked:").append(false);
            }
            sb.append("}");
        }
    }
    /**
     * 选择角色后页面菜单展现内容.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.role<br>
     * 方法名:roleMenuTreeInfoView方法.<br>
     * 
     * @author:hou.manyuan@163.com
     * @since :1.0:2011-4-20
     * @return
     */
    public String roleMenuTreeInfoView() {
        try {// 角色主键
            // 声明返回的树形JSON
            StringBuffer sb = new StringBuffer("[");
            String rolePk = getRequest().getParameter("rolePk");
            String onClickNodeId = getRequest().getParameter("onClickNodeId");
            // 声明查询条件
            QueryCondition qc = new QueryCondition(getRequest());
            qc.equals("rolePk", rolePk);
            QueryResult menuQr = null;
            if(StringUtil.empty(onClickNodeId)) {// 一级菜单树形
                qc.equals("menuIdTwo", "");
                qc.orderAsc("menuOneOrder");
                // 查询数据库,找出该角色已经拥有的菜单
                menuQr = getSpringHibernate().select(qc, RoleMenu.class);
                for(int i = 0; i < menuQr.size(); i++) {
                    RoleMenu roleMenu = (RoleMenu) menuQr.get(i);
                    MenuOne menuOne = getMenuOneByMenuId(roleMenu.getMenuIdOne());
                    sb.append("{text:'");
                    sb.append(menuOne.getName());
                    sb.append("',resourcePk:'");
                    sb.append(menuOne.getId() + "-1");
                    sb.append("',iconCls:'");
                    sb.append(menuOne.getId());
                    sb.append("',leaf:false");
                    sb.append("},");
                }
            } else {
                // 根据点击的节点判断是哪一级节点
                String[] onClickNodeIds = StringUtil.split(onClickNodeId, "-");
                if(StringUtil.equals(onClickNodeIds[1], "1")) {// 点击的是1级节点
                    qc.equals("menuIdOne", onClickNodeIds[0]);
                    qc.notEquals("menuIdTwo", "");
                    qc.equals("menuIdThree", "");
                    qc.orderAsc("menuTwoOrder");
                    // 查询数据库,找出该角色已经拥有的菜单
                    menuQr = getSpringHibernate().select(qc, RoleMenu.class);
                    for(int i = 0; i < menuQr.size(); i++) {
                        RoleMenu roleMenu = (RoleMenu) menuQr.get(i);
                        ChildMenuTwo childMenuTwo = getMenuTwoByMenuId(roleMenu.getMenuIdOne(), roleMenu.getMenuIdTwo());
                        sb.append("{text:'");
                        sb.append(childMenuTwo.getName());
                        sb.append("',resourcePk:'");
                        sb.append(childMenuTwo.getId() + "-2");
                        sb.append("',iconCls:'");
                        sb.append(StringUtil.replace(childMenuTwo.getId(), "|", "_"));
                        sb.append("',leaf:false");
                        sb.append("},");
                    }
                } else if(StringUtil.equals(onClickNodeIds[1], "2")) {// 点击的是2级节点
                    qc.equals("menuIdTwo", onClickNodeIds[0]);
                    qc.notEquals("menuIdThree", "");
                    qc.equals("menuIdFour", "");
                    qc.orderAsc("menuThreeOrder");
                    // 查询数据库,找出该角色已经拥有的菜单
                    menuQr = getSpringHibernate().select(qc, RoleMenu.class);
                    for(int i = 0; i < menuQr.size(); i++) {
                        RoleMenu roleMenu = (RoleMenu) menuQr.get(i);
                        ChildMenuThree childMenuThree = getMenuThreeByMenuId(roleMenu.getMenuIdOne(), roleMenu.getMenuIdTwo(),
                                roleMenu.getMenuIdThree());
                        sb.append("{text:'");
                        sb.append(childMenuThree.getName());
                        sb.append("',resourcePk:'");
                        sb.append(childMenuThree.getId() + "-3");
                        sb.append("',iconCls:'");
                        sb.append(StringUtil.replace(childMenuThree.getId(), "|", "_"));
                        sb.append("',leaf:false");
                        sb.append("},");
                    }
                }
                if(StringUtil.equals(onClickNodeIds[1], "3")) {// 点击的是3级节点
                    qc.equals("menuIdThree", onClickNodeIds[0]);
                    qc.notEquals("menuIdFour", "");
                    qc.orderAsc("menuFourOrder");
                    // 查询数据库,找出该角色已经拥有的菜单
                    menuQr = getSpringHibernate().select(qc, RoleMenu.class);
                    for(int i = 0; i < menuQr.size(); i++) {
                        RoleMenu roleMenu = (RoleMenu) menuQr.get(i);
                        ChildMenuFour childMenuFour = getMenuFourByMenuId(roleMenu.getMenuIdOne(), roleMenu.getMenuIdTwo(),
                                roleMenu.getMenuIdThree(), roleMenu.getMenuIdFour());
                        sb.append("{text:'");
                        sb.append(childMenuFour.getName());
                        sb.append("',resourcePk:'");
                        sb.append(childMenuFour.getId() + "-4");
                        sb.append("',iconCls:'");
                        sb.append(StringUtil.replace(childMenuFour.getId(), "|", "_"));
                        sb.append("',leaf:true");
                        sb.append("},");
                    }
                }
            }
            sb.deleteCharAt(sb.length() - 1);
            sb.append("]");
            getRequest().setAttribute("JSON", sb);

            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            return ERROR;
        }
    }

    /**
     * 角色权限信息的JSON格式.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.role<br>
     * 方法名:resource234TreeInfo方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2011-1-7
     * @return
     */
    public String resource234TreeInfo() {
        try {
            // 声明字符串
            StringBuffer sb = new StringBuffer("[");
            // 角色主键
            String rolePk = getRequest().getParameter("rolePk");
            String menuIdOne = getRequest().getParameter("menuIdOne");
            if(StringUtil.empty(menuIdOne)) {
                sb.append("{").append("text:'<font color=red>请选择模块权限！</font>'").append(",leaf:true},");
            } else {
                // 声明查询条件
                QueryCondition qc = new QueryCondition(getRequest());
                qc.equals("rolePk", rolePk);
                qc.equals("menuIdOne", menuIdOne);
                qc.notEquals("menuIdTwo", "");
                qc.notEquals("menuIdTwo", null);
                qc.isNotNull("menuIdTwo");
                // 查询数据库,找出该角色已经拥有的一级以外的菜单
                QueryResult menu234Qr = getSpringHibernate().select(qc, RoleMenu.class);
                List<String> have2MenuList = new ArrayList<String>();
                List<String> have3MenuList = new ArrayList<String>();
                List<String> have4MenuList = new ArrayList<String>();
                for(int i = 0; i < menu234Qr.size(); i++) {
                    RoleMenu menu = (RoleMenu) menu234Qr.get(i);
                    // 角色拥有的二级菜单
                    if(!StringUtil.empty(menu.getMenuIdTwo()) && StringUtil.empty(menu.getMenuIdThree())) {
                        have2MenuList.add(menu.getMenuIdTwo());
                    } // 角色拥有的三级菜单
                    else if(!StringUtil.empty(menu.getMenuIdTwo()) && !StringUtil.empty(menu.getMenuIdThree()) && StringUtil
                            .empty(menu.getMenuIdFour())) {
                        have3MenuList.add(menu.getMenuIdThree());
                    }// 角色拥有的四级菜单
                    else if(!StringUtil.empty(menu.getMenuIdTwo()) && !StringUtil.empty(menu.getMenuIdThree()) && !StringUtil
                            .empty(menu.getMenuIdFour())) {
                        have4MenuList.add(menu.getMenuIdFour());
                    }
                }
                MenuOne menuOne = getMenuOneByMenuId(menuIdOne);
                // {text:'首页',resourcePk:'firstPage',iconCls:'firstPage',checked:true,leaf:true}
                sb.append("{text:'");
                sb.append(menuOne.getName());
                sb.append("',resourcePk:'");
                sb.append(menuOne.getId());
                sb.append("',iconCls:'");
                sb.append(menuOne.getId()).append("',");
                // 获取该一级菜单的2级菜单
                List<ChildMenuTwo> childMenuTwoList = menuOne.getChildMenuTwoList();
                if(childMenuTwoList != null && childMenuTwoList.size() > 0) {
                    sb.append("children:");
                    StringBuffer sbTwo = new StringBuffer("[");
                    for(ChildMenuTwo childMenuTwo : childMenuTwoList) {
                        // 拼接2级菜单JSON
                        sbTwo.append("{text:'");
                        sbTwo.append(childMenuTwo.getName());
                        sbTwo.append("',resourcePk:'");
                        sbTwo.append(childMenuTwo.getId()).append("'");
                        if(have2MenuList.contains(childMenuTwo.getId())) {
                            sbTwo.append(",checked:true");
                        } else {
                            sbTwo.append(",checked:false");
                        }
                        sbTwo.append(",iconCls:'");
                        sbTwo.append(StringUtil.replace(childMenuTwo.getId(), "|", "_")).append("'");
                        // 获取该2级菜单的3级菜单
                        List<ChildMenuThree> childMenuThreeList = childMenuTwo.getChildMenuThreeList();
                        if(childMenuThreeList != null && childMenuThreeList.size() > 0) {
                            sbTwo.append(",children: ");
                            StringBuffer sbThree = new StringBuffer("[");
                            for(ChildMenuThree childMenuThree : childMenuThreeList) {
                                // 拼接3级菜单JSON
                                sbThree.append("{text:'");
                                sbThree.append(childMenuThree.getName());
                                sbThree.append("',resourcePk:'");
                                sbThree.append(childMenuThree.getId()).append("'");
                                if(have3MenuList.contains(childMenuThree.getId())) {
                                    sbThree.append(",checked:true");
                                } else {
                                    sbThree.append(",checked:false");
                                }
                                sbThree.append(",iconCls:'");
                                sbThree.append(StringUtil.replace(childMenuThree.getId(), "|", "_")).append("'");
                                // 获取该3级菜单的4级菜单
                                StringBuffer sbFour = new StringBuffer("[");
                                List<ChildMenuFour> childMenuFourList = childMenuThree.getChildMenuFourList();
                                if(childMenuFourList != null && childMenuFourList.size() > 0) {
                                    sbThree.append(",children: ");
                                    for(ChildMenuFour childMenuFour : childMenuFourList) {
                                        // 拼接4级菜单JSON
                                        sbFour.append("{text:'");
                                        sbFour.append(childMenuFour.getName());
                                        sbFour.append("',resourcePk:'");
                                        sbFour.append(childMenuFour.getId()).append("'");
                                        if(have4MenuList.contains(childMenuFour.getId())) {
                                            sbFour.append(",checked:true");
                                        } else {
                                            sbFour.append(",checked:false");
                                        }
                                        sbFour.append(",iconCls:'");
                                        sbFour.append(StringUtil.replace(childMenuFour.getId(), "|", "_"));
                                        sbFour.append("',leaf:true},");
                                    }
                                    // 4级菜单拼接结束
                                    sbFour.deleteCharAt(sbFour.length() - 1);
                                    sbFour.append("]},");
                                    sbThree.append(sbFour.toString());
                                } else {
                                    sbThree.append(",leaf:true},");
                                }
                            }
                            // 3级菜单拼接结束
                            sbThree.deleteCharAt(sbThree.length() - 1);
                            sbThree.append("]},");
                            sbTwo.append(sbThree.toString());
                        } else {
                            sbTwo.append(",leaf:true},");
                        }
                    }
                    // 2级菜单拼接结束
                    sbTwo.deleteCharAt(sbTwo.length() - 1);
                    sbTwo.append("]},");
                    sb.append(sbTwo.toString());
                } else {
                    sb.append("leaf:true},");
                }
            }
            sb.deleteCharAt(sb.length() - 1);
            sb.append("]");
            getRequest().setAttribute("JSON", sb);
            return SUCCESS;
        } catch(Throwable e) {
            e.printStackTrace();
            LogUtil.writeLog(e);
            return NONE;
        }
    }

    /**
     * 根据1级菜单Id获取一级菜单对象.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.role<br>
     * 方法名:getMenuOneByMenuId方法.<br>
     * 
     * @author:hou.manyuan@163.com
     * @since :1.0:2011-4-20
     * @param menuOneId
     * @return
     */
    private MenuOne getMenuOneByMenuId(String menuOneId) {
        List<MenuOne> menuOneList = MenuDataCache.getInstance().getMenu().getMenuOneList();
        for(MenuOne menuOne : menuOneList) {
            if(StringUtil.equals(menuOneId, menuOne.getId())) {// 是指定的角色
                return menuOne;
            }
        }
        return new MenuOne();
    }

    /**
     * 根据1级菜单Id和2级菜单Id获取2级菜单对象.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.role<br>
     * 方法名:getMenuOneByMenuId方法.<br>
     * 
     * @author:hou.manyuan@163.com
     * @since :1.0:2011-4-20
     * @param menuOneId
     * @return
     */
    private ChildMenuTwo getMenuTwoByMenuId(String menuOneId, String menuTwoId) {
        List<MenuOne> menuOneList = MenuDataCache.getInstance().getMenu().getMenuOneList();
        for(MenuOne menuOne : menuOneList) {
            if(StringUtil.equals(menuOneId, menuOne.getId())) {
                List<ChildMenuTwo> childMenuTwoList = menuOne.getChildMenuTwoList();
                for(ChildMenuTwo childMenuTwo : childMenuTwoList) {
                    if(StringUtil.equals(menuTwoId, childMenuTwo.getId())) {
                        return childMenuTwo;
                    }
                }

            }
        }
        return new ChildMenuTwo();
    }

    /**
     * 根据1级菜单Id、2级菜单Id和3级菜单Id获取3级菜单对象.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.role<br>
     * 方法名:getMenuOneByMenuId方法.<br>
     * 
     * @author:hou.manyuan@163.com
     * @since :1.0:2011-4-20
     * @param menuOneId
     * @return
     */
    private ChildMenuThree getMenuThreeByMenuId(String menuOneId, String menuTwoId, String menuThreeId) {
        List<MenuOne> menuOneList = MenuDataCache.getInstance().getMenu().getMenuOneList();
        for(MenuOne menuOne : menuOneList) {
            if(StringUtil.equals(menuOneId, menuOne.getId())) {
                List<ChildMenuTwo> childMenuTwoList = menuOne.getChildMenuTwoList();
                for(ChildMenuTwo childMenuTwo : childMenuTwoList) {
                    if(StringUtil.equals(menuTwoId, childMenuTwo.getId())) {
                        List<ChildMenuThree> childMenuThreeList = childMenuTwo.getChildMenuThreeList();
                        for(ChildMenuThree childMenuThree : childMenuThreeList) {
                            if(StringUtil.equals(menuThreeId, childMenuThree.getId())) {
                                return childMenuThree;
                            }
                        }

                    }
                }

            }
        }
        return new ChildMenuThree();
    }

    /**
     * 根据1级菜单Id、2级菜单Id、3级菜单Id和4级菜单Id获取4级菜单对象.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.role<br>
     * 方法名:getMenuOneByMenuId方法.<br>
     * 
     * @author:hou.manyuan@163.com
     * @since :1.0:2011-4-20
     * @param menuOneId
     * @return
     */
    private ChildMenuFour getMenuFourByMenuId(String menuOneId, String menuTwoId, String menuThreeId, String menuFourId) {
        List<MenuOne> menuOneList = MenuDataCache.getInstance().getMenu().getMenuOneList();
        for(MenuOne menuOne : menuOneList) {
            if(StringUtil.equals(menuOneId, menuOne.getId())) {
                List<ChildMenuTwo> childMenuTwoList = menuOne.getChildMenuTwoList();
                for(ChildMenuTwo childMenuTwo : childMenuTwoList) {
                    if(StringUtil.equals(menuTwoId, childMenuTwo.getId())) {
                        List<ChildMenuThree> childMenuThreeList = childMenuTwo.getChildMenuThreeList();
                        for(ChildMenuThree childMenuThree : childMenuThreeList) {
                            if(StringUtil.equals(menuThreeId, childMenuThree.getId())) {
                                List<ChildMenuFour> childMenuFourList = childMenuThree.getChildMenuFourList();
                                for(ChildMenuFour childMenuFour : childMenuFourList) {
                                    if(StringUtil.equals(menuFourId, childMenuFour.getId())) {
                                        return childMenuFour;
                                    }
                                }

                            }
                        }
                    }
                }
            }
        }
        return new ChildMenuFour();
    }

    /**
     * 新增角色信息.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.role<br>
     * 方法名:addInfo方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2011-1-7
     * @return
     */
    public String addInfo() {
        try {
            // 域模型
            Role role = getRole();
            //fhb20111012 建议去掉
            role.setFirstOrgPk(UserContext.getUserContext(getRequest()).getUser().getFirstOrgPk());

            if(validateRepeat(role)) {
                setRequestMessage("角色名称已存在!", false);
                return ERROR;
            }
            // 创建人，创建时间
            role.setCreateUserPk(UserContext.getUserContext(getRequest()).getUser().getUserPk());
            role.setCreateTime(timeInstance());
            // 保存到数据库
            getSpringHibernate().save(role);
            // 添加日志信息
            saveActionLog("新增了,角色信息中的" + role.getRoleName());
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }

    /**
     * 模块权限新增修改信息.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.role<br>
     * 方法名:modiOneMenuInfo方法.<br>
     * 
     * @author:hou.manyuan@163.com
     * @since :1.0:2011-4-19
     * @return
     */
    public String modiOneMenuInfo() {

        Connection connection = null;
        PreparedStatement statementMenu = null;
        try {
            // 角色主键
            String rolePk = getRequest().getParameter("rolePk");
            // 权限主键
            String resourcePks = getRequest().getParameter("resourcePks");
            StringBuilder sbSql = new StringBuilder();
            sbSql.append("delete t_role_menu ");
            sbSql.append("where role_pk = '").append(rolePk).append("' ");
            sbSql.append("and [menu_id_two] = '' ");
            // 删除原来的信息
            callDBProc("p_exec_sql_util", new Object[] { sbSql.toString() });
            // 添加新的信息
            connection = SpringBeanFactory.getConnection();
            statementMenu = connection.prepareStatement("insert t_role_menu values(?,?,?,?,?,?,?,?,?,?,?)");
            MenuDataCache dataCache = MenuDataCache.getInstance();
            List<MenuOne> menuOneList = dataCache.getMenu().getMenuOneList();
            for(String menuId : resourcePks.split(",")) {
                for(MenuOne menuOne : menuOneList) {
                    if(StringUtil.equals(menuId, menuOne.getId())) {
                        statementMenu.setObject(1, new GuidGender(true).toString());// 主键
                        statementMenu.setString(2, menuOne.getId());// 一级菜单
                        statementMenu.setInt(3, menuOne.getOrderBy());// 一级菜单顺序
                        statementMenu.setString(4, "");// 二级菜单
                        statementMenu.setInt(5, 0);// 二级菜单顺序
                        statementMenu.setString(6, "");// 三级菜单
                        statementMenu.setInt(7, 0);// 三级菜单顺序
                        statementMenu.setString(8, "");// 四级菜单
                        statementMenu.setInt(9, 0);// 四级菜单顺序
                        statementMenu.setString(10, rolePk);// 角色Pk
                        statementMenu.setInt(11, 0);// 删除状态(0:表示没有删除，1：表示删除)
                        statementMenu.addBatch();
                    }
                }
            }
            statementMenu.executeBatch();
            connection.commit();
            // 添加日志信息
            saveActionLog("修改了,角色权限信息");
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
    
    /**
     *组织授权保存.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.base.action.system.role<br>
     *方法名:modiOrgInfo方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2015年3月15日
     *@return
    */
    public String modiOrgInfo() {

        Connection connection = null;
        PreparedStatement statementMenu = null;
        try {
            // 角色主键
            String rolePk = getRequest().getParameter("rolePk");
            // 权限主键
            String resourcePks = getRequest().getParameter("resourcePks");
            StringBuilder sbSql = new StringBuilder();
            sbSql.append("delete t_role_org ");
            sbSql.append("where role_pk = '").append(rolePk).append("' ");
            //sbSql.append("and [menu_id_two] = '' ");
            // 删除原来的信息
            callDBProc("p_exec_sql_util", new Object[] { sbSql.toString() });
            // 添加新的信息
            connection = SpringBeanFactory.getConnection();
            statementMenu = connection.prepareStatement("insert t_role_org values(?,?,?,?,?)");
            for(String OrgID : resourcePks.split(",")) {
                statementMenu.setObject(1, new GuidGender(true).toString());// 主键
                statementMenu.setString(2, "0");// 用户id，现在没有用
                statementMenu.setString(3, OrgID);// 组织机构id
                statementMenu.setString(4, rolePk);// 角色Pk
                statementMenu.setInt(5, 0);// 删除状态(0:表示没有删除，1：表示删除)
                statementMenu.addBatch();
            }
            statementMenu.executeBatch();
            connection.commit();
            // 添加日志信息
            saveActionLog("修改了,角色组织权限信息");
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

    /**
     * 修改角色菜单权限.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.role<br>
     * 方法名:modiMenu234ResourceInfo方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2011-1-9
     * @return
     */
    public String modiMenu234ResourceInfo() {
        Connection connection = null;
        PreparedStatement statementMenu = null;
        try {
            // 角色主键
            String rolePk = getRequest().getParameter("rolePk");
            // 权限主键
            String resourcePks = getRequest().getParameter("resourcePks");
            String menuIdOne = getRequest().getParameter("menuIdOne");
            StringBuilder sbSql = new StringBuilder();
            sbSql.append("delete t_role_menu ");
            sbSql.append("where role_pk = '").append(rolePk).append("' ");
            sbSql.append("and [menu_id_two] != '' and [menu_id_one] = '").append(menuIdOne).append("' ");
            // 删除原来的信息
            callDBProc("p_exec_sql_util", new Object[] { sbSql.toString() });
            String[] resourcePksGroup = StringUtil.split(resourcePks, ",");
            Set<String> menuSet = new HashSet<String>();
            for(int i = 0; i < resourcePksGroup.length; i++) {
                String[] resourcePks2Group = StringUtil.split(resourcePksGroup[i], "-");
                for(int j = 0; j < resourcePks2Group.length; j++) {
                    menuSet.add(resourcePks2Group[j]);
                }
            }

            // 根据菜单ID找出相应的菜单对象，不包含一级菜单对象,并存入到数据库中
            connection = SpringBeanFactory.getConnection();
            statementMenu = connection.prepareStatement("insert t_role_menu values(?,?,?,?,?,?,?,?,?,?,?)");
            MenuDataCache dataCache = MenuDataCache.getInstance();
            for(String menuId : menuSet) {
                RoleMenu roleMenu = dataCache.getRoleMenuByMenuId(menuId);
                if(roleMenu == null || StringUtil.empty(roleMenu.getMenuIdTwo())) {// 排除一级菜单
                    continue;
                }
                statementMenu.setObject(1, new GuidGender(true).toString());// 主键
                statementMenu.setString(2, roleMenu.getMenuIdOne());// 一级菜单
                statementMenu.setInt(3, roleMenu.getMenuOneOrder());// 一级菜单顺序
                statementMenu.setString(4, roleMenu.getMenuIdTwo());// 二级菜单
                statementMenu.setInt(5, roleMenu.getMenuTwoOrder());// 二级菜单顺序
                statementMenu.setString(6, roleMenu.getMenuIdThree());// 三级菜单
                statementMenu.setInt(7, roleMenu.getMenuThreeOrder());// 三级菜单顺序
                statementMenu.setString(8, roleMenu.getMenuIdFour());// 四级菜单
                statementMenu.setInt(9, roleMenu.getMenuFourOrder());// 四级菜单顺序
                statementMenu.setString(10, rolePk);// 角色Pk
                statementMenu.setInt(11, 0);// 删除状态(0:表示没有删除，1：表示删除)
                statementMenu.addBatch();
            }
            statementMenu.executeBatch();
            connection.commit();
            // 添加日志信息
            saveActionLog("修改了,角色菜单权限信息");
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

    /**
     * 添加修改门户权限.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.role<br>
     * 方法名:modiPortalResourceInfo方法.<br>
     * 
     * @author:hou.manyuan@163.com
     * @since :1.0:2011-4-20
     * @return
     */
    public String modiPortalResourceInfo() {
        Connection connection = null;
        PreparedStatement statementMenu = null;
        try {
            // 角色主键
            String rolePk = getRequest().getParameter("rolePk");
            // 权限主键
            String resourcePks = getRequest().getParameter("resourcePks");
            StringBuilder sbSql = new StringBuilder();
            sbSql.append("delete t_role_portal ");
            sbSql.append("where role_pk = '").append(rolePk).append("' ");
            // 删除原来的信息
            callDBProc("p_exec_sql_util", new Object[] { sbSql.toString() });
            // ////////////
            connection = SpringBeanFactory.getConnection();
            statementMenu = connection.prepareStatement("insert t_role_portal values(?,?,?,?,?,?,?)");
            MenuDataCache dataCache = MenuDataCache.getInstance();
            if(!StringUtil.empty(resourcePks)) {
                // 添加新的信息
                for(String newPortalId : resourcePks.split(",")) {
                    String portalsId = newPortalId.split("-")[0];
                    String portalId = newPortalId.split("-")[1];
                    Portals portals = dataCache.getPortalsByPortalsId(portalsId);
                    if(portals == null) {
                        continue;
                    }
                    Portal portal = dataCache.getPortalByPortalId(portalId);
                    if(portal == null) {
                        continue;
                    }
                    statementMenu.setObject(1, new GuidGender(true).toString());// 主键
                    statementMenu.setString(2, portals.getId());// portalsId
                    statementMenu.setString(3, portal.getId());// portalId
                    statementMenu.setInt(4, portals.getColumnNo());// 第几列portal
                    statementMenu.setInt(5, portal.getOrderBy());// 排在portal列的顺序
                    statementMenu.setString(6, rolePk);// 角色Pk
                    statementMenu.setInt(7, 0);// 删除状态(0:表示没有删除，1：表示删除)
                    statementMenu.addBatch();
                }
            }
            statementMenu.executeBatch();
            connection.commit();
            // 添加日志信息
            saveActionLog("修改了,角色菜单的门户权限信息");
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

    /**
     * 进入到修改页面.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.role<br>
     * 方法名:modifyPage方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2011-1-7
     * @return
     */
    public String modifyPage() {
        try {
            // 所选角色的主键
            String rolePk = getRequest().getParameter("rolePk");
            // 根据主键查询数据库并返回到作用域
            Role role = (Role) getSpringHibernate().selectByPk("rolePk", rolePk, Role.class);
            Organization org = (Organization) getSpringHibernate().selectByPk("orgPk", role.getFirstOrgPk(), Organization.class);
            if(null != org) {
                getRequest().setAttribute("firstOrgName", org.getOrgName());
            }
            getRequest().setAttribute("role", role);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            return ERROR;
        }
    }

    /**
     * 执行修改操作.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.role<br>
     * 方法名:updateInfo方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2011-1-7
     * @return
     */
    public String updateInfo() {
        try {
            // 域模型
            Role role = getRole();
            if(validateRepeat(role)) {
                setRequestMessage("角色名称已存在!", false);
                return ERROR;
            }
            // 保存到数据库
            getSpringHibernate().update(role);
            // 添加日志信息
            saveActionLog("修改了,角色信息中的" + role.getRoleName());
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }

    /**
     * 删除或者恢复数据.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.role<br>
     * 方法名:deleOrResetInfo方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2011-1-7
     * @return
     */
    public String deleOrResetInfo() {
        try {
            QueryCondition qc = new QueryCondition(getRequest());
            // 所选角色的主键
            String rolePk = getRequest().getParameter("rolePk");
            // 删除状态
            String deleteType = getRequest().getParameter("deleteType");
            if(!StringUtil.empty(rolePk) && !StringUtil.empty(deleteType)) {
                qc.equals("rolePk", rolePk);
                qc.batchUpdate("deleteType", deleteType);
                // 保存到数据库
                getSpringHibernate().batchUpdate(qc, Role.class);
                // 添加日志信息
                saveActionLog("\"修改了\"角色信息的删除状态");
                setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
                return SUCCESS;
            }
        } catch(Throwable e) {
            LogUtil.writeLog(e);
        }
        setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
        return ERROR;
    }

    /**
     * 验证角色名称是否重复.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.role<br>
     * 方法名:validateRepeat方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2011-1-9
     * @param role
     * @return
     * @throws Throwable
     */
    private Boolean validateRepeat(Role role) throws Throwable {
        QueryCondition qc = new QueryCondition(getRequest());
        if(!StringUtil.empty(role.getRolePk())) {
            qc.notEquals("rolePk", role.getRolePk());
        }
        qc.equals("roleName", role.getRoleName());
        qc.equals("firstOrgPk", role.getFirstOrgPk());
        return getSpringHibernate().select(qc, Role.class).size() > 0;
    }

    /**
     * 
     * 菜单权限的模块权限列表下拉选择框.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.role<br>
     * 方法名:moduleListInfo方法.<br>
     * 
     * @author:hou.manyuan@163.com
     * @since :1.0:2011-4-19
     * @return
     */
    public String moduleListInfo() {
        Menu menuDataCache = MenuDataCache.getInstance().getMenu();
        Map<String, String> menuMap = new HashMap<String, String>();
        for(MenuOne string : menuDataCache.getMenuOneList()) {
            menuMap.put(string.getId(), string.getName());
        }
        QueryResult qr = null;
        String rolePk = getRequest().getParameter("rolePk");
        // 1: 获取用户的查询条件
        QueryCondition qc = new QueryCondition(getRequest());
        qc.equals("rolePk", rolePk);
        qc.equals("menuIdTwo", "");
        qc.orderAsc("menuOneOrder");
        try {
            // 2: 查询数据库
            qr = getSpringHibernate().select(qc, RoleMenu.class);
            for(Object object : qr) {
                RoleMenu menu = (RoleMenu) object;
                menu.setMenuNameOne(menuMap.get(menu.getMenuIdOne()));
            }
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            qr = null;
        }
        // 3: 将指定用户信息存入Request作用域
        getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
        String[] fields = { "menuIdOne", "menuNameOne" };
        getRequest().setAttribute(SHOW_TABLE_COLMUN_NAME, fields);
        return SUCCESS;
    }
}
