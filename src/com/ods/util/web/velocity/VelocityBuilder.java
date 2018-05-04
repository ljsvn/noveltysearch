/**
 * 包名：com.ods.util.web.velocity
 * 类名：VelocityBuilder
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.web.velocity;

import com.ods.util.type.FileUtil;
import com.ods.util.web.WebContext;
import java.io.File;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.Velocity;

/**
 * 功能：velocity模板控制类 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */
public class VelocityBuilder {

    /**
     * 模板配置文件
     */
    public static final String VELOCITY_PROP_NAME = "velocity.properties";

    /**
     * 基本表模板名称
     */
    public static final String VM_FILE_NAME_TABLE_BASE = "table_base.vm";

    /**
     * 不带翻页的基本表模板名称
     */
    public static final String VM_FILE_NAME_TABLE_BASE_NO_TRUN_DOWN = "table_base_no_trundown.vm";

    /**
     * 没有单选选择表格模板名称
     */
    public static final String VM_FILE_NAME_TABLE_NO_RADIO = "table_no_radio.vm";

    /**
     * 数据字典增加页面模板名称
     */
    public static final String VM_FILE_NAME_DICT_ADD = "dict_add.vm";

    /**
     * 模板集合
     */
    public static Map<String, Template> templateMap = new HashMap<String, Template>();

    /**
     * 向模板文件中传入的信息对象
     */
    private Object velocityBean;

    /**
     * 模板文件名称
     */
    private String vmFileName;

    public Object getVelocityBean() {
        return velocityBean;
    }

    public void setVelocityBean(Object velocityBean) {
        this.velocityBean = velocityBean;
    }

    public String getVmFileName() {
        return vmFileName;
    }

    public void setVmFileName(String vmFileName) {
        this.vmFileName = vmFileName;
    }

    /**
     * 模板初试化
     * 
     * @return =true:初始化模板成功 =false:初始化模板失败
     * @throws java.lang.Exception 初始化失败
     */
    public static boolean init() throws Exception {
        StringBuilder vmPropertiesNameBuf = new StringBuilder(WebContext
                .toHomeWEBINFPath());
        // vmPropertiesNameBuf.append(File.separator);
        // StringBuilder vmPropertiesNameBuf = new
        // StringBuilder("E:\\work\\java项目库\\Cati系统\\odscati\\WebContent\\WEB-INF\\");
        vmPropertiesNameBuf.append(VELOCITY_PROP_NAME);
        Velocity.init(vmPropertiesNameBuf.toString());
        getTemplate();
        return false;
    }

    /**
     * 模板对象集合
     * 
     * @throws java.lang.Exception 实例化模板对象失败
     */
    private static void getTemplate() throws Exception {
        String vmFilePath = "vm" + File.separator;
        String[] vmFiles = getVMFilePathName();
        for(int i = 0; i < vmFiles.length; i++) {
            String vmFile = vmFiles[i];
            Template template = Velocity.getTemplate(vmFilePath + vmFile);
            templateMap.put(vmFile, template);
        }
    }

    /**
     * 所有的模板文件获取
     * 
     * @return 系统中存在的所有的模板文件
     */
    private static String[] getVMFilePathName() {
        StringBuilder builder = new StringBuilder(WebContext.toHomeWEBINFPath());
        builder.append("classes");
        builder.append(File.separator);
        builder.append("vm");
        // 这里是搜索vm文件夹下的所有vm文件
        List<String> vmFileList = new ArrayList<String>();
        FileUtil.toFileNameList(builder.toString(), vmFileList);
        String[] vmFileName = new String[vmFileList.size()];
        for(int i = 0; i < vmFileList.size(); i++) {
            String fileName = vmFileList.get(i);
            vmFileName[i] = fileName;
        }
        return vmFileName;
    }

    // ////////////////////////////////////////////////
    /**
     * 模板上下文信息设置
     * 
     * @return 模板上下文
     */
    private VelocityContext getVelocityContext() {
        VelocityContext context = new VelocityContext();
        context.put("velocityBean", this.getVelocityBean());
        return context;
    }

    /**
     * 根据模板产生的Html语言
     * 
     * @return html语言
     * @throws java.lang.Exception
     */
    public String getVmHtmlContent() throws Exception {
        Template template = templateMap.get(vmFileName);
        StringWriter result = null;
        try {
            result = new StringWriter();
            template.merge(getVelocityContext(), result);
        } finally {
            if(null != result) {
                result.close();
            }
        }
        return (result.toString()).trim();
    }
    // //////////////////////////////
    // //test
    //
    // public static void main(String[] args) throws Exception {
    // init();
    // ///////////////
    // TableBean tableBean = new TableBean();
    // tableBean.setTableTitle("这是我的表格标题");
    // String[] columnName = {"姓名", "年龄", "日期"};
    // String[][] content = {{"100", "张三", "12", "2008/03/01"}, {"200", "李四",
    // "54", "2009/11/01"}};
    // tableBean.setTableColumnNames(columnName);
    // tableBean.setTableContents(content);
    // VelocityBuilder builder = new VelocityBuilder();
    // builder.setVelocityBean(tableBean);
    // //
    // builder.setVmFileName(VM_FILE_NAME_TABLE_BASE);
    // String result = builder.getVmHtmlContent();
    //
    // // File a = new File("D:vm.html");
    // // FileOutputStream outfile = new FileOutputStream(a);
    // // byte[] b = result.getBytes();
    // // outfile.write(b);
    // // outfile.close();
    // }
}
