/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.main.action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ods.base.bo.menu.MenuFunction;
import com.ods.base.bo.menu.UserMenuThree;
import com.ods.base.bo.menu.UserMenuTwo;
import com.ods.base.bo.menu.xml.ChildMenuFour;
import com.ods.base.bo.menu.xml.ChildMenuThree;
import com.ods.base.bo.menu.xml.ChildMenuTwo;
import com.ods.base.bo.menu.xml.Menu;
import com.ods.base.bo.menu.xml.MenuDataCache;
import com.ods.base.bo.menu.xml.MenuOne;
import com.ods.base.bo.system.user.bo.User;
import com.ods.util.UserContext;
import com.ods.util.action.ActionView;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.resource.ResourceUtil;
import com.ods.util.type.StringUtil;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * SecondMenuAction.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * SecondMenuAction类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * SecondMenuAction类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 左边菜单筛选<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-1-4, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-1-4
 * @version:1.0
 */
public class SecondMenuAction extends ActionView {
    /**
     * 属性名：serialVersionUID、类型：long、作成日：2011-1-4.<br>
     * 含义：
     */
    private static final long serialVersionUID = -9153324463390873896L;

    public String mainLeftMenu() {
        String paramMenuOneId = getRequest().getParameter("paramMenuOneId");
        String paramMenuChildNodeSeq = getRequest().getParameter("paramMenuChildNodeSeq");
        String paramMenuChildId = getRequest().getParameter("paramMenuChildId");
        // 获取该登录用户
        User user = UserContext.getUserContext(getRequest()).getUser();
        QueryCondition qc = new QueryCondition();
        qc.equals("userPk", user.getUserPk());
        if(!StringUtil.empty(paramMenuOneId)) {
            qc.equals("menuIdOne", paramMenuOneId);
        }
        try {
            // 用户的2级菜单
            if(StringUtil.empty(paramMenuChildNodeSeq)) {
                QueryResult qr = getSpringHibernate().select(qc, UserMenuTwo.class);
                getRequest().setAttribute("JSON", getUserTwoMenu(paramMenuOneId, qr));
            } else if(StringUtil.equals(paramMenuChildNodeSeq, "2")) {// 3级菜单
                qc.equals("menuIdTwo", paramMenuChildId);
                QueryResult qr = getSpringHibernate().select(qc, UserMenuThree.class);
                getRequest().setAttribute("JSON", getUserThreeMenu(paramMenuOneId, paramMenuChildId, qr));
            } else if(StringUtil.equals(paramMenuChildNodeSeq, "3")) {// 4级菜单
                String twoMenuId = paramMenuChildId.split(";")[0];
                String threeMenuId = paramMenuChildId.split(";")[1];
                qc.equals("menuIdTwo", twoMenuId);
                qc.equals("menuIdThree", threeMenuId);
                QueryResult qr = getSpringHibernate().select(qc, MenuFunction.class);
                getRequest().setAttribute("JSON", getUserFourMenu(paramMenuOneId, twoMenuId, threeMenuId, qr));
            }

        } catch(Throwable e) {
            LogUtil.writeLog(e);
            e.printStackTrace();
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }

        return SUCCESS;
    }

