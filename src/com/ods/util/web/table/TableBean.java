/**
 * 包名：com.ods.util.web.table
 * 类名：TableBean
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.web.table;

import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;

/**
 * 功能：页面展示表格信息
 * 创建者: 10325431@qq.com
 * 修改者                   修改时间
 * 
 */
public class TableBean {

    /**
     * 表格标题
     */
    private String tableTitle;
    /**
     * 表格宽度
     */
    private String tableWidth = "100%";
    /**
     * 表格列名
     */
    private String[] tableColumnNames;
    /**
     * 表格内容
     */
    private String[][] tableContents;
    /**
     * 表格列高度
     */
    private String tableTdHeight = "20";
    /**
     * 查询条件对象
     */
    private QueryCondition qc;
    /**
     * 查询结果集对象
     */
    private QueryResult qr;

    public String[] getTableColumnNames() {
        return tableColumnNames;
    }

    public void setTableColumnNames(String[] tableColumnNames) {
        this.tableColumnNames = tableColumnNames;
    }

    public String[][] getTableContents() {
        return tableContents;
    }

    public void setTableContents(String[][] tableContents) {
        this.tableContents = tableContents;
    }

    public String getTableTdHeight() {
        return tableTdHeight;
    }

    public void setTableTdHeight(String tableTdHeight) {
        this.tableTdHeight = tableTdHeight;
    }

    public String getTableTitle() {
        return tableTitle;
    }

    public void setTableTitle(String tableTitle) {
        this.tableTitle = tableTitle;
    }

    public String getTableWidth() {
        return tableWidth;
    }

    public void setTableWidth(String tableWidth) {
        this.tableWidth = tableWidth;
    }

    public QueryCondition getQc() {
        return qc;
    }

    public void setQc(QueryCondition qc) {
        this.qc = qc;
    }

    public QueryResult getQr() {
        return qr;
    }

    public void setQr(QueryResult qr) {
        this.qr = qr;
    }

    /**
     * 获取表格翻页信息连接
     * @return 翻页连接信息Html
     */
    public String tableTurnPageInfo() {
        StringBuilder turnPageBuilder = new StringBuilder("");
        if (null != qr && null != qc) {
            int totalCount = qr.getQueryPageJavaBean().getTotalCount();
            int resultCount = qc.getQueryPageJavaBean().getEachPageShowRows();
            int curPage = ((qc.getQueryPageJavaBean().getStartIndex() - 1) / resultCount) + 1;
           
            turnPageInfo(turnPageBuilder, totalCount, resultCount, curPage);
        }
        return turnPageBuilder.toString();
    }

    /**
    *页面翻页信息组织.<br>
    *工程名:odscati<br>
    *包名:com.ods.util.web.table<br>
    *方法名:turnPageInfo方法.<br>
    *
    *@author:10325431@qq.com
    *@since :1.0:2009-7-28
    *@param turnPageBuilder：承担翻页信息载体
    *@param totalCount:查询的总行数
    *@param resultCount:每页列表显示的总行数
    *@param curPage:要显示的页数字
    */
    public static void turnPageInfo(StringBuilder turnPageBuilder, int totalCount,
            int resultCount, int curPage) {
        int countPage = totalCount % resultCount == 0 ? totalCount /
                resultCount : (totalCount / resultCount) + 1;
        //
        if (curPage == 1) {
            turnPageBuilder.append("首页 |");
        } else {
            turnPageBuilder.append(
                    "<a href=\"#\" onClick=\"javaScript:page(1);\" class=\"page\"> 首页 </a> |");
        }
        //
        if (curPage == 1) {
            turnPageBuilder.append(" 上一页 |");
        } else {
            turnPageBuilder.append(
                    "<a href=\"#\" onClick=\"javaScript:page(");
            turnPageBuilder.append(curPage - 1);
            turnPageBuilder.append(");\"class=\"page\"> 上一页 </a> |");
        }
        //
        if (countPage == curPage || totalCount == 0) {
            turnPageBuilder.append(" 下一页 |");
        } else {
            turnPageBuilder.append(
                    "<a href=\"#\" onClick=\"javaScript:page(");
            turnPageBuilder.append(curPage + 1);
            turnPageBuilder.append(");\"class=\"page\"> 下一页 </a> |");
        }
        //
        if (countPage == curPage || totalCount == 0) {
            turnPageBuilder.append(" 尾页 |");
        } else {
            turnPageBuilder.append(
                    "<a href=\"#\" onClick=\"javaScript:page(");
            turnPageBuilder.append(countPage);
            turnPageBuilder.append(");\"class=\"page\"> 尾页 </a> |");
        }
        turnPageBuilder.append(" 共有<label class=\"color\">");
        turnPageBuilder.append(totalCount);
        turnPageBuilder.append("</label>条记录 每页<label class=\"color\">");
        turnPageBuilder.append(resultCount);
        turnPageBuilder.append("</label>条记录 当前第<label class=\"color\">");
        turnPageBuilder.append(curPage);
        turnPageBuilder.append("</label>页 共有<label class=\"color\">");
        turnPageBuilder.append(countPage);
        turnPageBuilder.append("</label>页");
    }
    
}
