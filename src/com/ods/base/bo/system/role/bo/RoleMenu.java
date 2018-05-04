/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.bo.system.role.bo;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * RoleFunction.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * RoleFunction类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * roleFunction类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 角色功能实体类<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-1-4, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-1-4
 * @version:1.0
 */
public class RoleMenu {
    /**
     * 属性名：roleMenuPk、类型：String、作成日：2011-1-4.<br>
     * 含义：主键
     */
    private String roleMenuPk;

    //
    /**
     * 属性名：menuIdOne、类型：String、作成日：2011-1-4.<br>
     * 含义：一级菜单
     */
    private String menuIdOne;

    private String menuNameOne;

    /**
     * 属性名：menuIdTwo、类型：String、作成日：2011-1-4.<br>
     * 含义：二级菜单
     */
    private String menuIdTwo;

    /**
     * 属性名：menuIdThree、类型：String、作成日：2011-1-4.<br>
     * 含义：三级菜单
     */
    private String menuIdThree;

    /**
     * 属性名：menuIdFour、类型：String、作成日：2011-1-4.<br>
     * 含义：四级菜单
     */
    private String menuIdFour;

    /**
     * 属性名：rolePk、类型：String、作成日：2011-1-4.<br>
     * 含义：角色Pk
     */
    private String rolePk;

    /**
     * 属性名：deleteType、类型：int、作成日：2011-1-4.<br>
     * 含义：删除状态(0:表示没有删除，1：表示删除)
     */
    private int deleteType;

    private int menuOneOrder;
    private int menuTwoOrder;
    private int menuThreeOrder;
    private int menuFourOrder;

    /**
     *roleMenuPk的获取.
     * 
     * @return roleMenuPk值返回.
     */
    public String getRoleMenuPk() {
        return roleMenuPk;
    }

    /**
     *roleMenuPk的值设定
     * 
     * @param roleMenuPk 设定roleMenuPk的值.
     */
    public void setRoleMenuPk(String roleMenuPk) {
        this.roleMenuPk = roleMenuPk;
    }

    /**
     *menuIdOne的获取.
     * 
     * @return menuIdOne值返回.
     */
    public String getMenuIdOne() {
        return menuIdOne;
    }

    /**
     *menuIdOne的值设定
     * 
     * @param menuIdOne 设定menuIdOne的值.
     */
    public void setMenuIdOne(String menuIdOne) {
        this.menuIdOne = menuIdOne;
    }

    /**
     *menuIdTwo的获取.
     * 
     * @return menuIdTwo值返回.
     */
    public String getMenuIdTwo() {
        return menuIdTwo;
    }

    /**
     *menuIdTwo的值设定
     * 
     * @param menuIdTwo 设定menuIdTwo的值.
     */
    public void setMenuIdTwo(String menuIdTwo) {
        this.menuIdTwo = menuIdTwo;
    }

    /**
     *menuIdThree的获取.
     * 
     * @return menuIdThree值返回.
     */
    public String getMenuIdThree() {
        return menuIdThree;
    }

    /**
     *menuIdThree的值设定
     * 
     * @param menuIdThree 设定menuIdThree的值.
     */
    public void setMenuIdThree(String menuIdThree) {
        this.menuIdThree = menuIdThree;
    }

    /**
     *menuIdFour的获取.
     * 
     * @return menuIdFour值返回.
     */
    public String getMenuIdFour() {
        return menuIdFour;
    }

    /**
     *menuIdFour的值设定
     * 
     * @param menuIdFour 设定menuIdFour的值.
     */
    public void setMenuIdFour(String menuIdFour) {
        this.menuIdFour = menuIdFour;
    }

    /**
     *rolePk的获取.
     * 
     * @return rolePk值返回.
     */
    public String getRolePk() {
        return rolePk;
    }

    /**
     *rolePk的值设定
     * 
     * @param rolePk 设定rolePk的值.
     */
    public void setRolePk(String rolePk) {
        this.rolePk = rolePk;
    }

    /**
     *deleteType的获取.
     * 
     * @return deleteType值返回.
     */
    public int getDeleteType() {
        return deleteType;
    }

    /**
     *deleteType的值设定
     * 
     * @param deleteType 设定deleteType的值.
     */
    public void setDeleteType(int deleteType) {
        this.deleteType = deleteType;
    }

    /**
     *menuNameOne的值设定
     * 
     * @param menuNameOne 设定menuNameOne的值.
     */
    public void setMenuNameOne(String menuNameOne) {
        this.menuNameOne = menuNameOne;
    }

    /**
     *menuNameOne的获取.
     * 
     * @return menuNameOne值返回.
     */
    public String getMenuNameOne() {
        return menuNameOne;
    }

    /**
     *menuOneOrder的获取.
     *@return menuOneOrder值返回.
     */
    public int getMenuOneOrder() {
        return menuOneOrder;
    }

    /**
     *menuOneOrder的值设定
     *@param menuOneOrder 设定menuOneOrder的值.
     */
    public void setMenuOneOrder(int menuOneOrder) {
        this.menuOneOrder = menuOneOrder;
    }

    /**
     *menuTwoOrder的获取.
     *@return menuTwoOrder值返回.
     */
    public int getMenuTwoOrder() {
        return menuTwoOrder;
    }

    /**
     *menuTwoOrder的值设定
     *@param menuTwoOrder 设定menuTwoOrder的值.
     */
    public void setMenuTwoOrder(int menuTwoOrder) {
        this.menuTwoOrder = menuTwoOrder;
    }

    /**
     *menuThreeOrder的获取.
     *@return menuThreeOrder值返回.
     */
    public int getMenuThreeOrder() {
        return menuThreeOrder;
    }

    /**
     *menuThreeOrder的值设定
     *@param menuThreeOrder 设定menuThreeOrder的值.
     */
    public void setMenuThreeOrder(int menuThreeOrder) {
        this.menuThreeOrder = menuThreeOrder;
    }

    /**
     *menuFourOrder的获取.
     *@return menuFourOrder值返回.
     */
    public int getMenuFourOrder() {
        return menuFourOrder;
    }

    /**
     *menuFourOrder的值设定
     *@param menuFourOrder 设定menuFourOrder的值.
     */
    public void setMenuFourOrder(int menuFourOrder) {
        this.menuFourOrder = menuFourOrder;
    }

}
