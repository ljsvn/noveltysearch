/**
*copyright(C)2011
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.util.action.struts2;

import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

import com.ods.util.type.StringUtil;

/**
 *<b>系统名称:</b><b>
 *武警遵义支队按纲建队系统
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 *<b>文件名:</b><br>
 *
 *StringConvert.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *StringConvert类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *StringConvert类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *TODO:StringConvert类的概要描述<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2011-6-6,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :10325431@qq.com
 *@since  :2011-6-6
 *@version:1.0
 */
public class StringConvert extends StrutsTypeConverter {  
  
    @SuppressWarnings("rawtypes")
    @Override  
    public Object convertFromString(Map context, String[] values, Class toClass) {  
        if (String.class == toClass&&values!=null&&values.length>0) {   
            return values[0].replaceAll("'","‘");
        }  
        return "";  
    }  
  
    @Override  
    public String convertToString(Map context, Object o) {
        try {
            if(o!=null){
                String[] os = (String[])o;
                if(os!=null&&os.length>0){ 
                    return os[0].trim().replaceAll("'","‘"); 
                }   
            }  
        } catch(Exception e) { 
        }
        return  "";
       
    }  
}
