/**
 *copyright(C)2010
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.bo.menu.xml;

import java.util.ArrayList;
import java.util.List;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * Menu.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * Menu类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * Menu类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 系统菜单集合<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2010-12-30, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2010-12-30
 * @version:1.0
 */
public class Menu {
    private List<MenuOne> menuOneList; 
    private List<Page> pageList; 
    private List<Portals> portalsList; 

    public Menu(){
        if(menuOneList == null) {
            menuOneList = new ArrayList<MenuOne>();
        } 
        if(pageList == null) {
            pageList = new ArrayList<Page>();
        } 
        if(portalsList == null) {
            portalsList = new ArrayList<Portals>();
        } 
    }
    
    
    /**
     *pageList的获取.
     *@return pageList值返回.
     */
    public List<Page> getPageList() {
        return pageList;
    }


    /**
     *pageList的值设定
     *@param pageList 设定pageList的值.
     */
    public void setPageList(List<Page> pageList) {
        this.pageList = pageList;
    }


    /**
     * menuOneList的获取.
     * 
     * @return menuOneList值返回.
     */
    public List<MenuOne> getMenuOneList() {
     
        return menuOneList;
    }

    /**
     * menuOneList的值设定
     * 
     * @param menuOneList 设定menuOneList的值.
     */
    public void setMenuOneList(List<MenuOne> menuOneList) {
        this.menuOneList = menuOneList;
    }
  
    /**
     *portalsList的获取.
     *@return portalsList值返回.
     */
    public List<Portals> getPortalsList() {
        return portalsList;
    }


    /**
     *portalsList的值设定
     *@param portalsList 设定portalsList的值.
     */
    public void setPortalsList(List<Portals> portalsList) {
        this.portalsList = portalsList;
    }


    public void addMenuOneList(MenuOne menuOne) {
        if(menuOneList == null) {
            menuOneList = new ArrayList<MenuOne>();
        }
        menuOneList.add(menuOne);
    }
    public void addPageList(Page page) {
        if(pageList == null) {
            pageList = new ArrayList<Page>();
        }
        pageList.add(page);
    }
    public void addPortalsList(Portals portals) {
        if(portalsList == null) {
            portalsList = new ArrayList<Portals>();
        }
        portalsList.add(portals);
    }
}
