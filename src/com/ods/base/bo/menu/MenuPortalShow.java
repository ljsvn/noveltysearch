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
 *MenuPortalShow.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *MenuPortalShow类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *MenuPortalShow类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *组织页面显示的Portal实体类<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2011-1-7,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :pu_xiaolong
 *@since  :2011-1-7
 *@version:1.0
 */
public class MenuPortalShow {
    private String id; 
    private int columnNo;
    private String columnWidth;
    private String width;
    private String style;
    private String childrenId;
    private String title;  
    private String height;
    private String url;
    private int orderBy;
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
     *columnNo的获取.
     *@return columnNo值返回.
     */
    public int getColumnNo() {
        return columnNo;
    }
    /**
     *columnNo的值设定
     *@param columnNo 设定columnNo的值.
     */
    public void setColumnNo(int columnNo) {
        this.columnNo = columnNo;
    }
    /**
     *columnWidth的获取.
     *@return columnWidth值返回.
     */
    public String getColumnWidth() {
        return columnWidth;
    }
    /**
     *columnWidth的值设定
     *@param columnWidth 设定columnWidth的值.
     */
    public void setColumnWidth(String columnWidth) {
        this.columnWidth = columnWidth;
    }
    /**
     *style的获取.
     *@return style值返回.
     */
    public String getStyle() {
        return style;
    }
    /**
     *style的值设定
     *@param style 设定style的值.
     */
    public void setStyle(String style) {
        this.style = style;
    }
    /**
     *childrenId的获取.
     *@return childrenId值返回.
     */
    public String getChildrenId() {
        return childrenId;
    }
    /**
     *childrenId的值设定
     *@param childrenId 设定childrenId的值.
     */
    public void setChildrenId(String childrenId) {
        this.childrenId = childrenId;
    }
    /**
     *title的获取.
     *@return title值返回.
     */
    public String getTitle() {
        return title;
    }
    /**
     *title的值设定
     *@param title 设定title的值.
     */
    public void setTitle(String title) {
        this.title = title;
    }
    /**
     *height的获取.
     *@return height值返回.
     */
    public String getHeight() {
        return height;
    }
    /**
     *height的值设定
     *@param height 设定height的值.
     */
    public void setHeight(String height) {
        this.height = height;
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
     *width的获取.
     *@return width值返回.
     */
    public String getWidth() {
        return width;
    }
    /**
     *width的值设定
     *@param width 设定width的值.
     */
    public void setWidth(String width) {
        this.width = width;
    }
    
}
