/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.main.action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import com.ods.base.bo.menu.MenuModual;
import com.ods.base.bo.menu.xml.Menu;
import com.ods.base.bo.menu.xml.MenuDataCache;
import com.ods.base.bo.menu.xml.MenuOne;
import com.ods.base.bo.system.user.bo.User;
import com.ods.base.init.InitAdminMenu;
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
 * MainMenuAction.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * MainMenuAction类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * MainAction类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 登陆成功后主页面的布局实现<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-1-3, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-1-3
 * @version:1.0
 */
public class MainMenuAction extends ActionView {
    /**
     * 属性名：serialVersionUID、类型：long、作成日：2011-1-3.<br>
     * 含义：
     */
    private static final long serialVersionUID = -4168385016798007634L;

    /**
     * 登录成功后主页面顶部菜单svn://192.168.1.251/MES(昆仑厂)/04 程序代码数据读取.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.main.action<br>
     * 方法名:mainTopMenu方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2011-1-3
     * @return
     */
    public String mainTopMenu() {
        // 获取该登录用户
        User user = UserContext.getUserContext(getRequest()).getUser();
        String menuContent = "";// 显示的菜单内容
        // 获取该用户的1级菜单及其2级菜单
        QueryCondition qc = new QueryCondition();
        qc.equals("userPk", user.getUserPk());
        try {
            QueryResult qr = this.getSpringHibernate().select(qc, MenuModual.class);
            // 判断是否是超级管理员，如果是就要进行相应的超级管理员角色权限初始化
            if(StringUtil.equals(user.getUserLoginName(), "admin") && qr.size() == 0) {// 表示是超级管理员
                InitAdminMenu.init();
                // 重新进行检索
                qr = this.getSpringHibernate().select(qc, MenuModual.class);
            }
            // 根据一级菜单拼接成Ext菜单形式
            menuContent = getMenuOneJson(qr);
            getRequest().setAttribute("menuCount", qr.size());
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        getRequest().setAttribute("menuContent", menuContent);
       
        return SUCCESS;
    }

    /**
     * 获取登录用户的第一个一级菜单对象，用于登录后打开页面.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.main.action<br>
     * 方法名:getUserFirstMainTopMenu方法.<br>
     * 
     * @author:hou.manyuan@163.com
     * @since :1.0:2011-4-28
     * @return
     */
    public MenuOne getUserFirstMainTopMenu() {
        MenuOne firstTopMenu=null;
        // 获取该登录用户
        User user = UserContext.getUserContext(getRequest()).getUser(); 
        // 获取该用户的1级菜单及其2级菜单
        QueryCondition qc = new QueryCondition();
        qc.equals("userPk", user.getUserPk());
        try {
            QueryResult qr = this.getSpringHibernate().select(qc, MenuModual.class);
            // 判断是否是超级管理员，如果是就要进行相应的超级管理员角色权限初始化
            if(StringUtil.equals(user.getUserLoginName(), "admin") && qr.size() == 0) {// 表示是超级管理员
                InitAdminMenu.init();
                // 重新进行检索
                qr = this.getSpringHibernate().select(qc, MenuModual.class);
            }
            List<MenuOne> menuOneList = new ArrayList<MenuOne>();
            for(int i = 0; i < qr.size(); i++) {
                MenuModual menuModual = (MenuModual) qr.get(i);
                // 一级菜单对象
                menuOneList.add(getMenuOneByOneId(menuModual.getMenuIdOne()));
            }
            // 给一级菜单排序
            Collections.sort(menuOneList, new Comparator<MenuOne>() {
                @Override
                public int compare(MenuOne o1, MenuOne o2) {
                    return new Integer(o1.getOrderBy()).compareTo(o2.getOrderBy());
                }
            });
            if(menuOneList.size()>0){
                firstTopMenu=menuOneList.get(0);
            }
        } catch(Throwable e) {
            LogUtil.writeLog(e); 
           
        }
        return firstTopMenu;
    }

    /**
     * 
     * 拼接一级成Ext菜单形式.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.main.action<br>
     * 方法名:getMenuOneJson方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2011-1-6
     * @param qr
     * @return
     */
    private String getMenuOneJson(QueryResult qr) {
        // 获取菜单配置文件的内容
        StringBuilder menuBuilder = new StringBuilder();
        List<MenuOne> menuOneList = new ArrayList<MenuOne>();
        List<String> menuOneIdList = new ArrayList<String>();//去重用
        for(int i = 0; i < qr.size(); i++) {
            MenuModual menuModual = (MenuModual) qr.get(i);
            if(!menuOneIdList.contains(menuModual.getMenuIdOne())){
                // 一级菜单对象
                menuOneList.add(getMenuOneByOneId(menuModual.getMenuIdOne()));
                menuOneIdList.add(menuModual.getMenuIdOne());
            }
           
        }
        // 给一级菜单排序
        Collections.sort(menuOneList, new Comparator<MenuOne>() {
            @Override
            public int compare(MenuOne o1, MenuOne o2) {
                return new Integer(o1.getOrderBy()).compareTo(o2.getOrderBy());
            }
        });
        for(int i = 0; i < menuOneList.size(); i++) {
            // 一级菜单对象
            MenuOne menuOne = menuOneList.get(i);
            if(i == 0) {
                menuBuilder.append("{text:'").append(menuOne.getName()).append("',");
            } else {
                menuBuilder.append(",'-',{text:'").append(menuOne.getName()).append("',");
            }
            menuBuilder.append("id:'").append(menuOne.getId()).append("',");
            menuBuilder.append("iconCls:'").append(StringUtil.replace(menuOne.getId(), "|", "_")).append("',");
            menuBuilder.append("url:'").append(menuOne.getUrl()).append("',");
            menuBuilder.append("handler:").append("onMenuClick");
            menuBuilder.append("}");
        }
        return menuBuilder.toString();
    }

    /**
     * 根据配置文件配置和数据库存放的一级菜单Id获取配置文件中的一级菜单.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.main.action<br>
     * 方法名:getMenuOneByOneId方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2011-1-4
     * @param menuIdOne
     * @return
     */
    private MenuOne getMenuOneByOneId(String menuIdOne) {
        MenuOne menuOne = new MenuOne();
        // 获取菜单配置文件的内容
        MenuDataCache menuDataCache = MenuDataCache.getInstance();
        Menu menu = menuDataCache.getMenu();
        List<MenuOne> menuOneConfigList = menu.getMenuOneList();
        for(MenuOne menuConfigOne : menuOneConfigList) {
            if(StringUtil.equals(menuConfigOne.getId(), menuIdOne)) {
                menuOne = menuConfigOne;
                break;
            }
        }
        return menuOne;

    }

}
