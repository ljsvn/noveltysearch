/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.action.system.jasper;
 
import java.util.Iterator;
import java.util.Map;

import com.ods.util.UserContext;
import com.ods.util.action.ActionView;
import com.ods.util.jasper.util.JasperUtil;
import com.ods.util.log.LogUtil;
import com.ods.util.resource.ResourceUtil;
import com.ods.util.type.StringUtil;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * JasperAction.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * JasperAction类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * JasperAction类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * jasper通用Action<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-1-12, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-1-12
 * @version:1.0
 */
public class JasperAction extends ActionView {

    /**
     * 属性名：serialVersionUID、类型：long、作成日：2011-1-12.<br>
     * 含义：
     */
    private static final long serialVersionUID = -8845733496341663384L;

    /**
     * 获取Jasper报表的信息，并进行报表展示.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.jasper<br>
     * 方法名:genernateJasperPage方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2011-1-12
     * @return
     */
    public String genernateJasperPage() {
        try {
            String reportId = getRequest().getParameter("reportId"); 
            String queryshow = getRequest().getParameter("queryshow"); 
            String pageWith = getRequest().getParameter("pageWith");
            if(StringUtil.empty(pageWith)){
                pageWith ="1200";
            }
            getRequest().setAttribute("pageWith", pageWith);
            String pageHeight = getRequest().getParameter("pageHeight"); 
            if(StringUtil.empty(pageHeight)){
                pageHeight ="600";
            }
           
            //解决业务上传参的事
            Map<String,String[]> parameterMap= getRequest().getParameterMap();
          String reportParameter="reportId="+reportId+"&queryshow="+queryshow+"&pageWith="+pageWith+"&pageHeight="+pageHeight;
          for(Iterator<Map.Entry<String, String[]>> it = parameterMap
                  .entrySet().iterator(); it.hasNext();) {
              Map.Entry<String, String[]> entry = (Map.Entry<String, String[]>) it
                      .next();
              String condKey = entry.getKey();
              Object condValObject = entry.getValue();
              String  condVal="";
              if (condValObject instanceof String[]){
                  String[] condVals = (String[])condValObject;
                  if(condVals.length>0){
                      condVal = condVals[0];
                  } 
               }else{
                   condVal = condValObject.toString();
               }
              if(StringUtil.equals("reportId", condKey)){
                  continue; 
               }
              if(StringUtil.equals("pageWith", condKey)){
                  continue; 
               } 
              if(StringUtil.equals("pageHeight", condKey)){
                  continue; 
              } 
              if(StringUtil.empty(condKey)||StringUtil.empty(condVal)){
                 continue; 
              }
              reportParameter+="&"+condKey+"="+condVal;
          }
          getRequest().setAttribute("reportParameter", reportParameter);
            // 清空缓存
           // ReportDataCache reportDataCache = ReportDataCache.getInstance();
           // reportDataCache.destoryCache();
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        return SUCCESS;
    }

    /**
     * jasper文件下载.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.jasper<br>
     * 方法名:downloadJasperFile方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2011-2-7
     * @return
     */
    public String downloadJasperFile() {

        //
        String reportId = getRequest().getParameter("reportId");
        if(StringUtil.empty(reportId)) {
            return "emptyReportId";
        }
        //
        String downloadType = getRequest().getParameter("downloadType");
        if(StringUtil.empty(reportId)) {
            downloadType = "csv";
        }
        try {
            String destFilPath = JasperUtil.downloadJasperFile(getRequest(),reportId, downloadType, UserContext.getUserContext(getRequest()).getUser().getUserPk(), getResponse(),"");
        getRequest().setAttribute("destFilPath", destFilPath);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        return SUCCESS;
    }

}
