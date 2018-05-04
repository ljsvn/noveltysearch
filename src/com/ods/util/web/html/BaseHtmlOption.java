/**
 * 包名：com.ods.util.web.html
 * 类名：BaseHtmlOption
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.web.html;

/**
 * 功能：下拉列表内容的获取 创建者: 
 * 10325431@qq.com 
 * 创建时间:2011-01-12 14:01:15
 * 
 */
public class BaseHtmlOption {
    private String label;

    private String value;

    public BaseHtmlOption() {
        this("","");
    }
    public BaseHtmlOption(String label, String value) {
        this.label = label;
        this.value = value;
    }

    /**
     * label的获取.
     * 
     * @return label值返回.
     */
    public String getLabel() {
        return label;
    }

    /**
     * label的值设定
     * 
     * @param label 设定label的值.
     */
    public void setLabel(String label) {
        this.label = label;
    }

    /**
     * value的获取.
     * 
     * @return value值返回.
     */
    public String getValue() {
        return value;
    }

    /**
     * value的值设定
     * 
     * @param value 设定value的值.
     */
    public void setValue(String value) {
        this.value = value;
    }

}