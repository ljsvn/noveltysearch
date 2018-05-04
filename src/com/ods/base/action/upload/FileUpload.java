/**
 *copyright(C)2012
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.action.upload;

import java.io.File;

/**
 * <b>系统名称:</b><b> 陕西巾帼依诺家政 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * FileUpload.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * FileUpload类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * FileUpload类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 文件上传<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2012-7-5, cause, hou.manyuan@163.com, 新建<br>
 * 
 * @author :pu_xiaolong@sina.com
 * @since :2012-7-5
 * @version:1.0
 */
public class FileUpload {

    /**
     * 属性名：upload、类型：File、作成日：2009-10-19.<br>
     * 含义：上传文件域对象
     */
    private File upload;

    /**
     * 属性名：uploadFileName、类型：String、作成日：2009-10-19.<br>
     * 含义：上传文件名
     */
    private String uploadFileName;

    private String uploadContentType;

    /**
     * upload的获取.
     * 
     * @return upload值返回.
     */
    public File getUpload() {
        return upload;
    }

    /**
     * upload的值设定
     * 
     * @param upload 设定upload的值.
     */
    public void setUpload(File upload) {
        this.upload = upload;
    }

    /**
     * uploadFileName的获取.
     * 
     * @return uploadFileName值返回.
     */
    public String getUploadFileName() {
        return uploadFileName;
    }

    /**
     * uploadFileName的值设定
     * 
     * @param uploadFileName 设定uploadFileName的值.
     */
    public void setUploadFileName(String uploadFileName) {
        this.uploadFileName = uploadFileName;
    }

    /**
     * uploadContentType的获取.
     * 
     * @return uploadContentType值返回.
     */
    public String getUploadContentType() {
        return uploadContentType;
    }

    /**
     * uploadContentType的值设定
     * 
     * @param uploadContentType 设定uploadContentType的值.
     */
    public void setUploadContentType(String uploadContentType) {
        this.uploadContentType = uploadContentType;
    }
}
