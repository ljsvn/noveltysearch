/**
*copyright(C)2011
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.base.bo.system.user.bo;
/**
 *<b>系统名称:</b><b>
 *武警遵义支队按纲建队系统
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 *<b>文件名:</b><br>
 *
 *UserRole.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *UserRole类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *UserRole类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *用户角色实体类<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2011-1-4,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :pu_xiaolong
 *@since  :2011-1-4
 *@version:1.0
 */
public class UserRole {
    /**
    *属性名：userRolePk、类型：String、作成日：2011-1-4.<br>
    *含义：主键
    */
    private String userRolePk;
    /**
    *属性名：userPk、类型：String、作成日：2011-1-4.<br>
    *含义：用户主键
    */
    private String userPk     ;
    /**
    *属性名：rolePk、类型：String、作成日：2011-1-4.<br>
    *含义：角色主键
    */
    private String rolePk;
    /**
    *属性名：deleteType、类型：int、作成日：2011-1-4.<br>
    *含义：-删除状态(0:表示没有删除，1：表示删除)
    */
    private int deleteType;
    /**
     *userRolePk的获取.
     *@return userRolePk值返回.
     */
    public String getUserRolePk() {
        return userRolePk;
    }
    /**
     *userRolePk的值设定
     *@param userRolePk 设定userRolePk的值.
     */
    public void setUserRolePk(String userRolePk) {
        this.userRolePk = userRolePk;
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
