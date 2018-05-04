/**
 * 包名：com.ods.util.filter
 * 类名：GZIPResponseWrapper
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.filter;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 * 
 *<b>系统名称:</b><b>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>子系统名：</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *Java EE的HttpServletResponseWrapper的子类
 *
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>文件名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *GZIPResponseWrapper.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *GZIPResponseWrapper类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *GZIPResponseWrapper类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *用来输出gzip的装饰类
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，              更新内容<br>
 *2009-8-18,    99999,    qq911110yufei@gmail.com,   新建<br>
 *
 *@author :qq911110yufei@gmail.com
 *@since  :2009-8-18
 *@version:1.0
 */
public class GZIPResponseWrapper extends HttpServletResponseWrapper {
  /**
  *属性名：origResponse、类型：HttpServletResponse、作成日：2009-8-18.<br>
  *含义：HttpServletResponse对象
  */
  protected HttpServletResponse origResponse = null;//
  /**
  *属性名：stream、类型：ServletOutputStream、作成日：2009-8-18.<br>
  *含义：Servlet输出流
  */
  protected ServletOutputStream stream = null;//
  /**
  *属性名：writer、类型：PrintWriter、作成日：2009-8-18.<br>
  *含义：字符输出流
  */
  protected PrintWriter writer = null;//

  /**
   * 
   *构造函数
   *@param response HttpServletResponse对象
   */
  public GZIPResponseWrapper(HttpServletResponse response) {
    super(response);
    origResponse = response;
  }

  /**
   * 
   *创建GZIPResponseStream对象.<br>
   *工程名:<br>
   *包名:com.ods.util.filter<br>
   *方法名:createOutputStream方法.<br>
   *
   *@author:qq911110yufei@gmail.com
   *@since :1.0:2009-8-18
   *@return GZIPResponseStream字节输出流
   *@throws IOException 创建GZIPResponseStream对象出错
   */
  public ServletOutputStream createOutputStream() throws IOException {
    return (new GZIPResponseStream(origResponse));
  }
  
  /**
   * 
   *关闭输出流对象.<br>
   *工程名:<br>
   *包名:com.ods.util.filter<br>
   *方法名:finishResponse方法.<br>
   *
   *@author:qq911110yufei@gmail.com
   *@since :1.0:2009-8-18
   */
  public void finishResponse() {
    try {
      if (writer != null) {
        writer.close();
      } else {
        if (stream != null) {
          stream.close();
        }
      }
    } catch (Exception e) {}
  }

  /**
   * 
   *.<br>
   *工程名:<br>
   *包名:com.ods.util.filter<br>
   *方法名:flushBuffer方法.<br>
   *
   *{@inheritDoc}
   *author :qq911110yufei@gmail.com
   *@see javax.servlet.ServletResponseWrapper#flushBuffer()
   *@throws IOException
   */
  public void flushBuffer() throws IOException {
    stream.flush();
  }

  /**
   * 
   *返回字节输出流.<br>
   *工程名:<br>
   *包名:com.ods.util.filter<br>
   *方法名:getOutputStream方法.<br>
   *
   *{@inheritDoc}
   *author :qq911110yufei@gmail.com
   *@see javax.servlet.ServletResponseWrapper#getOutputStream()
   *@return 返回字节输出流
   *@throws IOException 返回字节输出流出错
   */
  public ServletOutputStream getOutputStream() throws IOException {
    if (writer != null) {
      throw new IllegalStateException("getWriter() has already been called!");
    }

    if (stream == null)
      stream = createOutputStream();
    return (stream);
  }

  /**
   * 
   *返回字符输出流.<br>
   *工程名:<br>
   *包名:com.ods.util.filter<br>
   *方法名:getWriter方法.<br>
   *
   *{@inheritDoc}
   *author :qq911110yufei@gmail.com
   *@see javax.servlet.ServletResponseWrapper#getWriter()
   *@return 返回字符输出流
   *@throws IOException 返回字符输出流出错
   */
  public PrintWriter getWriter() throws IOException {
    if (writer != null) {
      return (writer);
    }

    if (stream != null) {
      throw new IllegalStateException("getOutputStream() has already been called!");
    }

   stream = createOutputStream();
   writer = new PrintWriter(new OutputStreamWriter(stream, "UTF-8"));
   return (writer);
  }
}
