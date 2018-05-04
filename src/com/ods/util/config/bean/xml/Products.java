/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.config.bean.xml;

import java.util.ArrayList;
import java.util.List;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * Product.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * Product类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * Configs类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 整个系统的全局配置Xml信息<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-1-22, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-1-22
 * @version:1.0
 */
public class Products {
    private List<Product> productList;

    /**
     * productList的获取.
     * 
     * @return productList值返回.
     */
    public List<Product> getProductList() {
        return productList;
    }

    /**
     * productList的值设定
     * 
     * @param productList 设定productList的值.
     */
    public void setProductList(List<Product> productList) {
        this.productList = productList;
    }

    public void addProductList(Product product) {
        if(productList == null) {
            productList = new ArrayList<Product>();
        }
        productList.add(product);
    }

}
