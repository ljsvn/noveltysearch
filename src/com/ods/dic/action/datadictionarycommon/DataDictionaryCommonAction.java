package com.ods.dic.action.datadictionarycommon;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.ods.dic.bo.datadictionarycommon.DataDictionaryCommon;
import com.ods.util.action.ActionView;
import com.ods.util.hibernate.SpringHibernate;
import com.ods.util.hibernate.query.OrderEntry;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.pinyin.PingyinUtil;
import com.ods.util.resource.ResourceUtil;
import com.ods.util.spring.SpringBeanFactory;
import com.ods.util.type.StringUtil;

public class DataDictionaryCommonAction extends ActionView {

    /**
     *属性名：serialVersionUID、类型：long、作成日：2010-9-7.<br>
     *含义：
     */
    private static final long serialVersionUID = -2735373578274297953L;

    /**
     *属性名：dictionaryCommon、类型：DataDictionaryCommon、作成日：2010-9-7.<br>
     *含义：基本信息数据字典域模型对象
     */
    private DataDictionaryCommon dictionaryCommon = new DataDictionaryCommon();

    /**
     *dictionaryCommon的获取.
     * 
     * @return dictionaryCommon值返回.
     */
    public DataDictionaryCommon getDictionaryCommon() {
        return dictionaryCommon;
    }

    /**
     *dictionaryCommon的值设定
     * 
     * @param dictionaryCommon 设定dictionaryCommon的值.
     */
    public void setDictionaryCommon(DataDictionaryCommon dictionaryCommon) {
        this.dictionaryCommon = dictionaryCommon;
    }

    public static String jsonCombo(String name, String fieldLabel, String dictType, String local) {
        // 声明字符串
        StringBuffer sb = new StringBuffer();
        // 根据域模型名称,标签名称,数据字典类型拼接下拉框的JSON格式
        sb.append("typeAhead:true,mode:'remote',triggerAction:'all',selectOnFocus:true,forceSelection:true,name:'");
        sb.append(name);
        sb.append("', anchor: '90%', xtype: 'combo', fieldLabel: '");
        sb.append(fieldLabel);
        sb.append("', store: new Ext.data.Store({url: '").append(local);
        sb.append("/system/dict/list_info.ods?dictType=");
        sb.append(dictType);
        sb.append("', reader: new Ext.data.JsonReader({root: 'records', totalProperty: 'total'}, [{name: 'dicCommonPk'},{name: 'dicName'}])");
        sb.append("}), editable: true, valueField: 'dicCommonPk', displayField: 'dicName'");
        sb.append(",minChars: 2,queryParam: 'dicName', border: true, frame: true,resizable: true, pageSize: 15");
        return sb.toString();
    }

    public String listInfo() {
        QueryResult qr = new QueryResult();
        try {
            // 声明查询条件
            QueryCondition qc = newQueryConditionOfTable(getRequest(), false);
            // 数据字典名称
            String dicName = getRequest().getParameter("dicName");
            if(!StringUtil.empty(dicName)) {
                qc.put("dicName", dicName);
            }
            // 数据字典类型
            String dictType = getRequest().getParameter("dictType");
            if(!StringUtil.empty(dictType)) {
                qc.equals("dictType", dictType);
            }
            qc.equals("deleteType", NUM_0);
            qc.order("fullAlphabet", OrderEntry.ORDER_ASC);
            qc.order("nodeOrderby", OrderEntry.ORDER_ASC);
            qr = getSpringHibernate().select(qc, DataDictionaryCommon.class);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            qr = null;
        }
        getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
        String[] fields = { "dicCommonPk", "dicCommonFatherPk", "dicCode", "dicName", "fristAlphabet", "fullAlphabet",
                "dictType","createTime" };
        getRequest().setAttribute(SHOW_TABLE_COLMUN_NAME, fields);
        return SUCCESS;
    }

