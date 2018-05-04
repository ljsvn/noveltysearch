/**
 *copyright(C)2009
 *Ods信息技术软件有限公司& Service Corporation All rights reserved
 */
package com.ods.dic.bo.datadictionarycommon;

import java.util.HashMap;
import java.util.Map;

/**
 *<b>系统名称:</b><b> 特情刑嫌管理 </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 *<b>文件名:</b><br>
 * 
 *DataDictionaryCommon.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *DataDictionaryCommon类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *DataDictionaryCommon类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *用户信息数据字典<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2010-9-7, cause, cui_wenke, 新建<br>
 * 
 *@author :cui_wenke
 *@since :2010-9-7
 *@version:1.0
 */
public class DataDictionaryCommon {

    /**
     *属性名：dicCommonPk、类型：String、作成日：2010-9-7.<br>
     *含义：主键
     */
    private String dicCommonPk;

    /**
     *属性名：dicCommonPks、类型：String、作成日：2010-9-7.<br>
     *含义：主键集合
     */
    private String[] dicCommonPks;

    /**
     *属性名：dicCommonFatherPk、类型：String、作成日：2010-9-7.<br>
     *含义：父主键
     */
    private String dicCommonFatherPk;

    /**
     *属性名：dicCode、类型：String、作成日：2010-9-7.<br>
     *含义：编码:全局唯一
     */
    private String dicCode;

    /**
     *属性名：dicName、类型：String、作成日：2010-9-7.<br>
     *含义：名称:同类型下唯一
     */
    private String dicName;

    /**
     *属性名：fristAlphabet、类型：String、作成日：2010-9-7.<br>
     *含义：首字母拼音码
     */
    private String fristAlphabet;

    /**
     *属性名：fullAlphabet、类型：String、作成日：2010-9-7.<br>
     *含义：全部拼音码
     */
    private String fullAlphabet;

    /**
     *属性名：dictType、类型：String、作成日：2010-9-7.<br>
     *含义：类型
     */
    private String dictType;

    /**
     *属性名：createTime、类型：String、作成日：2010-9-7.<br>
     *含义：创建时间
     */
    private String createTime;

    private String createUserPk;

    public String getCreateUserPk() {
        return createUserPk;
    }

    public void setCreateUserPk(String createUserPk) {
        this.createUserPk = createUserPk;
    }

    private int deleteType;

    public int getDeleteType() {
        return deleteType;
    }

    public void setDeleteType(int deleteType) {
        this.deleteType = deleteType;
    }

    /**
     *dicCommonPk的获取.
     * 
     * @return dicCommonPk值返回.
     */
    public String getDicCommonPk() {
        return dicCommonPk;
    }

    /**
     *dicCommonPk的值设定
     * 
     * @param dicCommonPk 设定dicCommonPk的值.
     */
    public void setDicCommonPk(String dicCommonPk) {
        this.dicCommonPk = dicCommonPk;
    }

    /**
     *dicCommonPks的获取.
     * 
     * @return dicCommonPks值返回.
     */
    public String[] getDicCommonPks() {
        return dicCommonPks;
    }

    /**
     *dicCommonPks的值设定
     * 
     * @param dicCommonPks 设定dicCommonPks的值.
     */
    public void setDicCommonPks(String[] dicCommonPks) {
        this.dicCommonPks = dicCommonPks;
    }

    /**
     *dicCommonFatherPk的获取.
     * 
     * @return dicCommonFatherPk值返回.
     */
    public String getDicCommonFatherPk() {
        return dicCommonFatherPk;
    }

    /**
     *dicCommonFatherPk的值设定
     * 
     * @param dicCommonFatherPk 设定dicCommonFatherPk的值.
     */
    public void setDicCommonFatherPk(String dicCommonFatherPk) {
        this.dicCommonFatherPk = dicCommonFatherPk;
    }

    /**
     *dicCode的获取.
     * 
     * @return dicCode值返回.
     */
    public String getDicCode() {
        return dicCode;
    }

