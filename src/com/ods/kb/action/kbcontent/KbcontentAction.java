package com.ods.kb.action.kbcontent;

import java.io.File;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import com.ods.base.bo.system.user.bo.User;
import com.ods.kb.bo.kbcontent.TKbContent;
import com.ods.kb.bo.kbdir.KbDirectory;
import com.ods.kb.bo.kbtype.TKbtype;
import com.ods.util.UserContext;
import com.ods.util.action.ActionView;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.type.FileUtil;
import com.ods.util.type.NumberUtil;
import com.ods.util.type.StringUtil;
import com.ods.util.type.TimeUtil;
import com.ods.util.web.WebContext;

/**
 *<b>系统名称:</b><b> 12320公共卫生公益电话咨询系统
 * 
 *odslicense</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>子系统名：</b><br>
 *系统管理
 * 
 *知识点信息的增，删，改，查<br>
 * 
 *系统管理
 * 
 *<b>文件名:</b><br>
 *filename
 * 
 *KbcontentAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *KbcontentAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *KbcontentAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *知识点信息的增，删，改，查<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2009-11-14, cause, jiangwenqi, 新建<br>
 * 
 *@author :jiangwenqi
 *@since :2009-11-14
 *@version:1.0
 */
public class KbcontentAction extends ActionView {

    /**
     *属性名：serialVersionUID、类型：long、作成日：2009-11-14.<br>
     *含义：
     */
    private static final long serialVersionUID = 8097090816874101134L;

    /**
     *属性名：kbContent、类型：TKbContent、作成日：2009-11-14.<br>
     *含义：知识点域模型
     */
    private TKbContent kbContent = new TKbContent();

    /**
     *kbContent的获取.
     * 
     * @return kbContent值返回.
     */
    public TKbContent getKbContent() {
        return kbContent;
    }

    /**
     *kbContent的值设定
     * 
     * @param kbContent 设定kbContent的值.
     */
    public void setKbContent(TKbContent kbContent) {
        this.kbContent = kbContent;
    }

    /**
     *添加知识信息.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbcontent<br>
     *方法名:saveInfo方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-14
     *@return
     */
    public String saveInfo() {
        try {
            // 验证知识点名称（标题）在同一目录类型下是否有重复
            if(validkbName(kbContent)) {
                // 1:取出request里的user信息
                UserContext usercon = UserContext.getUserContext(getRequest());
                User loginUser = usercon.getUser();
                // 2:填充用户信息到知识点 对象
                // 设置创建人
                kbContent.setInputName(loginUser.getUserLoginName());
                // 创建时间
                kbContent.setCreateTime(timeInstance());
                // 创建人PK
                kbContent.setCreateUserPk(loginUser.getUserPk());

                // 搜索次数0
                kbContent.setKbCount(0);
                // 浏览次数0
                kbContent.setKbViewCount(0);
                kbContent.setKbContent(kbContent.getKbContent().replaceAll("'", "\""));
                // 添加知识点信息入库
                getSpringHibernate().save(kbContent);
                saveActionLog("在\"知识点内容录入\"新增了" + kbContent.getKbName());
                // 提示信息
                getRequest().setAttribute("msg", getText("kbinputinfo.addmsgture"));

                getRequest().setAttribute("kbPk", kbContent.getKbPk());
                return SUCCESS;
            } else {
                // 8：验证失败提示
                getRequest().setAttribute("msg", getText("kbinputinfo.updmsgfalse.kbname"));
                return ERROR;
            }
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            getRequest().setAttribute("msg", getText("kbinputinfo.saveinfo.msg"));
            return ERROR;
        }
    }

    public String selectKbInfoCounseling() {
        String kbPk = getRequest().getParameter("kbPk");
        String msg = "";
        if(!StringUtil.empty(kbPk)) {
            try {
                Object obj = getSpringHibernate().selectByPk("kbPk", kbPk, TKbContent.class);
                if(null != obj) {
                    TKbContent kb = (TKbContent) obj;
                    msg = kb.getKbContent();
                }
            } catch(Throwable e) {
                // TODO自动生成catch语句块
                e.printStackTrace();
            }
        }
        getRequest().setAttribute("msg", msg);
        return SUCCESS;
    }

    /**
     *增加资料库时创建相关的索引文件.<br>
     *工程名:12320<br>
     *包名:com.ods.kb.action.kbcontent<br>
     *方法名:createIndex方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2010-9-9
     *@throws Exception 创建出错
     */

