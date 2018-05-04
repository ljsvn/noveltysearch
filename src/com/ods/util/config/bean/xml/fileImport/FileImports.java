/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.config.bean.xml.fileImport;

import java.util.ArrayList;
import java.util.List;
 

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * FileImports.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * FileImports类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * FileImports类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 文件导入类配置文件JavaBean集合<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-6-3, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :10325431@qq.com
 * @since :2011-6-3
 * @version:1.0
 */
public class FileImports {

    private List<FileImport> fileImportList;

    /**
     * fileImportList的获取.
     * 
     * @return fileImportList值返回.
     */
    public List<FileImport> getFileImportList() {
        return fileImportList;
    }

    /**
     * fileImportList的值设定
     * 
     * @param fileImportList 设定fileImportList的值.
     */
    public void setFileImportList(List<FileImport> fileImportList) {
        this.fileImportList = fileImportList;
    }

    public void addFileImportList(FileImport fileImport) {
        if(fileImportList == null) {
            fileImportList = new ArrayList<FileImport>();
        }
        fileImportList.add(fileImport);
    }
}
