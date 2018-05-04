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
 * Role.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * Role类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * Role类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 角色实体类<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-1-4, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-1-4
 * @version:1.0
 */
public class Role {
    public final static String ROOT_NODE_PK = "00000000-0000-0000-0000-000000000000";

    /**
     * 属性名：rolePk、类型：String、作成日：2011-1-4.<br>
     * 含义：主键
     */
    private String rolePk;

    /**
     * 属性名：fatherRolePk、类型：String、作成日：2011-1-4.<br>
     * 含义：父主键
     */
    private String fatherRolePk;

    /**
     * 属性名：roleName、类型：String、作成日：2011-1-4.<br>
     * 含义：角色名称
     */
    private String roleName;

    /**
     * 属性名：roleState、类型：int、作成日：2011-1-4.<br>
     * 含义：角色状态 0：启用 1：未启用
     */
    private int roleState;

    /**
     * 属性名：roleDesc、类型：String、作成日：2011-1-4.<br>
     * 含义：描述
     */
    private String roleDesc;
    private String firstOrgPk;

    /**
     * 属性名：deleteType、类型：int、作成日：2011-1-4.<br>
     * 含义：删除状态(0:表示没有删除，1：表示删除)
     */
    private int deleteType;

    /**
     * 属性名：createUserPk、类型：String、作成日：2011-1-4.<br>
     * 含义：创建人主键
     */
    private String createUserPk;

    /**
     * 属性名：createTime、类型：String、作成日：2011-1-4.<br>
     * 含义：创建时间
     */
    private String createTime;

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
     *fatherRolePk的获取.
     * 
     * @return fatherRolePk值返回.
     */
    public String getFatherRolePk() {
        return fatherRolePk;
    }

    /**
     *fatherRolePk的值设定
     * 
     * @param fatherRolePk 设定fatherRolePk的值.
     */
    public void setFatherRolePk(String fatherRolePk) {
        this.fatherRolePk = fatherRolePk;
    }

    /**
     *roleName的获取.
     * 
     * @return roleName值返回.
     */
    public String getRoleName() {
        return roleName;
    }

    /**
     *roleName的值设定
     * 
     * @param roleName 设定roleName的值.
     */
    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    /**
     *roleState的获取.
     * 
     * @return roleState值返回.
     */
    public int getRoleState() {
        return roleState;
    }

    /**
     *roleState的值设定
     * 
     * @param roleState 设定roleState的值.
     */
    public void setRoleState(int roleState) {
        this.roleState = roleState;
    }

    /**
     *roleDesc的获取.
     * 
     * @return roleDesc值返回.
     */
    public String getRoleDesc() {
        return roleDesc;
    }

    /**
     *roleDesc的值设定
     * 
     * @param roleDesc 设定roleDesc的值.
     */
    public void setRoleDesc(String roleDesc) {
        this.roleDesc = roleDesc;
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
     *createUserPk的获取.
     * 
     * @return createUserPk值返回.
     */
    public String getCreateUserPk() {
        return createUserPk;
    }

    /**
     *createUserPk的值设定
     * 
     * @param createUserPk 设定createUserPk的值.
     */
    public void setCreateUserPk(String createUserPk) {
        this.createUserPk = createUserPk;
    }

    /**
     *createTime的获取.
     * 
     * @return createTime值返回.
     */
    public String getCreateTime() {
        return createTime;
    }

    /**
     *createTime的值设定
     * 
     * @param createTime 设定createTime的值.
     */
    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    /**
     *firstOrgPk的获取.
     *@return firstOrgPk值返回.
     */
    public String getFirstOrgPk() {
        return firstOrgPk;
    }

    /**
     *firstOrgPk的值设定
     *@param firstOrgPk 设定firstOrgPk的值.
     */
    public void setFirstOrgPk(String firstOrgPk) {
        this.firstOrgPk = firstOrgPk;
    }

}
