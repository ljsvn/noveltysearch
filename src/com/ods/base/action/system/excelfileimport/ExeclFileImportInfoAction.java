/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.action.system.excelfileimport;

import java.io.File;
import java.util.List;

import com.ods.base.bo.system.excelfileimport.ExeclFileImportInfo;
import com.ods.base.bo.system.excelfileimport.ExeclFileImportTempContent;
import com.ods.base.bo.system.user.bo.User;
import com.ods.util.UserContext;
import com.ods.util.action.ActionView;
import com.ods.util.config.bean.xml.Product;
import com.ods.util.config.bean.xml.ProductsDataCache;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.resource.ResourceUtil;
import com.ods.util.type.FileUtil;
import com.ods.util.type.StringUtil;
import com.ods.util.web.WebContext;
import com.ods.util.web.WebUtil;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * ExeclFileImportInfoAction.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * ExeclFileImportInfoAction类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * ExeclFileImportInfoAction类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp; 文件导入
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-3-7, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-3-7
 * @version:1.0
 */
public class ExeclFileImportInfoAction extends ActionView {

    /**
     * 属性名：serialVersionUID、类型：long、作成日：2011-3-7.<br>
     * 含义：
     */
    private static final long serialVersionUID = -2093377435027621374L;

    private ExeclFileImportInfo execlFileImportInfo = new ExeclFileImportInfo();

    /**
     * execlFileImportInfo的获取.
     * 
     * @return execlFileImportInfo值返回.
     */
    public ExeclFileImportInfo getExeclFileImportInfo() {
        return execlFileImportInfo;
    }

    /**
     * execlFileImportInfo的值设定
     * 
     * @param execlFileImportInfo 设定execlFileImportInfo的值.
     */
    public void setExeclFileImportInfo(ExeclFileImportInfo execlFileImportInfo) {
        this.execlFileImportInfo = execlFileImportInfo;
    }

    /**
     * 文件上传 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.excelfileimport<br>
     * 方法名:uploadInfo方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2011-3-7
     * @return
     */
    public String uploadInfo() {
        // 获取提交的信息
        ExeclFileImportInfo importInfo = getExeclFileImportInfo();
        try {
            // 配置文件的路径
            String xmlConfigUploadFilePath = "";
            List<Product> productList = ProductsDataCache.getInstance().getProducts().getProductList();
            for(Product product : productList) {
                if(StringUtil.equals("uploadPath", product.getName())) {
                    xmlConfigUploadFilePath = product.getValue();
                    break;
                }
            }

            String uploadPath = xmlConfigUploadFilePath + File.separator + getNonceUserPk() + File.separator + timeInstanceTwo() + File.separator;
            FileUtil.touchPath(uploadPath);
            // 文件对象
            File srcFile = importInfo.getFile();
            String dstPath = uploadPath + importInfo.getFileFileName();
            // 上传文件
            FileUtil.copy(srcFile, dstPath);
            String contractPk =getRequest().getParameter("contractPk");
            User user = UserContext.getUserContext(getRequest()).getUser();
            if(contractPk== null)contractPk=user.getFirstOrgPk();
            // 保存到数据库
            
            importInfo.setExeclFileName(importInfo.getFileFileName());
            importInfo.setExeclFilePath(dstPath);
            importInfo.setFirstOrgPk(contractPk);
            importInfo.setCreateOrgPk(user.getOrgPk());
            importInfo.setCreateUserPk(user.getUserPk());
            importInfo.setCreateTime(timeInstance());
            getSpringHibernate().save(importInfo);
            // 导入Excel文件
            new ExcelFileImportUtil().importExcelFileContentInfoTempTable(importInfo);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            try {
                getSpringHibernate().delete("execlFileImportPk", importInfo.getExeclFileImportPk(), ExeclFileImportInfo.class);
                getSpringHibernate().delete("execlFileImportPk", importInfo.getExeclFileImportPk(),
                        ExeclFileImportTempContent.class);
            } catch(Throwable e1) {
                LogUtil.writeLog(e);
            }
            LogUtil.writeLog(e);
            setRequestMessage("文件导入时出现未知错误，请联系系统管理员!", false);
            return ERROR;
        }
    }

