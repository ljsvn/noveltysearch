/**
*copyright(C)2009
*陕西Ods信息技术软件有限公司软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.util.hibernate.query;
/**
 *<b>系统名称:</b><b>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *Hibernate通用Dao系统</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>子系统名：</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *查询翻页信息记录<br>
 *
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>文件名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *QueryPageJavaBean.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *QueryPageJavaBean类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *QueryPageJavaBean类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *记录列表当前页，下一页，总数以及每页显示的数量等<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，              更新内容<br>
 *2009-8-29,    99999,    pu_xiaolong@sina.com,   新建<br>
 *
 *@author :pu_xiaolong@sina.com
 *@since  :2009-8-29
 *@version:1.0
 */
public class QueryPageJavaBean {
    /**
     * 列表每页显示的行数
     */
    public static final int LIST_EACH_PAGE_ROWS=20;
    /**
     * 查询翻页开始值
     */
    private int startIndex = 0;
    /**
     *每页列表显示的总行数
     */
    private int eachPageShowRows = -1;
    /**
     * 是否查询总行数的标志
     */
    private boolean queryTotalCount = false;
    
    /**
     * 查询的总行数
     */
    private int totalCount;
    /**
     *startIndex的获取.
     *@return startIndex值返回.
     */
    public int getStartIndex() {
        return startIndex;
    }
    /**
     *startIndex的值设定
     *@param startIndex 设定startIndex的值.
     */
    public void setStartIndex(int startIndex) {
        this.startIndex = startIndex;
    }

    /**
     *eachPageShowRows的获取.
     *@return eachPageShowRows值返回.
     */
    public int getEachPageShowRows() {
        return eachPageShowRows;
    }
    /**
     *eachPageShowRows的值设定
     *@param eachPageShowRows 设定eachPageShowRows的值.
     */
    public void setEachPageShowRows(int eachPageShowRows) {
        this.eachPageShowRows = eachPageShowRows;
    }
    /**
     *queryTotalCount的获取.
     *@return queryTotalCount值返回.
     */
    public boolean isQueryTotalCount() {
        return queryTotalCount;
    }
    /**
     *queryTotalCount的值设定
     *@param queryTotalCount 设定queryTotalCount的值.
     */
    public void setQueryTotalCount(boolean queryTotalCount) {
        this.queryTotalCount = queryTotalCount;
    }
    /**
     *totalCount的获取.
     *@return totalCount值返回.
     */
    public int getTotalCount() {
        return totalCount;
    }
    /**
     *totalCount的值设定
     *@param totalCount 设定totalCount的值.
     */
    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }
    
}
