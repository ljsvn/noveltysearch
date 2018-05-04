/**
 *copyright(C)2009
 *陕西Ods信息技术软件有限公司软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.action;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.ods.base.bo.system.org.bo.Organization;
import com.ods.base.bo.system.role.bo.RoleOrg;
import com.ods.base.bo.system.user.bo.User;
import com.ods.base.bo.system.user.bo.UserRole;
import com.ods.util.UserContext;
import com.ods.util.db.DBIExecutePlsql;
import com.ods.util.guid.GuidGender;
import com.ods.util.hibernate.SpringHibernate;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryPageJavaBean;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.resource.ResourceUtil;
import com.ods.util.spring.SpringBeanFactory;
import com.ods.util.type.NumberUtil;
import com.ods.util.type.StringUtil;
import com.ods.util.type.TimeUtil;
import com.opensymphony.xwork2.ActionSupport;

/**
 *<b>系统名称:</b><b> &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *License产生管理系统</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>子系统名：</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *structs2的ActionSupport的子类<br>
 * 
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>文件名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *ActionView.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *ActionView类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *ActionView类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *是所有业务层的Action超类，主要是为了写一些公用方法，如：当前时间的获取<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2009-5-26, 99999, 10325431@qq.com, 新建<br>
 * 
 *@author :10325431@qq.com
 *@since :2009-5-26
 *@version:1.0
 */
public class ActionView extends ActionSupport {

    /**
     *属性名：serialVersionUID、类型：long、作成日：2009-5-26.
     */
    private static final long serialVersionUID = 3824747231552342649L;

    // 页面列表表头数组名
    public static final String SHOW_TABLE_COLMUN_NAME = "fields";

    // 页面列表数据集合名
    public static final String SHOW_TABLE_CONTENT = "qr";

    public static final String PARAM_CURPAGE = "start";

    public static final String PARAM_EACHSHOWROW = "limit";

    public static final String SEPERATOR = ".";

    // 数字0
    public static final int NUM_0 = 0;

    // 数字1
    public static final int NUM_1 = 1;

    // 数字2
    public static final int NUM_2 = 2;

    // 数字3
    public static final int NUM_3 = 3;

    // 数字4
    public static final int NUM_4 = 4;

    // 数字5
    public static final int NUM_5 = 5;

    // 数字6
    public static final int NUM_6 = 6;

    /**
     * 比系统当前时间延后的1分钟
     */
    private static final int defertime = 1;

    /**
     *属性名：springHibernate、类型：Object、作成日：2009-6-10.<br>
     *含义：spring管理的Hibernate动作
     */
    private SpringHibernate springHibernate;

    /**
     * 获取到的客户端请求对象
     */
    private HttpServletRequest request;

    /**
     * 动态响应客户端请示,控制发送给用户的信息,并将动态生成响应对象
     */
    private HttpServletResponse response;

    /**
     *属性名：listHtmlResult、类型：String、作成日：2009-6-16.<br>
     *含义：
     */
    private String listHtmlResult;

    /**
     *springHibernate的获取.
     * 
     * @return springHibernate值返回.
     */
    public SpringHibernate getSpringHibernate() {
        //if(null == springHibernate) {
            springHibernate = (SpringHibernate) SpringBeanFactory.getBean("DAOProxy");
       // }
        return springHibernate;
    }
    
    /**
     *springHibernate的值设定
     * 
     * @param springHibernate 设定springHibernate的值.
     */
    public void setSpringHibernate(SpringHibernate springHibernate) {
        this.springHibernate = springHibernate;
    }

    /**
     *listHtmlResult的获取.
     * 
     * @return listHtmlResult值返回.
     */
    public String getListHtmlResult() {
        return listHtmlResult;
    }

    /**
     *listHtmlResult的值设定
     * 
     * @param listHtmlResult 设定listHtmlResult的值.
     */
    public void setListHtmlResult(String listHtmlResult) {
        this.listHtmlResult = listHtmlResult;
    }

    /**
     *request的获取.
     * 
     * @return request值返回.
     */
    public HttpServletRequest getRequest() {
        request = ServletActionContext.getRequest();
        return request;
    }

    /**
     *response的获取.
     * 
     * @return response值返回.
     */
    public HttpServletResponse getResponse() {
        response = ServletActionContext.getResponse();
        return response;
    }

    /**
     * 带翻页条件的QueryCondition
     * 
     * @param request 一次请求对象
     * @return 带翻页信息的QueryCondition对象
     */
    public QueryCondition newQueryConditionOfTable(HttpServletRequest request) {
        QueryCondition qc = newQueryConditionOfTable(request, false);
        return qc;
    }