    /**
     * 导入文件信息查询条件
     * 
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.excelfileimport<br>
     * 方法名:getQc方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2011-3-7
     * @return
     * @throws Throwable
     */
    public QueryCondition getQc() throws Throwable {
        QueryCondition qc = newQueryConditionOfTable(getRequest(), false);
        String execlFileName = getRequest().getParameter("execlFileName");
        if(!StringUtil.empty(execlFileName)) {
            qc.put("execlFileName", execlFileName);
        }
        String beginTime = getRequest().getParameter("beginTime");
        if(!StringUtil.empty(beginTime)) {
            qc.greateEquals("createTime", beginTime);
        }
        String endTime = getRequest().getParameter("endTime");
        if(!StringUtil.empty(endTime)) {
            qc.lessEquals("createTime", endTime);
        }
        String execlFileImportTypeId = getRequest().getParameter("execlFileImportTypeId");
        if(!StringUtil.empty(execlFileImportTypeId)) {
            qc.equals("execlFileImportTypeId", execlFileImportTypeId);
        }
        
        String filePk = getRequest().getParameter("filePk");
        if(!StringUtil.empty(execlFileImportTypeId)) {
            qc.equals("execlFileImportTypeId", execlFileImportTypeId);
        }
        
        qc.equals("createUserPk", getNonceUserPk());
        qc.orderDesc("createTime");
        return qc;
    }

    /**
     * 导入文件信息列表 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.excelfileimport<br>
     * 方法名:listInfo方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2011-3-7
     * @return
     */
    public String listInfo() {
        QueryResult qr = null;
        try {
            QueryCondition qc = getQc();
            qr = getSpringHibernate().select(qc, ExeclFileImportInfo.class);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            qr = null;
        }
        getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
        String[] fields = { "execlFileImportPk", "execlFileImportTypeId", "execlFileName", "execlFilePath",
                "execlFileImportErrorContent", "createOrgPk", "createUserPk", "createTime", "deleteType" };
        getRequest().setAttribute(SHOW_TABLE_COLMUN_NAME, fields);
        return SUCCESS;
    }

    /**
     * 下载导入文件 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.excelfileimport<br>
     * 方法名:downloadExeclfileInfo方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2011-3-7
     * @return
     */
    public String downloadExeclfileInfo() {
        try {
            // 1: 根据文件PK获取文件信息
            String execlFileImportPk = getRequest().getParameter("execlFileImportPk");
            ExeclFileImportInfo fileUpload = (ExeclFileImportInfo) getSpringHibernate().selectByPk("execlFileImportPk",
                    execlFileImportPk, ExeclFileImportInfo.class);
            // 2: 根据路径声明文件对象
            File dsFile = new File(fileUpload.getExeclFilePath());
            // 3: 页面文件下载
            WebUtil.exportAttachment(getResponse(), dsFile, fileUpload.getExeclFileName().getBytes("GBK"), "UTF-8");
        } catch(Throwable e) {
            // 4: 处理错误信息
            LogUtil.writeLog(e);
        }
        // 5: 返回为空
        return NONE;
    }

    /**
     * 根据文件类型下载导入文件模版 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.excelfileimport<br>
     * 方法名:downloadHelpInfo方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2011-3-7
     * @return
     */
    public String downloadHelpInfo() {
        try {
            // 1: 根据文件PK获取文件信息
            String fileType = getRequest().getParameter("fileType");
            String filePathName = "";
            if(StringUtil.equals(fileType, ExeclFileImportInfo.EXECL_FILE_IMPORT_1)) {
                filePathName = ExeclFileImportInfo.EXECL_FILE_IMPORT_1_NAME;
            }
            // 3: 根据路径声明文件对象
            File dsFile = new File(WebContext.toHomeRootPath() + "systemHelp/fileimpport/" + filePathName);
            // 4: 页面文件下载
            WebUtil.exportAttachment(getResponse(), dsFile, filePathName.getBytes("GBK"), "UTF-8");
        } catch(Throwable e) {
            // 5: 处理错误信息
            LogUtil.writeLog(e);
        }
        // 6: 返回为空
        return NONE;
    }
}