    /**
     * 获取指定的4级菜单.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.main.action<br>
     * 方法名:getUserFourMenu方法.<br>
     * 
     * @author:wang_zr
     * @since :1.0:2011-1-15
     * @param paramMenuOneId
     * @param twoMenuId
     * @param threeMenuId
     * @param qr
     * @return
     */
    private Object getUserFourMenu(String paramMenuOneId, String twoMenuId, String threeMenuId, QueryResult qr) {

        ChildMenuFour menuFour = null;
        // 组织4级菜单的JSon格式
        StringBuilder menuBuilder = new StringBuilder();
        List<ChildMenuFour> menuFourList = new ArrayList<ChildMenuFour>();
        List<String> menuFourIdList = new ArrayList<String>();
        for(Object obj : qr) {
            MenuFunction menuFunction = (MenuFunction) obj;
            if(menuFunction != null) {
                if(!menuFourIdList.contains(menuFunction.getMenuIdFour())){
                    menuFourList.add(getMenuFourById(paramMenuOneId, twoMenuId, threeMenuId, menuFunction.getMenuIdFour()));
                    menuFourIdList.add(menuFunction.getMenuIdFour());
                }
                }

        }

        // 给4级菜单排序
        Collections.sort(menuFourList, new Comparator<ChildMenuFour>() {
            @Override
            public int compare(ChildMenuFour o1, ChildMenuFour o2) {
                if(o1 == null || o2 == null) {
                    return 0;
                }
                return new Integer(o1.getOrderBy()).compareTo(o2.getOrderBy());
            }
        });

        menuBuilder.append("[");
        String menuColoeFont = "";
        String linkeType = getRequest().getParameter("linkeType");
        for(int i = 0; i < menuFourList.size(); i++) {
            menuFour = (ChildMenuFour) menuFourList.get(i);
            if(null == menuFour) {
                continue;
            }
            menuBuilder.append("{");
            if(StringUtil.empty(linkeType)) {
                if(menuBuilder.length() == 2) {
                    menuBuilder.append("expanded: true,");
                }
            } else {
                if(getMsgTypeMap().get(linkeType).indexOf(menuFour.getId()) >= 0) {
                    menuBuilder.append("expanded: true,");
                }
            }

            menuBuilder.append("menuSeq:4,id:'").append(menuFour.getId()).append("',");
            menuBuilder.append(" text:'");
            // 如果菜单有颜色配置，添加上颜色
            if(!StringUtil.empty(menuFour.getColor()) || !StringUtil.empty(menuFour.getColorFont())) {
                menuColoeFont = "<font color=" + menuFour.getColor() + ">" + menuFour.getColorFont() + "</font>";
                menuBuilder.append(StringUtil.replace(menuFour.getName(), menuFour.getColorFont(), menuColoeFont));
            } else {
                menuBuilder.append(menuFour.getName());
            }
            menuBuilder.append("',");
            menuBuilder.append("iconCls:'");
            menuBuilder.append(StringUtil.replace(menuFour.getId(), "|", "_")).append("'");
            menuBuilder.append(",url:'");
            menuBuilder.append(menuFour.getUrl()).append("',");
            menuBuilder.append("leaf:true");
            if(i < menuFourList.size()) {
                menuBuilder.append("},");
            } else {
                menuBuilder.append("}");
            }

        }
        menuBuilder.append("]");
        return menuBuilder;
    }

    /**
     * 获取指定的3级菜单.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.main.action<br>
     * 方法名:getUserThreeMenu方法.<br>
     * 
     * @author:wang_zr
     * @since :1.0:2011-1-15
     * @param paramMenuOneId
     * @param paramMenuChildId
     * @param qr
     * @return
     */
    private StringBuilder getUserThreeMenu(String paramMenuOneId, String paramMenuChildId, QueryResult qr) {

        ChildMenuThree menuThree = null;
        // 组织3级菜单的JSon格式
        StringBuilder menuBuilder = new StringBuilder();

        List<String> haveFourMenuList = new ArrayList<String>();
        List<ChildMenuThree> menuThreesList = new ArrayList<ChildMenuThree>();
        List<String> menuThreesIdList = new ArrayList<String>();//并集去重
        for(Object obj : qr) {
            UserMenuThree menuThree2 = (UserMenuThree) obj;
            if(menuThree2 != null) {
                if(!menuThreesIdList.contains(menuThree2.getMenuIdThree())){
                    menuThreesList.add(getMenuThreeById(paramMenuOneId, paramMenuChildId, menuThree2.getMenuIdThree()));
                    menuThreesIdList.add(menuThree2.getMenuIdThree());
                }
                
            }
            if(menuThree2.getFourCount() > 0) {
                haveFourMenuList.add(menuThree2.getMenuIdThree());
            }

        }

        // 给3级菜单排序
        Collections.sort(menuThreesList, new Comparator<ChildMenuThree>() {
            @Override
            public int compare(ChildMenuThree o1, ChildMenuThree o2) {
                if(o1 == null || o2 == null) {
                    return 0;
                }
                return new Integer(o1.getOrderBy()).compareTo(o2.getOrderBy());
            }
        });
        String menuColoeFont = "";
        menuBuilder.append("[");
        String linkeType = getRequest().getParameter("linkeType");
        for(int i = 0; i < menuThreesList.size(); i++) {
            menuThree = (ChildMenuThree) menuThreesList.get(i);
            if(menuThree == null) {
                continue;
            }
            menuBuilder.append("{");
            if(StringUtil.empty(linkeType)) {
                if(menuBuilder.length() == 2) {
                    menuBuilder.append("expanded: true,");
                }
            } else {
                if(getMsgTypeMap().get(linkeType).indexOf(menuThree.getId()) >= 0) {
                    menuBuilder.append("expanded: true,");
                }
            }
            menuBuilder.append("menuSeq:3,id:'").append(paramMenuChildId).append(";").append(menuThree.getId()).append("',");
            menuBuilder.append(" text:'");
            // 如果菜单有颜色配置，添加上颜色
            if(!StringUtil.empty(menuThree.getColor()) || !StringUtil.empty(menuThree.getColorFont())) {
                menuColoeFont = "<font color=" + menuThree.getColor() + ">" + menuThree.getColorFont() + "</font>";
                menuBuilder.append(StringUtil.replace(menuThree.getName(), menuThree.getColorFont(), menuColoeFont));
            } else {
                menuBuilder.append("<font size=3 >"+menuThree.getName()+"</font>");
            }
            menuBuilder.append("',");
            menuBuilder.append("iconCls:'");
            menuBuilder.append(StringUtil.replace(menuThree.getId(), "|", "_")).append("'");
            if(haveFourMenuList.contains(menuThree.getId())) {// 有3级菜单
                // menuBuilder.append(",cls:'").append(StringUtil.replace(menuThree.getId(),"|",
                // "_")).append("'");
            } else {
                menuBuilder.append(",url:'");
                menuBuilder.append(menuThree.getUrl()).append("',");
                menuBuilder.append("leaf:true");
            }
            if(i < menuThreesList.size()) {
                menuBuilder.append("},");
            } else {
                menuBuilder.append("}");
            }

        }
        menuBuilder.append("]");
        return menuBuilder;
    }