    /**
     * 生成资料库编码.<br>
     *工程名:12320<br>
     *包名:com.ods.kb.action.kbcontent<br>
     *方法名:createKbCode方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2010-9-9
     *@param kbContent :资料库内容对象
     *@return 资料库点的编码
     *@throws Exception ：生成资料库编码异常
     */
    // private String createKbCode(TKbContent kbContent) {
    // KbIndexFileUtil indexSearch = (KbIndexFileUtil) SpringBeanFactory
    // .getBean("kbIndexSearch");
    // String[] fieldValues = null;
    // String[] fields = null;
    // BooleanClause.Occur[] oflags = null;
    // fieldValues = new String[] { kbContent.getAreaCode() };
    // fields = new String[] { "divFlag" };
    // oflags = new BooleanClause.Occur[] { BooleanClause.Occur.MUST };
    // try {
    // Map<String, Object> map = indexSearch.searchIndex(fieldValues,
    // fields, oflags, TKbContent.SEARCH_INDEX_PATH, 100);
    // ScoreDoc[] scoreDocs = ((TopDocs) map.get("topDocs")).scoreDocs;
    // long count = 0;
    // if(scoreDocs != null && scoreDocs.length > 0) {
    // ScoreDoc scoreDoc = scoreDocs[scoreDocs.length - 1];
    // Searcher searcher = (Searcher) map.get("searcher");
    // Document doc = searcher.doc(scoreDoc.doc);
    // count = Long.parseLong(doc.get("kbCode").substring(1,
    // doc.get("kbCode").length()));
    // }
    // count += 1;
    // String builder = StringUtil.leftPadding(String.valueOf(count), 9,
    // '0');
    // kbContent.setNumkbCode(builder);
    // if(validkbCode(kbContent)) {
    // return kbContent.getAreaCode() + builder;
    // } else {
    // // throw new Exception();
    // return "L000000000001";
    // }
    // } catch(Exception e) {
    // return "L000000000001";
    // }
    // }
    /**
     *进入添加知识点页面.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbcontent<br>
     *方法名:addPage方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-14
     *@return addPage =添加知识点页面
     */
    public String addPage() {
        remotCombo();
        return "addPage";
    }

    /**
     *异步获取下拉框的值<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbcontent<br>
     *方法名:remotCombo方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-14
     */
    public void remotCombo() {
        try {
            QueryCondition qc = new QueryCondition();
            String kbType = getRequest().getParameter("kbType");
            // 查询出知识点类型下拉框的值
            QueryResult typeqr = getSpringHibernate().select(qc, TKbtype.class);

            // 提供下拉框数据
            getRequest().setAttribute("kbType", kbType);
            getRequest().setAttribute("typeqr", typeqr);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
        }
    }

    /**
     *关联知识点查看列表页面.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbcontent<br>
     *方法名:linkKbGrid方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-16
     *@return
     */
    @SuppressWarnings("unchecked")
    public String linkKbGrid() {
        // 判断是否有关联知识点
        if(!StringUtil.empty(getRequest().getParameter("kbLinkCodes"))) {
            // 获得关联知识点集合
            String kbLinkCodes[] = getRequest().getParameter("kbLinkCodes").split(TKbContent.SPLIT_JAVA_FLAG);
            // 设置QC
            QueryResult qr = new QueryResult();
            try {
                // 循环关联知识点编码
                for(String kbLinkCode : kbLinkCodes) {
                    // 取出知识点
                    QueryCondition qc = new QueryCondition();
                    // 判断是否有查询目录条件
                    if(null != kbContent && !StringUtil.empty(kbContent.getKbDirName())) {
                        qc.put("kbDirName", kbContent.getKbDirName());
                    }
                    // 判断是否有查询名称条件
                    if(null != kbContent && !StringUtil.empty(kbContent.getKbName())) {
                        qc.put("kbName", kbContent.getKbName());
                    }
                    // 并且编码要等于关联知识点的编码
                    qc.equals("kbDirPk", kbLinkCode);
                    // 获得具体的关联知识点
                    QueryResult qrnew = getSpringHibernate().select(qc, TKbContent.class);
                    // 如果有该知识点
                    if(qrnew.size() > 0) {
                        TKbContent kbContent = (TKbContent) qrnew.get(0);
                        // 放入QR 给公用grid.jsp提供参数
                        qr.add(kbContent);
                    }
                }
            } catch(Throwable e) {
                LogUtil.writeLog(e);
                return NONE;
            }
            // 返回通用grid页面
            String[] fields = { "kbPk", "kbDirName", "kbName" };
            getRequest().setAttribute(SHOW_TABLE_COLMUN_NAME, fields);
            getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
            return SUCCESS;
        }
        // 没有关联知识点的时候直接返回空
        return NONE;
    }

