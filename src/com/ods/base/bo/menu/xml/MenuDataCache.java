/**
 *copyright(C)2010
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.bo.menu.xml;

import java.io.File;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.digester.Digester;
import org.apache.commons.digester.xmlrules.DigesterLoader;

import com.ods.base.bo.system.role.bo.RoleMenu;
import com.ods.util.type.StringUtil;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * MenuDataCache.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * MenuDataCache类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * MenuDataCache类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 菜单解析缓存实现类<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2010-12-30, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2010-12-30
 * @version:1.0
 */
public class MenuDataCache {
    private Menu menu;

    private static MenuDataCache cache;

    /**
     * menu的获取.
     * 
     * @return menu值返回.
     */
    public Menu getMenu() {
        return menu;
    }

    /**
     * menu的值设定
     * 
     * @param menu 设定menu的值.
     */
    public void setMenu(Menu menu) {
        this.menu = menu;
    }

    public synchronized static MenuDataCache getInstance() {
        if(cache == null) {
            cache = new MenuDataCache();
            init();
        }
        return cache;
    }

    private static void init() {
        try {
            String rbacFilePath = java.net.URLDecoder.decode(MenuDataCache.class.getResource("/").getPath() + "odsconfig/menuxml/", "UTF-8");
            rbacFilePath = rbacFilePath.replace("%20", " ");
            if(rbacFilePath.startsWith("/")) {
                rbacFilePath = rbacFilePath.substring(1);
            }
            if(rbacFilePath.startsWith("/")) {
                rbacFilePath = rbacFilePath.substring(1);
            }
            File rule = new File(rbacFilePath + "menu-rule.xml");
            Digester digester = DigesterLoader.createDigester(rule.toURI().toURL());
            // 多个配置文件的解决
            File filePath = new File(rbacFilePath);
            String[] files = filePath.list();
            Menu menu = new Menu();
            for(int i = 0; i < files.length; i++) {
                if(!StringUtil.equals(files[i], "menu-rule.xml")) {
                    Menu menuFile = (Menu) digester.parse(new File(rbacFilePath + files[i]));
                    if(menuFile.getMenuOneList() != null) {
                        menu.getMenuOneList().addAll(menuFile.getMenuOneList());
                    }
                    if(menuFile.getPageList() != null) {
                        menu.getPageList().addAll(menuFile.getPageList());
                    }
                    if(menuFile.getPortalsList() != null) {
                        menu.getPortalsList().addAll(menuFile.getPortalsList());
                    }
                }
            }
            // sortOrderMenuOne(menu);
            // sortOrderMenuTwo(menu);
            // sortOrderMenuThree(menu);
            // sortOrderMenuFour(menu);
            // sortOrderPortal(menu);
            cache.setMenu(menu);
        } catch(Exception e) {
            e.printStackTrace();
            cache.setMenu(new Menu());
        }
    }

    private static void sortOrderPortal(Menu menu) {
        List<Portals> portalsList = menu.getPortalsList();
        if(portalsList == null) {
            return;
        }
        for(Portals portals : portalsList) {
            Collections.sort(portals.getPortalList(), new Comparator<Portal>() {
                @Override
                public int compare(Portal o1, Portal o2) {
                    return new Integer(o1.getOrderBy()).compareTo(o2.getOrderBy());
                }
            });
        }

    }

    private static void sortOrderMenuFour(Menu menu) {
        List<MenuOne> menuOneList = menu.getMenuOneList();
        for(MenuOne menuOne : menuOneList) {
            List<ChildMenuTwo> childMenuTwoList = menuOne.getChildMenuTwoList();

            if(childMenuTwoList == null) {
                continue;
            }
            for(ChildMenuTwo childMenuTwo : childMenuTwoList) {
                List<ChildMenuThree> childMenuThreeList = childMenuTwo.getChildMenuThreeList();
                if(childMenuThreeList == null) {
                    continue;
                }
                for(ChildMenuThree childMenuThree : childMenuThreeList) {
                    List<ChildMenuFour> childMenuFourList = childMenuThree.getChildMenuFourList();
                    if(childMenuFourList == null) {
                        continue;
                    }
                    Collections.sort(childMenuFourList, new Comparator<ChildMenuFour>() {
                        @Override
                        public int compare(ChildMenuFour o1, ChildMenuFour o2) {
                            return new Integer(o1.getOrderBy()).compareTo(o2.getOrderBy());
                        }
                    });
                }
            }
        }
    }

    private static void sortOrderMenuThree(Menu menu) {
        List<MenuOne> menuOneList = menu.getMenuOneList();
        for(MenuOne menuOne : menuOneList) {
            List<ChildMenuTwo> childMenuTwoList = menuOne.getChildMenuTwoList();
            if(childMenuTwoList == null) {
                continue;
            }
            for(ChildMenuTwo childMenuTwo : childMenuTwoList) {
                List<ChildMenuThree> childMenuThreeList = childMenuTwo.getChildMenuThreeList();
                if(childMenuThreeList == null) {
                    continue;
                }
                Collections.sort(childMenuThreeList, new Comparator<ChildMenuThree>() {
                    @Override
                    public int compare(ChildMenuThree o1, ChildMenuThree o2) {
                        return new Integer(o1.getOrderBy()).compareTo(o2.getOrderBy());
                    }
                });
            }
        }
    }

    private static void sortOrderMenuTwo(Menu menu) {
        List<MenuOne> menuOneList = menu.getMenuOneList();
        for(MenuOne menuOne : menuOneList) {
            List<ChildMenuTwo> childMenuTwoList = menuOne.getChildMenuTwoList();
            if(childMenuTwoList == null) {
                continue;
            }
            Collections.sort(childMenuTwoList, new Comparator<ChildMenuTwo>() {
                @Override
                public int compare(ChildMenuTwo o1, ChildMenuTwo o2) {
                    return new Integer(o1.getOrderBy()).compareTo(o2.getOrderBy());
                }
            });
        }
    }