    /**
     *dicCode的值设定
     * 
     * @param dicCode 设定dicCode的值.
     */
    public void setDicCode(String dicCode) {
        this.dicCode = dicCode;
    }

    /**
     *dicName的获取.
     * 
     * @return dicName值返回.
     */
    public String getDicName() {
        return dicName;
    }

    /**
     *dicName的值设定
     * 
     * @param dicName 设定dicName的值.
     */
    public void setDicName(String dicName) {
        this.dicName = dicName;
    }

    /**
     *fristAlphabet的获取.
     * 
     * @return fristAlphabet值返回.
     */
    public String getFristAlphabet() {
        return fristAlphabet;
    }

    /**
     *fristAlphabet的值设定
     * 
     * @param fristAlphabet 设定fristAlphabet的值.
     */
    public void setFristAlphabet(String fristAlphabet) {
        this.fristAlphabet = fristAlphabet;
    }

    /**
     *fullAlphabet的获取.
     * 
     * @return fullAlphabet值返回.
     */
    public String getFullAlphabet() {
        return fullAlphabet;
    }

    /**
     *fullAlphabet的值设定
     * 
     * @param fullAlphabet 设定fullAlphabet的值.
     */
    public void setFullAlphabet(String fullAlphabet) {
        this.fullAlphabet = fullAlphabet;
    }

    /**
     *dictType的获取.
     * 
     * @return dictType值返回.
     */
    public String getDictType() {
        return dictType;
    }

    /**
     *dictType的值设定
     * 
     * @param dictType 设定dictType的值.
     */
    public void setDictType(String dictType) {
        this.dictType = dictType;
    }

    /**
     *createTime的获取.
     * 
     * @return createTime值返回.
     */
    public String getCreateTime() {
        return createTime;
    }

