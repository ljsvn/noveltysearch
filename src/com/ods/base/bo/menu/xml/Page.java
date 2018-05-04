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
 *Page.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *Page类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *Page类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *按钮页面归宿实体类<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2011-1-5,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :pu_xiaolong
 *@since  :2011-1-5
 *@version:1.0
 */
public class Page extends MenuSuperclass {
    private List<Button> buttonList;
    /**
     *buttonList的获取.
     *@return buttonList值返回.
     */
    public List<Button> getButtonList() {
        return buttonList;
    }

    /**
     *buttonList的值设定
     *@param buttonList 设定buttonList的值.
     */
    public void setButtonList(List<Button> buttonList) {
        this.buttonList = buttonList;
    }

   public void addButtonList(Button button){
       if(buttonList==null){
           buttonList=new ArrayList<Button>();
       }
       buttonList.add(button);
   }

}