    private Boolean valideDicInfo(DataDictionaryCommon dictionaryCommon) throws Throwable {
        Boolean flag = false;
        QueryCondition qcCode = new QueryCondition();
        if(!StringUtil.empty(dictionaryCommon.getDicCommonPk())) {
            qcCode.notEquals("dicCommonPk", dictionaryCommon.getDicCommonPk());
        }
//        qcCode.equals("dicCode", dictionaryCommon.getDicCode());
//        if(getSpringHibernate().select(qcCode, DataDictionaryCommon.class).size() > 0) {
//            flag = true;
//            setRequestMessage("添加失败,您所添加的编码信息已存在!", false);
//        }

        QueryCondition qcName = new QueryCondition();
        if(!StringUtil.empty(dictionaryCommon.getDicCommonPk())) {
            qcName.notEquals("dicCommonPk", dictionaryCommon.getDicCommonPk());
        }
        qcName.equals("dicCommonFatherPk", dictionaryCommon.getDicCommonFatherPk());
        qcName.equals("dicName", dictionaryCommon.getDicName());
        if(getSpringHibernate().select(qcName, DataDictionaryCommon.class).size() > 0) {
            flag = true;
            setRequestMessage("添加失败,同一节点下的名称已存在!", false);
        }
        return flag;
    }