    /**
     * 带翻页条件的QueryCondition
     * 
     * @param request 一次请求对象
     * @param firstOrgPkQueryFlag
     *            :true:自动添加firstOrgPk查询条件属性，false:不添加firstOrgPk查询条件属性
     * @return 带翻页信息的QueryCondition对象
     */
    public QueryCondition newQueryConditionOfTable(HttpServletRequest request, boolean firstOrgPkQueryFlag) {
        QueryCondition qc = new QueryCondition(request);
        QueryPageJavaBean pageJavaBean = new QueryPageJavaBean();

        int eachPageShowRows = NumberUtil.toInt(StringUtil.toEmptySafe(request.getParameter(PARAM_EACHSHOWROW), String
                .valueOf(QueryPageJavaBean.LIST_EACH_PAGE_ROWS)));
        pageJavaBean.setEachPageShowRows(eachPageShowRows);

        int curpage = NumberUtil.toInt(StringUtil.toEmptySafe(request.getParameter(PARAM_CURPAGE), "1"));
        // /////////////////////////////////////////////////////////////////
        pageJavaBean.setStartIndex(curpage);
        pageJavaBean.setQueryTotalCount(true);
        qc.setQueryPageJavaBean(pageJavaBean);

        return qc;
    }

    /**
     * 获得当前系统时间 格式:yyyy-MM-dd HH:mm:ss
     * 
     * @return 当前时间字符串
     */
    public static String timeInstance() {
        Calendar calendar = Calendar.getInstance();
        return TimeUtil.toString(calendar, TimeUtil.theTimeFormat);
    }

    /**
     * 获得当前系统时间 格式:yyyyMMddHHmmss
     * 
     * @return 当前时间字符串
     */
    public static String timeInstanceTwo() {
        Calendar calendar = Calendar.getInstance();
        return TimeUtil.toString(calendar, TimeUtil.otherTimeFormat);
    }
    
    /**
     * 获得当前系统时间 格式:yyyyMMddHHmmss
     * 
     * @return 当前时间字符串
     */
    public static String timeInstanceThree() {
        Calendar calendar = Calendar.getInstance();
        return TimeUtil.toString(calendar, TimeUtil.yearMonthDayFormat);
    }

    /**
     * 获得比当前当前系统时间延后的时间(默认1分钟) 格式:yyyy-MM-dd HH:mm:ss
     * 
     * @return 当前时间字符串
     */
    public static String timeInstanceDeferMinute() {
        java.util.GregorianCalendar worldTour = new java.util.GregorianCalendar();
        worldTour.add(java.util.GregorianCalendar.MINUTE, defertime);
        Date date = worldTour.getTime();
        return TimeUtil.toString(date);
    }

    /**
     * 获得当前系统时间,年月 格式yyyyMM
     * 
     * @return 当前时间年月
     */
    public static String timeyyyyMMInstance() {
        Calendar calendar = Calendar.getInstance();
        return TimeUtil.toString(calendar, TimeUtil.yearMonthTimeFormat);
    }

    /**
     * 获得当前系统时间,年月日 格式yyyyMMdd
     * 
     * @return 当前时间年月日
     */
    public static String timeyyyyMMddInstance() {
        Calendar calendar = Calendar.getInstance();
        return TimeUtil.toString(calendar, TimeUtil.yearMonthDayTimeFormat);
    }
    
    /**
     * 获得当前系统时间 格式:HH:mm:ss
     * 
     * @return 当前时间字符串
     */
    public static String shortTimeInstance() {
        Calendar calendar = Calendar.getInstance();
        return TimeUtil.toString(calendar, TimeUtil.theShortTimeFormat);
    }

    // ////////////////////////////以下是调用存储过程方法//////////////////////////////////////////

    /**
     *调数据库存储过程,无返回参数.<br>
     *工程名:12320<br>
     *包名:com.ods.util.action<br>
     *方法名:callDBProc方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2009-12-7
     *@param procName:存储过程名称
     *@param args：存储过程参数
     * @throws SQLException :调用存储过程例外
     */
    public void callDBProc(String procName, Object[] args) throws SQLException {
        DBIExecutePlsql dbiExecutePlsql = new DBIExecutePlsql();
        dbiExecutePlsql.doSpringCallProcedure(procName, args);

    }

    /**
     * 
     *调数据库存储过程,有返回参数.<br>
     *工程名:12320<br>
     *包名:com.ods.util.action<br>
     *方法名:callDBProcParam方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2009-12-7
     *@param procName:存储过程名
     *@param args：存储过程的参数数组
     *@return 存储过程返回参数
     * @throws SQLException :调用存储过程例外
     */
    public Object callDBProcParam(String procName, Object[] args) throws SQLException {
        DBIExecutePlsql dbiExecutePlsql = new DBIExecutePlsql();
        return dbiExecutePlsql.doSpringCallProcedureReturnString(procName, args);

    }

