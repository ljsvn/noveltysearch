/**
 *copyright(C)2010
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.config.bean.xml.fileImport;

import java.io.File;

import org.apache.commons.digester.Digester;
import org.apache.commons.digester.xmlrules.DigesterLoader;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * MenuDataCache.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * MenuDataCache类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * MenuDataCache类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 产品全局配置解析缓存实现类<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2010-12-30, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :pu_xiaolong
 * @since :2010-12-30
 * @version:1.0
 */
public class FileImportsDataCache {
    private FileImports fileImports;

    private static FileImportsDataCache cache;

   

    /**
     *fileImports的获取.
     *@return fileImports值返回.
     */
    public FileImports getFileImports() {
        return fileImports;
    }

    /**
     *fileImports的值设定
     *@param fileImports 设定fileImports的值.
     */
    public void setFileImports(FileImports fileImports) {
        this.fileImports = fileImports;
    }

    public synchronized static FileImportsDataCache getInstance() {
        if(cache == null) {
            cache = new FileImportsDataCache();
            init();
        }
        return cache;
    }

    private static void init() {
        try {
            String allFilePath = java.net.URLDecoder.decode(FileImportsDataCache.class.getResource("/").getPath() + "odsconfig/fileimport/", "UTF-8");
            allFilePath = allFilePath.replace("%20", " ");
            if(allFilePath.startsWith("/")) {
                allFilePath = allFilePath.substring(1);
            }
            if(allFilePath.startsWith("/")) {
                allFilePath = allFilePath.substring(1);
            }
            File rule = new File(allFilePath + "file_import_config-rule.xml");
            Digester digester = DigesterLoader.createDigester(rule.toURI().toURL());
            File filePath = new File(allFilePath + "file_import_config.xml");
            FileImports fileImports = (FileImports) digester.parse(filePath);
            cache.setFileImports(fileImports);
        } catch(Exception e) {
            e.printStackTrace();
            cache.setFileImports(null);
        }
    }
}
