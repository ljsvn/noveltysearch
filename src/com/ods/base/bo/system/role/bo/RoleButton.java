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
 * RoleButton.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * RoleButton类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * RoleButton类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 角色和功能按钮关联实体类<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-1-4, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-1-4
 * @version:1.0
 */
public class RoleButton {
    /**
     * 属性名：roleButtonPk、类型：String、作成日：2011-1-4.<br>
     * 含义：主键
     */
    private String roleButtonPk;

    /**
     * 属性名：pageId、类型：String、作成日：2011-1-4.<br>
     * 含义：功能页面Id
     */
    private String pageId;
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

    /**
     * 属性名：buttonId、类型：String、作成日：2011-1-4.<br>
     * 含义：功能按钮Id
     */
    private String buttonId;

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

    /**
     *roleButtonPk的获取.
     *@return roleButtonPk值返回.
     */
    public String getRoleButtonPk() {
        return roleButtonPk;
    }

    /**
     *roleButtonPk的值设定
     *@param roleButtonPk 设定roleButtonPk的值.
     */
    public void setRoleButtonPk(String roleButtonPk) {
        this.roleButtonPk = roleButtonPk;
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
     *deleteType的获取.
     *@return deleteType值返回.
     */
    public int getDeleteType() {
        return deleteType;
    }

    /**
     *deleteType的值设定
     *@param deleteType 设定deleteType的值.
     */
    public void setDeleteType(int deleteType) {
        this.deleteType = deleteType;
    }
    
}
