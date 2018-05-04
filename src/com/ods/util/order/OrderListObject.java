/**
*copyright(C)2009
*陕西Ods信息技术软件有限公司软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.util.order;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;


/**
 *<b>系统名称:</b><b>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *Cati调查管理问卷系统</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>子系统名：</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *排序<br>
 *
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>文件名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *OrderListObject.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *OrderListObject类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *OrderListObject类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *对集合进行排序<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，              更新内容<br>
 *2009-8-12,    99999,    10325431@qq.com,   新建<br>
 *
 *@author :zhupeng.jz@163.com
 *@since  :2009-8-12
 *@version:1.0
 */
public class OrderListObject {
    
    /**
     * 
    *对所有集合进行排序.<br>
    *工程名:odscati<br>
    *包名:com.ods.util.order<br>
    *方法名:sortObjectAsc方法.<br>
    *
    *@author:10325431@qq.com
    *@since :1.0:2009-8-12
    *@param list 需要排序的集合
    *@return 排序后的集合
     */
    public static List<Object> sortObjectAsc(List<Object> list) {
        List<Object> sortResultList = new ArrayList<Object>();
        // 1、用链表做排序——提高性能
        LinkedList<Object> tmpList = new LinkedList<Object>();
        for(int i = 0; i < list.size(); i++) {
            Object object = (Object) list.get(i);
            tmpList.add(object);
        }
        sortBypaperTypeSort(tmpList);
        if(tmpList != null) {
            for(int i = 0; i < tmpList.size(); i++) {
                sortResultList.add(tmpList.get(i));
            }
        }
        return sortResultList;
    }

    /**
     * 
    * 按照指定的排序字段进行冒泡升序排序,形成顺序.<br>
    *工程名:odscati<br>
    *包名:com.ods.util.order<br>
    *方法名:sortBypaperTypeSort方法.<br>
    *
    *@author:10325431@qq.com
    *@since :1.0:2009-8-12
    *@param ll 需要排序的集合
     */
    private static void sortBypaperTypeSort(LinkedList<Object> ll) {
        Object tmpObj = new Object();
        // 1、 按照指定的排序字段进行冒泡升序排序,形成顺序
        int count = 0;
        for(int j = 0; j < (ll.size() - 1); j++) {
            // 2、判断本次循环是否有次序变动，如果没有，则表示已完成排序，跳出循环
            boolean isContinue = false;
            for(int i = 0; i < (ll.size() - 1 - count); i++) {
                Object objectBefore = ll.get(i);
                Object objectAfter = ll.get(i + 1);
                int sortBefore = 0;
                int sortAfter = 0;
                if(sortBefore > sortAfter) {
                    tmpObj = objectBefore;
                    ll.set(i, objectAfter);
                    ll.set(i + 1, tmpObj);
                    isContinue = true;
                }
            }
            count++;
            if(isContinue == false) {
                break;
            }
        }
    }
}