    /**
     *进入查看页面.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbcontent<br>
     *方法名:viewPage方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-14
     *@return viewPage =查看知识点信息页面
     */
    public String viewPage() {
        // 非空验证
        if(null == getRequest().getParameter("kbPk")) {
            return NONE;
        } else {
            // 获得页面传来的PK
            String kbPk = getRequest().getParameter("kbPk");
            try {
                // 根据PK查询到这条知识点信息
                TKbContent kbContent = (TKbContent) getSpringHibernate().selectByPk("kbPk", kbPk, TKbContent.class);
                if(null != kbContent) {
                    kbContent.setKbViewCount(kbContent.getKbViewCount() + 1);
                    // 浏览次数加1
                    getSpringHibernate().update(kbContent);
                    // 给页面显示
                    // 如果关联编码为空，就不执行替换
                    if(!StringUtil.empty(kbContent.getKbLink()) && !kbContent.getKbLink().equalsIgnoreCase("null")) {
                        kbContent.setKbLink(kbContent.getKbLink().replaceAll(TKbContent.SPLIT_SQL_FLAG, TKbContent.SPLIT_JAVA_FLAG));
                    }
                    getRequest().setAttribute("kbContent", kbContent);
                    kbContent.setKbContent(StringUtil.replace(kbContent.getKbContent(), "\r\n", ""));
                    kbContent.setKbContent(StringUtil.replace(kbContent.getKbContent(), "\r", ""));
                    kbContent.setKbContent(StringUtil.replace(kbContent.getKbContent(), "\r", ""));
                    getRequest().setAttribute("kbLinkCode", kbContent.getKbLinkPK());
                    return "viewPage";
                }
                return NONE;
            } catch(Throwable e) {
                LogUtil.writeLog(e);
                return NONE;
            }
        }
    }

    /**
     *资料库的异步树<br>
     *方法名:knowledgeASYTree方法.<br>
     * 
     *@author:jiangwenqi_email@163.com
     *@since :1.0:2009-11-14
     *@return none
     */
    public String knowledgeASYTree() {

        String kbDirPk = getRequest().getParameter("kbDirPk");
        // String kbPk = getRequest().getParameter("kbPk");
        // String flag = getRequest().getParameter("flag");
        String divFlag = getRequest().getParameter("divFlag");

        StringBuffer sb = new StringBuffer();
        String flag = "";
        sb.append("[");
        // 资料库目录
        QueryResult qrDir = null;
        QueryCondition qc = new QueryCondition();
        qc.equals("kbDirFlag", divFlag);
        qc.equals("kbDirGbpk", kbDirPk);
        try {
            qrDir = getSpringHibernate().select(qc, KbDirectory.class);
        } catch(Throwable e) {
            qrDir = null;
            e.printStackTrace();
        }
        for(Object kbDirectoryobj : qrDir) {
            KbDirectory kbDirectory = (KbDirectory) kbDirectoryobj;
            sb.append(flag).append("{kbDirPk:'");
            sb.append(kbDirectory.getKbDirPk());
            sb.append("',text:'");
            sb.append(kbDirectory.getKbDirName());
            sb.append("',leaf:false}");
            if(flag.equals("")) {
                flag = ",";
            }
        }

        // 资料库内容

        QueryResult qrCon = null;
        QueryCondition qcCon = new QueryCondition();
        // qcCon.equals("kbType", divFlag);
        qcCon.equals("kbDirPk", kbDirPk);
        try {
            qrCon = getSpringHibernate().select(qcCon, TKbContent.class);
        } catch(Throwable e) {
            qrCon = null;
            e.printStackTrace();
        }
        for(Object obj : qrCon) {
            TKbContent content = (TKbContent) obj;
            sb.append(flag).append("{kbDirPk:'");
            sb.append(content.getKbDirPk());
            sb.append("',kbPk:'");
            sb.append(content.getKbPk());
            sb.append("',text:'");
            sb.append(content.getKbName().replaceAll(File.separator + "n", ""));
            sb.append("',leaf:true}");
            if(flag.equals("")) {
                flag = ",";
            }
        }
        sb.append("]");
        getRequest().setAttribute("JSON", sb.toString());
        return "treePage";

    }