    /**
     * 保存即时消息到数据库中.<br>
     *工程名:odstv<br>
     *包名:com.ods.util.action<br>
     *方法名:saveSendMessage方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2010-1-14
     *@param args args[0]:消息标题，args[1]：接收人消息主键，多个主键用逗号分隔，
     *            args[2]：消息查看调用的相应表主键，args[3]：配置文件Id， args[4]：发送人名称
     */
    // public void saveSendMessage(final Object[] args) {
    // new Thread() {
    // public void run() {
    // try {
    // // 首先保存到数据库表中
    // callDBProc("p_message_reader", args);
    // // 发送消息
    // MsgBean msgBean = (MsgBean) SpringBeanFactory
    // .getBean("msgBean");
    // msgBean.setId(args[3].toString());
    // msgBean.setSendName(args[4].toString());
    // msgBean.setSendTime(timeInstance());
    // msgBean.setTablePk(args[2].toString());
    // msgBean.setTitle(args[0].toString());
    // msgBean.setUserPks(args[1].toString());
    // String messageInfoJson = MessageUtil.messageFormat(msgBean);
    // SendMsgCache msgCache = SendMsgCache.getInstance();
    // msgCache.addMessage(messageInfoJson);
    // } catch(SQLException e) {
    // e.printStackTrace();
    // }
    // }
    // }.start();
    // }
    /**
     * 
     *查找并发送消息.<br>
     *工程名:12320<br>
     *包名:com.ods.util.action<br>
     *方法名:loginFindSendMessage方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2010-3-2
     *@param userPk 用户Pk
     */
    // public void findSendMessage(int userPk) {
    // try {
    // QueryCondition qc = new QueryCondition(getRequest(),true);
    // qc.equals("readerPk", userPk);
    // QueryResult qr = this.getSpringHibernate().select(qc,
    // MessageRead.class);
    // MsgBean msgBean = (MsgBean) SpringBeanFactory.getBean("msgBean");
    // String messageInfoJson = "";
    // SendMsgCache msgCache = null;
    // MessageRead messageRead = null;
    // for(Object object : qr) {
    // messageRead = (MessageRead) object;
    // // 发送消息
    // msgBean.setId(messageRead.getConfigId());
    // msgBean.setSendName(messageRead.getSendName());
    // msgBean.setSendTime(timeInstance());
    // msgBean.setTablePk(messageRead.getContentPk()+"");
    // msgBean.setTitle(messageRead.getMessageTitle());
    // msgBean.setUserPks(messageRead.getReaderPk() + "");
    // messageInfoJson = MessageUtil.messageFormat(msgBean);
    // msgCache = SendMsgCache.getInstance();
    // msgCache.addMessage(messageInfoJson);
    // }
    // } catch(Throwable e) {
    // e.printStackTrace();
    // }
    // }
    /**
     *把操作结果存入Request作用域.<br>
     *工程名:odspsp<br>
     *包名:com.ods.rbac.action.user<br>
     *方法名:setAttributeMessage方法.<br>
     * 
     *@author:cui_wenke
     *@since :1.0:2009-9-3
     *@param messageText ：操作的结果
     *@param successState ：成功与否
     */
    public void setRequestMessage(String messageText, Boolean successState) {
        // 1:把操作的结果信息添加到Request作用域
        getRequest().setAttribute("messageText", messageText);
        // 2:把成功与否的状态添加到Request作用域
        getRequest().setAttribute("successState", successState);
    }

    /**
     * 获取上传文件的根路径.<br>
     *工程名:odstv<br>
     *包名:com.ods.util.action<br>
     *方法名:getUploadFileRootPath方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2010-5-6
     *@return 上除文件的根路径
     */
    public String getUploadFileRootPath() {
        return ResourceUtil.getResourceString("upload.file.path");
    }

