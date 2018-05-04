/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.action.system.excelfileimport;

import java.io.File;

import com.ods.util.action.ActionView;
import com.ods.util.type.EncodingUtil;
import com.ods.util.web.WebUtil;

/**
 *<b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 *<b>文件名:</b><br>
 * 
 *ExcelFiledownLoadAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *ExcelFiledownLoadAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *ExcelFiledownLoadAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *excel文件导出<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2011-9-27, cause, wang_zr, 新建<br>
 * 
 *@author :wang_zr
 *@since :2011-9-27
 *@version:1.0
 */
public class ExcelFiledownLoadAction extends ActionView {

    /**
     *属性名：serialVersionUID、类型：long、作成日：2010-6-24.<br>
     *含义：
     */
    private static final long serialVersionUID = 1192815026311193479L;

    public String downLoadReoprtFile() {
        String sourceFileName = getRequest().getParameter("sourceFileName");
        String descFileName = EncodingUtil.unescape(getRequest().getParameter("descFileName"));
        sourceFileName = ReportDefineInterface.DOWNLOADFILEPATH + sourceFileName;
        // 导出文件
        try {
            WebUtil.exportAttachment(getResponse(), new File(sourceFileName), descFileName.getBytes(EncodingUtil.CHARSET_GB2312),
                    EncodingUtil.CHARSET_GB2312);
        } catch(Throwable e) {
            e.printStackTrace();
            return ERROR;
        }
        return NONE;
    }
}
