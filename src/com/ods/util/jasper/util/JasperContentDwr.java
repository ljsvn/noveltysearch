/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.jasper.util;

import com.ods.util.UserContext;
import com.ods.util.dwr.DwrCommon;
import com.ods.util.jasper.bo.JasperShowBean;
import com.ods.util.log.LogUtil;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * JasperContentDwr.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * JasperContentDwr类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * JasperContentDwr类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * jasper报表展现内容产生页面<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-2-8, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-2-8
 * @version:1.0
 */
public class JasperContentDwr extends DwrCommon {

    public JasperShowBean jasperHtmlBuilder(String reportId, String pageNo, String formElement) {
        JasperShowBean jasperShowBean = JasperUtil.jasperHtmlBuilder(getRequest(), reportId, pageNo, formElement);
        return jasperShowBean;
    }

    public JasperShowBean printJapserReportFile(String reportId, String formElement) {
        JasperShowBean jasperShowBean = JasperUtil.allJapserReportFileContent(getRequest(), reportId, formElement);
        return jasperShowBean;
    }

    public String downloadJapserFile(String reportId, String downloadType,String formElementValue) {
        String destFile = null;
        try {
            destFile =JasperUtil.downloadJasperFile(getRequest(),reportId, downloadType, UserContext.getUserContext(getRequest()).getUser().getUserPk(), getResponse(),formElementValue);
        } catch(Throwable e) {
            LogUtil.writeLog(e); 
        }
        return destFile;
    }
}
