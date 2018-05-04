package com.ods.base.action.system.bulletin;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import com.ods.base.bo.system.bulletin.BulletinInfo;
import com.ods.base.bo.system.bulletin.BulletinReceive;
import com.ods.base.bo.system.user.bo.User;
import com.ods.util.UserContext;
import com.ods.util.action.ActionView;
import com.ods.util.config.bean.xml.ProductsDataCache;
import com.ods.util.db.DBIExecutePlsql;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.resource.ResourceUtil;
import com.ods.util.spring.TransactionalFunction;
import com.ods.util.type.FileUtil;
import com.ods.util.type.NumberUtil;
import com.ods.util.type.StringUtil;
import com.ods.util.web.WebUtil;

/**
 *<b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 *<b>文件名:</b><br>
 * 
 *BulletinInfoAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *BulletinInfoAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *BulletinInfoAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2011-3-17, cause, hou.manyuan@163.com, 新建<br>
 * 
 *@author :hou_m
 *@since :2011-3-17
 *@version:1.0
 */
public class BulletinInfoAction extends ActionView {

    /**
     *属性名：serialVersionUID、类型：long、作成日：2011-3-17.<br>
     */
    private static final long serialVersionUID = -2951537817490314762L;

    private BulletinInfo bulletinInfo = new BulletinInfo();

    /**
     *bulletinInfo的获取.
     * 
     * @return bulletinInfo值返回.
     */
    public BulletinInfo getBulletinInfo() {
        return bulletinInfo;
    }

    /**
     *bulletinInfo的值设定
     * 
     * @param bulletinInfo 设定bulletinInfo的值.
     */
    public void setBulletinInfo(BulletinInfo bulletinInfo) {
        this.bulletinInfo = bulletinInfo;
    }

    /**
     *公告上传图片.<br>
     *工程名:ekamtong<br>
     *包名:com.ods.base.action.system.bulletin.bulletininfo<br>
     *方法名:uploadImage方法.<br>
     * 
     *@author:wang_zr
     *@since :1.0:2011-11-8
     *@return
     */
    public String bulletinImageInfo() {
        try {
            ProductsDataCache productsDataCache = ProductsDataCache.getInstance();
            String timeInstanceTwo = timeInstanceTwo();
            String imagepath = productsDataCache.getUploadPath(getRequest(), timeInstanceTwo);
            File srcFile = bulletinInfo.getImgUpload();
            // 拷贝文件到指定的文件夹下
            FileUtil.copy(srcFile, imagepath, bulletinInfo.getImgUploadFileName());
            // bulletinInfo.setImgPath(imagepath +
            // bulletinInfo.getImgUploadFileName());
            // 设置文件显示的临时文件
            String tempImagePath = productsDataCache.getUploadFileShowTemp(getRequest(), imagepath, bulletinInfo
                    .getImgUploadFileName(), timeInstanceTwo);
            getRequest().setAttribute("uploadFileName", tempImagePath);
            return SUCCESS;
        } catch(Throwable e) {
            // 返回操作失败信息
            setRequestMessage(getText("FileUpload.kbfileupload.error"), false);
            return ERROR;
        }
    }

