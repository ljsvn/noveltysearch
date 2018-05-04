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
 *ChildMenuTwo.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *ChildMenuTwo类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *ChildMenuTwo类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *第2级菜单实体类<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2010-12-30,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :pu_xiaolong
 *@since  :2010-12-30
 *@version:1.0
 */
public class ChildMenuTwo extends MenuSuperclass {

    public List<ChildMenuThree> childMenuThreeList;

    /**
     *childMenuThreeList的获取.
     *@return childMenuThreeList值返回.
     */
    public List<ChildMenuThree> getChildMenuThreeList() {
        return childMenuThreeList;
    }

    /**
     *childMenuThreeList的值设定
     *@param childMenuThreeList 设定childMenuThreeList的值.
     */
    public void setChildMenuThreeList(List<ChildMenuThree> childMenuThreeList) {
        this.childMenuThreeList = childMenuThreeList;
    }
    
    public void addChildMenuThree(ChildMenuThree childMenuThree){
        if(childMenuThreeList==null){
            childMenuThreeList=new ArrayList<ChildMenuThree>();
        }
        childMenuThreeList.add(childMenuThree);
    }
}
