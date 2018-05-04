/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.type;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * ChinseFullWidthToHalfWidth.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * ChinseFullWidthToHalfWidth类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * ChinseFullWidthToHalfWidth类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 汉字全角转换为半角<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-4-17, cause, hou.manyuan@163.com, 新建<br>
 * 
 * @author :hou_m
 * @since :2011-4-17
 * @version:1.0
 */
public class ChinseFullWidthToHalfWidth {
    /**
     * 全角字符转换为半角字符.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.util.type<br>
     * 方法名:chinseFullWidthToHalfWidth方法.<br>
     * 
     * @author:hou.manyuan@163.com
     * @since :1.0:2011-4-18
     * @param content
     * @return
     */
    public static String chinseFullWidthToHalfWidth(String content) {
        char[] c = content.toCharArray();
        for(int i = 0; i < c.length; i++) {
            if(c[i] == 12288) {
                c[i] = (char) 32;
                continue;
            }
            if(c[i] > 65280 && c[i] < 65375)
                c[i] = (char) (c[i] - 65248);
        }
        return StringUtil.replace(new String(c), " ", "");
    }

    /**
     * 半角字符转换为全角字符.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.util.type<br>
     * 方法名:chinseHalfWidthToFullWidth方法.<br>
     * 
     * @author:hou.manyuan@163.com
     * @since :1.0:2011-4-18
     * @param content
     * @return
     */
    public static String chinseHalfWidthToFullWidth(String content) {
        // 半角转全角：
        char[] c = content.toCharArray();
        for(int i = 0; i < c.length; i++) {
            if(c[i] == 32) {
                c[i] = (char) 12288;
                continue;
            }
            if(c[i] < 127)
                c[i] = (char) (c[i] + 65248);
        }
        return StringUtil.replace(new String(c), " ", "");

    }
    public static void main(String[] args){
        String test="ｈ_——。、——--ｅ中　　国ｈ１２３ｅ。。he中  国h123e。。";
        
        System.out.println(chinseFullWidthToHalfWidth(test));
         
    }
}
