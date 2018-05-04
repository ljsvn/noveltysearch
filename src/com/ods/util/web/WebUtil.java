/**
 * 包名：com.ods.util.web
 * 类名：WebUtil
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.web;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

/**
 * 功能：Web页面帮助类 创建者: 10325431@qq.com 创建时间:2009-4-27 16:56:39 修改者 修改时间
 * 
 */
public class WebUtil {
    /**
     * 
     *整个系统使用的特殊保留字符.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.util.web<br>
     *方法名:getWebSystemSpecialCharacter方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2011-5-31
     *@return
     */
    public static List<String> getWebSystemSpecialCharacter(){
        List<String> specialCharacter=new ArrayList<String>();
        specialCharacter.add("'-’");
        return specialCharacter;
    }
    /**
     * 页面文件下载
     * 
     * @param response 动态响应客户端请示,控制发送给用户的信息,并将动态生成响应对象
     * @param file 下载的文件对象
     * @param destFileName 下载文件名称
     * @param charset 转码
     * @throws java.io.IOException 下载出错
     */
    public static void exportAttachment(HttpServletResponse response,
            File file, byte[] destFileName, String charset) throws IOException {
        BufferedInputStream bis = new BufferedInputStream(new FileInputStream(
                file));
        try { 
            exportAttachmentHead(response, file, destFileName, charset);
            exportAttachmentContent(response, bis);
        } finally {
            bis.close();
        }

    }

    /**
     * 下载文件头
     * 
     * @param response 动态响应客户端请示,控制发送给用户的信息,并将动态生成响应对象
     * @param file 下载文件对象
     * @param filename 下载文件名称
     * @param charset 转码
     */
    public static void exportAttachmentHead(HttpServletResponse response,
            File file, byte[] filename, String charset) {
        response.setContentType("APPLICATION/OCTET-STREAM;charset=" + charset);
        StringBuffer sb = new StringBuffer();
        sb.append("attachment; filename=\"");
        try {
            String s = new String(filename, "ISO-8859-1");
            sb.append(s);
        } catch(Exception e) {
            e.printStackTrace();
        }
        sb.append("\"");
        response.setHeader("Content-Disposition", sb.toString());
        response.setContentLength((int) file.length());
    }

    /**
     * 下载文件内容
     * 
     * @param response 动态响应客户端请示,控制发送给用户的信息,并将动态生成响应对象
     * @param content 下载内容
     * @throws java.io.IOException 转换出错
     */
    public static void exportAttachmentContent(HttpServletResponse response,
            InputStream content) throws IOException {
        byte[] buffer = new byte[64*1024];
        int length = 0;
        OutputStream os = response.getOutputStream();
        try {
            if(os != null) {
                while ((length = content.read(buffer, 0, buffer.length)) != -1) {
                    os.write(buffer, 0, length);
                }
            }
        } catch(Exception e) {
            // 捕获客户取消异常
            e.printStackTrace();
        }
    }

    /**
     * add '0' before day or month if which lenth is 1
     */
    public static String add02Date(String sDate) {
        if(null == sDate)
            return sDate;
        return sDate.length() == 1 ? "0" + sDate: sDate;
    }
}