    /**
     *知识信息树删除节点.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbcontent<br>
     *方法名:deleteInfo方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-9-10
     *@return =success 删除成功 =error 删除失败的提示信息
     */
    public String deleteInfo() {
        // 通过PK删除
        String kbPk = getRequest().getParameter("kbPk");
        // 如果参数不为空
        if(!StringUtil.empty(getRequest().getParameter("kbPk"))) {
            TKbContent kbContent = new TKbContent();
            kbContent.setKbPk(kbPk);
            try {
                TKbContent kbc = (TKbContent) getSpringHibernate().selectByPk("kbPk", kbPk, TKbContent.class);
                if(!StringUtil.empty(kbc.getKbInmage())) {
                    String[] image = kbc.getKbInmage().split(",");
                    for(String string : image) {
                        if(string.indexOf(getRequest().getContextPath()) >= 0) {
                            File deleteFile = new File(WebContext.toHomeRootPath() + string.replaceFirst(getRequest().getContextPath(), ""));
                            deleteFile.delete();
                        }
                    }

                }
                // 删除库
                getSpringHibernate().delete(kbContent);
                saveActionLog("\"知识点内容录入中\"执行了删除操作");
                // 返回信息
                getRequest().setAttribute("msg", getText("kbinputinfo.detmsgture"));
                return SUCCESS;
            } catch(Throwable e) {
                LogUtil.writeLog(e);
                // 异常返回
                getRequest().setAttribute("msg", getText("kbinputinfo.detmsgfalse"));
                return ERROR;
            }
        }
        // 返回错误信息
        getRequest().setAttribute("msg", getText("kbinputinfo.detmsgfalse"));
        return ERROR;
    }

    /**
     *进入修改页面.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbcontent<br>
     *方法名:updatePage方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-14
     *@return success ：修改页面
     */
    public String updatePage() {
        // 非空判断
        // KbIndexFileUtil indexSearch = (KbIndexFileUtil) SpringBeanFactory
        // .getBean("kbIndexSearch");
        if(null != kbContent && null != kbContent.getKbPk()) {
            try {
                QueryCondition qc = new QueryCondition();
                QueryResult qr = null;
                // 取kbContent，PK从页面传来
                qc.equals("kbPk", kbContent.getKbPk());
                // 获得该PK的知识点
                qr = getSpringHibernate().select(qc, TKbContent.class);
                TKbContent kbContent = (TKbContent) qr.elementAt(0);
                // 获取关联知识点
                if(!StringUtil.empty(kbContent.getKbLinkPK())) {
                    Object tkbContent = getSpringHibernate().selectByPk("kbLinkPK", kbContent.getKbLinkPK(), TKbContent.class);
                    if(null != tkbContent) {
                        TKbContent kbconent = (TKbContent) tkbContent;
                        getRequest().setAttribute("kbLink", kbconent.getKbName());
                    }
                }
                // 截取完整的编码为 地区级别编码 和 数字编码
                String areaCode = kbContent.getKbPk().toString().substring(0, 1);
                // 数字编码
                String numCode = kbContent.getKbPk().toString().replace(areaCode, "");
                // 存入对象，给页面显示
                kbContent.setAreaCode(areaCode);
                kbContent.setNumkbCode(numCode);
                // 将查询结果存入页面供显示
                getRequest().setAttribute("kbContent", kbContent);
                kbContent.setKbContent(StringUtil.replace(kbContent.getKbContent(), "\r\n", ""));
                kbContent.setKbContent(StringUtil.replace(kbContent.getKbContent(), "\r", ""));
                kbContent.setKbContent(StringUtil.replace(kbContent.getKbContent(), "\r", ""));
                // 异步取下拉框的值
                remotCombo();
                // 如果是在搜索的时候点快速修改
                if(!StringUtil.empty(getRequest().getParameter("updateflag")) && getRequest().getParameter("updateflag").equals("update")) {
                    return "fastupdatePage";
                }
                return "updatePage";
            } catch(Throwable e) {
                // 如果数据库无这条数据，返回异常，就删除索引
                // try {
                // // 索引路径
                // indexSearch.deleteSearchIndex("kbPk", String
                // .valueOf(kbContent.getKbPk()),
                // TKbContent.SEARCH_INDEX_PATH);
                // } catch(Exception e1) {
                // e1.printStackTrace();
                // LogUtil.writeLog(e1, "EM228");
                // }
                // LogUtil.writeLog(e, "EM229");
                // return NONE;
            }
        }
        return NONE;
    }

