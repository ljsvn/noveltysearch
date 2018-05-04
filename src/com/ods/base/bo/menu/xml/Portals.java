/**
*copyright(C)2011
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.base.bo.menu.xml;

import java.util.ArrayList;
import java.util.List;

/**
 *<b>系统名称:</b><b>
 *武警遵义支队按纲建队系统
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 *<b>文件名:</b><br>
 *
 *Portal.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *Portal类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *Portal类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *首页Portal实体类<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2011-1-4,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :pu_xiaolong
 *@since  :2011-1-4
 *@version:1.0
 */
public class Portals {
    private String id; 
    private int columnNo;
    private String columnWidth;
    private String width;
    private String style;
    private List<Portal> portalList;
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
     *portalList的获取.
     *@return portalList值返回.
     */
    public List<Portal> getPortalList() {
        return portalList;
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
    /**
     *portalList的值设定
     *@param portalList 设定portalList的值.
     */
    public void setPortalList(List<Portal> portalList) {
        this.portalList = portalList;
    }
    
    public void addPortalList(Portal portal){
        if(portalList==null){
            portalList=new ArrayList<Portal>();
        }
        portalList.add(portal);
    }
    
}