    /**
     * 
     *新增公告信息.<br>
     *工程名:odspsp<br>
     *包名:com.ods.psp.action.bulletin.bulletininfo<br>
     *方法名:addInfo方法.<br>
     * 
     *@author:dongfeng1012@yahoo.com.cn
     *@since :1.0:2009-9-10
     *@return SUCCESS:正确提示页面 ERROR:错误提示页面
     */
    public String addInfo() {
        try {
            // 隐藏参数：文件名称，如果存在就执行上传
            String fileName = getRequest().getParameter("fileName");
            if(!StringUtil.empty(fileName)) {
                if(null != bulletinInfo.getUpload()) {
                    // 上传附件
                    uploadFile(bulletinInfo);
                }
            }
            // 新增公告
            User user = UserContext.getUserContext(getRequest()).getUser();
            int ispass = NumberUtil.toInt(getRequest().getParameter("ispass"));
            bulletinInfo.setCreateOrgPk(user.getOrgPk());
            bulletinInfo.setCreateUserPk(user.getUserPk());
            bulletinInfo.setCreateTime(timeInstance());
            if(!StringUtil.empty(bulletinInfo.getImgPath())) {
                // bulletinInfo.setImgPath(bulletinInfo.getImgPath().replace("\\",
                // "/"));
                ProductsDataCache productsDataCache = new ProductsDataCache();
                bulletinInfo.setImgPath(productsDataCache.getDBImagePath(getRequest(), bulletinInfo.getImgPath()));
            }
            if(!StringUtil.empty(bulletinInfo.getFilePath())) {
                bulletinInfo.setFilePath(bulletinInfo.getFilePath().replace("\\", "/"));
                bulletinInfo.setFileName(fileName);
            }
            // 草稿
            if(ispass == NUM_1) {
                bulletinInfo.setSendType(NUM_0);
                bulletinInfo.setIsDraft(NUM_1);
            }
            getSpringHibernate().save(bulletinInfo);
            // 发送时，向公告接收表中插入数据
            if(ispass == NUM_0) {
                int sendType = bulletinInfo.getSendType();// 发送类型
                String orgPks = getRequest().getParameter("orgPks");// 部门PK
                String userPks = getRequest().getParameter("userPks");// 员工PK
                String userNames = getRequest().getParameter("userNames");// 员工姓名
                insertBulletinReceive(sendType, orgPks, userPks, userNames, bulletinInfo);
            }
            saveActionLog("在\"公告发布中\"发布了公告标题为：" + bulletinInfo.getBulletinTitle() + "的信息");
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(getText("BulletinInfo.add.fail"), false);
            return ERROR;
        }
    }

    // 附件上传
    private void uploadFile(BulletinInfo bulletin) throws IOException {
        ProductsDataCache productsDataCache = ProductsDataCache.getInstance();
        String timeInstanceTwo = timeInstanceTwo();
        String uploadpath = productsDataCache.getUploadPath(getRequest(), timeInstanceTwo);
        File srcFile = bulletin.getUpload();
        FileUtil.copy(srcFile, uploadpath, bulletin.getUploadFileName());
        bulletin.setFilePath(uploadpath + bulletin.getUploadFileName());
    }

    // 发送公告时，向公告接收表中插入数据
    private void insertBulletinReceive(int sendType, String orgPks, String userPks, String userNames, BulletinInfo bulletinInfo)
            throws Throwable {
        StringBuilder insertSqlBuilder = new StringBuilder();
        insertSqlBuilder
                .append("insert t_bulletin_receive(receive_pk,bulletin_pk,send_type,user_pk,user_name,bulletin_isread,create_org_pk,create_user_pk,delete_type,create_time) ");
        insertSqlBuilder.append("( select newid() receive_pk,'");
        insertSqlBuilder.append(bulletinInfo.getBulletinPk()).append("', ");
        insertSqlBuilder.append(sendType).append(",");
        switch (sendType) {
            case NUM_0:// 全体
                // 发送给坐席
                BulletinReceive bulletinReceive = new BulletinReceive();
                bulletinReceive.setBulletinPk(bulletinInfo.getBulletinPk());
                bulletinReceive.setSendType(NUM_1);
                bulletinReceive.setBulletinIsread(NUM_0);
                bulletinReceive.setDeleteType(NUM_0);
                bulletinReceive.setCreateTime(timeInstance());
                // 发送给crm
                insertSqlBuilder.append("c.user_pk,c.user_real_name,");
                insertSqlBuilder.append("0,'','"+getNonceUserPk()+"',0,'"+timeInstance()+"'");
                insertSqlBuilder
                        .append(" from t_user c where c.delete_type=0 and c.user_pk!='00000000-0000-0000-0000-000000000000')");
                break;
            case NUM_1:// 部门
                String org_pks = "'" + orgPks.replaceAll(",", "','") + "'";
                insertSqlBuilder.append("c.user_pk,c.user_real_name,");
                insertSqlBuilder.append("0,'','"+getNonceUserPk()+"',0,'"+timeInstance()+"'");
                insertSqlBuilder
                        .append(" from t_user c where c.delete_type=0 and c.user_pk!='00000000-0000-0000-0000-000000000000' and c.org_pk  in(");
                insertSqlBuilder.append(org_pks).append("))");
                break;
            case NUM_2:// 个人
                String user_pks = "'" + userPks.replaceAll(",", "','") + "'";
                insertSqlBuilder.append("c.user_pk,c.user_real_name,");
                insertSqlBuilder.append("0,'','"+getNonceUserPk()+"',0,'"+timeInstance()+"'");
                insertSqlBuilder
                        .append(" from t_user c where c.delete_type=0 and c.user_pk!='00000000-0000-0000-0000-000000000000' and c.user_pk  in(");
                insertSqlBuilder.append(user_pks).append("))");
                break;
        }
        callDBProc("p_exec_sql_util", new Object[] { insertSqlBuilder.toString() });
    }

