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
 *MenuButton.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *MenuButton类.<br>
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
 *用户和功能按钮权限实体类<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2011-1-4,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :pu_xiaolong
 *@since  :2011-1-4
 *@version:1.0
 */
public class MenuButton { 
    /**
    *属性名：menuButtonPk、类型：String、作成日：2011-1-4.<br>
    *含义：
    */
    private String menuButtonPk; 
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
    *属性名：pageId、类型：String、作成日：2011-1-4.<br>
    *含义：
    */
    private String pageId;
    
    /**
    *属性名：portalId、类型：String、作成日：2011-1-4.<br>
    *含义：
    */
    private String buttonId;

    /**
     *menuButtonPk的获取.
     *@return menuButtonPk值返回.
     */
    public String getMenuButtonPk() {
        return menuButtonPk;
    }

    /**
     *menuButtonPk的值设定
     *@param menuButtonPk 设定menuButtonPk的值.
     */
    public void setMenuButtonPk(String menuButtonPk) {
        this.menuButtonPk = menuButtonPk;
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
     *buttonId的获取.
     *@return buttonId值返回.
     */
    public String getButtonId() {
        return buttonId;
    }

    /**
     *buttonId的值设定
     *@param buttonId 设定buttonId的值.
     */
    public void setButtonId(String buttonId) {
        this.buttonId = buttonId;
    }

    /**
     *pageId的获取.
     *@return pageId值返回.
     */
    public String getPageId() {
        return pageId;
    }

    /**
     *pageId的值设定
     *@param pageId 设定pageId的值.
     */
    public void setPageId(String pageId) {
        this.pageId = pageId;
    }
 
}
