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
 *Buttons.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *Buttons类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *Buttons类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *权限控制的按钮实体类<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2010-12-30,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :pu_xiaolong
 *@since  :2010-12-30
 *@version:1.0
 */
public class Button {
    private String id;
    private String name; 

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
    
}
