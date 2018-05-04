/**
 *copyright(C)2009
 *Ods信息技术软件有限公司& Service Corporation All rights reserved
 */
package com.ods.kb.action.kbdir;

import com.ods.kb.bo.kbcontent.TKbContent;
import com.ods.kb.bo.kbdir.KbDirectory;
import com.ods.util.action.ActionView;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.type.NumberUtil;
import com.ods.util.type.StringUtil;
import com.ods.util.type.TimeUtil;

/**
 *<b>系统名称:</b><b> &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *12320卫生局疾控系统</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>子系统名：</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *资料库目录<br>
 * 
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>文件名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *KbdirAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *KbdirAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *KbdirAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *资料库信息的CRUD
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2009-11-13, 99999, xiaowei, 新建<br>
 * 
 *@author :xiaowei
 *@since :2009-11-13
 *@version:1.0
 */
public class KbdirAction extends ActionView {

    /**
     *属性名：serialVersionUID、类型：long、作成日：2009-11-13.<br>
     *含义：序列化
     */
    private static final long serialVersionUID = -7015830724998159044L;

    /**
     *属性名：kbDirectory、类型：KbDirectory、作成日：2009-11-13.<br>
     *含义：资料库目录 域模型
     */
    private KbDirectory kbDirectory;

    /**
     *kbDirectory的获取.
     * 
     * @return kbDirectory值返回.
     */
    public KbDirectory getKbDirectory() {
        return kbDirectory;
    }

    /**
     *kbDirectory的值设定
     * 
     * @param kbDirectory 设定kbDirectory的值.
     */
    public void setKbDirectory(KbDirectory kbDirectory) {
        this.kbDirectory = kbDirectory;
    }

    /**
     *资料库目录树型结构信息组织.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbdir<br>
     *方法名:loadTreeInfo方法.<br>
     * 
     *@author:xiaowei
     *@since :1.0:2009-11-14
     *@return
     */
    public String loadTreeInfo() {
        // 1:得到目录编码
        String kbDirPk = getRequest().getParameter("kbDirPk");
        // 2：组装json格式的数据
        StringBuffer sb = new StringBuffer();
        sb.append("[");
        // 3:得到子节点的List集合
        QueryResult dirQr = new QueryResult();
        QueryCondition qc = new QueryCondition();
        qc.equals("kbDirGbpk", kbDirPk);
        String level = getRequest().getParameter("level");
        if(!StringUtil.empty(level))
            qc.equals("kbDirFlag", level);
        QueryCondition qcTemp = new QueryCondition();
        try {
            dirQr = getSpringHibernate().select(qc, KbDirectory.class);

            // 4:树型结构的叶子节点的标记，true：表示 叶子节点；false：表示 非叶子节点
            boolean leafFlag = true;
            String flag = "";
            for(int i = 0; i < dirQr.size(); i++) {
                KbDirectory dir = (KbDirectory) dirQr.elementAt(i);
                // if(StringUtil.equals(kbDirCode,dir.getKbDirGbcode())) {
                sb.append(flag);
                sb.append("{text:'").append(dir.getKbDirName()).append(
                        "',kbDirPk:'").append(dir.getKbDirPk()).append(
                        "',kbDirClevel:'").append(dir.getKbDirClevel()).append(
                        "',kbDirFlag:'").append(dir.getKbDirFlag()).append(
                        "',kbDirExcelFlag:'").append(dir.getKbDirExcelFlag())
                        .append("',createTime:'").append(dir.getCreateTime())
                        .append("',kbDirGbpk:'").append(dir.getKbDirGbpk())
                        .append("',leaf:");

                // 5:判断节点是否是叶子节点
                qcTemp.equals("kbDirGbpk", dir.getKbDirPk());
                int count = getSpringHibernate().selectCount(qcTemp,
                        KbDirectory.class);
                if(count > 0) {
                    leafFlag = false;
                } else {
                    leafFlag = true;
                }
                sb.append(leafFlag);
                sb.append("}");
                flag = ",";
                // }
            }
            sb.append("]");
            // 6：将组装结果放入请求，供页面获取
            getRequest().setAttribute("dirTreeJson", sb.toString());
        } catch(Throwable e) {
            e.printStackTrace();
            getRequest().setAttribute("msg", getText("dir.operator.lib.fail"));
            return ERROR;
        }
        return SUCCESS;
    }

