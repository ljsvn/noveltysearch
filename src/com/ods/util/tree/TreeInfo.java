/**
 * 包名：com.ods.util.tree
 * 类名：TreeInfo
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.tree;

/**
 * 功能：封装树形结构信息 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */
public class TreeInfo {
    /**
     * 树形结构节点pk,根类是-1
     */
    private String nodeId = "-1";

    /**
     * 节点的父节点pk
     */
    private String parentId = "-1";

    /**
     * 树形结构的名称
     */
    private String nodeName = null;

    /**
     * 树形结构的超连接
     */
    private String url = null;

    /**
     *属性名：showFlag、类型：String、作成日：2009-8-11.<br>
     *含义：该节点是否被显示:=true:被显示，=false:不显示
     */
    private String showFlag = "true";

    /**
     *showFlag的获取.
     * 
     * @return showFlag值返回.
     */
    public String getShowFlag() {
        return showFlag;
    }

    /**
     *showFlag的值设定
     * 
     * @param showFlag 设定showFlag的值.
     */
    public void setShowFlag(String showFlag) {
        this.showFlag = showFlag;
    }

    /**
     *nodeId的获取.
     * 
     * @return nodeId值返回.
     */
    public String getNodeId() {
        return nodeId;
    }

    /**
     *nodeId的值设定
     * 
     * @param nodeId 设定nodeId的值.
     */
    public void setNodeId(String nodeId) {
        this.nodeId = nodeId;
    }

    /**
     *parentId的获取.
     * 
     * @return parentId值返回.
     */
    public String getParentId() {
        return parentId;
    }

    /**
     *parentId的值设定
     * 
     * @param parentId 设定parentId的值.
     */
    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getNodeName() {
        return nodeName;
    }

    public void setNodeName(String nodeName) {
        this.nodeName = nodeName;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

}
