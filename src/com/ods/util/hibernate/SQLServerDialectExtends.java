/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.hibernate;

import org.hibernate.dialect.SQLServerDialect;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * SQLServerDialectExtends.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * SQLServerDialectExtends类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * SQLServerDialectExtends类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 扩展zhibernate的SQLServerDialect类，用于在sqlserver中进行真正翻页<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-5-25, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :10325431@qq.com
 * @since :2011-5-25
 * @version:1.0
 */
public class SQLServerDialectExtends extends SQLServerDialect {
    static int getLastIndexOfOrderBy(String sql) {
        return sql.toLowerCase().lastIndexOf("order by ");
    }

    public String getLimitString(String querySelect, int offset, int limit) {
        int lastIndexOfOrderBy = getLastIndexOfOrderBy(querySelect);
        String orderby = "";
        // 　没有 order by 或第一页的情况下
        //if(lastIndexOfOrderBy < 0 || offset == 0) {
        if(lastIndexOfOrderBy < 0 ) {
            orderby =" order by getdate()"; 
            //return super.getLimitString(querySelect, 0, limit);
        }

        else {
            // 取出 order by 语句
            orderby = querySelect.substring(lastIndexOfOrderBy, querySelect.length());
        }
        // 取出 from 前的内容
        int indexOfFrom = querySelect.toLowerCase().indexOf("from");
        String selectFld = querySelect.substring(0, indexOfFrom);
        // 取出 from 语句后的内容
        String selectFromTableAndWhere ="";
        if(lastIndexOfOrderBy < 0 ) {
            selectFromTableAndWhere = querySelect.substring(indexOfFrom);
        } else{
            selectFromTableAndWhere = querySelect.substring(indexOfFrom, lastIndexOfOrderBy);
        } 
        StringBuffer sql = new StringBuffer(querySelect.length() + 100);
        sql.append("select * from (").append(selectFld).append(",ROW_NUMBER() OVER(").append(orderby).append(") as row_number ")
                .append(selectFromTableAndWhere).append(" ) temp ")
                // where row_number between $P{page_row}*($P{page_no}-1)+1 and
                // $P{page_row}*$P{page_no}
                .append(" where row_number BETWEEN ").append(offset + 1).append(" and ").append(limit);

        return sql.toString();
    }

    public boolean supportsLimitOffset() {
        return true;
    }

}
