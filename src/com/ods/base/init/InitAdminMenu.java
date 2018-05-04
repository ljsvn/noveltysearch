/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.init;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.List;

import com.ods.base.bo.menu.xml.Button;
import com.ods.base.bo.menu.xml.ChildMenuFour;
import com.ods.base.bo.menu.xml.ChildMenuThree;
import com.ods.base.bo.menu.xml.ChildMenuTwo;
import com.ods.base.bo.menu.xml.Menu;
import com.ods.base.bo.menu.xml.MenuDataCache;
import com.ods.base.bo.menu.xml.MenuOne;
import com.ods.base.bo.menu.xml.Page;
import com.ods.base.bo.menu.xml.Portal;
import com.ods.base.bo.menu.xml.Portals;
import com.ods.util.db.DBHelper;
import com.ods.util.guid.GuidGender;
import com.ods.util.log.LogUtil;
import com.ods.util.spring.SpringBeanFactory;
import com.ods.util.type.StringUtil;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * InitAdminMenu.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * InitAdminMenu类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * InitAdminMenu类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 初始化超级角色菜单<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-1-4, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-1-4
 * @version:1.0
 */
public class InitAdminMenu {

    public static void init() {
        Connection connection = null;
        Connection connectionButton = null;
        Connection connectionPoral = null;
        Statement statement = null;
        PreparedStatement statementMenu = null;
        PreparedStatement statementButton = null;
        PreparedStatement statementPortal = null;
        try {
            connection = SpringBeanFactory.getConnection();
            connectionButton = SpringBeanFactory.getConnection();
            connectionPoral = SpringBeanFactory.getConnection();
            statement = connection.createStatement();
            statementMenu = connection.prepareStatement("insert t_role_menu values(?,?,?,?,?,?,?,?,?,?,?)");
            statementButton = connectionButton.prepareStatement("insert t_role_button values(?,?,?,?,?)");
            statementPortal = connectionPoral.prepareStatement("insert t_role_portal values(?,?,?,?,?,?,?)");
            // 添加之前，先删除超级用户的数据
            String sqlDeleteMenu = "delete from t_role_menu where role_pk='00000000-0000-0000-0000-000000000000'";
            String sqlDeleteButton = "delete from t_role_button where role_pk='00000000-0000-0000-0000-000000000000'";
            String sqlDeleteProtal = "delete from t_role_portal where role_pk='00000000-0000-0000-0000-000000000000'";
            statement.execute(sqlDeleteMenu);
            statement.execute(sqlDeleteButton);
            statement.execute(sqlDeleteProtal);
            connection.commit();
            // 获取菜单配置文件的内容
            MenuDataCache menuDataCache = MenuDataCache.getInstance();
            Menu menu = menuDataCache.getMenu();

            // 一级菜单
            List<MenuOne> menuOneList = menu.getMenuOneList();
            for(MenuOne menuOne : menuOneList) {
                if(!StringUtil.equals(menuOne.getSystemAdmin(), "true")) {
                    continue;
                }
                statementMenu.setObject(1, new GuidGender(true).toString());// 主键
                statementMenu.setString(2, menuOne.getId());// 一级菜单
                statementMenu.setInt(3, menuOne.getOrderBy());// 一级菜单顺序
                statementMenu.setString(4, "");// 二级菜单
                statementMenu.setInt(5, 0);// 二级菜单顺序
                statementMenu.setString(6, "");// 三级菜单
                statementMenu.setInt(7, 0);// 三级菜单顺序
                statementMenu.setString(8, "");// 四级菜单
                statementMenu.setInt(9, 0);// 四级菜单顺序
                statementMenu.setString(10, "00000000-0000-0000-0000-000000000000");// 角色Pk
                statementMenu.setInt(11, 0);// 删除状态(0:表示没有删除，1：表示删除)
                statementMenu.addBatch();
                List<ChildMenuTwo> childMenuTwoList = menuOne.getChildMenuTwoList();
                for(ChildMenuTwo childMenuTwo : childMenuTwoList) {
                    if(!StringUtil.equals(childMenuTwo.getSystemAdmin(), "true")) {
                        continue;
                    }
                    List<ChildMenuThree> childMenuThreeList = childMenuTwo.getChildMenuThreeList();
                    if(childMenuThreeList == null) {
                        statementMenu.setObject(1, new GuidGender(true).toString());// 主键
                        statementMenu.setString(2, menuOne.getId());// 一级菜单
                        statementMenu.setInt(3, menuOne.getOrderBy());// 一级菜单顺序
                        statementMenu.setString(4, childMenuTwo.getId());// 二级菜单
                        statementMenu.setInt(5, childMenuTwo.getOrderBy());// 二级菜单顺序
                        statementMenu.setString(6, "");// 三级菜单
                        statementMenu.setInt(7, 0);// 三级菜单顺序
                        statementMenu.setString(8, "");// 四级菜单
                        statementMenu.setInt(9, 0);// 四级菜单顺序
                        statementMenu.setString(10, "00000000-0000-0000-0000-000000000000");// 角色Pk
                        statementMenu.setInt(11, 0);// 删除状态(0:表示没有删除，1：表示删除)
                        statementMenu.addBatch();
                    } else {
                        for(ChildMenuThree childMenuThree : childMenuThreeList) {
                            if(!StringUtil.equals(childMenuThree.getSystemAdmin(), "true")) {
                                continue;
                            }
                            List<ChildMenuFour> childMenuFourList = childMenuThree.getChildMenuFourList();
                            if(childMenuFourList == null) {
                                statementMenu.setObject(1, new GuidGender(true).toString());// 主键
                                statementMenu.setString(2, menuOne.getId());// 一级菜单
                                statementMenu.setInt(3, menuOne.getOrderBy());// 一级菜单顺序
                                statementMenu.setString(4, childMenuTwo.getId());// 二级菜单
                                statementMenu.setInt(5, childMenuTwo.getOrderBy());// 二级菜单顺序
                                statementMenu.setString(6, childMenuThree.getId());// 三级菜单
                                statementMenu.setInt(7, childMenuThree.getOrderBy());// 三级菜单顺序
                                statementMenu.setString(8, "");// 四级菜单
                                statementMenu.setInt(9, 0);// 四级菜单顺序
                                statementMenu.setString(10, "00000000-0000-0000-0000-000000000000");// 角色Pk
                                statementMenu.setInt(11, 0);// 删除状态(0:表示没有删除，1：表示删除)
                                statementMenu.addBatch();
                            } else {
                                for(ChildMenuFour childMenuFour : childMenuFourList) {
                                    if(!StringUtil.equals(childMenuFour.getSystemAdmin(), "true")) {
                                        continue;
                                    }
                                    statementMenu.setObject(1, new GuidGender(true).toString());// 主键
                                    statementMenu.setString(2, menuOne.getId());// 一级菜单
                                    statementMenu.setInt(3, menuOne.getOrderBy());// 一级菜单顺序
                                    statementMenu.setString(4, childMenuTwo.getId());// 二级菜单
                                    statementMenu.setInt(5, childMenuTwo.getOrderBy());// 二级菜单顺序
                                    statementMenu.setString(6, childMenuThree.getId());// 三级菜单
                                    statementMenu.setInt(7, childMenuThree.getOrderBy());// 三级菜单顺序
                                    statementMenu.setString(8, childMenuFour.getId());// 四级菜单
                                    statementMenu.setInt(9, childMenuFour.getOrderBy());// 四级菜单顺序
                                    statementMenu.setString(10, "00000000-0000-0000-0000-000000000000");// 角色Pk
                                    statementMenu.setInt(11, 0);// 删除状态(0:表示没有删除，1：表示删除)
                                    statementMenu.addBatch();
                                }
                            }
                        }
                    }

                }
            }
            statementMenu.executeBatch();
            connection.commit();

            // 页面权限功能按钮
            List<Page> pageList = menu.getPageList();
            for(Page page : pageList) {
                List<Button> buttonList = page.getButtonList();
                if(buttonList == null) {
                    continue;
                }
                for(Button button : buttonList) {
                    statementButton.setObject(1, new GuidGender(true).toString());// 主键
                    statementButton.setString(2, page.getId());// 功能页面Id
                    statementButton.setString(3, button.getId());// 功能按钮Id
                    statementButton.setString(4, "00000000-0000-0000-0000-000000000000");// 角色Pk
                    statementButton.setInt(5, 0);// 删除状态(0:表示没有删除，1：表示删除)
                    statementButton.addBatch();
                }
            }
            statementButton.executeBatch();
            connectionButton.commit();
            // 首页面Portal
            List<Portals> portalsList = menu.getPortalsList();
            if(portalsList != null) {
                for(Portals portals : portalsList) {
                    List<Portal> portalList = portals.getPortalList();
                    for(Portal portal : portalList) {
                        statementPortal.setObject(1, new GuidGender(true).toString());// 主键
                        statementPortal.setString(2, portals.getId());// portalsId
                        statementPortal.setString(3, portal.getId());// portalId
                        statementPortal.setInt(4, portals.getColumnNo());//第几列portal
                        statementPortal.setInt(5, portal.getOrderBy());// 排在portal列的顺序
                        statementPortal.setString(6, "00000000-0000-0000-0000-000000000000");// 角色Pk
                        statementPortal.setInt(7, 0);// 删除状态(0:表示没有删除，1：表示删除)
                        statementPortal.addBatch();
                    }
                }
                statementPortal.executeBatch();
                connectionPoral.commit();
            }
        } catch(Exception e) {
            LogUtil.writeLog(e);
            e.printStackTrace();
        } finally {
            DBHelper.closeStatement(statement);
            DBHelper.closeStatement(statementMenu);
            DBHelper.closeStatement(statementButton);
            DBHelper.closeStatement(statementPortal);
            DBHelper.closeConnection(connection);
            DBHelper.closeConnection(connectionButton);
            DBHelper.closeConnection(connectionPoral);
        }

    }

}
