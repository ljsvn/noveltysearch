/**
 *copyright(C)2015
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.bo.system.role.bo;

/**
 * <b>系统名称:</b><b> 昆仑厂MES生产管理系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 * <b>文件名:</b><br>
 *
 * RoleOrg.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 *
 * RoleOrg类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 * RoleOrg类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 * TODO:RoleOrg类的概要描述<br>
 *
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2015年3月15日, cause, 10325431@qq.com, 新建<br>
 *
 * @author :10325431@qq.com
 * @since :2015年3月15日
 * @version:1.0
 */
public class RoleOrg {
    //,"roleOrgPk","userId","orgId","rolePk","deleteType"
    /**
     * 属性名：roleOrgPk、类型：String、作成日：2015-3-15<br>
     * 含义：
     */
    private String roleOrgPk;

    private String[] roleOrgPks;

    /**
     * 属性名：userId、类型：String、作成日：2015-3-15<br>
     * 含义：
     */
    private String userId;

    /**
     * 属性名：orgId、类型：String、作成日：2015-3-15<br>
     * 含义：
     */
    private String orgId;

    /**
     * 属性名：rolePk、类型：String、作成日：2015-3-15<br>
     * 含义：
     */
    private String rolePk;

    /**
     * 属性名：deleteType、类型：int、作成日：2015-3-15<br>
     * 含义：
     */
    private int deleteType;

    /**
     *roleOrgPk的获取.
     *@return roleOrgPk值返回.
     */
    public String getRoleOrgPk() {
        return roleOrgPk;
    }

    /**
     *roleOrgPk的值设定
     *@param roleOrgPk 设定roleOrgPk的值.
     */
    public void setRoleOrgPk(String roleOrgPk) {
        this.roleOrgPk = roleOrgPk;
    }

    /**
     *roleOrgPks的获取.
     *@return roleOrgPks值返回.
     */
    public String[] getRoleOrgPks() {
        return roleOrgPks;
    }

    /**
     *roleOrgPks的值设定
     *@param roleOrgPks 设定roleOrgPks的值.
     */
    public void setRoleOrgPks(String[] roleOrgPks) {
        this.roleOrgPks = roleOrgPks;
    }

    /**
     *userId的获取.
     *@return userId值返回.
     */
    public String getUserId() {
        return userId;
    }

    /**
     *userId的值设定
     *@param userId 设定userId的值.
     */
    public void setUserId(String userId) {
        this.userId = userId;
    }

    /**
     *orgId的获取.
     *@return orgId值返回.
     */
    public String getOrgId() {
        return orgId;
    }

    /**
     *orgId的值设定
     *@param orgId 设定orgId的值.
     */
    public void setOrgId(String orgId) {
        this.orgId = orgId;
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