    /**
     *执行知识点信息修改操作<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbcontent<br>
     *方法名:updateinfo方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-14
     *@return =success 修改成功提示 = error 修改失败
     */
    public String updateinfo() {
        // 取出request里的user信息
        UserContext usercon = UserContext.getUserContext(getRequest());
        User loginUser = usercon.getUser();
        // 补充修改人信息
        kbContent.setUpdateName(loginUser.getUserLoginName());
        kbContent.setUpdateTime(timeInstance());
        kbContent.setUpdateUserPk(loginUser.getUserPk());
        try {
            if(validkbName(kbContent)) {
                // 执行修改操作
                // kbContent.setKbType(1);
                getSpringHibernate().update(kbContent);
                saveActionLog("在\"知识点内容录入中\"修改了" + kbContent.getKbName());
                // KbIndexFileUtil indexSearch = (KbIndexFileUtil)
                // SpringBeanFactory
                // .getBean("kbIndexSearch");
                // String flag = kbContent.getKbPk().toString().substring(0, 1);
                // String divFlag = TKbContent.AREACODE_L;
                // if(!StringUtil.empty(flag) && (flag
                // .equals(TKbContent.AREACODE_G) || flag
                // .equals(TKbContent.AREACODE_L))) {
                // divFlag = flag;
                // } else {
                // divFlag = "-1";
                // }

                // String configId = "indexContentPpl_1";
                Map<String, String> indexContentMap = new HashMap<String, String>();
                String kbpk = kbContent.getKbPk();
                indexContentMap.put("kbPk", kbpk);

                indexContentMap.put("kbName", kbContent.getKbName());
                indexContentMap.put("kbContent", kbContent.getKbContent());
                indexContentMap.put("keyWord", kbContent.getKeyWord());
                // indexSearch.updateSearchIndex("kbPk", kbpk, configId,
                // indexContentMap, TKbContent.SEARCH_INDEX_PATH);
                // 6：返回信息
                getRequest().setAttribute("msg", getText("kbinputinfo.updmsgture"));
                return SUCCESS;
            } else {
                getRequest().setAttribute("msg", getText("kbinputinfo.updmsgfalse.kbname"));
                return ERROR;
            }
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            getRequest().setAttribute("msg", getText("kbinputinfo.updmsgfalse"));
            return ERROR;
        }
    }

    /**
     *验证资料库编码是否重复<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbcontent<br>
     *方法名:validkbInfo方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-15
     *@param kbContent 验证的知识点对象
     *@return
     */
    public String validkbInfoCode() {
        // 验证
        if(validkbCode(kbContent)) {
            getRequest().setAttribute("msg", getText("kbinputinfo.validkbInfoCode.success"));
            return SUCCESS;
        } else {
            getRequest().setAttribute("msg", getText("kbinputinfo.validkbInfoCode.error"));
            return ERROR;
        }
    }

    /**
     *验证资料库名称是否重复<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbcontent<br>
     *方法名:validkbInfoCode方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-16
     *@param kbContent
     *@return
     */
    public String validkbInfoName() {
        // 验证
        if(validkbName(kbContent)) {
            getRequest().setAttribute("msg", getText("kbinputinfo.validkbInfoName.success"));
            return SUCCESS;
        } else {
            getRequest().setAttribute("msg", getText("kbinputinfo.validkbInfoName.errorstart") + kbContent.getKbDirName() + getText("kbinputinfo.validkbInfoName.errorend"));
            return ERROR;
        }
    }

    /**
     *验证名称（标题）是否重复.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbcontent<br>
     *方法名:validkbName方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-14
     *@return
     */
    public boolean validkbName(TKbContent kbContent) {
        // 非空验证
        if(null != kbContent && !StringUtil.empty(kbContent.getKbName()) && !StringUtil.empty(kbContent.getKbDirPk().toString())) {
            // 验证名称重复查知识点库
            QueryCondition qc = new QueryCondition();
            // 设置查库条件
            qc.equals("kbName", kbContent.getKbName());
            // 相同类型下名称不能相同
            qc.equals("kbDirPk", kbContent.getKbDirPk());
            // 如果kbpk不为空说明是修改页面，那么需要排除自己这个条件
            if(!StringUtil.empty(kbContent.getKbPk())) {
                // 查询的PK不能相同
                qc.notEquals("kbPk", kbContent.getKbPk());
            }
            try {
                // 根据条件查库
                int count = getSpringHibernate().selectCount(qc, TKbContent.class);
                if(count > 0) {
                    return false;
                }
                return true;
            } catch(Throwable e) {
                e.printStackTrace();
                return false;
            }
        } else {
            return false;
        }

    }

