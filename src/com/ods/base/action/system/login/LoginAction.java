/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.base.action.system.login;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.ods.base.bo.menu.MenuButton;
import com.ods.base.bo.menu.xml.Button;
import com.ods.base.bo.menu.xml.Menu;
import com.ods.base.bo.menu.xml.MenuDataCache;
import com.ods.base.bo.menu.xml.Page;
import com.ods.base.bo.system.org.bo.Organization;
import com.ods.base.bo.system.user.bo.User;
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
 * <b>系统名称:</b><b> &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 登录实现</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>子系统名：</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 用户输入登录信息后登录表示层实现<br>
 * 
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>文件名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * LoginAction.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * LoginAction类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * Login类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 本类主要是完成以下功能：<br>
 * 1：登录用户合法性校验<br>
 * 2：登录成功后session设置<br>
 * 
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2009-6-9, 99999, 10325431@qq.com, 新建<br>
 * 
 * @author :10325431@qq.com
 * @since :2009-6-9
 * @version:1.0
 */
public class LoginAction extends ActionView {

    /**
     * 属性名：serialVersionUID、类型：long、作成日：2011-1-4.<br>
     * 含义：
     */
    private static final long serialVersionUID = -8409110907579549943L;

    /**
     * 属性名：user、类型：User、作成日：2011-1-4.<br>
     * 含义：登录用户对象
     */
    private User user;

    /**
     * user的值设定
     * 
     * @param user 设定user的值.
     */
    public void setUser(User user) {
        this.user = user;
    }

    /**
     * user的获取.
     * 
     * @return user值返回.
     */
    public User getUser() {
        return user;
    }

    public String indexPage() {
        return SUCCESS;
    }

    /**
     * 
     * 判断用户前端页面输入的信息是否正确，如正确就转向系统主页面.<br>
     * 工程名:odscati<br>
     * 包名:com.ods.rbac.action.login<br>
     * 方法名:userLogin方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2009-6-12
     * @return 用户登录结果转向页面的代表字符串符号
     * @throws Throwable
     */
    public String userLogin() {
        // 1:检查登录用户名是否存在
        String userLoginName = getRequest().getParameter("userLoginName");
        String userPassword = getRequest().getParameter("userPassword");
        int loginType = NumberUtil.toInt(getRequest().getParameter("loginType"), 0);
        ;
        // 2:把用户输入的登录密码进行MD5加密
        String userPasswordMD5 = MD5Encrypt.MD5(userPassword);
        // 3:检查是否已经登录
        UserContext uc = UserContext.getUserContext(getRequest());
        if(uc != null) {
            UserContext.removeUserContext(getRequest());
        }
        // 4:查询数据库
        try {
            if(StringUtil.equals(userLoginName, "admin")) {// 是超级用户登录
                User user = (User) this.getSpringHibernate().selectByPk("userPk", "00000000-0000-0000-0000-000000000000",
                        User.class);
                if(StringUtil.equals(user.getUserPassword(), userPasswordMD5)) {
                    userLoginPasswordValide(user);
                    // 保存用户登录动作日志
                    saveActionLog("\"超级用户登录了\"系统");
                    return SUCCESS;
                } else {
                    setRequestMessage("用户名或密码有误！！请重新登录", false);
                    return ERROR;
                }
            } else {
                // 普通用户和系统用户登录关系视图表
                String hql = "from User where isSystemUser=0 and  userLoginName='" + userLoginName + "' and orgClassify=" + loginType;
                QueryResult qr = this.getSpringHibernate().select(hql);
                if(qr.size() > 0) {
                    User user = (User) qr.get(0);
                    if(StringUtil.equals(user.getUserPassword(), userPasswordMD5)) {
                        userLoginPasswordValide(user);
                        //查询出当前登录用户的组织机构名称
                        Organization organization=(Organization)this.getSpringHibernate().selectByPk("orgPk",user.getOrgPk(), Organization.class);
                        user.setOrgName(organization.getOrgName());
                        // 保存用户登录动作日志
                        saveActionLog("\"登录了\"系统");
                        return SUCCESS;
                    } else {
                        setRequestMessage("用户名或密码有误！！请重新登录", false);
                        return ERROR;
                    }
                } else {
                    setRequestMessage("不是系统登录用户，请联系管理员！", false);
                    return ERROR;
                }
            }
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage("登录失败！请联系管理员", false);
            return ERROR;
        }
    }

    /**
     * 用户登录密码校验.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.login<br>
     * 方法名:userLoginPasswordValide方法.<br>
     * 
     * @author:hou.manyuan@163.com
     * @since :1.0:2011-4-14
     * @param user
     * @throws Throwable
     */
    private void userLoginPasswordValide(User user) throws Throwable {
        UserContext uc;
        // 设置用户一级组织结构相关信息
        Map<String, Organization> orgMap = getOrgMap();
        Organization organization = orgMap.get(user.getFirstOrgPk());
        user.setFirstOrgName(organization.getOrgName());
        user.setFirstOrgNameShort(organization.getOrgNameShort());
        uc = new UserContext();
        uc.setUser(user);
        // 设置用户无权限的按钮
        getUserNoRoleButton(uc);
        UserContext.addUserContext(getRequest(), uc);
        // 修改登录时间
        String beforeLoginTime = user.getBeforeLoginTime();
        user.setBeforeLoginTime(timeInstance());
        getSpringHibernate().update(user);
        user.setBeforeLoginTime(beforeLoginTime);
        setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
    }

    /**
     * 
     * 设置用户无权限按钮.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.base.action.system.login<br>
     * 方法名:getUserNoRoleButton方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2011-1-6
     * @param uc
     * @return
     * @throws Throwable
     */
    private void getUserNoRoleButton(UserContext uc) throws Throwable {
        List<String> hiddenButtonList = new ArrayList<String>();
        QueryCondition qc = new QueryCondition(getRequest());
        qc.equals("userPk", uc.getUser().getUserPk());
        QueryResult qr = getSpringHibernate().select(qc, MenuButton.class);

        // 获取所有权限按钮
        MenuDataCache menuDataCache = MenuDataCache.getInstance();
        Menu menu = menuDataCache.getMenu();
        List<Page> pageList = menu.getPageList();
        for(Page page : pageList) {
            List<Button> buttonList = page.getButtonList();
            for(Button button : buttonList) {
                hiddenButtonList.add(button.getId());
            }
        }
        // 开始过滤掉有权限的按钮
        for(int i = 0; i < qr.size(); i++) {
            MenuButton menuButton = (MenuButton) qr.get(i);
            if(hiddenButtonList.contains(menuButton.getButtonId())) {
                hiddenButtonList.remove(menuButton.getButtonId());
            }
        }
        uc.setHiddenButtonList(hiddenButtonList);
    }

    /**
     * 
     * 登录用户退出时清理session和登录记录.<br>
     * 工程名:odscati<br>
     * 包名:com.ods.rbac.action.login<br>
     * 方法名:userExistLogin方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2009-7-18
     * @return 转向登录页面
     */
    public String closeBrowser() {
        /*
         * IUserService userService = (IUserService) SpringBeanFactory
         * .getBean("userService"); userService.userExistLogin(getRequest());
         */
        try {
            UserContext.removeUserContext(getRequest());
        } catch(Throwable e) {

        }
        return NONE;
    }
}
