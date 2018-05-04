package com.ods.kb.action.kbtype;

import com.ods.kb.bo.kbtype.TKbtype;
import com.ods.util.action.ActionView;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.type.StringUtil;

/**
 *<b>系统名称:</b><b> 12320公共卫生公益电话咨询系统
 * 
 *odslicense</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>子系统名：</b><br>
 *系统管理
 * 
 *知识点类型的增删改查<br>
 * 
 *系统管理
 * 
 *<b>文件名:</b><br>
 *filename
 * 
 *KbtypeAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *KbtypeAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *KbtypeAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *知识点类型的增删改查<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2009-11-13, cause, jiangwenqi, 新建<br>
 * 
 *@author :jiangwenqi
 *@since :2009-11-13
 *@version:1.0
 */
public class KbtypeAction extends ActionView {

    /**
     *属性名：serialVersionUID、类型：long、作成日：2009-11-13.<br>
     *含义：序列化ID
     */
    private static final long serialVersionUID = -5782809429305765985L;

    /**
     *属性名：kbtype、类型：TKbtype、作成日：2009-11-13.<br>
     *含义：域模型
     */
    private TKbtype kbtype;

    /**
     *kbtype的获取.
     * 
     * @return kbtype值返回.
     */
    public TKbtype getKbtype() {
        return kbtype;
    }

    /**
     *kbtype的值设定
     * 
     * @param kbtype 设定kbtype的值.
     */
    public void setKbtype(TKbtype kbtype) {
        this.kbtype = kbtype;
    }

    /**
     *新增知识点类型 （入库）<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbtype<br>
     *方法名:saveInfo方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-13
     *@return SUCCESS ：添加成功提示 ERROR ：添加失败提示
     */
    public String saveInfo() {
        // 验证是否有重复
        if(validKbType(kbtype)) {
            // 设置创建时间为当前时间
            kbtype.setCreateTime(timeInstance());
            try {
                // 插入数据库
                getSpringHibernate().save(kbtype);
                saveActionLog("在\"资料库目录中\"新增了" + kbtype.getKbTypeContent());
            } catch(Throwable e) {
                LogUtil.writeLog(e);
                // 异常返回error
                getRequest().setAttribute("msg",
                        getText("kbType.saveInfo.sqlerror"));
                return ERROR;
            }
            // 插入成功返回
            getRequest()
                    .setAttribute("msg", getText("kbType.saveInfo.success"));
            return SUCCESS;
        } else {
            // 验证失败返回
            getRequest().setAttribute("msg", getText("kbType.saveInfo.error"));
            return ERROR;
        }
    }

    /**
     *删除知识点类型 （库）<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbtype<br>
     *方法名:deleteInfo方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-13
     *@return SUCCESS ：删除成功提示 ERROR ：删除失败提示
     */
    public String deleteInfo() {
        String[] kbTypePks = getKbtype().getKbTypePks();
        try {
            QueryCondition qc = new QueryCondition();
            qc.in("kbTypePk", kbTypePks);
            qc.batchUpdate("deleteType", 1);
            getSpringHibernate().batchUpdate(qc, TKbtype.class);
//            getSpringHibernate().batchDeleteByIntPk(qc, TKbtype.class);
            saveActionLog("\"在知识点类型中\"执行了删除操作");
            getRequest().setAttribute("msg",
                    getText("kbType.deleteInfo.success"));
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            getRequest()
                    .setAttribute("msg", getText("kbType.deleteInfo.error"));
            return ERROR;
        }
    }

    /**
     *修改知识点类型 （入库）<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbtype<br>
     *方法名:updateInfo方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-13
     *@return SUCCESS ：修改成功提示 ERROR ：修改失败提示
     */
    public String updateInfo() {
        
        // 验证是否有重复
        if(validKbType(kbtype)) {
            try {
                // 修改数据库
                getSpringHibernate().update(kbtype);
                QueryCondition qc = new QueryCondition();
                // 同步修改知识点的信息
                qc.equals("kbTypePk", kbtype.getKbTypePk());
                //qc.batchUpdate("kbTypeName", StringUtil.toUpdateStr(kbtype.getKbTypeContent()));
                getSpringHibernate().update(kbtype);
                //getSpringHibernate().batchUpdate(qc, TKbContent.class);
                saveActionLog("在\"资料库目录中\"修改了" + kbtype.getKbTypeContent());

            } catch(Throwable e) {
                LogUtil.writeLog(e);
                // 异常返回error
                // e.printStackTrace();
                getRequest().setAttribute("msg",
                        getText("kbType.updateInfo.sqlerror"));
                return ERROR;
            }
            // 修改成功返回
            getRequest().setAttribute("msg",
                    getText("kbType.updateInfo.success"));
            return SUCCESS;
        } else {
            // 验证失败返回
            getRequest()
                    .setAttribute("msg", getText("kbType.updateInfo.error"));
            return ERROR;
        }
    }

