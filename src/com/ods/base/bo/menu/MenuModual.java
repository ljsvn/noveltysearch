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
 *MenuModual.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *MenuModual类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *MenuModual类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *菜单模块项的实体类<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2011-1-4, cause, 10325431@qq.com, 新建<br>
 * 
 *@author :pu_xiaolong
 *@since :2011-1-4
 *@version:1.0
 */
public class MenuModual {

    /**
    *属性名：menuModualPk、类型：String、作成日：2011-1-4.<br>
    *含义：主键
    */
    private String menuModualPk;
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
     *menuModualPk的获取.
     *@return menuModualPk值返回.
     */
    public String getMenuModualPk() {
        return menuModualPk;
    }

    /**
     *menuModualPk的值设定
     *@param menuModualPk 设定menuModualPk的值.
     */
    public void setMenuModualPk(String menuModualPk) {
        this.menuModualPk = menuModualPk;
    }
 

}
