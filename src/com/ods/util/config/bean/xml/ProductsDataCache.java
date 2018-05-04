/**
 *copyright(C)2010
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.config.bean.xml;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.digester.Digester;
import org.apache.commons.digester.xmlrules.DigesterLoader;

import com.ods.util.UserContext;
import com.ods.util.type.FileUtil;
import com.ods.util.type.StringUtil;
import com.ods.util.web.WebContext;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * MenuDataCache.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * MenuDataCache类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * MenuDataCache类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 产品全局配置解析缓存实现类<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2010-12-30, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2010-12-30
 * @version:1.0
 */
public class ProductsDataCache {
    private Products products;

    private static ProductsDataCache cache;

    /**
     * product的获取.
     * 
     * @return product值返回.
     */
    public Products getProducts() {
        return products;
    }

    /**
     * product的值设定
     * 
     * @param product 设定product的值.
     */
    public void setProducts(Products products) {
        this.products = products;
    }

    public synchronized static ProductsDataCache getInstance() {
        if(cache == null) {
            cache = new ProductsDataCache();
            init();
        }
        return cache;
    }

    private static void init() {
        try {
            String allFilePath = java.net.URLDecoder.decode(ProductsDataCache.class.getResource("/").getPath() + "odsconfig/product/", "UTF-8");
            allFilePath = allFilePath.replace("%20", " ");
            if(allFilePath.startsWith("/")) {
                allFilePath = allFilePath.substring(1);
            }
            if(allFilePath.startsWith("/")) {
                allFilePath = allFilePath.substring(1);
            }
            File rule = new File(allFilePath + "product-rule.xml");
            Digester digester = DigesterLoader.createDigester(rule.toURI().toURL());
            File filePath = new File(allFilePath + "product_config.xml");
            Products products = (Products) digester.parse(filePath);
            cache.setProducts(products);
        } catch(Exception e) {
            e.printStackTrace();
            cache.setProducts(null);
        }
    }

    public String getWebTitle(){
        List<Product> productList=cache.getProducts().getProductList();
        for(Product product : productList) {
            if(StringUtil.equals("webTitle", product.getName())){
                return product.getValue();
            }
        }
        return "";
    }
    public String getLicenseKey(){
        List<Product> productList=cache.getProducts().getProductList();
        for(Product product : productList) {
            if(StringUtil.equals("licenseKey", product.getName())){
                return product.getValue();
            }
        }
        return "";
    }
    public String getLicenseValue(){
        List<Product> productList=cache.getProducts().getProductList();
        for(Product product : productList) {
            if(StringUtil.equals("licenseValue", product.getName())){
                return product.getValue();
            }
        }
        return "";
    }


    // 获取到CTI访问的web地址
    public String getCTIWebAddress() {
        List<Product> productList = cache.getProducts().getProductList();
        String webAddress = "http://";
        for(Product product : productList) {
            if(StringUtil.equals("ctiServerIp", product.getName())) {
                webAddress += product.getValue();
            }
            if(StringUtil.equals("ctiServerWebPort", product.getName())) {
                webAddress += ":" + product.getValue();
            }
        }
        return webAddress;
    }

    // 获取Cti服务器IP
    public String getCTIServerIp() {
        List<Product> productList = cache.getProducts().getProductList();
        for(Product product : productList) {
            if(StringUtil.equals("ctiServerIp", product.getName())) {
                return product.getValue();
            }
        }
        return "";
    }
    // 获取Cti服务器登录用户名
    public String getCtiLoginUser() {
        List<Product> productList = cache.getProducts().getProductList();
        for(Product product : productList) {
            if(StringUtil.equals("ctiLoginUser", product.getName())) {
                return product.getValue();
            }
        }
        return "";
    }
    // 获取Cti服务器登录用户密码
    public String getCtiLoginPassword() {
        List<Product> productList = cache.getProducts().getProductList();
        for(Product product : productList) {
            if(StringUtil.equals("ctiLoginPassword", product.getName())) {
                return product.getValue();
            }
        }
        return "";
    }

    // 获取Cti服务器端口
    public String getCTIServerPort() {
        List<Product> productList = cache.getProducts().getProductList();
        for(Product product : productList) {
            if(StringUtil.equals("ctiServerPort", product.getName())) {
                return product.getValue();
            }
        }
        return "";
    }
    // 获取Cti服务器Web端口
    public String getCTIServerWebPort() {
        List<Product> productList = cache.getProducts().getProductList();
        for(Product product : productList) {
            if(StringUtil.equals("ctiServerWebPort", product.getName())) {
                return product.getValue();
            }
        }
        return "";
    }

    // 根据数据库的图像路径进行组合，拷贝到显示的临时文件夹下，并返回页面显示的路径
    public void copyShowImage(HttpServletRequest request, String dbImagePath) {
        String srcImagePath = "";
        List<Product> productList = cache.getProducts().getProductList();
        for (Product product : productList) {
            if (StringUtil.equals("uploadPath", product.getName())) {
                srcImagePath = product.getValue();
            }
        }
        // 源文件
        srcImagePath += dbImagePath;
        // 临时文件路径
        String tragetTempImagePath = WebContext.toHomeRootPath() + "temp" + File.separator + dbImagePath;
        // 拷贝文件
        FileUtil.copy(new File(srcImagePath), new File(tragetTempImagePath).getParent() + File.separator, new File(tragetTempImagePath).getName());
    }
    
    // 上传文件路径
    public String getUploadPath(HttpServletRequest request, String timeInstanceTwo) {
        List<Product> productList = cache.getProducts().getProductList();
        for (Product product : productList) {
            if (StringUtil.equals("uploadPath", product.getName())) {
                return product.getValue() + StringUtil.replace(UserContext.getUserContext(request).getUser().getUserPk(), "-", "") + File.separator
                        + timeInstanceTwo + File.separator;

            }
        }
        return getWebTitle() + File.separator + "temp" + File.separator;
    }

    // 上传文件路显示路径+文件名
    public String getUploadFileShowTemp(HttpServletRequest request, String srcPathName, String srcFileName, String timeInstanceTwo) {
        // 先拷贝到临时文件夹下
        String tempDeletePath = WebContext.toHomeRootPath() + "temp" + File.separator
                + StringUtil.replace(UserContext.getUserContext(request).getUser().getUserPk(), "-", "") + File.separator;
        String tempPath = StringUtil.replace(UserContext.getUserContext(request).getUser().getUserPk(), "-", "") + File.separator + timeInstanceTwo
                + File.separator;
        String tempFilePath = WebContext.toHomeRootPath() + "temp" + File.separator + tempPath;
        String tempFilePath1 = request.getContextPath() + File.separator + "temp" + File.separator + tempPath;
        FileUtil.deleteDirectory(tempDeletePath, true);
        FileUtil.touchPath(tempFilePath);
        FileUtil.copy(new File(srcPathName + srcFileName), tempFilePath, srcFileName);

        return StringUtil.replace(tempFilePath1 + srcFileName, "\\", "/");
    }

    // 数据库保存时去掉工程名和temp文字
    public String getDBImagePath(HttpServletRequest request, String imageTempFilePath) {
        if (!StringUtil.empty(imageTempFilePath)) {
            imageTempFilePath = StringUtil.replace(imageTempFilePath, request.getContextPath() + "/temp/", "");
        }
        return imageTempFilePath;
    }
    // 获取系统使用者的地区
    public String getsystemUseArea() {
        List<Product> productList = cache.getProducts().getProductList();
        for(Product product : productList) {
            if(StringUtil.equals("systemUseArea", product.getName())) {
                return product.getValue();
            }
        }
        return "";
    }
}
