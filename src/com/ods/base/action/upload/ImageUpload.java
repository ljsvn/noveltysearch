/**
*copyright(C)2012
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.base.action.upload;

import java.io.File;

/**
 *<b>系统名称:</b><b>
 *昆仑厂MES生产管理系统
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 *<b>文件名:</b><br>
 *
 *ImageUpload.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *ImageUpload类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *ImageUpload类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *图片上传<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2012-7-20,    cause,    myscore@gmail.com,   	新建<br>
 *
 *@author :myscore@gmail.com
 *@since  :2012-7-20
 *@version:1.0
 */
public class ImageUpload {
	// 图片上传路径
    private File imgUpload;

    // 图片上传名称
    private String imgUploadFileName;

    private String imgUploadContentType;
	
    /**
	 *imgUpload的获取.
	 *@return imgUpload值返回.
	 */
	public File getImgUpload() {
		return imgUpload;
	}

	/**
	 *imgUpload的值设定
	 *@param imgUpload 设定imgUpload的值.
	 */
	public void setImgUpload(File imgUpload) {
		this.imgUpload = imgUpload;
	}

	/**
	 *imgUploadFileName的获取.
	 *@return imgUploadFileName值返回.
	 */
	public String getImgUploadFileName() {
		return imgUploadFileName;
	}

	/**
	 *imgUploadFileName的值设定
	 *@param imgUploadFileName 设定imgUploadFileName的值.
	 */
	public void setImgUploadFileName(String imgUploadFileName) {
		this.imgUploadFileName = imgUploadFileName;
	}

	/**
	 *imgUploadContentType的获取.
	 *@return imgUploadContentType值返回.
	 */
	public String getImgUploadContentType() {
		return imgUploadContentType;
	}

	/**
	 *imgUploadContentType的值设定
	 *@param imgUploadContentType 设定imgUploadContentType的值.
	 */
	public void setImgUploadContentType(String imgUploadContentType) {
		this.imgUploadContentType = imgUploadContentType;
	}



}