    /**
     *createTime的值设定
     * 
     * @param createTime 设定createTime的值.
     */
    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    /**
     *属性名：FATHER_NODE_PK、类型：String、作成日：2010-9-12.<br>
     *含义：数据字典根节点
     */
    public final static String FATHER_NODE_PK = "-1";
    private int nodeOrderby;
    /**
     *属性名：ROOT_NODE_PK、类型：String、作成日：2010-9-12.<br>
     *含义：菜单根节点
     */
    public final static String ROOT_NODE_PK = "ROOT_NODE_PK";
    /**
     *数据字典类型的常量.<br>
     *工程名:sumpolice<br>
     *包名:com.ods.dic.bo.datadictionarycommon<br>
     *方法名:getDictTypeMap方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2010-9-12
     *@return
     */
    public final static Map<Integer, String> getDictTypeMap() {
        Map<Integer, String> map = new HashMap<Integer, String>();
        // 说明：加数据字典种类时一定要给USEDICTABLECOLMUN_VECTOR常量添加相应的内容
        // 其值是：序号|表名|列名
        map.put(3, "性别");
        map.put(5, "宗教信仰");
        map.put(6, "口音");
        map.put(7, "文化程度");
        map.put(8, "职业");
        map.put(9, "籍贯");
        map.put(10, "民族");
        map.put(11, "专长嗜好");
        map.put(13, "政治面貌");
        map.put(14, "婚姻状况");
        map.put(15, "职务");
        map.put(23, "身份");
        map.put(24, "血型");
        map.put(61, "照片方位");
 
        map.put(62, "公告类型");
        //**********************************************************************
        
        map.put(63, "立项查新");
        map.put(64, "成果查新");
        map.put(65, "结果分类");
        map.put(66, "权重分配");
        map.put(67, "合同状态");
        
        return map;
     }
    /**
     *数据字典类型的常量.<br>
     *工程名:sumpolice<br>
     *包名:com.ods.dic.bo.datadictionarycommon<br>
     *方法名:getDictTypeMap方法.<br>
     * 
     *@author:cui_wenke
     *@since :1.0:2010-9-12
     *@return
     */
   /* public final static List<String> getDictTypeList() {
        List<String> lists = new ArrayList<String>();
        Map<Integer, String> map = new HashMap<Integer, String>();
        lists.add("性别-3");
        lists.add("宗教信仰-5");
        lists.add("口音-6");
        lists.add("文化程度-7");
        lists.add("职业-8");
        lists.add("籍贯-9");
        lists.add("民族-10");
        lists.add("专长嗜好-11");
        lists.add("政治面貌-13");
        lists.add("婚姻状况-14");
        lists.add("职务-15");
        lists.add("身份-23");
        lists.add("血型-24");
        lists.add("照片方位-61");
        // 特情人员1-20

        lists.add("(<font color=\"#990000\">特情人员</font>)特情类别-1");
        lists.add("(<font color=\"#990000\">特情人员</font>)特情成分-2");
        lists.add("(<font color=\"#990000\">特情人员</font>)线索类别-4");
        lists.add("(<font color=\"#990000\">特情人员</font>)建立依据-12");
        // 奖惩信息51-60
        lists.add("(<font color=\"#990000\">特情人员</font>)奖励分类-51");
        lists.add("(<font color=\"#990000\">特情人员</font>)惩处分类-52");
        lists.add("(<font color=\"#990000\">特情人员</font>)审批结果-53");
        // 特情线索21-30
        lists.add("(<font color=\"#666600\">特情线索</font>)人员类别-21");
        lists.add("(<font color=\"#666600\">特情线索</font>)人员属性-22");
        // 特情相关物品31-50
        lists.add("(<font color=\"#FF3366\">特情相关物品</font>)式样-31");
        lists.add("(<font color=\"#FF3366\">特情相关物品</font>)类型-32");
        lists.add("(<font color=\"#FF3366\">特情相关物品</font>)数量单位-33");
        lists.add("(<font color=\"#FF3366\">特情相关物品</font>)颜色-34");
        lists.add("(<font color=\"#FF3366\">特情相关物品</font>)处理状态-35");
        lists.add("(<font color=\"#FF3366\">特情相关物品</font>)重量单位-36");
        lists.add("(<font color=\"#FF3366\">特情相关物品</font>)质地-37");
        lists.add("(<font color=\"#FF3366\">特情相关物品</font>)规格-38");
        lists.add("(<font color=\"#FF3366\">特情相关物品</font>)性质-39");
        lists.add("(<font color=\"#FF3366\">特情相关物品</font>)成色-40");
        lists.add("(<font color=\"#FF3366\">特情相关物品</font>)保险情况-41");
        lists.add("(<font color=\"#FF3366\">特情相关物品</font>)车型-42");
        lists.add("(<font color=\"#FF3366\">特情相关物品</font>)是否保险-43");
        lists.add("(<font color=\"#FF3366\">特情相关物品</font>)号牌种类-44");
        // 刑嫌61-70
        lists.add("(<font color=\"#666699\">刑嫌人员</font>)刑嫌等级-62");
        lists.add("(<font color=\"#666699\">刑嫌人员</font>)可疑情况-63");
        lists.add("(<font color=\"#666699\">刑嫌人员</font>)刑嫌属性-64");
        lists.add("(<font color=\"#666699\">刑嫌人员</font>)作案手段-65");
        lists.add("(<font color=\"#666699\">刑嫌人员</font>)强制措施-66");
        lists.add("(<font color=\"#666699\">刑嫌人员</font>)列控依据-68");
        lists.add("(<font color=\"#666699\">刑嫌人员</font>)案件分类-67");
        Collections.sort(lists);
        return lists;
    }
*/
    
    /**
     *nodeOrderby的获取.
     *@return nodeOrderby值返回.
     */
    public int getNodeOrderby() {
        return nodeOrderby;
    }

    /**
     *nodeOrderby的值设定
     *@param nodeOrderby 设定nodeOrderby的值.
     */
    public void setNodeOrderby(int nodeOrderby) {
        this.nodeOrderby = nodeOrderby;
    }
}
