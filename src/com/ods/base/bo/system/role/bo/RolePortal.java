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
 * RolePortal.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * RolePortal类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * RolePortal类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 角色和portal关联实体类<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-1-4, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-1-4
 * @version:1.0
 */
public class RolePortal {
    /**
     * 属性名：rolePortalPk、类型：String、作成日：2011-1-4.<br>
     * 含义：主键
     */
    private String rolePortalPk;

    /**
     * 属性名：portalsId、类型：String、作成日：2011-1-4.<br>
     * 含义：portalsId
     */
    private String portalsId;

    /**
     * 属性名：portalId、类型：String、作成日：2011-1-4.<br>
     * 含义：portalId
     */
    private String portalId;

    /**
     * 属性名：rolePk、类型：String、作成日：2011-1-4.<br>
     * 含义：角色Pk
     */
    private String rolePk;

    private int protalsColumnNo;

    private int protalOrder;

    /**
     * 属性名：deleteType、类型：int、作成日：2011-1-4.<br>
     * 含义：删除状态(0:表示没有删除，1：表示删除)
     */
    private int deleteType;

    /**
     * rolePortalPk的获取.
     * 
     * @return rolePortalPk值返回.
     */
    public String getRolePortalPk() {
        return rolePortalPk;
    }

    /**
     * rolePortalPk的值设定
     * 
     * @param rolePortalPk 设定rolePortalPk的值.
     */
    public void setRolePortalPk(String rolePortalPk) {
        this.rolePortalPk = rolePortalPk;
    }

    /**
     * portalId的获取.
     * 
     * @return portalId值返回.
     */
    public String getPortalId() {
        return portalId;
    }

    /**
     * portalId的值设定
     * 
     * @param portalId 设定portalId的值.
     */
    public void setPortalId(String portalId) {
        this.portalId = portalId;
    }

    /**
     * protalsColumnNo的获取.
     * 
     * @return protalsColumnNo值返回.
     */
    public int getProtalsColumnNo() {
        return protalsColumnNo;
    }

    /**
     * protalsColumnNo的值设定
     * 
     * @param protalsColumnNo 设定protalsColumnNo的值.
     */
    public void setProtalsColumnNo(int protalsColumnNo) {
        this.protalsColumnNo = protalsColumnNo;
    }

    /**
     * protalOrder的获取.
     * 
     * @return protalOrder值返回.
     */
    public int getProtalOrder() {
        return protalOrder;
    }

    /**
     * protalOrder的值设定
     * 
     * @param protalOrder 设定protalOrder的值.
     */
    public void setProtalOrder(int protalOrder) {
        this.protalOrder = protalOrder;
    }

    /**
     * rolePk的获取.
     * 
     * @return rolePk值返回.
     */
    public String getRolePk() {
        return rolePk;
    }

    /**
     * rolePk的值设定
     * 
     * @param rolePk 设定rolePk的值.
     */
    public void setRolePk(String rolePk) {
        this.rolePk = rolePk;
    }

    /**
     * deleteType的获取.
     * 
     * @return deleteType值返回.
     */
    public int getDeleteType() {
        return deleteType;
    }

    /**
     * deleteType的值设定
     * 
     * @param deleteType 设定deleteType的值.
     */
    public void setDeleteType(int deleteType) {
        this.deleteType = deleteType;
    }

    /**
     * portalsId的获取.
     * 
     * @return portalsId值返回.
     */
    public String getPortalsId() {
        return portalsId;
    }

    /**
     * portalsId的值设定
     * 
     * @param portalsId 设定portalsId的值.
     */
    public void setPortalsId(String portalsId) {
        this.portalsId = portalsId;
    }

}
