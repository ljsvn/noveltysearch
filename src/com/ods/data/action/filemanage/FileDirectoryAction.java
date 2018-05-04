/**
 *copyright(C)2012
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.data.action.filemanage;

import java.util.HashMap;
import java.util.Map;

import com.ods.base.bo.system.user.bo.User;
import com.ods.data.bo.filemanage.FileDirectory;
import com.ods.data.bo.filemanage.FileStore;
import com.ods.util.UserContext;
import com.ods.util.action.ActionView;
import com.ods.util.db.DBIExecutePlsql;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.resource.ResourceUtil;
import com.ods.util.type.StringUtil;

/**
 *<b>系统名称:</b><b> 陕西巾帼依诺家政 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 *<b>文件名:</b><br>
 * 
 *FileDirectoryAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *FileDirectoryAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *FileDirectoryAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *文件目录<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2012-2-13, cause, wangpei, 新建<br>
 * 
 *@author :wangpei
 *@since :2012-2-13
 *@version:1.0
 */
public class FileDirectoryAction extends ActionView {

    /**
     *属性名：serialVersionUID、类型：long、作成日：2012-2-13.<br>
     *含义：
     */
    private static final long serialVersionUID = 6056606948616938158L;

    FileDirectory fileDirectory = new FileDirectory();

    /**
     *fileDirectory的获取.
     * 
     * @return fileDirectory值返回.
     */
    public FileDirectory getFileDirectory() {
        return fileDirectory;
    }

    /**
     *fileDirectory的值设定
     * 
     * @param fileDirectory 设定fileDirectory的值.
     */
    public void setFileDirectory(FileDirectory fileDirectory) {
        this.fileDirectory = fileDirectory;
    }

    /**
     *文件目录树.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.data.action.filemanage<br>
     *方法名:directoryTreeInfo方法.<br>
     * 
     *@author:wangpei
     *@since :1.0:2012-2-13
     *@return
     */
    public String directoryTreeInfo() {
        String fileDirectoryPk = getRequest().getParameter("fileDirectoryPk");
        QueryCondition qc = new QueryCondition();
        QueryResult qr = new QueryResult();
        qc.equals("deleteType", NUM_0);
        StringBuffer sb = new StringBuffer();
        sb.append("[");
        try {
            qr = getSpringHibernate().select(qc, FileDirectory.class);
            Map<String, Boolean> fileDirMap = new HashMap<String, Boolean>();
            for(Object object : qr) {
                FileDirectory directory = (FileDirectory) object;
                fileDirMap.put(directory.getFatherFileDirectoryPk(), true);
            }
            for(Object object : qr) {
                FileDirectory directory = (FileDirectory) object;
                makeDirectoryTree(sb, directory, fileDirMap, fileDirectoryPk);
            }
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        getRequest().setAttribute("JSON", sb);
        if(sb.length() > 1) {
            sb.deleteCharAt(sb.length() - 1);
        }
        sb.append("]");
        return SUCCESS;
    }

    /**
     *拼接文件目录树.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.data.action.filemanage<br>
     *方法名:makeDirectoryTree方法.<br>
     * 
     *@author:wangpei
     *@since :1.0:2012-2-13
     *@param sb
     *@param fd
     *@param fm
     *@param fileDirectoryPk
     */
    public static void makeDirectoryTree(StringBuffer sb, FileDirectory fd, Map<String, Boolean> fm, String fileDirectoryPk) {
        if(StringUtil.equals(fd.getFatherFileDirectoryPk(), fileDirectoryPk)) {
            sb.append("{text:'");
            sb.append(fd.getDirectoryName());
            sb.append("',fileDirectoryPk:'");
            sb.append(fd.getFileDirectoryPk());
            boolean isLeaf = true;
            // 如果map里面有当前对象的pk，则是有下级节点的，设置leaf属性为false。
            if(fm.get(fd.getFileDirectoryPk()) != null) {
                isLeaf = false;
            }
            sb.append("',leaf:").append(isLeaf);
            sb.append(",checked: false");
            sb.append("},");
        }
    }

    /**
     *加载新增修改页面.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.data.action.filemanage<br>
     *方法名:intoPage方法.<br>
     * 
     *@author:wangpei
     *@since :1.0:2012-2-13
     *@return
     */
    public String intoPage() {
        String fileDirectoryPk = getRequest().getParameter("fileDirectoryPk");
        FileDirectory fileDirectory = new FileDirectory();
        User user = UserContext.getUserContext(getRequest()).getUser();
        if(StringUtil.empty(fileDirectoryPk)) {
            // 如果pk是空，则是进入新增页面，初始化一些隐藏域的值
            fileDirectory.setFatherFileDirectoryPk(getRequest().getParameter("fatherPk"));
            fileDirectory.setCreateUserPk(user.getUserPk());
            fileDirectory.setCreateTime(timeInstance());
        } else {
            try {
                fileDirectory = (FileDirectory) getSpringHibernate().selectByPk("fileDirectoryPk", fileDirectoryPk, FileDirectory.class);
            } catch(Throwable e) {
                LogUtil.writeLog(e);
                setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
                return ERROR;
            }
        }
        getRequest().setAttribute("fileDirectory", fileDirectory);
        return SUCCESS;
    }

    public String modifyInfo() {
        FileDirectory fileDirectory = getFileDirectory();
        String fileDirPk = fileDirectory.getFileDirectoryPk();
        String fatherPk = fileDirectory.getFatherFileDirectoryPk();
        // 去除前后空格
        String dirName = fileDirectory.getDirectoryName().trim();
        fileDirectory.setDirectoryName(dirName);
        QueryCondition qc = new QueryCondition();
        QueryResult qr = new QueryResult();
        qc.equals("fatherFileDirectoryPk", fatherPk);
        qc.equals("directoryName", dirName);
        if(!StringUtil.empty(fileDirPk)) {
            qc.notEquals("fileDirectoryPk", fileDirPk);
        }
        try {
            qr = getSpringHibernate().select(qc, FileDirectory.class);
            if(qr.size() > 0) {
                setRequestMessage("同一目录下目录名称不可重复，请重新填写", false);
                return ERROR;
            }
            if(StringUtil.empty(fileDirPk)) {
                getSpringHibernate().save(fileDirectory);
                saveActionLog("新建目录:" + dirName);
            } else {
                getSpringHibernate().update(fileDirectory);
                saveActionLog("修改目录:" + dirName);
            }
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
        return SUCCESS;
    }

    public String deleteInfo() {
        String fileDirectoryPk = getRequest().getParameter("fileDirectoryPk");
        if(!StringUtil.empty(fileDirectoryPk)){
            QueryCondition qc = new QueryCondition();
            QueryResult qr = new QueryResult();
            qc.equals("fileDirectoryPk", fileDirectoryPk);
            try {
                qr = getSpringHibernate().select(qc, FileStore.class);
                if(qr.size() > 0){
                    setRequestMessage("改目录下还有文件未删除，请先删除文件信息", false);
                    return ERROR;
                }
                String deleteSql = " delete t_file_directory where file_directory_pk = '"+ fileDirectoryPk +"'";
                DBIExecutePlsql dbiExecutePlsql = new DBIExecutePlsql();
                dbiExecutePlsql.doSpringCallProcedure("p_exec_sql_util", new Object[] { deleteSql });
            } catch(Throwable e) {
                LogUtil.writeLog(e);
                setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
                return ERROR;
            }
        }else{
            setRequestMessage("请选择要删除的目录", false);
            return ERROR;
        }
        setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
        return SUCCESS;
    }
}