    /**
     *转向新增页面.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbdir<br>
     *方法名:dirAddPage方法.<br>
     * 
     *@author:xiaowei
     *@since :1.0:2009-11-14
     *@return
     */
    public String dirAddPage() {
        String kbDirPk = getRequest().getParameter("kbDirPk");
        String plevel = getRequest().getParameter("kbDirClevel");
        int parentLevel = 0;
        if(!StringUtil.empty(plevel) || !StringUtil.equals(plevel, "undefine")) {
            parentLevel = NumberUtil.toInt(plevel);
        }
        int kbDirClevel = parentLevel + 1;

        getRequest().setAttribute("kbDirGbpk", kbDirPk);
        getRequest().setAttribute("kbDirClevel", kbDirClevel);
        return SUCCESS;
    }

    /**
     *保存资料库目录.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbdir<br>
     *方法名:addDirInfo方法.<br>
     * 
     *@author:xiaowei
     *@since :1.0:2009-11-14
     *@return SUCCESS
     */
    public String addDirInfo() {
        try {
            // 1:完整的设置域模型
            getKbDirectory().setCreateTime(timeInstance());

            /* 唯一性验证 */

            // 2:得到目录的编码
            String dirCode = getKbDirectory().getKbDirPk();
            if(StringUtil.empty(dirCode)){
                dirCode="00000000-0000-0000-0000-000000000000";
            }
            // 3:得到目录的父编码
            String dirGbcode = getKbDirectory().getKbDirGbpk();
            // int kbDirClevel= getKbDirectory().getKbDirClevel();

            // 4:得到目录名称
            String dirName = getKbDirectory().getKbDirName();
            QueryCondition qc = new QueryCondition();
            String countsql = "SELECT count(*)  FROM t_kb_directory where (kb_dir_name ='" + dirName + "' and kb_dir_gbpk='" + dirGbcode + "') or(kb_dir_pk='" + dirCode + "' and kb_dir_flag='L')";
            String dbsql = "SELECT * FROM t_kb_directory where (kb_dir_name ='" + dirName + "' and kb_dir_gbpk='" + dirGbcode + "') or(kb_dir_pk='" + dirCode + "' and kb_dir_flag='L')";
            QueryResult qr = getSpringHibernate().select(qc, KbDirectory.class,
                    dbsql, countsql);
            if(null != qr && qr.size() > 0) {
                getRequest().setAttribute("msg", getText("dir.name.same"));
                return ERROR;
            }
            // 5:保存
            getSpringHibernate().save(getKbDirectory());
            saveActionLog("在\"资料库目录中\"新增了" + kbDirectory.getKbDirName());

        } catch(Throwable e) {
            e.printStackTrace();
            getRequest().setAttribute("msg", getText("dir.save.fail"));
            LogUtil.writeLog(e);
            return ERROR;
        }
        getRequest().setAttribute("msg", getText("dir.save.success"));
        return SUCCESS;
    }

    /**
     *转向查看页面.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbdir<br>
     *方法名:dirViewPage方法.<br>
     * 
     *@author:xiaowei
     *@since :1.0:2009-11-14
     *@return
     */
    public String dirViewPage() {
        String dirFlag = kbDirectory.getKbDirFlag();
        if(StringUtil.equals(dirFlag, "G")) {
            kbDirectory.setKbDirFlag(getText("kbDirectory.kbDirFlag.G"));
        } else {
            kbDirectory.setKbDirFlag(getText("kbDirectory.kbDirFlag.L"));
        }
        String createTime = kbDirectory.getCreateTime();
        createTime = TimeUtil.toString(createTime, TimeUtil.otherTimeFormat,
                TimeUtil.theTimeFormat);
        kbDirectory.setCreateTime(createTime);
        setKbDirectory(kbDirectory);
        return SUCCESS;
    }