    // 一级菜单排序
    public void sortOrderMenuOne(List<MenuOne> menuOneList) {
        Collections.sort(menuOneList, new Comparator<MenuOne>() {
            @Override
            public int compare(MenuOne o1, MenuOne o2) {
                return new Integer(o1.getOrderBy()).compareTo(o2.getOrderBy());
            }
        });
    }

    /**
     * 
     * 根据配置文件菜单ID找到该菜单的详细配置信息,并返回能保存到数据库的菜单对象.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.bo.menu.xml<br>
     * 方法名:getRoleMenuByMenuId方法.<br>
     * 
     * @author:hou.manyuan@163.com
     * @since :1.0:2011-4-20
     * @return
     */
    public RoleMenu getRoleMenuByMenuId(String menuId) {
        List<MenuOne> menuOneConfigList = menu.getMenuOneList();
        if(menuOneConfigList == null) {
            return null;
        }
        for(MenuOne menuOne : menuOneConfigList) {
            if(StringUtil.equals(menuId, menuOne.getId())) {// 1级菜单
                RoleMenu roleMenu = new RoleMenu();
                roleMenu.setMenuIdOne(menuOne.getId());
                roleMenu.setMenuOneOrder(menuOne.getOrderBy());
                roleMenu.setMenuIdTwo("");
                roleMenu.setMenuOneOrder(0);
                roleMenu.setMenuIdThree("");
                roleMenu.setMenuThreeOrder(0);
                roleMenu.setMenuIdFour("");
                roleMenu.setMenuFourOrder(0);
                return roleMenu;
            } else {
                List<ChildMenuTwo> childMenuTwoList = menuOne.getChildMenuTwoList();
                if(childMenuTwoList == null) {
                    continue;
                }
                for(ChildMenuTwo childMenuTwo : childMenuTwoList) {
                    if(StringUtil.equals(menuId, childMenuTwo.getId())) {// 2级菜单
                        RoleMenu roleMenu = new RoleMenu();
                        roleMenu.setMenuIdOne(menuOne.getId());
                        roleMenu.setMenuOneOrder(menuOne.getOrderBy());
                        roleMenu.setMenuIdTwo(childMenuTwo.getId());
                        roleMenu.setMenuTwoOrder(childMenuTwo.getOrderBy());
                        roleMenu.setMenuIdThree("");
                        roleMenu.setMenuThreeOrder(0);
                        roleMenu.setMenuIdFour("");
                        roleMenu.setMenuFourOrder(0);
                        return roleMenu;
                    } else {
                        List<ChildMenuThree> childMenuThreeList = childMenuTwo.getChildMenuThreeList();
                        if(childMenuThreeList == null) {
                            continue;
                        }
                        for(ChildMenuThree childMenuThree : childMenuThreeList) {
                            if(StringUtil.equals(menuId, childMenuThree.getId())) {// 3级菜单
                                RoleMenu roleMenu = new RoleMenu();
                                roleMenu.setMenuIdOne(menuOne.getId());
                                roleMenu.setMenuOneOrder(menuOne.getOrderBy());
                                roleMenu.setMenuIdTwo(childMenuTwo.getId());
                                roleMenu.setMenuTwoOrder(childMenuTwo.getOrderBy());
                                roleMenu.setMenuIdThree(childMenuThree.getId());
                                roleMenu.setMenuThreeOrder(childMenuThree.getOrderBy());
                                roleMenu.setMenuIdFour("");
                                roleMenu.setMenuFourOrder(0);
                                return roleMenu;
                            } else {
                                List<ChildMenuFour> childMenuFourList = childMenuThree.getChildMenuFourList();
                                if(childMenuFourList == null) {
                                    continue;
                                }
                                for(ChildMenuFour childMenuFour : childMenuFourList) {
                                    if(StringUtil.equals(menuId, childMenuFour.getId())) {// 4级菜单
                                        RoleMenu roleMenu = new RoleMenu();
                                        roleMenu.setMenuIdOne(menuOne.getId());
                                        roleMenu.setMenuOneOrder(menuOne.getOrderBy());
                                        roleMenu.setMenuIdTwo(childMenuTwo.getId());
                                        roleMenu.setMenuTwoOrder(childMenuTwo.getOrderBy());
                                        roleMenu.setMenuIdThree(childMenuThree.getId());
                                        roleMenu.setMenuThreeOrder(childMenuThree.getOrderBy());
                                        roleMenu.setMenuIdFour(childMenuFour.getId());
                                        roleMenu.setMenuFourOrder(childMenuFour.getOrderBy());
                                        return roleMenu;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    // 获取指定Id门户
    public Portals getPortalsByPortalsId(String portalsId) {
        List<Portals> portalsList = menu.getPortalsList();
        for(Iterator<Portals> iterator = portalsList.iterator(); iterator.hasNext();) {
            Portals portals = (Portals) iterator.next();
            if(StringUtil.equals(portals.getId(), portalsId)) {
                return portals;
            }
        }
        return null;
    }

    // 获取指定Id的portal
    public Portal getPortalByPortalId(String portalId) {
        List<Portals> portalsList = menu.getPortalsList();
        for(Iterator<Portals> iterator = portalsList.iterator(); iterator.hasNext();) {
            Portals portals = (Portals) iterator.next();
            List<Portal> portalList = portals.getPortalList();
            for(Portal portal : portalList) {
                if(StringUtil.equals(portal.getId(), portalId)) {
                    return portal;
                }
            }
        }
        return null;
    }
}
