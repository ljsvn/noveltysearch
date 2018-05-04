/**
*copyright(C)2011
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.util.jasper.bo;
/**
 *<b>系统名称:</b><b>
 *武警遵义支队按纲建队系统
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 *<b>文件名:</b><br>
 *
 *JasperBean.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *JasperBean类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *JasperBean类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *承担Japsper显示的JavaBeran<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2011-2-8,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :pu_xiaolong
 *@since  :2011-2-8
 *@version:1.0
 */
public class JasperShowBean {
    
    private String showContent;
    private int querySumCount;
    private int page_no;
    private int page_row;
    private String turnOffPage;
    /**
     *showContent的获取.
     *@return showContent值返回.
     */
    public String getShowContent() {
        return showContent;
    }
    /**
     *showContent的值设定
     *@param showContent 设定showContent的值.
     */
    public void setShowContent(String showContent) {
        this.showContent = showContent;
    }
    /**
     *querySumCount的获取.
     *@return querySumCount值返回.
     */
    public int getQuerySumCount() {
        return querySumCount;
    }
    /**
     *querySumCount的值设定
     *@param querySumCount 设定querySumCount的值.
     */
    public void setQuerySumCount(int querySumCount) {
        this.querySumCount = querySumCount;
    }
    /**
     *page_row的获取.
     *@return page_row值返回.
     */
    public int getPage_row() {
        return page_row;
    }
    /**
     *page_row的值设定
     *@param page_row 设定page_row的值.
     */
    public void setPage_row(int page_row) {
        this.page_row = page_row;
    }
    /**
     *page_no的获取.
     *@return page_no值返回.
     */
    public int getPage_no() {
        return page_no;
    }
    /**
     *page_no的值设定
     *@param page_no 设定page_no的值.
     */
    public void setPage_no(int page_no) {
        this.page_no = page_no;
    }
    /**
     *turnOffPage的获取.
     *@return turnOffPage值返回.
     */
    public String getTurnOffPage() {
        return turnOffPage;
    }
    /**
     *turnOffPage的值设定
     *@param turnOffPage 设定turnOffPage的值.
     */
    public void setTurnOffPage(String turnOffPage) {
        this.turnOffPage = turnOffPage;
    }
    
}
