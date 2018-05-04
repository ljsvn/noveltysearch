/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.action.portal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import com.ods.base.bo.menu.MenuPortal;
import com.ods.base.bo.menu.MenuPortalShow;
import com.ods.base.bo.menu.xml.MenuDataCache;
import com.ods.base.bo.menu.xml.Portal;
import com.ods.base.bo.menu.xml.Portals;
import com.ods.base.bo.system.user.bo.User;
import com.ods.util.UserContext;
import com.ods.util.action.ActionView;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.type.NumberUtil;
import com.ods.util.type.StringUtil;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * HomePagePortalAction.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * HomePagePortalAction类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * HomePagePortalAction类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 首页Portal业务处理实现类<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-1-7, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2011-1-7
 * @version:1.0
 */
public class HomePagePortalAction extends ActionView {
    /**
     * 属性名：serialVersionUID、类型：long、作成日：2011-1-7.<br>
     * 含义：
     */
    private static final long serialVersionUID = -5276821851712086378L;

    /**
     * 获取登录用户的Portal显示.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.portal<br>
     * 方法名:homePagePoratl方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2011-1-7
     * @return
     */
    public String homePagePoratl() {
        try {
            // 登录页面Portal对象集合
            @SuppressWarnings({ "unchecked", "rawtypes" })
            Map<String, List<MenuPortalShow>> portalMap = new TreeMap<String, List<MenuPortalShow>>(new Comparator() {
                public int compare(Object o1, Object o2) {
                    // 如果有空值，直接返回0
                    if(o1 == null || o2 == null)
                        return 0;

                    return String.valueOf(o1).compareTo(String.valueOf(o2));
                }
            });
            // 获取登录用户
            User user = UserContext.getUserContext(getRequest()).getUser();
            QueryCondition qc = new QueryCondition(getRequest());
            qc.equals("userPk", user.getUserPk());
            QueryResult qr = getSpringHibernate().select(qc, MenuPortal.class);
            MenuDataCache dataCache = MenuDataCache.getInstance();
            List<Portals> portalsAllList = dataCache.getMenu().getPortalsList();

            for(int i = 0; i < qr.size(); i++) {
                MenuPortal menuPortal = (MenuPortal) qr.get(i);
                for(Portals portals : portalsAllList) {
                    if(StringUtil.equals(menuPortal.getPortalsId(), portals.getId())) {
                        List<Portal> portalList = portals.getPortalList();
                        for(Portal portal : portalList) {
                            if(StringUtil.equals(portal.getId(), menuPortal.getPortalId())) {
                                MenuPortalShow menuPortalShow = new MenuPortalShow();
                                menuPortalShow.setId(portals.getId());
                                menuPortalShow.setColumnNo(portals.getColumnNo());
                                menuPortalShow.setColumnWidth(portals.getColumnWidth());
                                menuPortalShow.setWidth(portals.getWidth());
                                menuPortalShow.setStyle(portals.getStyle());
                                menuPortalShow.setChildrenId(portal.getId());
                                menuPortalShow.setTitle(portal.getTitle());
                                menuPortalShow.setHeight(portal.getHeight());
                                menuPortalShow.setUrl(portal.getUrl());
                                menuPortalShow.setOrderBy(portal.getOrderBy());
                                if(portalMap.containsKey(String.valueOf(portals.getColumnNo()))) {
                                    portalMap.get(String.valueOf(portals.getColumnNo())).add(menuPortalShow);
                                } else {
                                    List<MenuPortalShow> menuPortalShowList = new ArrayList<MenuPortalShow>();
                                    menuPortalShowList.add(menuPortalShow);
                                    portalMap.put(String.valueOf(portals.getColumnNo()), menuPortalShowList);
                                }
                            }
                        }
                    }
                }
            }

            // 组织portal显示项
            /**
             * { columnWidth:.4, autoScroll:true, height:200, items:[{ title:
             * '我的信息<label style="color:green" >接收</label>箱', layout:'fit',
             * tools: portalTools, height:420, autoLoad:{url:
             * '<%=request.getContextPath()+"/"%>'+node.attributes.url,scripts:t
             * r u e } } ] }
             */
            /**
             * { columnWidth:.33, style:'padding:10px 0 10px 10px', items:[{
             * title: 'Grid in a Portlet', layout:'fit', tools: tools, items:
             * new SampleGrid([0, 2, 3]) },{ title: 'Another Panel 1', tools:
             * tools, html: Ext.example.shortBogusMarkup }] },{ columnWidth:.33,
             * style:'padding:10px 0 10px 10px', items:[{ title: 'Panel 2',
             * tools: tools, html: Ext.example.shortBogusMarkup },{ title:
             * 'Another Panel 2', tools: tools, html:
             * Ext.example.shortBogusMarkup }] },
             */
            StringBuilder portalBuilder = new StringBuilder();
            for(Iterator<Map.Entry<String, List<MenuPortalShow>>> it = portalMap.entrySet().iterator(); it.hasNext();) {
                Map.Entry<String, List<MenuPortalShow>> entry = (Map.Entry<String, List<MenuPortalShow>>) it.next();
                int condKey = NumberUtil.toInt(entry.getKey(), 0);
                List<MenuPortalShow> portalList = entry.getValue();
                // 进行排序
                Collections.sort(portalList, new Comparator<MenuPortalShow>() {
                    @Override
                    public int compare(MenuPortalShow o1, MenuPortalShow o2) {
                        return new Integer(o1.getOrderBy()).compareTo(o2.getOrderBy());
                    }
                });
                // 组织Portal显示数据
                for(int i = 0; i < portalList.size(); i++) {
                    MenuPortalShow menuPortalShow = portalList.get(i);
                    if(i == 0) {
                        portalBuilder.append("{");
                        if(!StringUtil.empty(menuPortalShow.getColumnWidth())){
                            portalBuilder.append("columnWidth:").append(menuPortalShow.getColumnWidth()).append(",");
                        } else if(!StringUtil.empty(menuPortalShow.getWidth())){
                            portalBuilder.append("width:").append(menuPortalShow.getWidth()).append(",");
                        } 
                        portalBuilder.append("autoScroll:true,");
                        portalBuilder.append("style:'").append(menuPortalShow.getStyle()).append("',");
                        portalBuilder.append("items:[");
                    }
                    portalBuilder.append("{");
                    portalBuilder.append("title: '").append(menuPortalShow.getTitle()).append("',");
                    portalBuilder.append("layout:'fit',height:").append(menuPortalShow.getHeight()).append(",");
                    portalBuilder.append("plugins: [new Ext.ux.Plugin.RemoteComponent(");
                    portalBuilder.append("{url: '").append(getRequest().getContextPath()).append("/").append(menuPortalShow.getUrl()).append("', method: 'post'})]");
                    if(i < portalList.size() - 1) {
                        portalBuilder.append("},");
                    } else {
                        portalBuilder.append("}");
                        portalBuilder.append(" ]}");
                    }
                }

                if(condKey != portalMap.size()) {
                    portalBuilder.append(",");
                }
            }

            getRequest().setAttribute("portalBuilder", portalBuilder);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            // setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"),
            // false);
            // return ERROR;
        }
        return SUCCESS;
    }
}
