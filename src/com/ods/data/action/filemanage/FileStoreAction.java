/**
 *copyright(C)2012
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.data.action.filemanage;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import com.ods.base.bo.system.user.bo.User;
import com.ods.data.bo.filemanage.FileStore;
import com.ods.util.UserContext;
import com.ods.util.action.ActionView;
import com.ods.util.db.DBIExecutePlsql;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.resource.ResourceUtil;
import com.ods.util.type.FileUtil;
import com.ods.util.type.StringUtil;
import com.ods.util.web.WebUtil;

/**
 *<b>系统名称:</b><b> 陕西巾帼依诺家政 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 *<b>文件名:</b><br>
 * 
 *FileStoreAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *FileStoreAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *FileStoreAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *文件存储表<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2012-2-15, cause, wangpei, 新建<br>
 * 
 *@author :wangpei
 *@since :2012-2-15
 *@version:1.0
 */
public class FileStoreAction extends ActionView {

    /**
     *属性名：serialVersionUID、类型：long、作成日：2012-2-15.<br>
     *含义：
     */
    private static final long serialVersionUID = -35131840921574982L;

    private FileStore fileStore = new FileStore();

    /**
     *fileStore的获取.
     * 
     * @return fileStore值返回.
     */
    public FileStore getFileStore() {
        return fileStore;
    }

    /**
     *fileStore的值设定
     * 
     * @param fileStore 设定fileStore的值.
     */
    public void setFileStore(FileStore fileStore) {
        this.fileStore = fileStore;
    }

    /**
     *查询条件.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.data.action.filemanage<br>
     *方法名:getQc方法.<br>
     *
     *@author:wangpei
     *@since :1.0:2012-2-16
     *@return
    */
    public QueryCondition getQc() {
        QueryCondition qc = newQueryConditionOfTable(getRequest());
        String fileDirectoryPk = getRequest().getParameter("fileDirectoryPk");
        if(!StringUtil.empty(fileDirectoryPk)) {
            qc.equals("fileDirectoryPk", fileDirectoryPk);
        }
        String fileName = getRequest().getParameter("fileName");
        if(!StringUtil.empty(fileName)) {
            qc.put("fileName", fileName);
        }
        String fileKeywords = getRequest().getParameter("fileKeywords");
        if(!StringUtil.empty(fileKeywords)) {
            qc.put("fileKeywords", fileKeywords);
        }
        return qc;
    }

    /**
     *加载列表信息.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.data.action.filemanage<br>
     *方法名:listInfo方法.<br>
     *
     *@author:wangpei
     *@since :1.0:2012-2-16
     *@return
    */
    public String listInfo() {
        QueryCondition qc = getQc();
        QueryResult qr = new QueryResult();
        qc.equals("deleteType", NUM_0);
        try {
            qr = getSpringHibernate().select(qc, FileStore.class);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
        String[] fields = {"fileStorePk","fileDirectoryPk","fileName","fileNarrate","fileKeywords","fileSotreUploadPath","createUserName","createUserPk","createTime","deleteType"};
        getRequest().setAttribute(SHOW_TABLE_COLMUN_NAME, fields);
        return SUCCESS;
    }

    /**
     *进入新增页面.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.data.action.filemanage<br>
     *方法名:addPage方法.<br>
     * 
     *@author:wangpei
     *@since :1.0:2012-2-15
     *@return
     */
    public String addPage() {
        FileStore fileStore = new FileStore();
        String fatherPk = getRequest().getParameter("fileDirectoryPk");
        if(StringUtil.empty(fatherPk)) {
            setRequestMessage("请选择目录", false);
            return ERROR;
        }
        User user = UserContext.getUserContext(getRequest()).getUser();
        // 如果pk是空，则是进入新增页面，初始化一些隐藏域的值
        fileStore.setFileDirectoryPk(getRequest().getParameter("fileDirectoryPk"));
        fileStore.setCreateUserName(user.getUserRealName());
        fileStore.setCreateUserPk(user.getUserPk());
        fileStore.setCreateTime(timeInstance());
        getRequest().setAttribute("fileStore", fileStore);
        return SUCCESS;
    }

    /**
     *新增<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.data.action.filemanage<br>
     *方法名:addInfo方法.<br>
     * 
     *@author:wangpei
     *@since :1.0:2012-2-15
     *@return
     */
    public String addInfo() {
        FileStore fileStore = getFileStore();
        try { 
            getSpringHibernate().save(fileStore);
            saveActionLog("新增文献资料：" + fileStore.getFileName());
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
        return SUCCESS;
    }
 

    /**
     *修改文献资料描述.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.data.action.filemanage<br>
     *方法名:updatePage方法.<br>
     *
     *@author:wangpei
     *@since :1.0:2012-2-16
     *@return
    */
    public String updatePage() {
        String fileStorePk = getRequest().getParameter("fileStorePk");
        FileStore fileStore = new FileStore();
        try {
            fileStore = (FileStore) getSpringHibernate().selectByPk("fileStorePk", fileStorePk, FileStore.class);
            if(null == fileStore) {
                setRequestMessage("所选内容数据未找到，请刷新重试!", false);
                return ERROR;
            }
            String uploadPath = fileStore.getFileSotreUploadPath();
            String[] pathName = uploadPath.split("/");
            String uploadName = pathName[pathName.length - 1];
            getRequest().setAttribute("uploadName", uploadName);
            getRequest().setAttribute("uploadPath", uploadPath);
            getRequest().setAttribute("fileStore", fileStore);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }

    /**
     *修改<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.data.action.filemanage<br>
     *方法名:updateInfo方法.<br>
     * 
     *@author:wangpei
     *@since :1.0:2012-2-16
     *@return
     */
    public String updateInfo() {
        FileStore fileStore = getFileStore();
        try {
            getSpringHibernate().update(fileStore);
            saveActionLog("修改文献资料：" + fileStore.getFileName());
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
        return SUCCESS;
    }

    /**
     *文献资料路径验证.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.data.action.filemanage<br>
     *方法名:fileCheck方法.<br>
     * 
     *@author:wangpei
     *@since :1.0:2012-2-16
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
     *文献资料下载<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.data.action.filemanage<br>
     *方法名:fileDownload方法.<br>
     * 
     *@author:wangpei
     *@since :1.0:2012-2-16
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

    /**
     *删除文献资料并删除储存在硬盘上的文件.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.data.action.filemanage<br>
     *方法名:deleteInfo方法.<br>
     *
     *@author:wangpei
     *@since :1.0:2012-2-16
     *@return
    */
    public String deleteInfo() {
        String fileStorePks = getRequest().getParameter("fileStorePks");
        String[] uploadPaths = getRequest().getParameterValues("uploadPaths");
        try {
            String deleteSql = " delete t_file_store where file_store_pk in (" + fileStorePks + ")";
            DBIExecutePlsql dbiExecutePlsql = new DBIExecutePlsql();
            dbiExecutePlsql.doSpringCallProcedure("p_exec_sql_util", new Object[] { deleteSql });
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        for(String path : uploadPaths) {
            String newpath = StringUtil.getLastPrefix(path, "/");
            FileUtil.deleteDirectory(newpath, true);
        }
        setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
        return SUCCESS;
    }
}