    /**
     *验证编码是否存在重复.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbcontent<br>
     *方法名:validkbCode方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-14
     *@param kbContent
     *@return
     */
    public boolean validkbCode(TKbContent kbContent) {
        if(null != kbContent && !StringUtil.empty(kbContent.getAreaCode()) && !StringUtil.empty(kbContent.getNumkbCode())) {
            // 验证编码是否重复
            QueryCondition qc1 = new QueryCondition();
            // 设置条件
            qc1.equals("kbCode", (kbContent.getAreaCode() + kbContent.getNumkbCode()));
            // 如果PK不为空说明是修改页面的验证，要排除自己以外的所有知识点的编码不能重复
            if(!StringUtil.empty(kbContent.getKbPk())) {
                qc1.notEquals("kbPk", kbContent.getKbPk());
            }
            try {
                // 查询是否重复
                int count1 = getSpringHibernate().selectCount(qc1, TKbContent.class);
                if(count1 > 0) {
                    return false;
                }
                return true;
            } catch(Throwable e) {
                e.printStackTrace();
                return false;
            }
        } else {
            return false;
        }
    }

    // //////////////////////////////////////////////////////////////资料库搜索查看
    /**
     *来至tabPanel.store的访问请求 进行搜索资料库信息，并返回对应页面.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbcontent<br>
     *方法名:searchKbInfo方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-15
     *@return =success common/grid.jsp
     */
    public String searchKbInfo() {
        // 获取搜索的内容
        String searchText = kbContent.getSearchContent();
        QueryCondition qc = new QueryCondition();
        QueryResult newqr = null;
        String style = "<font color=\"red\" style=\"font-weight: bold\">";
        try {
            switch (kbContent.getSearchType()) {
                case TKbContent.SEARCH_BY_KEYWORD:
                    qc.put("keyWord", searchText);
                    newqr = getSpringHibernate().select(qc, TKbContent.class);
                    for(Object object : newqr) {
                        TKbContent kb = (TKbContent) object;
                        String kbText = StringUtil.replace(kb.getKeyWord(), searchText, style + searchText + "</font>");
                        kb.setKeyWord(kbText);
                    }
                    break;
                case TKbContent.SEARCH_BY_CONTENT:
                    qc.put("kbContent", searchText);
                    newqr = getSpringHibernate().select(qc, TKbContent.class);
                    for(Object object : newqr) {
                        TKbContent kb = (TKbContent) object;
                        String kbText = StringUtil.replace(kb.getKbContent(), searchText, style + searchText + "</font>");
                        kb.setKbContent(kbText);
                    }
                    break;
                case TKbContent.SEARCH_BY_NAME:
                    qc.put("kbName", searchText);
                    newqr = getSpringHibernate().select(qc, TKbContent.class);
                    for(Object object : newqr) {
                        TKbContent kb = (TKbContent) object;
                        String kbText = StringUtil.replace(kb.getKbName(), searchText, style + searchText + "</font>");
                        kb.setHighkbName(kbText);
                    }
                    break;
            }
            // newqr = getSpringHibernate().select(qc, TKbContent.class);
            // if(newqr.size() > 0) {
            // TKbContent TKbContent = (TKbContent) newqr.elementAt(0);
            // // 3: 把对象的浏览次数加1
            // int viewcount = TKbContent.getKbViewCount();
            // viewcount++;
            // TKbContent.setKbViewCount(viewcount);
            // // 搜索次数加1
            // int count = TKbContent.getKbCount();
            // count++;
            // TKbContent.setKbCount(count);
            // getSpringHibernate().update(TKbContent);
            // // 4:存值 页面显示
            // // if (!obj.containsKey(kbInputInfo.getKbPk() + "")) {
            // // obj.put(kbInputInfo.getKbPk() + "", kbInputInfo);
            // // }
            // getRequest().setAttribute("TKbContent", TKbContent);
            // }
            qc.batchUpdate("kbCount", "'+(kb_count+1)+'");
            getSpringHibernate().batchUpdate(qc, TKbContent.class);
        } catch(Throwable e) {
            e.printStackTrace();
            newqr = null;
        }
        String[] fields = { "kbName", "kbContent", "keyWord", "kbCount", "highkbName", "kbPk", "kbViewCount", "kbTypeName", "kbFreName", "kbDirName" };
        getRequest().setAttribute(SHOW_TABLE_COLMUN_NAME, fields);
        getRequest().setAttribute(SHOW_TABLE_CONTENT, newqr);
        return SUCCESS;
    }

