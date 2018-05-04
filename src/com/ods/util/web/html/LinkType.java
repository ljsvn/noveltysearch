/**
 * 包名：com.ods.util.web.html
 * 类名：LinkType
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.web.html;

/**
 * 功能：页面超连接标签 创建者: 10325431@qq.com 创建时间:2009-4-4 15:44:55 修改者 修改时间
 * 
 */
public class LinkType {

    /**
     * 超连接id
     */
    private String id;

    /**
     * 超连接名称
     */
    private String name;

    /**
     * 超链接转向
     */
    private String href;

    /**
     *超链接样式
     */
    private String style;

    /**
     *点击超链接的事件
     */
    private String onclickJsMethod;

    /**
     * 超链接显示的名称
     */
    private String linkShowName;

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLinkShowName() {
        return linkShowName;
    }

    public void setLinkShowName(String linkShowName) {
        this.linkShowName = linkShowName;
    }

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

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }
}