    /**
     * 获取指定的2级菜单.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.main.action<br>
     * 方法名:getUserTwoMenu方法.<br>
     * 
     * @author:wang_zr
     * @since :1.0:2011-1-15
     * @param menuOneId
     * @param qr
     * @return
     */
    private StringBuilder getUserTwoMenu(String menuOneId, QueryResult qr) {

        ChildMenuTwo menuTwo = null;
        // 组织2级菜单的JSon格式
        StringBuilder menuBuilder = new StringBuilder();

        List<String> haveThreeMenuList = new ArrayList<String>();
        List<ChildMenuTwo> menuTwosList = new ArrayList<ChildMenuTwo>();
        List<String> menuTwosIdList = new ArrayList<String>();//并集去重用
        for(Object obj : qr) {
            UserMenuTwo menuTwo2 = (UserMenuTwo) obj;

            if(menuTwo2 == null) {
                continue;
            }
            ChildMenuTwo childMenuTwo = getMenuTwoById(menuOneId, menuTwo2.getMenuIdTwo());
            if(childMenuTwo != null) {
                if(!menuTwosIdList.contains(childMenuTwo.getId())){ 
                    menuTwosList.add(childMenuTwo);
                    menuTwosIdList.add(childMenuTwo.getId()); 
                }
            }
            if(menuTwo2.getThreeCount() > 0) {
                haveThreeMenuList.add(menuTwo2.getMenuIdTwo());
            }

        }

        // 给2级菜单排序
        Collections.sort(menuTwosList, new Comparator<ChildMenuTwo>() {
            @Override
            public int compare(ChildMenuTwo o1, ChildMenuTwo o2) {
                if(o1 == null || o2 == null) {
                    return 0;
                }
                return new Integer(o1.getOrderBy()).compareTo(o2.getOrderBy());
            }
        });
        String menuColoeFont = "";
        menuBuilder.append("[");
        String linkeType = getRequest().getParameter("linkeType");
        for(int i = 0; i < menuTwosList.size(); i++) {
            menuTwo = (ChildMenuTwo) menuTwosList.get(i);
            menuBuilder.append("{");
            if(StringUtil.empty(linkeType)) {
                if(menuBuilder.length() == 2) {
                    menuBuilder.append("expanded: true,");
                }
            } else {
                if(getMsgTypeMap().get(linkeType).indexOf(menuTwo.getId()) >= 0) {
                    menuBuilder.append("expanded: true,");
                }
            }
            menuBuilder.append("menuSeq:2,id:'").append(menuTwo.getId()).append("',");
            menuBuilder.append(" text:'");
            // 如果菜单有颜色配置，添加上颜色
            if(!StringUtil.empty(menuTwo.getColor()) || !StringUtil.empty(menuTwo.getColorFont())) {
                menuColoeFont = "<font color=" + menuTwo.getColor() + ">" + menuTwo.getColorFont() + "</font>";
                menuBuilder.append(StringUtil.replace(menuTwo.getName(), menuTwo.getColorFont(), menuColoeFont));
            } else {
                menuBuilder.append("<font size=3 >"+menuTwo.getName()+"</font>");
            }

            menuBuilder.append("',");
            menuBuilder.append("iconCls:'");
            menuBuilder.append(StringUtil.replace(menuTwo.getId(), "|", "_")).append("'");
            if(haveThreeMenuList.contains(menuTwo.getId())) {// 有3级菜单
                // menuBuilder.append(",cls:'").append(StringUtil.replace(menuTwo.getId(),"|",
                // "_")).append("'");
            } else {
                menuBuilder.append(",url:'");
                menuBuilder.append(menuTwo.getUrl()).append("',");
                menuBuilder.append("leaf:true");
            }
            if(i < menuTwosList.size()) {
                menuBuilder.append("},");
            } else {
                menuBuilder.append("}");
            }

        }
        menuBuilder.append("]");
        return menuBuilder;

    }

