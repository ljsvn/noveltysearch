/**
 * 包名：com.ods.util.hibernate.query
 * 类名：QueryResult
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.hibernate.query;

import java.util.Collections;
import java.util.Vector;

/**
 * 功能：查询结果保存
 * 创建者: pu_xiaolong@sina.com
 * 修改者                   修改时间
 * 
 * @param <E>  泛型
 */
@SuppressWarnings("unchecked")
public class QueryResult extends Vector {

    /**
     * 序列化时为了保持版本的兼容性，即在版本升级时反序列化仍保持对象的唯一性
     */
    private static final long serialVersionUID = -6878647695532225271L;

 
    /**
     * 用于sqlserver查询区分大小写
     */
    public static String SQLSERVER_ENCODING="COLLATE Chinese_PRC_CS_AS";

    //翻页信息JavaBean
    private QueryPageJavaBean queryPageJavaBean=new QueryPageJavaBean();



    /**
     *queryPageJavaBean的获取.
     *@return queryPageJavaBean值返回.
     */
    public QueryPageJavaBean getQueryPageJavaBean() {
        return queryPageJavaBean;
    }



    /**
     *queryPageJavaBean的值设定
     *@param queryPageJavaBean 设定queryPageJavaBean的值.
     */
    public void setQueryPageJavaBean(QueryPageJavaBean queryPageJavaBean) {
        this.queryPageJavaBean = queryPageJavaBean;
    }



    /**
     * 把qr中的对象的顺序混淆打乱
     * @param qr 查詢結果對象
     */
    public void shuffle(QueryResult qr) {
        if ((qr == null) || (qr.size() == 0)) {
            return;
        } else {
            Collections.shuffle(qr);
        }
    }
}
