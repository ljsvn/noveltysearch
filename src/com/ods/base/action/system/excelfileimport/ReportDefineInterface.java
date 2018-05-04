/**
 *copyright(C)2010
 *陕西兴华伟业软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.action.system.excelfileimport;

import java.io.File;

import com.ods.util.web.WebContext;

/**
 *<b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 *<b>文件名:</b><br>
 * 
 *ReportDefineInterface.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *ReportDefineInterface类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *ReportDefineInterface类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *导出文件常数定义<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2011-9-27, cause, wang_zr, 新建<br>
 * 
 *@author :wang_zr
 *@since :2011-9-27
 *@version:1.0
 */
public class ReportDefineInterface {

    /**
     *属性名：DOWNLOADFILEPATH、类型：String、作成日：2010-6-23.<br>
     *含义：文件下载的路径
     */
    public static final String DOWNLOADFILEPATH = WebContext.toHomeRootPath() + "temp/";

    /**
     *属性名：ORDER、类型：String、作成日：2010-9-3.<br>
     *含义：工艺对应设备
     */
    public static final String EQUIPMENT = WebContext.toHomeRootPath() + "excelTemplet/equipment" + File.separator + "equipment.xls";
    
    
    public static final String OFFICEWORK = WebContext.toHomeRootPath() + "excelTemplet/officework" + File.separator + "officework.xls";

}