    /**
     * 根据一级菜单配置ID和2级菜单配置ID获取2级菜单对象.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.main.action<br>
     * 方法名:getMenuTwoByTwoId方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2011-1-4
     * @param menuIdOne
     * @param menuIdTwo
     * @return
     */
    private ChildMenuTwo getMenuTwoById(String menuIdOne, String menuIdTwo) {
        // 获取菜单配置文件的内容
        MenuDataCache menuDataCache = MenuDataCache.getInstance();
        Menu menu = menuDataCache.getMenu();
        List<MenuOne> menuOneConfigList = menu.getMenuOneList();
        for(MenuOne menuConfigOne : menuOneConfigList) {
            if(StringUtil.equals(menuConfigOne.getId(), menuIdOne)) {
                List<ChildMenuTwo> childMenuTwoList = menuConfigOne.getChildMenuTwoList();
                if(childMenuTwoList == null) {
                    continue;
                }
                for(ChildMenuTwo childMenuTwo : childMenuTwoList) {
                    if(StringUtil.equals(childMenuTwo.getId(), menuIdTwo)) {
                        return childMenuTwo;
                    }
                }
                break;
            }
        }
        return null;

    }

    /**
     * 根据一级2级和3级Id及其4级Id获取4级菜单对象.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.main.action<br>
     * 方法名:getMenuFourById方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2011-1-4
     * @param menuOneId
     * @param menuTwoId
     * @param condKey
     * @return
     */
    private ChildMenuFour getMenuFourById(String menuOneId, String menuTwoId, String menuThreeId, String menuFourId) {
        // 获取菜单配置文件的内容
        MenuDataCache menuDataCache = MenuDataCache.getInstance();
        Menu menu = menuDataCache.getMenu();
        List<MenuOne> menuOneConfigList = menu.getMenuOneList();
        for(MenuOne menuConfigOne : menuOneConfigList) {
            if(StringUtil.equals(menuConfigOne.getId(), menuOneId)) {
                List<ChildMenuTwo> childMenuTwoList = menuConfigOne.getChildMenuTwoList();
                if(childMenuTwoList == null) {
                    continue;
                }
                for(ChildMenuTwo childMenuTwo : childMenuTwoList) {
                    if(StringUtil.equals(childMenuTwo.getId(), menuTwoId)) {
                        List<ChildMenuThree> childMenuThreeList = childMenuTwo.getChildMenuThreeList();
                        if(childMenuThreeList == null) {
                            continue;
                        }
                        for(ChildMenuThree childMenuThree : childMenuThreeList) {
                            if(StringUtil.equals(menuThreeId, childMenuThree.getId())) {
                                List<ChildMenuFour> childMenuFourList = childMenuThree.getChildMenuFourList();
                                if(childMenuFourList == null) {
                                    continue;
                                }
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
        return null;
    }

    /**
     * 根据3级菜单Id获取3级菜单对象.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.main.action<br>
     * 方法名:getMenuThreeById方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2011-1-4
     * @param condKey
     * @return
     */
    private ChildMenuThree getMenuThreeById(String menuOneId, String menuTwoId, String menuThreeId) {
        // 获取菜单配置文件的内容
        MenuDataCache menuDataCache = MenuDataCache.getInstance();
        Menu menu = menuDataCache.getMenu();
        List<MenuOne> menuOneConfigList = menu.getMenuOneList();
        for(MenuOne menuConfigOne : menuOneConfigList) {
            if(StringUtil.equals(menuConfigOne.getId(), menuOneId)) {
                List<ChildMenuTwo> childMenuTwoList = menuConfigOne.getChildMenuTwoList();
                if(childMenuTwoList == null) {
                    continue;
                }
                for(ChildMenuTwo childMenuTwo : childMenuTwoList) {
                    if(StringUtil.equals(childMenuTwo.getId(), menuTwoId)) {
                        List<ChildMenuThree> childMenuThreeList = childMenuTwo.getChildMenuThreeList();
                        if(childMenuThreeList == null) {
                            continue;
                        }
                        for(ChildMenuThree childMenuThree : childMenuThreeList) {
                            if(StringUtil.equals(menuThreeId, childMenuThree.getId())) {
                                return childMenuThree;
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    public static Map<String, String> getMsgTypeMap() {
        Map<String, String> msgTypeMap = new HashMap<String, String>();
        msgTypeMap.put("1", "workstations|officialDocument;workstations|officialDocument|waitread");
        msgTypeMap.put("2", "workstations|workflow|personal|dowait");
        msgTypeMap.put("3", "workstations|workflow|audit|dowait_work");
        msgTypeMap.put("4", "workstations|workflow|audit|dowait_work");
        return msgTypeMap;
    }
}
