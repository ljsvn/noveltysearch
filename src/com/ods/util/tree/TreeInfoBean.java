/**
 * 包名：com.ods.util.tree
 * 类名：TreeInfoBean
 * Ods信息技术软件有限公司研发中心
 */

package com.ods.util.tree;

import java.util.List;

import com.ods.util.type.StringUtil;

/**
 * 功能：树形菜单功能类 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */
@SuppressWarnings("unchecked")
public class TreeInfoBean {
    /**
     * 树形结构信息集合
     */
    private List treeInfoList;

    /**
     * 树形结构的图像路径
     */
    private String imagePath;

    /**
     * 是否调用外部的JavaScript方法,false为不调用
     */
    private String otherJSMethod = "false";

    /**
     *属性名：formName、类型：String、作成日：2009-8-19.<br>
     *含义：树形结构form的名字
     */
    private String formName;

    /**
     *属性名：formNameId、类型：String、作成日：2009-8-19.<br>
     *含义：树形结构FormId
     */
    private String formNameId;

    /**
     *formName的获取.
     * 
     * @return formName值返回.
     */
    public String getFormName() {
        if(StringUtil.empty(formName)) {
            formName = "treeForm";
        }
        return formName;
    }

    /**
     *formName的值设定
     * 
     * @param formName 设定formName的值.
     */
    public void setFormName(String formName) {
        if(StringUtil.empty(formName)) {
            formName = "treeForm";
        }
        this.formName = formName;
    }

    /**
     *formNameId的获取.
     * 
     * @return formNameId值返回.
     */
    public String getFormNameId() {
        if(StringUtil.empty(formNameId)) {
            formNameId = "treeFormId";
        }
        return formNameId;
    }

    /**
     *formNameId的值设定
     * 
     * @param formNameId 设定formNameId的值.
     */
    public void setFormNameId(String formNameId) {
        if(StringUtil.empty(formNameId)) {
            formNameId = "treeFormId";
        }
        this.formNameId = formNameId;
    }

    /**
     * 是否显示checkbox
     */
    private String checkBoxFlag = "false";

    public String getCheckBoxFlag() {
        return checkBoxFlag;
    }

    public void setCheckBoxFlag(String checkBoxFlag) {
        this.checkBoxFlag = checkBoxFlag;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public List getTreeInfoList() {
        return treeInfoList;
    }

    public void setTreeInfoList(List treeInfoList) {
        this.treeInfoList = treeInfoList;
    }

    public String getOtherJSMethod() {
        return otherJSMethod;
    }

    public void setOtherJSMethod(String otherJSMethod) {
        this.otherJSMethod = otherJSMethod;
    }

}