    /**
     * 用户系统操作日志记录.<br>
     * 工程名:odstv<br>
     * 包名:com.ods.util.action<br>
     * 方法名://saveActionLog方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2010-5-6
     * @param actionType：操作的类型，如登录，保存，修改等
     * @param actionContent：用户操作的类容
     */
    public void saveActionLog(String actionContent) {
        // 主键
        String logPk = new GuidGender(true).toString();
        User user = UserContext.getUserContext(getRequest()).getUser();
        // 操作人姓名
        String userName = user.getUserRealName();
        // 插入的Sql语句
        StringBuilder sqlBuilder = new StringBuilder("insert into t_operation_log values(");
        sqlBuilder.append("'").append(logPk).append("',");
        sqlBuilder.append("'").append(user.getUserPk()).append("',");
        sqlBuilder.append("'").append(userName).append("',");
        sqlBuilder.append("'").append(user.getFirstOrgPk()).append("',");
        sqlBuilder.append("'").append(actionContent).append("',");
        sqlBuilder.append("'").append(getIpAddr()).append("',");
        sqlBuilder.append("'").append(timeInstance()).append("')");
        Object[] args = { sqlBuilder.toString() };
        try {
            callDBProc("p_exec_sql_util", args);
        } catch(SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * 
     * 获取访问客户端真正的IP.<br>
     * 工程名:projectmodel<br>
     * 包名:com.ods.util.action<br>
     * 方法名:getIpAddr方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2010-11-26
     * @return 访问客户端的IP
     */
    public String getIpAddr() {
        String ipAddress = null;
        // ipAddress = this.getRequest().getRemoteAddr();
        ipAddress = this.getRequest().getHeader("x-forwarded-for");
        if(ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
            ipAddress = this.getRequest().getHeader("Proxy-Client-IP");
        }
        if(ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
            ipAddress = this.getRequest().getHeader("WL-Proxy-Client-IP");
        }
        if(ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
            ipAddress = this.getRequest().getRemoteAddr();
            if(ipAddress.equals("127.0.0.1")) {
                // 根据网卡取本机配置的IP
                InetAddress inet = null;
                try {
                    inet = InetAddress.getLocalHost();
                } catch(UnknownHostException e) {
                    e.printStackTrace();
                }
                ipAddress = inet.getHostAddress();
            }

        }

        // 对于通过多个代理的情况，第一个IP为客户端真实IP,多个IP按照','分割
        if(ipAddress != null && ipAddress.length() > 15) { // "***.***.***.***".length()
            // = 15
            if(ipAddress.indexOf(",") > 0) {
                ipAddress = ipAddress.substring(0, ipAddress.indexOf(","));
            }
        }
        return ipAddress;
    }

    /**
     *返回当前登录用户的PK.<br>
     *工程名:odstv<br>
     *包名:com.ods.util.action<br>
     *方法名:getNonceUserPk方法.<br>
     * 
     *@author:cui_wenke
     *@since :1.0:2010-5-11
     *@return
     */
    public String getNonceUserPk() {
        return UserContext.getUserContext(getRequest()).getUser().getUserPk();
    }

    /**
     *返回当前登录用户的组织机构PK.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.util.action<br>
     *方法名:getNonceOrgPk方法.<br>
     * 
     *@author:wang_zr
     *@since :1.0:2011-1-11
     *@return
     */
    public String getNonceOrgPk() {
        return UserContext.getUserContext(getRequest()).getUser().getOrgPk();
    }

    /**
     *返回当前登录用户的所有父组织机构PK.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.util.action<br>
     *方法名:getNonceOrgAllPk方法.<br>
     * 
     *@author:wang_zr
     *@since :1.0:2011-1-15
     *@return
     */
    public String getNonceOrgAllPk() {
        return UserContext.getUserContext(getRequest()).getUser().getAllOrgPk();
    }

    /**
     *获得当前登录用户信息.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.util.action<br>
     *方法名:getNonceUser方法.<br>
     * 
     *@author:wang_zr
     *@since :1.0:2011-1-11
     *@return
     */
    public User getNonceUser() {
        User user = new User();
        try {
            user = UserContext.getUserContext(getRequest()).getUser();
            Organization organization = (Organization) getSpringHibernate().selectByPk("orgPk", user.getOrgPk(),
                    Organization.class);
            user.setOrgName(null == organization ? "": organization.getOrgName());
        } catch(Throwable e) {
            e.printStackTrace();
        }
        return user;
    }

    /**
     *用户主键和用户信息的键值对.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.util.action<br>
     *方法名:getUserMap方法.<br>
     * 
     *@author:cui_wenke
     *@since :1.0:2010-10-12
     *@return
     *@throws Throwable
     */
    public Map<String, User> getUserMap() {
        Map<String, User> userNameMap = new HashMap<String, User>();
        try {
            QueryResult qr = getSpringHibernate().select(new QueryCondition(getRequest()), User.class);
            for(Object object : qr) {
                User user = (User) object;
                userNameMap.put(user.getUserPk(), user);
            }
        } catch(Throwable e) {
            LogUtil.writeLog(e);
        }
        return userNameMap;
    }

    /**
     *获得所有的组织机构.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.util.action<br>
     *方法名:getOrgMap方法.<br>
     * 
     *@author:cui_wenke
     *@since :1.0:2010-10-12
     *@return
     *@throws Throwable
     */
    public Map<String, Organization> getOrgMap() {
        Map<String, Organization> orgMap = new HashMap<String, Organization>();
        try {
            QueryResult qr = getSpringHibernate().select(new QueryCondition(getRequest()), Organization.class);
            for(Object object : qr) {
                Organization organization = (Organization) object;
                orgMap.put(organization.getOrgPk(), organization);
            }
        } catch(Throwable e) {
            LogUtil.writeLog(e);
        }
        return orgMap;
    }
    
    public static Map<String, Organization> getOrgMap(String firstOrgPk) {
        SpringHibernate springHibernate = (SpringHibernate) SpringBeanFactory.getBean("DAOProxy");
        Map<String, Organization> orgMap = new HashMap<String, Organization>();
        try {
            QueryCondition qc = new QueryCondition();
//            qc.equals("firstOrgPk",firstOrgPk);
            QueryResult qr = springHibernate.select(qc, Organization.class);
            for(Object object : qr) {
                Organization organization = (Organization) object;
                orgMap.put(organization.getOrgPk(), organization);
            }
        } catch(Throwable e) {
            LogUtil.writeLog(e);
        }
        return orgMap;
    }

    /**
     *获取分厂部门主键.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.util.action<br>
     *方法名:getRootOrgPk方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2011-2-12
     *@param orgPk
     *@return
     */
    public String getRootOrgPk(String orgPk) {
        Map<String, Organization> orgMap = new HashMap<String, Organization>();
        try {
            QueryResult qr = getSpringHibernate().select(new QueryCondition(getRequest()), Organization.class);
            for(Object object : qr) {
                Organization organization = (Organization) object;
                orgMap.put(organization.getOrgPk(), organization);
            }
        } catch(Throwable e) {
            LogUtil.writeLog(e);
        }
        Organization organization = orgMap.get(orgPk);
        return null == organization ? orgPk: organization.getFirstOrgPk();
    }
    
    /**
     *根据主键获得组织机构<br>
     *工程名:yinuojz<br>
     *包名:com.ods.util.action<br>
     *方法名:getOrgMap方法.<br>
     * 
     *@author:wangpei
     *@since :1.0:2011-6-9
     *@param orgPks
     *@return
     */
    public Map<String, Organization> getOrgMap(List<Object> orgPks) {
        Map<String, Organization> orgMap = new HashMap<String, Organization>();
        QueryCondition qc = new QueryCondition();
        qc.in("orgPk", orgPks);
        try {
            QueryResult qr = getSpringHibernate().select(qc, Organization.class);
            for(Object object : qr) {
                Organization organization = (Organization) object;
                orgMap.put(organization.getOrgPk(), organization);
            }
        } catch(Throwable e) {
            LogUtil.writeLog(e);
        }
        return orgMap;
    }
    
    
    /**
     *根据主键获得所有儿子的组织.<br>
     *工程名:noveltysearch<br>
     *包名:com.ods.util.action<br>
     *方法名:getAllSonOrgMap方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2014年12月31日
     *@param firstOrgPk
     *@return
    */
    public static List<Object> getAllSonOrgMap(String allOrgPk) {
        SpringHibernate springHibernate = (SpringHibernate) SpringBeanFactory.getBean("DAOProxy");
        List<Object> list = new ArrayList<Object>();
        try {
            QueryCondition qc = new QueryCondition();
            qc.put("fatherOrgPkAll",allOrgPk);
            QueryResult qr = springHibernate.select(qc, Organization.class);
            
            for(Object object : qr) {
                Organization organization = (Organization) object;
                list.add(organization.getOrgPk());
            }
            list.add(allOrgPk);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
        }
        return list;
    }
    
    public static List<Object> getAllHaveOrgMap(String userRolePk) {
        SpringHibernate springHibernate = (SpringHibernate) SpringBeanFactory.getBean("DAOProxy");
        List<Object> list = new ArrayList<Object>();
        try {
            UserRole  ur =(UserRole) springHibernate.selectByPk("userPk",userRolePk, UserRole.class);
            QueryCondition qc = new QueryCondition();
            qc.put("rolePk",ur.getRolePk());
            QueryResult qr = springHibernate.select(qc, RoleOrg.class);
            
            for(Object object : qr) {
                RoleOrg ro = (RoleOrg) object;
                list.add(ro.getOrgId());
            }
        } catch(Throwable e) {
            LogUtil.writeLog(e);
        }
        return list;
    }
}
