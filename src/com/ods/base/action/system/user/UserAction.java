/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.action.system.user;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ods.base.bo.system.org.bo.Organization;
import com.ods.base.bo.system.role.bo.Role;
import com.ods.base.bo.system.user.bo.User;
import com.ods.base.bo.system.user.bo.UserRole;
import com.ods.util.UserContext;
import com.ods.util.action.ActionView;
import com.ods.util.encrypt.MD5Encrypt;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.resource.ResourceUtil;
import com.ods.util.type.NumberUtil;
import com.ods.util.type.StringUtil;

/**
 *<b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 *<b>文件名:</b><br>
 * 
 *UserAction.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *UserAction类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *UserAction类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *组织机构对应的用户信息的管理.<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2011-1-4, cause, wang_zr, 新建<br>
 * 
 *@author :wang_zr
 *@since :2011-1-4
 *@version:1.0
 */
public class UserAction extends ActionView {

    /**
     *属性名：serialVersionUID、类型：long、作成日：2011-1-4.<br>
     *含义：
     */
    private static final long serialVersionUID = -1295781771505178832L;

    /**
     * 属性名：user、类型：User、作成日：2009-9-2.<br>
     * 含义：用户信息的作用对象
     */
    private User user;

    /**
     *user的值设定
     * 
     * @param user 设定user的值.
     */
    public void setUser(User user) {
        this.user = user;
    }

    /**
     *user的获取.
     * 
     * @return user值返回.
     */
    public User getUser() {
        return user;
    }

