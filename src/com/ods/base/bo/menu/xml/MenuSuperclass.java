/**
*copyright(C)2010
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.base.bo.menu.xml;
/**
 *<b>系统名称:</b><b>
 *武警遵义支队按纲建队系统
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 *<b>文件名:</b><br>
 *
 *MenuSuperclass.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *MenuSuperclass类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *MenuSuperclass类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *业务系统菜单超类<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2010-12-30,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :pu_xiaolong
 *@since  :2010-12-30
 *@version:1.0
 */
public class MenuSuperclass {
    private String id;

    private String name;

    private String  systemAdmin;
    
    private String  dutyAuthority;

    private String url; 
    
    private int orderBy;
    

    private String color; 
    private String colorFont; 
    /**
     *id的获取.
     *@return id值返回.
     */
    public String getId() {
        return id;
    }

    /**
     *id的值设定
     *@param id 设定id的值.
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     *name的获取.
     *@return name值返回.
     */
    public String getName() {
        return name;
    }

    /**
     *name的值设定
     *@param name 设定name的值.
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     *url的获取.
     *@return url值返回.
     */
    public String getUrl() {
        return url;
    }

    /**
     *url的值设定
     *@param url 设定url的值.
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     *orderBy的获取.
     *@return orderBy值返回.
     */
    public int getOrderBy() {
        return orderBy;
    }

    /**
     *orderBy的值设定
     *@param orderBy 设定orderBy的值.
     */
    public void setOrderBy(int orderBy) {
        this.orderBy = orderBy;
    }

    /**
     *systemAdmin的获取.
     *@return systemAdmin值返回.
     */
    public String getSystemAdmin() {
        return systemAdmin;
    }

    /**
     *systemAdmin的值设定
     *@param systemAdmin 设定systemAdmin的值.
     */
    public void setSystemAdmin(String systemAdmin) {
        this.systemAdmin = systemAdmin;
    }

    /**
     *color的获取.
     *@return color值返回.
     */
    public String getColor() {
        return color;
    }

    /**
     *color的值设定
     *@param color 设定color的值.
     */
    public void setColor(String color) {
        this.color = color;
    }

    /**
     *colorFont的获取.
     *@return colorFont值返回.
     */
    public String getColorFont() {
        return colorFont;
    }

    /**
     *colorFont的值设定
     *@param colorFont 设定colorFont的值.
     */
    public void setColorFont(String colorFont) {
        this.colorFont = colorFont;
    }

    /**
     *dutyAuthority的获取.
     *@return dutyAuthority值返回.
     */
    public String getDutyAuthority() {
        return dutyAuthority;
    }

    /**
     *dutyAuthority的值设定
     *@param dutyAuthority 设定dutyAuthority的值.
     */
    public void setDutyAuthority(String dutyAuthority) {
        this.dutyAuthority = dutyAuthority;
    }
 
    
}