    public String addInfo() {
        try {
            DataDictionaryCommon dictionaryCommon = getDictionaryCommon();
            if(valideDicInfo(dictionaryCommon)) {
                return ERROR;
            }
            dictionaryCommon.setCreateUserPk(getNonceUserPk());
            dictionaryCommon.setCreateTime(timeInstance());
            String dicName = dictionaryCommon.getDicName();
            dictionaryCommon.setFristAlphabet(PingyinUtil.converterToFirstSpell(dicName));
            dictionaryCommon.setFullAlphabet(PingyinUtil.converterToSpell(dicName));

            getSpringHibernate().save(dictionaryCommon);
            saveActionLog("在\"数据字典信息中\"新增了" + dictionaryCommon.getDicName());
            setRequestMessage(ResourceUtil.getResourceString("result.message.success"), true);
            return SUCCESS;
        } catch(Throwable e) {

            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("result.message.error"), false);
            return ERROR;
        }
    }

    public String deleteInfo() {
        try {
            QueryCondition qc = new QueryCondition(getRequest());
            // 获取前台传过来的参数
            String dicCommonPk = getRequest().getParameter("dicCommonPk");
            String deleteType = getRequest().getParameter("deleteType");
            // 修改选中项的删除状态
            if(!StringUtil.empty(dicCommonPk) && !StringUtil.empty(deleteType)) {
                qc.equals("dicCommonPk", dicCommonPk);
                qc.batchUpdate("deleteType", deleteType);
                getSpringHibernate().batchUpdate(qc, DataDictionaryCommon.class);
                saveActionLog("\"在系统参数中\"执行了删除操作");
                setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);


                return SUCCESS;
            }
        } catch(Throwable e) {
            LogUtil.writeLog(e);
        }
        setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
        return ERROR;
    }

    public String modifyPage() {
        try {
            String dicCommonPk = getRequest().getParameter("dicCommonPk");
            Object object = getSpringHibernate().selectByPk("dicCommonPk", dicCommonPk, DataDictionaryCommon.class);
            getRequest().setAttribute("dictionaryCommon", object);
            return SUCCESS;
        } catch(Throwable e) {

            LogUtil.writeLog(e);
            return ERROR;
        }
    }

    public String updateInfo() {
        try {
            DataDictionaryCommon dictionaryCommon = getDictionaryCommon();
            if(valideDicInfo(dictionaryCommon)) {
                return ERROR;
            }
            String dicName = dictionaryCommon.getDicName();
            dictionaryCommon.setFristAlphabet(PingyinUtil.converterToFirstSpell(dicName));
            dictionaryCommon.setFullAlphabet(PingyinUtil.converterToSpell(dicName));
            getSpringHibernate().update(dictionaryCommon);
            saveActionLog("在\"数据字典信息\"修改了" + dictionaryCommon.getDicName());
            setRequestMessage(ResourceUtil.getResourceString("result.message.success"), true);
            return SUCCESS;
        } catch(Throwable e) {

            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("result.message.error"), false);
            return ERROR;
        }
    }

    public String menuInfo() {
        try {
            String id = getRequest().getParameter("id");
            if(StringUtil.equals(DataDictionaryCommon.ROOT_NODE_PK, id)) {
                // 声明JSON格式的字符串
                StringBuffer treeNode = new StringBuffer();
                treeNode.append("[");
                // 查询所有目录信息
                Map<Integer, String> dictTypeMap = DataDictionaryCommon.getDictTypeMap();
                // 遍历集合
                for(Integer key : dictTypeMap.keySet()) {
                    if(treeNode.length() > 1) {
                        treeNode.append(",");
                    }
                    treeNode.append("{");
                    treeNode.append("dictType:").append(key);
                    treeNode.append(",text:'").append(dictTypeMap.get(key));
                    treeNode.append("',leaf:").append(true);
                    treeNode.append("}");
                }
                treeNode.append("]");
                getRequest().setAttribute("JSON", treeNode);
            }
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            return NONE;
        }
    }

    public String treeInfo() {
        try {
            String dicCommonPk = getRequest().getParameter("dicCommonPk");
            String dictType = getRequest().getParameter("dictType");

            // 声明JSON格式的字符串
            StringBuffer treeNode = new StringBuffer();
            treeNode.append("[");
            // 查询所有供应商的信息
            QueryCondition qc = new QueryCondition(getRequest());
            qc.equals("deleteType", NUM_0);
            qc.equals("dictType", dictType);
            qc.order("fullAlphabet", OrderEntry.ORDER_ASC);
            qc.order("nodeOrderby", OrderEntry.ORDER_ASC);
            QueryResult qr = getSpringHibernate().select(qc, DataDictionaryCommon.class);
            // 遍历集合
            for(Object object : qr) {
                DataDictionaryCommon dictionary = (DataDictionaryCommon) object;
                // 拼接未被删除的信息
                if(dictionary.getDeleteType() == 0) {
                    if(StringUtil.equals(dictionary.getDicCommonFatherPk(), dicCommonPk)) {
                        if(treeNode.length() > 1) {
                            treeNode.append(",");
                        }
                        treeNode.append("{text:'");
                        treeNode.append(dictionary.getDicName());
                        treeNode.append("[").append(dictionary.getDicCode()).append("]");
                        Boolean falg = true;
                        for(Object objectv : qr) {
                            DataDictionaryCommon dictionaryv = (DataDictionaryCommon) objectv;
                            if(StringUtil.equals(dictionaryv.getDicCommonFatherPk(), dictionary.getDicCommonPk())) {
                                falg = false;
                                break;
                            }
                        }
                        treeNode.append("',leaf:").append(falg);
                        treeNode.append(",id:'").append(dictionary.getDicCommonPk());
                        treeNode.append("',dicCommonPk:'").append(dictionary.getDicCommonPk());
                        treeNode.append("',checked:").append(false);
                        treeNode.append("}");
                    }
                }
            }
            treeNode.append("]");
            getRequest().setAttribute("JSON", treeNode);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            return NONE;
        }
    }

    public String comboTreeInfo() {
        try {
            String dicCommonPk = getRequest().getParameter("node");
            dicCommonPk = dicCommonPk.equals("0") ? "9": dicCommonPk;
            // 声明JSON格式的字符串
            StringBuffer treeNode = new StringBuffer();
            treeNode.append("[");
            // 查询所有供应商的信息
            QueryCondition qc = new QueryCondition();
            // qc.equals("dictType", 9);
            String dicCommonFatherPk = getRequest().getParameter("dicCommonFatherPk");
            if(!StringUtil.empty(dicCommonFatherPk)) {
                qc.equals("dicCommonFatherPk", dicCommonFatherPk);
            }
            QueryResult qr = getSpringHibernate().select(qc, DataDictionaryCommon.class);
            // 遍历集合
            for(Object object : qr) {
                DataDictionaryCommon dictionary = (DataDictionaryCommon) object;
                // 如果当前供应商父主键为所查询的供应商则加载到树型节点中
                if(StringUtil.equals(dictionary.getDicCommonFatherPk(), dicCommonPk)) {
                    if(treeNode.length() > 1) {
                        treeNode.append(",");
                    }
                    treeNode.append("{text:'");
                    treeNode.append(dictionary.getDicName());
                    Boolean falg = true;
                    for(Object objectv : qr) {
                        DataDictionaryCommon dictionaryv = (DataDictionaryCommon) objectv;
                        if(StringUtil.equals(dictionaryv.getDicCommonFatherPk(), dictionary.getDicCommonPk())) {
                            falg = false;
                            break;
                        }
                    }
                    treeNode.append("',leaf:").append(falg);
                    treeNode.append(",id:'").append(dictionary.getDicCommonPk());
                    treeNode.append("'}");
                }

            }
            treeNode.append("]");
            getRequest().setAttribute("JSON", treeNode);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            return NONE;
        }
    }

    /**
     * 
     *拼接复选框组的JSON格式.<br>
     *工程名:yinuojz<br>
     *包名:com.ods.base.action.system.dict<br>
     *方法名:jsonCheckBoxGroup方法.<br>
     * 
     *@author:fhb
     *@since :1.0:2011-5-19
     *@param name 字段域名称
     *@param fieldLabel 字段显示名称
     *@param dictType 数据字典名称
     *@param checkedes 勾选名称，多个名称之间以英文“,”隔开
     *@return
     */
    public static String jsonCheckBoxGroup(String name, String fieldLabel, String dictType, String checkedes) {
        QueryResult qr = getList(null, dictType);

        String[] checkedesvlue = StringUtil.split(checkedes, ",");
        List<Integer> comwidth = new ArrayList<Integer>();
        // 声明字符串
        StringBuffer sb = new StringBuffer();
        sb.append("name:'");
        sb.append(name);
        sb.append("',fieldLabel: '");
        sb.append(fieldLabel).append("'");
        if(qr != null && qr.size() > 0) {
            sb.append(", anchor: '90%',xtype: 'checkboxgroup',items: [");
            // 遍历集合
            // for(Object object : qr) {

            int maxcount = qr.size() - 1;
            for(int i = 0; i < qr.size(); i++) {
                DataDictionaryCommon dictionary = (DataDictionaryCommon) qr.get(i);
                sb.append("{boxLabel: '").append(dictionary.getDicName()).append("',inputValue: '").append(
                        dictionary.getDicName()).append("',name:'").append(name).append("'");
                if(checkedesvlue != null && checkedesvlue.length > 0) {
                    for(String checked : checkedesvlue) {
                        if(!StringUtil.empty(checked) && StringUtil.equals(StringUtil.trim(checked), StringUtil.trim(dictionary
                                .getDicName()))) {
                            sb.append(",checked: true ");
                        }
                    }
                }
                sb.append("}");
                if(i < maxcount) {
                    sb.append(",");
                }
                comwidth.add(dictionary.getDicName().length() * 12 + 23);
            }
            sb.append("]");
        }
        sb.append(",columns: ").append(comwidth);
        return sb.toString();
    }

    private static QueryResult getList(String dicName, String dictType) {
        QueryResult qr = new QueryResult();
        try {
            if(StringUtil.empty(dicName) && StringUtil.empty(dictType)) {
                return null;
            }
            // 声明查询条件
            QueryCondition qc = new QueryCondition();

            // 数据字典名称
            if(!StringUtil.empty(dicName)) {
                qc.put("dicName", dicName);
            }
            // 数据字典类型
            if(!StringUtil.empty(dictType)) {
                qc.equals("dictType", dictType);
            }
            // 根据编号排序
            qc.orderAsc("dicCode");
            qc.equals("deleteType", NUM_0);
            qr = ((SpringHibernate) SpringBeanFactory.getBean("DAOProxy")).select(qc, DataDictionaryCommon.class);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            qr = null;
        }
        return qr;
    }
}
