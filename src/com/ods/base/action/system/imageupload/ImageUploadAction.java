/**
 *copyright(C)2012
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.action.system.imageupload;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import com.ods.base.bo.system.imageUpload.ImageUpload;
import com.ods.util.UserContext;
import com.ods.util.action.ActionView;
import com.ods.util.config.bean.xml.ProductsDataCache;
import com.ods.util.log.LogUtil;
import com.ods.util.type.FileUtil;
import com.ods.util.type.StringUtil;
import com.ods.util.web.WebContext;

/**
 *<b>系统名称:</b><b> 居家养老管理系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 *<b>文件名:</b><br>
 * 
 *ImageUploadAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *ImageUploadAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *ImageUploadAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *图片上传<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2012-3-12, cause, wangpei, 新建<br>
 * 
 *@author :wangpei
 *@since :2012-3-12
 *@version:1.0
 */
public class ImageUploadAction extends ActionView {

    /**
     *属性名：serialVersionUID、类型：long、作成日：2012-3-12.<br>
     *含义：
     */
    private static final long serialVersionUID = -5020857787825501972L;

    private ImageUpload imageUpload = new ImageUpload();

    /**
     *imageUpload的获取.
     * 
     * @return imageUpload值返回.
     */
    public ImageUpload getImageUpload() {
        return imageUpload;
    }

    /**
     *imageUpload的值设定
     * 
     * @param imageUpload 设定imageUpload的值.
     */
    public void setImageUpload(ImageUpload imageUpload) {
        this.imageUpload = imageUpload;
    }

    /**
     *文件上传保存路径和显示的临时路径.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.data.action.imageupload<br>
     *方法名:uploadInfo方法.<br>
     * 
     *@author:wangpei
     *@since :1.0:2012-3-12
     *@return
     */
    public String uploadInfo() {
        try {
            ProductsDataCache productsDataCache = ProductsDataCache.getInstance();
            String imageName = imageUpload.getImgUploadFileName();
            String timeInstanceTwo = timeInstanceTwo();
            String imagePath = (productsDataCache.getUploadPath(getRequest(), timeInstanceTwo)).replace("\\", "/");
            String tempPath = UserContext.getUserContext(getRequest()).getUser().getUserPk() + File.separator + timeInstanceTwo + File.separator;
            // 图片的服务器路径
            String temFilepath = WebContext.toHomeRootPath() + "temp" + File.separator + tempPath;
            // 网络路径
            String tempImagePath = getRequest().getContextPath() + File.separator + "temp" + File.separator + tempPath + imageName;
            tempImagePath = StringUtil.replace(tempImagePath, "\\", "/");

            File srcFile = imageUpload.getImgUpload();
            // 拷贝文件到指定的文件夹下
            FileUtil.copy(srcFile, imagePath, imageName);
            // 拷贝文件到服务器临时的文件夹下
            FileUtil.copy(srcFile, temFilepath, imageName);
            // 返回路径imagepath用于数据库保存图片所在硬盘路径，tempImagepath用于显示图片
            getRequest().setAttribute("imagePath", imagePath + imageName);
            getRequest().setAttribute("tempImagePath", tempImagePath);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            // 返回操作失败信息
            setRequestMessage(getText("FileUpload.kbfileupload.error"), false);
            return ERROR;
        }
    }

    /**
     *将图片保存到服务器临时文件夹中，并返回服务器临时路径.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.data.action.imageupload<br>
     *方法名:tempImagePath方法.<br>
     * 
     *@author:wangpei
     *@since :1.0:2012-3-12
     *@param imagePath 图片保存路径，含文件名
     *@param request 当前客户端请求对象
     *@return
     */
    public static String tempImagePath(String imagePath, HttpServletRequest request) {
        String tempImagePath = "";
        String temFilepath = "";
        if(StringUtil.empty(imagePath)){
            return tempImagePath;
        }
        // 图片名称
        String imageName = StringUtil.getLastSuffix(imagePath, "/");
        String temppath = UserContext.getUserContext(request).getUser().getUserPk() + File.separator + timeInstanceTwo() + File.separator;
        // 图片的服务器路径
        temFilepath = WebContext.toHomeRootPath() + "temp" + File.separator + temppath;
        // 网络路径
        tempImagePath = request.getContextPath() + File.separator + "temp" + File.separator + temppath + imageName;
        tempImagePath = StringUtil.replace(tempImagePath, "\\", "/");
        FileUtil.copy(new File(imagePath), temFilepath, imageName);
        return tempImagePath;
    }
}