    /**
     * 获取指定条件的用户信息.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.bo.system.user.action<br>
     * 方法名:listInfo方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2009-9-2
     * @return =SUCCESS:跳转用户列表页面
     * 
     *         =ERROR:错误页面
     */
    public String listInfo() {
        // 1: 获取用户的查询条件
        QueryCondition qc = fillQueryCondition();
        QueryResult qr = null;
        try {
            // 2: 查询数据库
            qr = getSpringHibernate().select(qc, User.class);
            Map<String, String> orgMap = orgMap();
            for(Object object : qr) {
                User user = (User) object;
                user.setOrgName(orgMap.get(user.getOrgPk()));
            }
            // 3: 将指定用户信息存入Request作用域
            getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
            String[] fields = { "userPk", "parentUserPk", "orgPk", "allOrgPk", "firstOrgPk", "userLoginName", "userRealName",
                    "userSex", "userDutyName", "userEducation", "userBirthday", "userNative", "userPhone", "isSystemUser",
                    "userMaritalStatus", "userPassword", "beforeLoginTime", "memo", "createOrgPk", "createUserPk", "createTime",
                    "deleteType", "orgName" };
            getRequest().setAttribute(SHOW_TABLE_COLMUN_NAME, fields);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }

    // 获取业务类型名称
    private Map<String, String> orgMap() throws Throwable {
        Map<String, String> orgMap = new HashMap<String, String>();
        QueryResult qr = getSpringHibernate().select(new QueryCondition(), Organization.class);
        for(Object object : qr) {
            Organization org = (Organization) object;
            orgMap.put(org.getOrgPk(), org.getOrgName());
        }
        return orgMap;
    }
    /**
     * 获取查询用户条件信息.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.bo.system.user.action<br>
     * 方法名:fillQueryCondition方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2009-9-2
     * @return =qc:返回查询条件
     */
    private QueryCondition fillQueryCondition() {
        QueryCondition qc = null;
        if(StringUtil.equals(UserContext.getUserContext(getRequest()).getUser().getUserLoginName(), "admin")) {
            qc = newQueryConditionOfTable(getRequest(), false);
        } else {
            qc = newQueryConditionOfTable(getRequest());
        }
        // 获得登录名
        String userLoginName = getRequest().getParameter("userLoginName");
        if(!StringUtil.empty(userLoginName)) {
            qc.put("userLoginName", userLoginName);
        }
        // 获得姓名
        String userRealname = getRequest().getParameter("userRealName");
        if(!StringUtil.empty(userRealname)) {
            qc.put("userRealName", userRealname);
        }
        // 性别
        String userSex = getRequest().getParameter("userSex");
        if(!StringUtil.empty(userSex)) {
            qc.equals("userSex", userSex);
        }
        // 获得职务
        String userDutyName = getRequest().getParameter("userDutyName");
        if(!StringUtil.empty(userDutyName)) {
            qc.put("userDutyName", userDutyName);
        }
        // 如果不是admin登录，设置查询条件为未删除的用户
        if(!StringUtil.equals(UserContext.getUserContext(getRequest()).getUser().getUserLoginName(), "admin")) {
            qc.equals("deleteType", NUM_0);
        }
        // 设置列表按创建时间降序排列
        qc.orderDesc("createTime");
        // 设置查询条件不显示admin和根节点
        qc.notEquals("userLoginName", "admin");
        // 显示点击的组织机构下对应的所有用户信息
        String orgPk = getRequest().getParameter("orgPk");
        if(!StringUtil.empty(orgPk)) {
            qc.put("allOrgPk", orgPk);
        }
        String orgClassify = getRequest().getParameter("orgClassify");
        if(!StringUtil.empty(orgClassify)) {
            qc.equals("orgClassify", orgClassify);
        }
        // 返回查询条件
        return qc;
    }

    /**
     *执行添加用户的操作.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.base.bo.system.user.action<br>
     *方法名:addInfo方法.<br>
     * 
     *@author:wang_zr
     *@since :1.0:2011-1-4
     *@return
     */
    public String addInfo() {
        User uc = UserContext.getUserContext(getRequest()).getUser();
        // 设置创建人组织机构
        user.setCreateOrgPk(uc.getOrgPk());
        // 设置创建人
        user.setCreateUserPk(uc.getUserPk());
        // 设置创建时间
        user.setCreateTime(timeInstance());
        user.setFirstOrgPk(uc.getFirstOrgPk());
        // 设置默认密码
        user.setUserPassword(MD5Encrypt.MD5(User.DEFAULTPASSWORD));
        try {
            // 保存用户信息
            getSpringHibernate().save(user);
            saveActionLog("在\"组织及用户管理中\"新增了" + user.getUserRealName());
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }

    /**
     * 异步验证用户名是否重复.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.bo.system.user.action<br>
     * 方法名:validUserLoginName方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2009-9-5
     * @return =SUCCESS:用户名没有出现重复，返回成功提示页面
     * 
     *         =ERROR:用户名出现重复，返回错误提示页面
     */
    public String validUserLoginName() {
        // 1: 获取异步提交的登录名
        String loginName = getRequest().getParameter("value");
        try {
            User user = (User) getSpringHibernate().selectByPk("userLoginName", loginName, User.class);
            if(null != user) {
                getRequest().setAttribute("errorMessageText", getText("该登录名已存在，请重新输入。"));
                return ERROR;
            }
            return SUCCESS;
        } catch(Throwable e) {
            // 2: 返回操作失败信息
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }

    /**
     *验证警号是否重复 工程名:sumpolice<br>
     *包名:com.ods.rbac.action.user<br>
     *方法名:validUserNo方法.<br>
     * 
     *@author:wang_zr
     *@since :1.0:2010-12-17
     *@return
     */
    public String validUserNo() {
        // 1: 获取异步提交的登录名
        String userSex = getRequest().getParameter("value");
        try {
            if(null != getSpringHibernate().selectByPk("userSex", userSex, User.class)) {
                getRequest().setAttribute("errorMessageText", getText("该警号已存在，请重新输入。"));
                return ERROR;
            }
        } catch(Throwable e) {
            // 2: 返回操作失败信息
            LogUtil.writeLog(e);
            return ERROR;
        }
        return SUCCESS;
    }

    /**
     *进入用户查看、修改页面.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.base.bo.system.user.action<br>
     *方法名:viewPage方法.<br>
     * 
     *@author:wang_zr
     *@since :1.0:2011-1-4
     *@return
     */
    public String modifyPage() {
        // 获取前台提交的用户PK
        String userPk = getRequest().getParameter("userPk");
        try {
            // 根据userpk查库
            Object object = (User) getSpringHibernate().selectByPk("userPk", userPk, User.class);
            if(null != object) {
                User user = getUserMap().get(((User) object).getParentUserPk());
                if(null != user) {
                    ((User) object).setParentUserName(user.getUserRealName());
                }
                // 放入request作用域中
                getRequest().setAttribute("user", object);
            }
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }

    /**
     *对用户进行修改操作.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.base.bo.system.user.action<br>
     *方法名:updateInfo方法.<br>
     * 
     *@author:wang_zr
     *@since :1.0:2011-1-4
     *@return
     */
    public String updateInfo() {
        try {
            // 验证用户工号是否已存在
            QueryCondition qc = new QueryCondition(getRequest());
            qc.equals("userLoginName", user.getUserLoginName());
            qc.notEquals("userPk", user.getUserPk());
            QueryResult qr = getSpringHibernate().select(qc, User.class);
            if(null != qr && qr.size() > 0) {
                setRequestMessage("该用户工号已存在，请重新输入。", false);
                return ERROR;
            }
            // 修改保存
            getSpringHibernate().update(user);
            saveActionLog("在\"组织及用户管理中\"修改了" + user.getUserRealName());
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }

    /**
     *对用户进行删除或者恢复操作.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.base.bo.system.user.action<br>
     *方法名:deleteInfo方法.<br>
     * 
     *@author:wang_zr
     *@since :1.0:2011-1-4
     *@return
     */

    public String deleteInfo() {
        try {
            String logText = "在\"系统用户管理中";
            String[] userPks = getRequest().getParameterValues("userPks");
            Integer deleteType = NumberUtil.toInt(getRequest().getParameter("deleteType"));
            QueryCondition qc = new QueryCondition(getRequest());
            qc.in("userPk", userPks);
            qc.batchUpdate("deleteType", deleteType);
            if(deleteType == 0) {
                logText += "恢复了账号";
            } else {
                logText += "删除了账号";
            }
            getSpringHibernate().batchUpdate(qc, User.class);
            saveActionLog(logText);
            setRequestMessage(ResourceUtil.getResourceString("result.message.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("result.message.error"), false);
            return ERROR;
        }
    }

    /**
     * 执行密码复原为123456的操作.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.bo.system.user.action<br>
     * 方法名:resetPassWord方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2009-9-6
     * @return =SUCCESS:跳转到复位成功页面
     * 
     *         =ERROR:跳转到错误提示页面
     */
    public String resetPassWord() {
        try {
            // 1: 获取前台提交的用户PK
            String userpk = getUser().getUserPk();
            User user = (User) getSpringHibernate().selectByPk("userPk", userpk, User.class);
            // 2: 设置修改条件为把更新密码为123456
            user.setUserPassword(MD5Encrypt.MD5(User.DEFAULTPASSWORD).trim());
            // 3: 更新数据库
            getSpringHibernate().update(user);
            saveActionLog("在\"系统管理中\"重置了" + user.getUserRealName() + "的密码");
            setRequestMessage(ResourceUtil.getResourceString("result.message.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            // 5: 返回错误信息
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("result.message.error"), false);
            return ERROR;
        }
    }

    /**
     * 
     * 修改登录用户密码<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.bo.system.user.action<br>
     * 方法名:upDatePassword方法.<br>
     * 
     * @author:dongfeng1012@yahoo.com.cn
     * @since :1.0:2009-8-31
     * @return =SUCCESS: 返回密码修改成功页面
     * 
     *         =ERROR: 返回密码修改失败页面
     */
    public String updatePass() {
        try {
            User newUser = getUser();
            User oldUser = UserContext.getUserContext(getRequest()).getUser();
            String strOldPass = MD5Encrypt.MD5(newUser.getStrOldPass());
            // 判断输入密码是否正确
            if(!StringUtil.equals(strOldPass, oldUser.getUserPassword())) {
                setRequestMessage("您输入的旧密码不正确!", false);
                return ERROR;
            }
            oldUser = (User) getSpringHibernate().selectByPk("userPk", oldUser.getUserPk(), User.class);
            // 修改保存新密码
            oldUser.setUserPassword(MD5Encrypt.MD5(newUser.getUserPassword()));
            // 更新数据库
            getSpringHibernate().update(oldUser);
            // 设置session中user的密码
            UserContext.getUserContext(getRequest()).getUser().setUserPassword(MD5Encrypt.MD5(newUser.getUserPassword()));
            saveActionLog("在\"系统管理中\"修改了" + user.getUserRealName() + "的密码");
            setRequestMessage(ResourceUtil.getResourceString("result.message.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("result.message.error"), false);
            return ERROR;
        }
    }

    /**
     *进入用户权限信息页面.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.base.action.system.user<br>
     *方法名:updateRolePage方法.<br>
     * 
     *@author:wang_zr
     *@since :1.0:2011-1-10
     *@return
     */
    @SuppressWarnings("unchecked")
    public String accreditPage() {
        String userPk = getRequest().getParameter("userPk");
        List<Role> roleHaveList = new ArrayList<Role>();
        List<Role> roleNoList = new ArrayList<Role>();
        // 9: 获得所有用户角色信息
        QueryCondition roleqc = null;
        QueryCondition userroleqc = new QueryCondition(getRequest());
        User uc = UserContext.getUserContext(getRequest()).getUser();
        if(StringUtil.equals(uc.getUserLoginName(), "admin")) {
            roleqc = new QueryCondition(getRequest());
        } else {
            roleqc = new QueryCondition(getRequest());
        }
        QueryResult qr = null;
        QueryResult userroleqr = null;
        try {
            roleqc.notEquals("fatherRolePk", -1);
            qr = getSpringHibernate().select(roleqc, Role.class);
            userroleqr = getSpringHibernate().select(userroleqc, UserRole.class);
            User user = (User) getSpringHibernate().selectByPk("userPk", userPk, User.class);
            getRequest().setAttribute("user", user);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        // 10: 获得所有角色信息
        roleNoList.addAll(qr);
        for(int j = 0; j < userroleqr.size(); j++) {
            UserRole userRole = (UserRole) userroleqr.get(j);
            if(StringUtil.equals(userPk, userRole.getUserPk())) {
                for(int i = 0; i < roleNoList.size(); i++) {
                    if(StringUtil.equals(roleNoList.get(i).getRolePk(), userRole.getRolePk())) {
                        // 11: 根据用户PK设置已有和未有的角色信息
                        roleHaveList.add(roleNoList.get(i));
                        roleNoList.remove(i);
                    }
                }
            }
        }
        getRequest().setAttribute("roleNo", roleNoList);
        getRequest().setAttribute("roleHave", roleHaveList);
        return SUCCESS;
    }

    /**
     * 获取指定条件的用户信息.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.bo.system.user.action<br>
     * 方法名:selectListInfo方法.<br>
     * 
     * @author:cui_wenke
     * @since :1.0:2009-9-2
     * @return =SUCCESS:跳转用户列表页面
     * 
     *         =ERROR:错误页面
     */
    public String selectListInfo() {
        // 1: 获取用户的查询条件
        QueryCondition qc = null;
        if(StringUtil.equals(UserContext.getUserContext(getRequest()).getUser().getUserLoginName(), "admin")) {
            qc = newQueryConditionOfTable(getRequest(), false);
        } else {
            qc = newQueryConditionOfTable(getRequest());
        }
        // for
        // StringUtil.
        // 获取用户PK
        String userPks = getRequest().getParameter("tempUserPks");
        if(!StringUtil.empty(userPks)) {
            qc.in("userPk", StringUtil.split(userPks, "|"));
        }
        QueryResult qr = null;
        try {
            // 2: 查询数据库
            qr = getSpringHibernate().select(qc, User.class);
            // 3: 将指定用户信息存入Request作用域
            getRequest().setAttribute(SHOW_TABLE_CONTENT, qr);
            String[] fields = { "userPk", "orgPk", "allOrgPk", "userLoginName", "userRealName", "userSex", "userDutyPk",
                    "userDutyName", "userPassword", "userState", "beforeLoginTime", "deleteType", "createUserPk", "createTime" };
            getRequest().setAttribute(SHOW_TABLE_COLMUN_NAME, fields);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }

    /**
     *进入批量用户权限信息页面.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.base.action.system.user<br>
     *方法名:multiAccreditPage方法.<br>
     * 
     *@author:fhb
     *@since :1.0:2011-10-8
     *@return
     */
    @SuppressWarnings("unchecked")
    public String multiAccreditPage() {
        String[] userPks = getRequest().getParameterValues("userPks");
        String[] userLoginNames = getRequest().getParameterValues("userLoginNames");
        List<Role> roleHaveList = new ArrayList<Role>();
        List<Role> roleNoList = new ArrayList<Role>();
        // 9: 获得所有用户角色信息
        QueryCondition roleqc = null;
        User uc = UserContext.getUserContext(getRequest()).getUser();
        if(StringUtil.equals(uc.getUserLoginName(), "admin")) {
            roleqc = new QueryCondition(getRequest());
        } else {
            roleqc = new QueryCondition(getRequest());
        }
        QueryResult qr = new QueryResult();
        try {
            roleqc.notEquals("fatherRolePk", -1);
            qr = getSpringHibernate().select(roleqc, Role.class);
            getRequest().setAttribute("userPks", userPks);
            getRequest().setAttribute("userLoginNames", userLoginNames);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        // 10: 获得所有角色信息
        roleNoList.addAll(qr);
        getRequest().setAttribute("roleNo", roleNoList);
        getRequest().setAttribute("roleHave", roleHaveList);
        return SUCCESS;
    }

    /**
     *保存授权信息.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.base.action.system.user<br>
     *方法名:multiAccreditInfo方法.<br>
     * 
     *@author:wang_zr
     *@since :1.0:2011-1-10
     *@return
     */
    public String multiAccreditInfo() {
        String[] userPks = StringUtil.split(getRequest().getParameter("userPks"), "|");
        String rolepkstr = getRequest().getParameter("userRoles");
        try {
            // 根据用户PK删除用户角色信息
            for(String userPk : userPks) {
                getSpringHibernate().delete("userPk", userPk, UserRole.class);
            }
        } catch(Throwable e1) {
            LogUtil.writeLog(e1);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        if(!StringUtil.empty(rolepkstr)) {
            String roleids[] = rolepkstr.split(",");
            for(int i = 0; i < roleids.length; i++) {
                for(String userPk : userPks) {
                    // 声明一个用户角色的对象
                    UserRole userRole = new UserRole();
                    userRole.setUserPk(userPk);
                    String rolepk = roleids[i];
                    if(!StringUtil.empty(rolepk)) {
                        // 设置用户角色表的角色PK
                        userRole.setRolePk(rolepk);
                        try {
                            // 添加一条用户角色表的信息
                            getSpringHibernate().save(userRole);
                            saveActionLog("在\"用户授权中\"给userpk=" + userPk + "的用户赋予了新的权限");
                        } catch(Throwable e) {
                            LogUtil.writeLog(e);
                            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
                            return ERROR;
                        }
                    }
                }
            }
        }
        setRequestMessage(ResourceUtil.getResourceString("result.message.success"), true);
        return SUCCESS;
    }

    /**
     *保存授权信息.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.base.action.system.user<br>
     *方法名:accreditInfo方法.<br>
     * 
     *@author:wang_zr
     *@since :1.0:2011-1-10
     *@return
     */
    public String accreditInfo() {
        String userPk = getRequest().getParameter("userPk");
        String rolepkstr = getRequest().getParameter("userRoles");
        try {
            // 根据用户PK删除用户角色信息
            getSpringHibernate().delete("userPk", userPk, UserRole.class);
        } catch(Throwable e1) {
            LogUtil.writeLog(e1);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        if(!StringUtil.empty(rolepkstr)) {
            String roleids[] = rolepkstr.split(",");
            for(int i = 0; i < roleids.length; i++) {
                // 声明一个用户角色的对象
                UserRole userRole = new UserRole();
                userRole.setUserPk(userPk);
                String rolepk = roleids[i];
                if(!StringUtil.empty(rolepk)) {
                    // 设置用户角色表的角色PK
                    userRole.setRolePk(rolepk);
                    try {
                        // 添加一条用户角色表的信息
                        getSpringHibernate().save(userRole);
                        saveActionLog("在\"用户授权中\"给" + user.getUserRealName() + "赋予了新的权限");
                    } catch(Throwable e) {
                        LogUtil.writeLog(e);
                        setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
                        return ERROR;
                    }
                }
            }
        }
        setRequestMessage(ResourceUtil.getResourceString("result.message.success"), true);
        return SUCCESS;
    }

    /**
     * 转移部门<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.employee<br>
     * 方法名:transferOrg方法.<br>
     * 
     * @author:wangpei
     * @since :1.0:2011-5-19
     * @return
     */
    public String transferOrg() {
        String[] userPks = getRequest().getParameter("userPks").split(",");
        for(int i = 0; i < userPks.length; i++) {
            userPks[i] = "'" + userPks[i] + "'";
        }
        String orgPk = getRequest().getParameter("orgPk");
        String firstOrgPk = getRequest().getParameter("firstOrgPk");
        String allOrgPk = orgPk + "_" + getRequest().getParameter("allOrgPk");
        QueryCondition qc = new QueryCondition();
        qc.in("userPk", userPks);
        qc.batchUpdate("orgPk", orgPk);
        qc.batchUpdate("allOrgPk", allOrgPk);
        qc.batchUpdate("firstOrgPk", firstOrgPk);
        try {
            getSpringHibernate().batchUpdate(qc, User.class);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        saveActionLog("在\"系统用户管理中\"转移了组织机构");
        setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
        return SUCCESS;
    }

    /**
     *改变帐号类型转为登录用户或者普通用户.<br>
     *工程名:homecaremanager<br>
     *包名:com.ods.base.action.system.user<br>
     *方法名:changeLoginState方法.<br>
     * 
     *@author:wangpei
     *@since :1.0:2012-1-4
     *@return
     */
    public String changeLoginState() {
        String logText = "在\"系统用户管理\"中执行了，转为";
        Integer isSystemUser = NumberUtil.toInt(getRequest().getParameter("isSystemUser"));
        String[] userPks = getRequest().getParameterValues("userPks");
        QueryCondition qc = new QueryCondition(getRequest());
        qc.in("userPk", userPks);
        qc.batchUpdate("isSystemUser", isSystemUser);
        try {
            getSpringHibernate().batchUpdate(qc, User.class);
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
        if(isSystemUser == 0) {
            logText += "登录账号";
        } else {
            logText += "普通账号";
        }
        saveActionLog(logText);
        setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
        return SUCCESS;
    }
}
