/**
 * 包名：com.ods.util.web.html
 * 类名：ButtonType
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.web.html;

/**
 * 功能：页面按钮属性封装
 * 创建者: 10325431@qq.com
 * 创建时间:2009-4-3 9:42:31
 * 修改者                   修改时间
 *
 */
public class ButtonType {

    /**
     * 按钮id
     */
    private String id;
    /**
     * 按钮名称
     */
    private String name;
    /**
     * 按钮类型
     */
    private String type="button";
    /**
     *按钮显示名称
     */
    private String value="确定";
    /**
     *按钮样式
     */
    private String style;
    /**
     *点击按钮的事件
     */
    private String onclickJsMethod;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOnclickJsMethod() {
        return onclickJsMethod;
    }

    public void setOnclickJsMethod(String onclickJsMethod) {
        this.onclickJsMethod = onclickJsMethod;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
}
