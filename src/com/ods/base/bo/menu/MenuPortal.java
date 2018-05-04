/**
*copyright(C)2011
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.base.bo.menu;
/**
 *<b>系统名称:</b><b>
 *武警遵义支队按纲建队系统
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 *<b>文件名:</b><br>
 *
 *MenuPortal.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *MenuPortal类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *MenuPortal类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *用户的portal权限实体类<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2011-1-4,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :pu_xiaolong
 *@since  :2011-1-4
 *@version:1.0
 */
public class MenuPortal { 
    /**
    *属性名：menuPortalPk、类型：String、作成日：2011-1-4.<br>
    *含义：
    */
    private String menuPortalPk; 
    /**
    *属性名：userPk、类型：String、作成日：2011-1-4.<br>
    *含义：
    */
    private String userPk; 
    /**
    *属性名：rolePk、类型：String、作成日：2011-1-4.<br>
    *含义：
    */
    private String rolePk;

    /**
    *属性名：portalsId、类型：String、作成日：2011-1-4.<br>
    *含义：
    */
    private String portalsId;
    /**
     *属性名：portalId、类型：String、作成日：2011-1-4.<br>
     *含义：
     */
     private String portalId;

    /**
     *menuPortalPk的获取.
     *@return menuPortalPk值返回.
     */
    public String getMenuPortalPk() {
        return menuPortalPk;
    }

    /**
     *menuPortalPk的值设定
     *@param menuPortalPk 设定menuPortalPk的值.
     */
    public void setMenuPortalPk(String menuPortalPk) {
        this.menuPortalPk = menuPortalPk;
    }

    /**
     *userPk的获取.
     *@return userPk值返回.
     */
    public String getUserPk() {
        return userPk;
    }

    /**
     *userPk的值设定
     *@param userPk 设定userPk的值.
     */
    public void setUserPk(String userPk) {
        this.userPk = userPk;
    }

    /**
     *rolePk的获取.
     *@return rolePk值返回.
     */
    public String getRolePk() {
        return rolePk;
    }

    /**
     *rolePk的值设定
     *@param rolePk 设定rolePk的值.
     */
    public void setRolePk(String rolePk) {
        this.rolePk = rolePk;
    }

    /**
     *portalId的获取.
     *@return portalId值返回.
     */
    public String getPortalId() {
        return portalId;
    }

    /**
     *portalId的值设定
     *@param portalId 设定portalId的值.
     */
    public void setPortalId(String portalId) {
        this.portalId = portalId;
    }

    /**
     *portalsId的获取.
     *@return portalsId值返回.
     */
    public String getPortalsId() {
        return portalsId;
    }

    /**
     *portalsId的值设定
     *@param portalsId 设定portalsId的值.
     */
    public void setPortalsId(String portalsId) {
        this.portalsId = portalsId;
    }
    
}