    /**
     *搜索资料库信息<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbcontent<br>
     *方法名:searchType方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-15
     *@param searchTypeName =搜索内容 searchType=搜索类型: =1通过关键字搜索 =2 通过内容 全文索引搜索
     *@param searchType
     *@return 搜索成功 返回success 失败返回 NONE
     */
    /*
     * *浏览资料库信息<br>工程名:odspsp<br>包名:com.ods.kb.action.kbcontent<br>
     * 方法名:listKbInfo方法.<br>
     * 
     * @author:jiangwenqi
     * 
     * @since :1.0:2009-11-15
     * 
     * @return =success 跳转到kb_control_view.jsp 页面显示详细信息
     */
    public String listKbInfo() {
        try {
            int kbpk = NumberUtil.toInt(getRequest().getParameter("kbPk"), 0);
            if(kbpk != 0) {
                QueryCondition qc = new QueryCondition();
                QueryResult qr = null;
                if(getRequest().getParameter("kbPk") != null && !getRequest().getParameter("kbPk").equals("")) {
                    // 1：如果存在kbPk 转换成int 类型 丢到qc里查找对应PK的对象
                    qc.equals("kbPk", kbpk);
                }
                // 2:查询所要浏览的单个对象
                qr = getSpringHibernate().select(qc, TKbContent.class);
                if(qr.size() > 0) {
                    TKbContent TKbContent = (TKbContent) qr.elementAt(0);
                    // 3: 把对象的浏览次数加1
                    int viewcount = TKbContent.getKbViewCount();
                    viewcount++;
                    TKbContent.setKbViewCount(viewcount);
                    getSpringHibernate().update(TKbContent);
                    // 4:存值 页面显示
                    // if (!obj.containsKey(kbInputInfo.getKbPk() + "")) {
                    // obj.put(kbInputInfo.getKbPk() + "", kbInputInfo);
                    // }
                    getRequest().setAttribute("TKbContent", TKbContent);
                }
                return SUCCESS;
            }
            return NONE;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            return NONE;
        }
    }