    /**
     *已发公告信息.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.base.action.system.bulletin<br>
     *方法名:listInfo方法.<br>
     * 
     *@author:wang_zr
     *@since :1.0:2012-1-13
     *@return
     */
    public String listInfo() {
        try {
            QueryCondition qc = newQueryConditionOfTable(getRequest(), false);
            // 公告标题
            String bulletinTitle = getRequest().getParameter("bulletinTitle");
            if(!StringUtil.empty(bulletinTitle)) {
                qc.put("bulletinTitle", bulletinTitle);
            }
            // 公告类型
            String bulletinType = getRequest().getParameter("bulletinType");
            if(!StringUtil.empty(bulletinType)) {
                qc.equals("bulletinType", bulletinType);
            }
            // 发送时间
            String createTimeS = getRequest().getParameter("createTimeS");
            if(!StringUtil.empty(createTimeS)) {
                qc.greateEquals("createTime", createTimeS + " 00:00:00");
            }
            String createTimeE = getRequest().getParameter("createTimeE");
            if(!StringUtil.empty(createTimeE)) {
                qc.lessEquals("createTime", createTimeE + " 59:59:59");
            }
            // 类型
            String isDraft = getRequest().getParameter("isDraft");
            if(!StringUtil.empty(isDraft)) {
                qc.equals("isDraft", isDraft);
            }
            // 只能看自己发送的
            User user = UserContext.getUserContext(getRequest()).getUser();
            qc.equals("createUserPk", user.getUserPk());
            qc.orderDesc("createTime");
            qc.equals("deleteType", NUM_0);
            QueryResult qr = getSpringHibernate().select(qc, BulletinInfo.class);
            getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
            String[] fields = { "bulletinPk", "sendType", "bulletinTitle", "imgPath", "filePath", "fileName", "bulletinNote",
                    "bulletinType", "isDraft", "createOrgPk", "createUserPk", "deleteType", "createTime" ,"createUserName"};
            getRequest().setAttribute(SHOW_TABLE_COLMUN_NAME, fields);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            return ERROR;
        }
    }