    /**
     *删除.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbdir<br>
     *方法名:delDirInfo方法.<br>
     * 
     *@author:xiaowei
     *@since :1.0:2009-11-14
     *@return SUCCESS:转向成功页面 ERROR：转向失败页面
     */
    public String delDirInfo() {
        String strPk = getRequest().getParameter("kbDirPk");
        String kbDirPk = strPk;
        if(!StringUtil.empty("kbDirPk")) {
            try {
                // 删除知识点目录时判断该目录是否被知识点信息使用
                QueryCondition tconQc = new QueryCondition();
                tconQc.equals("kbDirPk", kbDirPk);
                int count = getSpringHibernate().selectCount(tconQc,
                        TKbContent.class);
                if(count > 0) {
                    getRequest().setAttribute("msg",
                            getText("dir.del.used.content"));
                    return ERROR;
                } else {
                    KbDirectory dir = new KbDirectory();
                    dir.setKbDirPk(kbDirPk);
                    getSpringHibernate().delete(dir);
                    saveActionLog("\"在资料库目录中\"执行了删除操作");
                }
            } catch(Throwable e) {
                LogUtil.writeLog(e);
                getRequest().setAttribute("msg", getText("dir.delete.fail"));
                return ERROR;
            }
        }
        getRequest().setAttribute("msg", getText("dir.delete.success"));
        return SUCCESS;
    }

    /**
     *转向修改页面.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbdir<br>
     *方法名:dirUpdatePage方法.<br>
     * 
     *@author:xiaowei
     *@since :1.0:2009-11-14
     *@return SUCCESS
     */
    public String dirUpdatePage() {
        setKbDirectory(kbDirectory);
        return SUCCESS;
    }

    /**
     *修改资料库目录.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbdir<br>
     *方法名:updateDirInfo方法.<br>
     * 
     *@author:xiaowei
     *@since :1.0:2009-11-14
     *@return SUCCESS
     */
    public String updateDirInfo() {

        String kbDirCode = getKbDirectory().getKbDirPk();
        String kbDirName = getKbDirectory().getKbDirName();
        String kbDirPk = getKbDirectory().getKbDirPk();
        String kbDirGbCode = getKbDirectory().getKbDirGbpk();

        QueryCondition qc = new QueryCondition();
        try {
            QueryResult qr = getSpringHibernate().select(qc, KbDirectory.class);
            for(int i = 0; i < qr.size(); i++) {
                KbDirectory dir = (KbDirectory) qr.elementAt(i);

                // pk 不相等，编码相等，则编码重名
                if(kbDirPk != dir.getKbDirPk() && (kbDirCode == dir
                        .getKbDirPk())) {
                    getRequest().setAttribute("msg", getText("dir.code.same"));
                    return ERROR;
                }

                if(kbDirPk != dir.getKbDirPk() && (kbDirGbCode == dir
                        .getKbDirGbpk()) && StringUtil.equals(kbDirName, dir
                        .getKbDirName())) {
                    getRequest().setAttribute("msg", getText("dir.name.same"));
                    return ERROR;
                }
            }
            // 修改知识点信息表
            QueryCondition tconQc = new QueryCondition();
            tconQc.equals("kbDirPk", kbDirPk);
            int count = getSpringHibernate().selectCount(tconQc,
                    TKbContent.class);
            if(count > 0) {
                QueryResult tconQr = getSpringHibernate().select(tconQc,
                        TKbContent.class);
                for(int j = 0; j < tconQr.size(); j++) {
                    TKbContent content = (TKbContent) tconQr.elementAt(j);
                    content.setKbDirPk(getKbDirectory().getKbDirPk());
                    content.setKbDirName(getKbDirectory().getKbDirName());
                    getSpringHibernate().update(content);
                }
            }
            getSpringHibernate().update(getKbDirectory());
            saveActionLog("在\"资料库目录中\"修改了" + kbDirectory.getKbDirName());
        } catch(Throwable e) {
            getRequest().setAttribute("msg", getText("dir.update.fail"));
            LogUtil.writeLog(e);
            return ERROR;
        }
        getRequest().setAttribute("msg", getText("dir.update.success"));
        return SUCCESS;
    }

}// end class