    // //////////////////////////////////////////////////////////////资料库维护
    /**
     *每次取数据固定条资料库信息<br>
     *工程名:odspsp<br>
     *包名:com.ods.knowledgebase.action.kbinputinfo<br>
     *方法名:getTopQrbyPk方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-9-25
     *@param tablePk 取数据的列名
     *@param pkValue 从第几条开始取
     *@param topNum 取前多少条数据
     *@param a 需要取数据的BO类
     *@return
     */
    public QueryResult getTopQrbyPk(String tablePk, int pkValue, int topNum) {
        try {
            QueryCondition qc = new QueryCondition();
            qc.between(tablePk, pkValue, topNum);
            return getSpringHibernate().select(qc, TKbContent.class);
        } catch(Throwable e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     *取出数据库所有信息，创建成索引.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbcontent<br>
     *方法名:IndexBuilding方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-15
     *@return
     */
    // public String IndexBuildingAll() {
    // try {
    //
    // // 删除索引文件夹 和文件夹下所有内容
    // if(FileUtil.deleteDirectory(TKbContent.SEARCH_INDEX_PATH)) {
    // // 创建一个空的文件夹
    // FileUtil.touchPath(TKbContent.SEARCH_INDEX_PATH);
    // }
    // QueryCondition qc = new QueryCondition();
    // QueryResult qr1 = null;
    // qc.orderDesc("kbPk");
    // qr1 = getSpringHibernate().select(qc, TKbContent.class);
    // TKbContent content = (TKbContent) qr1.get(0);
    //
    // int count = content.getKbPk();
    // // int count = getSpringHibernate().selectCount(new
    // // QueryCondition(),
    // // TKbContent.class);
    // QueryResult qr = null;
    // String tablePk = "kbPk";
    // int pkValue = 1;
    // try {
    // for(int i = 0; i < count / 2000 + 1; i++) {
    // qr = getTopQrbyPk(tablePk, pkValue, pkValue + 2000);
    // pkValue = pkValue + 2000;
    // for(Iterator<?> iterator = qr.iterator(); iterator
    // .hasNext();) {
    // TKbContent kbContent = (TKbContent) iterator.next();
    // if(kbContent.getKbPk() == 10001) {
    // System.out.println();
    // }
    // createIndex(kbContent);
    // }
    //
    // }
    // getRequest().setAttribute("msg", "成功添加索引");
    // return SUCCESS;
    // } catch(Exception e1) {
    // e1.printStackTrace();
    // }
    // //
    //
    // // KbIndexFileUtil indexSearch = (KbIndexFileUtil) SpringBeanFactory
    // // .getBean("kbIndexSearch");
    //
    // //
    // // indexSearch.createIndex(qrKbInputInfo,
    // // TKbContent.SEARCH_INDEX_PATH, true);
    //
    // getRequest().setAttribute("msg", getText("kbinputinfo.addmsgture"));
    // return SUCCESS;
    // } catch(Throwable e) {
    // // e.printStackTrace();
    // // LogUtil.writeLog(e, "EM232");
    // getRequest().setAttribute("msg",
    // getText("kbinputinfo.addmsgfalse.opp"));
    // return ERROR;
    // }
    //
    // }
    /**
     *判断索引文件夹是否存在<br>
     *工程名:odspsp<br>
     *包名:com.ods.psp.action.knowledgebase.kbinputinfo<br>
     *方法名:isIndexDir方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-9
     *@param file
     *@return 如果存在 返回false表示已经存在索引，使用追加索引建立索引文件。如果不存在该路径，返回true表示新建立索引
     */
    public boolean isIndexDir(String IndexPath) {
        File file = new File(IndexPath);
        if(file.exists()) {
            return false;
        } else {
            // 如果路径不存在就创建
            file.mkdirs();
            return true;
        }
    }

    /**
     *对零散的索引文件进行合并，并删除.del文件<br>
     *工程名:odspsp<br>
     *包名:com.ods.psp.action.knowledgebase.kbinputinfo<br>
     *方法名:optimization方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-10-28
     *@return
     */
    // public String optimization() {
    // try {
    // KbIndexFileUtil indexSearch = (KbIndexFileUtil) SpringBeanFactory
    // .getBean("kbIndexSearch");
    // indexSearch.optimization(TKbContent.SEARCH_INDEX_PATH);
    // getRequest().setAttribute("msg",
    // getText("kbContent.optimization.success"));
    // return SUCCESS;
    // } catch(Exception e) {
    // e.printStackTrace();
    // getRequest().setAttribute("msg",
    // getText("kbContent.optimization.error"));
    // return ERROR;
    // } catch(Throwable e) {
    // e.printStackTrace();
    // getRequest().setAttribute("msg",
    // getText("kbContent.optimization.error"));
    // return ERROR;
    // }
    //
    // }
    /**
     *豪秒换算成时分秒，并自动补齐0<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbcontent<br>
     *方法名:format方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-15
     *@param ms
     *@return
     */
    public String format(long ms) {
        // 将毫秒数换算成x时x分x秒x毫秒
        int ss = 1000;
        int mi = ss * 60;
        int hh = mi * 60;
        long hour = (ms) / hh;
        long minute = (ms - hour * hh) / mi;
        long second = (ms - hour * hh - minute * mi) / ss;
        long milliSecond = ms - hour * hh - minute * mi - second * ss;
        String strHour = hour < 10 ? "0" + hour: "" + hour;
        String strMinute = minute < 10 ? "0" + minute: "" + minute;
        String strSecond = second < 10 ? "0" + second: "" + second;
        String strMilliSecond = milliSecond < 10 ? "0" + milliSecond: "" + milliSecond;
        strMilliSecond = milliSecond < 100 ? "0" + strMilliSecond: "" + strMilliSecond;
        return strHour + "小时" + strMinute + "分" + strSecond + "秒" + strMilliSecond + "毫秒";
    }

    public String uploadImageInfo() {
        Calendar calendar = Calendar.getInstance();
        String imagename = TimeUtil.toString(calendar, TimeUtil.otherTimeFormat) + kbContent.getUploadFileName();

        String imagepath = WebContext.toHomeRootPath() + TKbContent.UPLOAD_PATH_FILENAME + File.separator + TKbContent.KB_CONTENT_IMAGE;

        String dstPath = imagepath + File.separator + imagename;
        File dstFile = new File(dstPath);
        File srcFile = kbContent.getUpload();
        // 根据路径创建指定的文件夹
        FileUtil.touchPath(imagepath);
        try {
            org.apache.avalon.excalibur.io.FileUtil.copyFile(srcFile, dstFile);
            setRequestMessage(imagename, true);
            return SUCCESS;
        } catch(Throwable e) {
            // 返回操作失败信息
            setRequestMessage(getText("FileUpload.kbfileupload.error"), false);
            return ERROR;
        }
    }
}
