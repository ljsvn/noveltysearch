/**
 *copyright(C)2012
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.action.upload;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import com.ods.util.action.ActionView;
import com.ods.util.config.bean.xml.ProductsDataCache;
import com.ods.util.log.LogUtil;
import com.ods.util.type.FileUtil;
import com.ods.util.type.StringUtil;
import com.ods.util.web.WebUtil;

/**
 * <b>系统名称:</b><b> 陕西巾帼依诺家政 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * FileManageAction.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * FileManageAction类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * FileManageAction类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 文件上传下载<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2012-7-5, cause, hou.manyuan@163.com, 新建<br>
 * 
 * @author :pu_xiaolong@sina.com
 * @since :2012-7-5
 * @version:1.0
 */
public class FileUploadAction extends ActionView {
    /**
     * 属性名：serialVersionUID、类型：long、作成日：2012-7-5.<br>
     * 含义：
     */
    private static final long serialVersionUID = -6930224346082311202L;

    private FileUpload fileUpload = new FileUpload();

    /**
     * fileUpload的获取.
     * 
     * @return fileUpload值返回.
     */
    public FileUpload getFileUpload() {
        return fileUpload;
    }

    /**
     * fileUpload的值设定
     * 
     * @param fileUpload 设定fileUpload的值.
     */
    public void setFileUpload(FileUpload fileUpload) {
        this.fileUpload = fileUpload;
    }

    public String uploadInfo() {
        try {
            ProductsDataCache productsDataCache = ProductsDataCache.getInstance();
            String fileName = fileUpload.getUploadFileName();
            String timeInstanceTwo = timeInstanceTwo();
            String filePath = (productsDataCache.getUploadPath(getRequest(), timeInstanceTwo)).replace("\\", "/");
            File srcFile = fileUpload.getUpload();
            // 拷贝文件到指定的文件夹下
            FileUtil.copy(srcFile, filePath, fileName);
            getRequest().setAttribute("fileName", fileName);
            getRequest().setAttribute("filePath", filePath + fileName);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(getText("FileUpload.kbfileupload.error"), false);
            return ERROR;
        }
    }
    //把原来的文件名称改为当前上传的时间
    public String uploadInfoTime() {
        try {
            ProductsDataCache productsDataCache = ProductsDataCache.getInstance();
            String timeInstanceTwo = timeInstanceTwo();
            String fileName = fileUpload.getUploadFileName();
            String fileNameOld =fileName;
            String fileNameNew=timeInstanceTwo+"."+FileUtil.fileSuffix(fileName);
            String filePath = (productsDataCache.getUploadPath(getRequest(), timeInstanceTwo)).replace("\\", "/");
            File srcFile = fileUpload.getUpload();
            
            // 拷贝文件到指定的文件夹下
            FileUtil.copy(srcFile, filePath, fileNameNew);
            getRequest().setAttribute("fileName", fileNameNew);
            getRequest().setAttribute("otherParameter", fileNameOld);
            getRequest().setAttribute("filePath", filePath + fileNameNew);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage("文件上传失败！", false);
            return ERROR;
        }
    }
    
    /**
     *和新文件对比如果改变则删除旧的文件.<br>
     *工程名:yinuojz<br>
     *包名:com.ods.data.upload<br>
     *方法名:deleteOldFile方法.<br>
     *
     *@author:wangpei
     *@since :1.0:2012-7-6
     *@param oldFile
     *@param newFile
    */
    public static void deleteOldFile(String oldFile,String newFile){
        if(!oldFile.equals(newFile)){
            File filePath = new File(oldFile);
            File file = new File(StringUtil.getLastPrefix(oldFile, "/"));
            if(filePath.exists()) {
                filePath.delete();
                file.delete();
            }
        }
    }
    
    /**
     *验证路径的文件是否存在<br>
     *工程名:yinuojz<br>
     *包名:com.ods.data.upload<br>
     *方法名:fileCheck方法.<br>
     *
     *@author:pu_xiaolong@sina.com
     *@since :1.0:2012-7-6
     *@return
    */
    public String fileCheck() {
        String uploadpath = getRequest().getParameter("uploadpath");
        if(!StringUtil.empty(uploadpath)) {
            if(FileUtil.isFileExisted(uploadpath)) {
                setRequestMessage(uploadpath, true);
                return SUCCESS;
            }
        }
        setRequestMessage("文件不存在", false);
        return ERROR;
    }
    
    /**
     *文件下载<br>
     *工程名:yinuojz<br>
     *包名:com.ods.data.upload<br>
     *方法名:fileDownload方法.<br>
     *
     *@author:wangpei
     *@since :1.0:2012-7-6
     *@return
    */
    public String fileDownload() {
        String uploadpath = getRequest().getParameter("uploadpath");
        String[] fileNameAll = uploadpath.split("/");
        // 获取文件名
        String filename = fileNameAll[fileNameAll.length - 1];
        File dsFile = new File(uploadpath);
        // 页面文件下载
        try {
            WebUtil.exportAttachment(getResponse(), dsFile, filename.getBytes("GBK"), "UTF-8");
        } catch(UnsupportedEncodingException e) {
            return NONE;
        } catch(IOException e) {
            return NONE;
        }
        return NONE;
    }

}