    /**
     *查看公告信息.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.base.action.system.bulletin<br>
     *方法名:viewPage方法.<br>
     * 
     *@author:wang_zr
     *@since :1.0:2012-1-13
     *@return
     */
    public String viewPage() {
        String bulletinPk = getRequest().getParameter("bulletinPk");
        try {
            BulletinInfo bulletinInfo = (BulletinInfo) getSpringHibernate().selectByPk("bulletinPk", bulletinPk,
                    BulletinInfo.class);
            // 设置图片显示的路径信息
            // 拷贝临时图片
            ProductsDataCache productsDataCache = ProductsDataCache.getInstance();
            String impagePathTemp = bulletinInfo.getImgPath();
            if(!StringUtil.empty(impagePathTemp)) {
                productsDataCache.copyShowImage(getRequest(), impagePathTemp);
                // 设置显示的路径
                bulletinInfo.setImgPath(getRequest().getContextPath() + "/temp/" + impagePathTemp);
            }
            // 显示内容换行
            bulletinInfo.setBulletinNote(bulletinInfo.getBulletinNote().replace("\r\n", "\\r\\n"));
            bulletinInfo.setBulletinNote(bulletinInfo.getBulletinNote().replace("\n", "\\n"));
            // 附件
            String uploadPath = bulletinInfo.getFilePath();
            if(!StringUtil.empty(uploadPath)) {
                String[] pathName = uploadPath.split("/");
                String uploadName = pathName[pathName.length - 1];
                getRequest().setAttribute("uploadName", uploadName);
                getRequest().setAttribute("uploadPath", uploadPath);
            }
            getRequest().setAttribute("bulletinInfo", bulletinInfo);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        return SUCCESS;
    }

    /**
     *删除公告信息.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.base.action.system.bulletin<br>
     *方法名:deleteInfo方法.<br>
     * 
     *@author:wang_zr
     *@since :1.0:2012-1-13
     *@return
     */
    public String deleteInfo() {
        String bulletinPk = getRequest().getParameter("bulletinPk");
        try {
            Object[] obj = new Object[1];
            obj[0] = bulletinPk;
            this.getSpringHibernate().transactionalAction(obj, new TransactionalFunction() {
                public Object doAction(Object[] obj) throws Throwable {
                    String bulletinPk = obj[0].toString();
                    BulletinInfo bulletinInfo = (BulletinInfo) getSpringHibernate().selectByPk("bulletinPk", bulletinPk,
                            BulletinInfo.class);
                    // 如果是草稿，则删除数据
                    if(bulletinInfo.getIsDraft() == NUM_1) {
                        // 执行删除
                        getSpringHibernate().delete(bulletinInfo);
                    } else {
                        // 执行软删
                        bulletinInfo.setDeleteType(NUM_1);
                        getSpringHibernate().update(bulletinInfo);
                    }
                    // 删除文件
                    if(!StringUtil.empty(bulletinInfo.getFilePath())) {
                        String filePath = StringUtil.getLastPrefix(bulletinInfo.getFilePath(), "/");
                        FileUtil.deleteDirectory(filePath, true);
                    }
                    // 删除图片
                    if(!StringUtil.empty(bulletinInfo.getImgPath())) {
                        String imgPath = StringUtil.getLastPrefix(bulletinInfo.getImgPath(), "/");
                        FileUtil.deleteDirectory(imgPath, true);
                    }
                    // 删除接收信息表中的数据
                    String deleteSql = " delete from t_bulletin_receive where bulletin_pk='" + bulletinPk + "'";
                    DBIExecutePlsql dbiExecutePlsql = new DBIExecutePlsql();
                    dbiExecutePlsql.doSpringCallProcedure("p_exec_sql_util", new Object[] { deleteSql });
                    saveActionLog("在\"已发公告中\"删除了公告标题为：" + bulletinInfo.getBulletinTitle() + "的信息");
                    return null;
                }
            });
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }

    // 验证公告附件是否存在
    public String fileCleckFile() {
        try {
            String uploadpath = getRequest().getParameter("infoPk");
            if(!StringUtil.empty(uploadpath)) {
                if(FileUtil.isFileExisted(uploadpath)) {
                    setRequestMessage(uploadpath, true);
                    return SUCCESS;
                }
            }
            setRequestMessage("文件不存在", false);
            return ERROR;
        } catch(Throwable e) {
            setRequestMessage("文件不存在", false);
            return ERROR;
        }
    }

    /**
     *附件下载.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.base.action.system.bulletin<br>
     *方法名:fileDownload方法.<br>
     * 
     *@author:wang_zr
     *@since :1.0:2012-1-13
     *@return
     */
    public String fileDownload() {
        String uploadpath = getRequest().getParameter("infoPk");
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

    // 草稿发送
    public String sendDraft() {
        try {
            if(null != bulletinInfo.getUpload()) {
                // 上传附件
                uploadFile(bulletinInfo);
            }
            ProductsDataCache productsDataCache = ProductsDataCache.getInstance();
            User user = UserContext.getUserContext(getRequest()).getUser();
            bulletinInfo.setImgPath(productsDataCache.getDBImagePath(getRequest(), bulletinInfo.getImgPath()));
            bulletinInfo.setIsDraft(NUM_0);
            bulletinInfo.setCreateOrgPk(user.getOrgPk());
            bulletinInfo.setCreateUserPk(user.getUserPk());
            bulletinInfo.setCreateTime(timeInstance());
            // 修改公告信息
            getSpringHibernate().update(bulletinInfo);
            // 向公告接收表中插入数据
            int sendType = bulletinInfo.getSendType();// 发送类型
            String orgPks = getRequest().getParameter("orgPks");// 部门PK
            String userPks = getRequest().getParameter("userPks");// 员工PK
            String userNames = getRequest().getParameter("userNames");// 员工姓名
            insertBulletinReceive(sendType, orgPks, userPks, userNames, bulletinInfo);
            saveActionLog("在\"公告草稿中\"发送了公告标题为：" + bulletinInfo.getBulletinTitle() + "的信息");
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }
}
