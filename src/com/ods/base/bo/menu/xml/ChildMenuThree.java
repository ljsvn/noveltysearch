/**
*copyright(C)2010
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
 *ChildMenuThree.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *ChildMenuThree类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *ChildMenuThree类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *第3级菜单实体类<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2010-12-30,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :pu_xiaolong
 *@since  :2010-12-30
 *@version:1.0
 */
public class ChildMenuThree extends MenuSuperclass {
    
    private List<ChildMenuFour> childMenuFourList;

    /**
     *childMenuFourList的获取.
     *@return childMenuFourList值返回.
     */
    public List<ChildMenuFour> getChildMenuFourList() {
        return childMenuFourList;
    }

    /**
     *childMenuFourList的值设定
     *@param childMenuFourList 设定childMenuFourList的值.
     */
    public void setChildMenuFourList(List<ChildMenuFour> childMenuFourList) {
        this.childMenuFourList = childMenuFourList;
    }
    
    public void addChildMenuFour(ChildMenuFour childMenuFour){
        if(childMenuFourList==null){
            childMenuFourList=new ArrayList<ChildMenuFour>();
        }
        childMenuFourList.add(childMenuFour);
    }

}