    /**
     *知识点--列表信息与查询.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbtype<br>
     *方法名:listInfo方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-13
     *@return
     */
    public String listInfo() {
        // 如果查询条件不为空，则所以
        if(null != kbtype) {
            try {
                QueryCondition queryQc = newQueryConditionOfTable(getRequest());
                queryQc.equals("deleteType", 0);
                queryQc.orderAsc("kbTypeCode");
                // 如果编码搜索条件不为空，则添加qc模糊查询
                if(!StringUtil.empty(kbtype.getKbTypeCode())) {
                    queryQc.put("kbTypeCode", kbtype.getKbTypeCode().trim());
                }
                // 如果内容搜索条件不为空则添加qc模糊查询
                if(!StringUtil.empty(kbtype.getKbTypeContent())) {
                    queryQc.put("kbTypeContent", kbtype.getKbTypeContent()
                            .trim());
                }
                QueryResult queryQr = getSpringHibernate().select(queryQc,
                        TKbtype.class);
                // 设置grid表显示的字段
                String[] fields = { "kbTypePk", "kbTypeCode", "kbTypeContent",
                        "createTime" };
                getRequest().setAttribute(SHOW_TABLE_COLMUN_NAME, fields);
                getRequest().setAttribute(SHOW_TABLE_CONTENT, queryQr);
                // 跳转到通用grid.jsp
                return "gridPage";
            } catch(Throwable e) {
                LogUtil.writeLog(e);
                // 异常返回
                return NONE;
            }

        } else {
            // new qc
            QueryCondition qc = newQueryConditionOfTable(getRequest());
            // new qr
            QueryResult qr = null;
            try {
                // 排序
                qc.equals("deleteType", 0);
                qc.orderAsc("kbTypeCode");
                // 查询PK大于100的数据 现在有初始数据，所以这个条件没加
                // qc.greateEquals("kbTypePk", 100);

                // 查库返回知识点类型分页信息的qr
                qr = getSpringHibernate().select(qc, TKbtype.class);
                // 设置grid表显示的字段
                String[] fields = { "kbTypePk", "kbTypeCode", "kbTypeContent",
                        "createTime" };
                getRequest().setAttribute(SHOW_TABLE_COLMUN_NAME, fields);
                getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
                // 跳转到通用grid.jsp
                return "gridPage";
            } catch(Throwable e) {
                LogUtil.writeLog(e);
                // 异常返回
                return NONE;
            }
        }
    }

    /**
     *进入查看页面.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbtype<br>
     *方法名:viewPage方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-13
     *@return
     */
    public String viewPage() {
        if(null != kbtype) {
            return "viewPage";
        }
        return NONE;
    }

    /**
     *进入修改页面.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbtype<br>
     *方法名:updatePage方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-13
     *@return
     */
    public String updatePage() {
        if(null != kbtype) {
            return "updatePage";
        }
        return NONE;
    }

    /**
     *进入添加页面.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbtype<br>
     *方法名:addPage方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-13
     *@return
     */
    public String addPage() {
        return "addPage";
    }

    /**
     *验证前台传递的数据是否正确.<br>
     *工程名:odspsp<br>
     *包名:com.ods.kb.action.kbtype<br>
     *方法名:validKbType方法.<br>
     * 
     *@author:jiangwenqi
     *@since :1.0:2009-11-13
     *@return false 代表没有通过验证， true 代表通过验证，可以插入数据
     */
    public boolean validKbType(TKbtype tkbtype) {
        // 如果需要验证的tkbtype对象为空，返回false
        if(null != tkbtype) {
            try {
                // new qc1
                QueryCondition qc1 = new QueryCondition();
                // 设置条件为 编码
                qc1.equals("kbTypeCode", tkbtype.getKbTypeCode().trim());
                // 如果PK不为空说明是修改页面来验证
                if(null != tkbtype.getKbTypePk()) {
                    // 加上条件不查询和自己PK相同的这条数据
                    qc1.notEquals("kbTypePk", tkbtype.getKbTypePk());
                }
                // 取出和验证对象编码一样的数据的记录数
                int count1 = getSpringHibernate().selectCount(qc1,
                        TKbtype.class);
                // new qc2
                QueryCondition qc2 = new QueryCondition();
                // 设置条件为 编码
                qc2.equals("kbTypeContent", tkbtype.getKbTypeContent());
                // 如果PK不为空 说明是修改页面来验证
                if(null != tkbtype.getKbTypePk()) {
                    // 加上条件不查询和自己PK相同的这条数据
                    qc2.notEquals("kbTypePk", tkbtype.getKbTypePk());
                }
                // 取出和验证对象内容一样的数据的记录数
                int count2 = getSpringHibernate().selectCount(qc2,
                        TKbtype.class);
                // 如果两个条件的数据有重复 就返回false
                if(count1 > 0 || count2 > 0) {
                    return false;
                } else {
                    // 否则返回true
                    return true;
                }
            } catch(Throwable e) {
                LogUtil.writeLog(e);
                // 异常返回false
                return false;
            }

        }
        return false;
    }

}
