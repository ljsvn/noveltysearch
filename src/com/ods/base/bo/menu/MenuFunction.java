/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.bo.menu;

/**
 *<b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 *<b>文件名:</b><br>
 * 
 *MenuFunction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *MenuFunction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *MenuFunction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *菜单功能项的实体类<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2011-1-4, cause, 10325431@qq.com, 新建<br>
 * 
 *@author :pu_xiaolong
 *@since :2011-1-4
 *@version:1.0
 */
public class MenuFunction {

    /**
    *属性名：menuFunctionPk、类型：String、作成日：2011-1-4.<br>
    *含义：主键
    */
    private String menuFunctionPk;
   

    /**
     *属性名：userPk、类型：String、作成日：2011-1-4.<br>
     *含义：用户主键
     */
    private String userPk;

    /**
     *属性名：rolePk、类型：String、作成日：2011-1-4.<br>
     *含义：角色主键
     */
    private String rolePk;

    /**
     *属性名：menuIdOne、类型：String、作成日：2011-1-4.<br>
     *含义：一级菜单ID
     */
    private String menuIdOne;

    /**
     *属性名：menuIdTwo、类型：String、作成日：2011-1-4.<br>
     *含义： 二级菜单ID
     */
    private String menuIdTwo;

    /**
     *属性名：menuIdThree、类型：String、作成日：2011-1-4.<br>
     *含义：三级菜单ID
     */
    private String menuIdThree;

    /**
     *属性名：menuIdFour、类型：String、作成日：2011-1-4.<br>
     *含义：四级菜单ID
     */
    private String menuIdFour;
    /**
     *menuFunctionPk的获取.
     *@return menuFunctionPk值返回.
     */
    public String getMenuFunctionPk() {
        return menuFunctionPk;
    }

    /**
     *menuFunctionPk的值设定
     *@param menuFunctionPk 设定menuFunctionPk的值.
     */
    public void setMenuFunctionPk(String menuFunctionPk) {
        this.menuFunctionPk = menuFunctionPk;
    }

    /**
     *userPk的获取.
     * 
     * @return userPk值返回.
     */
    public String getUserPk() {
        return userPk;
    }

    /**
     *userPk的值设定
     * 
     * @param userPk 设定userPk的值.
     */
    public void setUserPk(String userPk) {
        this.userPk = userPk;
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
     *@return menuIdFour值返回.
     */
    public String getMenuIdFour() {
        return menuIdFour;
    }

    /**
     *menuIdFour的值设定
     *@param menuIdFour 设定menuIdFour的值.
     */
    public void setMenuIdFour(String menuIdFour) {
        this.menuIdFour = menuIdFour;
    }
 

}
