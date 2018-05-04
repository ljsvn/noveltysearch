/**
 * 包名：com.ods.util.filter
 * 类名：GZIPResponseWrapper
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.filter;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
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
 *Java EE的ServletOutputStream的子类
 *
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>文件名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *GZIPResponseStream.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *GZIPResponseStream类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *GZIPResponseStream类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *用来输出gzip的装饰类<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，              更新内容<br>
 *2009-8-18,    99999,    qq911110yufei@gmail.com,   新建<br>
 *
 *@author :qq911110yufei@gmail.com
 *@since  :2009-8-18
 *@version:1.0
 */
public class GZIPResponseStream extends ServletOutputStream {
    /**
    *属性名：baos、类型：ByteArrayOutputStream、作成日：2009-8-18.<br>
    *含义：字节输出流
    */
    protected ByteArrayOutputStream baos = null;
    /**
    *属性名：gzipstream、类型：GZIPOutputStream、作成日：2009-8-18.<br>
    *含义：GZIPOutputStream输出流
    */
    protected GZIPOutputStream gzipstream = null;
    /**
    *属性名：closed、类型：boolean、作成日：2009-8-18.<br>
    *含义：是否关闭流
    */
    protected boolean closed = false;
    /**
    *属性名：response、类型：HttpServletResponse、作成日：2009-8-18.<br>
    *含义：HttpServletResponse
    */
    protected HttpServletResponse response = null;
    /**
    *属性名：output、类型：ServletOutputStream、作成日：2009-8-18.<br>
    *含义：ServletOutputStream
    */
    protected ServletOutputStream output = null;

    /**
     * 
     *构造函数
     *@param response HttpServletResponse对象
     *@throws IOException 构造出错
     */
    public GZIPResponseStream(HttpServletResponse response) throws IOException {
        super();
        closed = false;
        this.response = response;
        this.output = response.getOutputStream();
        baos = new ByteArrayOutputStream();
        gzipstream = new GZIPOutputStream(baos);
    }

    /**
     * 
     *是否已经关闭流.<br>
     *工程名:<br>
     *包名:com.ods.util.filter<br>
     *方法名:close方法.<br>
     *
     *{@inheritDoc}
     *author :qq911110yufei@gmail.com
     *@see java.io.OutputStream#close()
     *@throws IOException 表示流已经关闭
     */
    public void close() throws IOException {
        if (closed) {
          throw new IOException("This output stream has already been closed");
        }
        gzipstream.finish();
    
        byte[] bytes = baos.toByteArray();
    
    
        response.addHeader(Constants.HEADER_CONTENT_LENGTH, Integer.toString(bytes.length)); 
        response.addHeader(Constants.HEADER_CONTENT_ENCODING, "gzip");
        output.write(bytes);
        output.flush();
        output.close();
        closed = true;
    }
    
    /**
     * 
     *清除流.<br>
     *工程名:<br>
     *包名:com.ods.util.filter<br>
     *方法名:flush方法.<br>
     *
     *{@inheritDoc}
     *author :qq911110yufei@gmail.com
     *@see java.io.OutputStream#flush()
     *@throws IOException 无法清除一个已经关闭的流
     */
    public void flush() throws IOException {
        if (closed) {
          throw new IOException("Cannot flush a closed output stream");
        }
        gzipstream.flush();
    }
    
    /**
     * 
     *输出流.<br>
     *工程名:<br>
     *包名:com.ods.util.filter<br>
     *方法名:write方法.<br>
     *
     *{@inheritDoc}
     *author :qq911110yufei@gmail.com
     *@see java.io.OutputStream#write(int)
     *@param b 字节大小
     *@throws IOException 无法输出一个已经关闭的流
     */
    public void write(int b) throws IOException {
        if (closed) {
          throw new IOException("Cannot write to a closed output stream");
        }
        gzipstream.write((byte)b);
    }
    
    /**
     * 
     *输出流.<br>
     *工程名:<br>
     *包名:com.ods.util.filter<br>
     *方法名:write方法.<br>
     *
     *{@inheritDoc}
     *author :qq911110yufei@gmail.com
     *@see java.io.OutputStream#write(byte[])
     *@param b 字节大小
     *@throws IOException 无法输出一个已经关闭的流
     */
    public void write(byte b[]) throws IOException {
        write(b, 0, b.length);
    }
    
    /**
     * 
     *输出流.<br>
     *工程名:<br>
     *包名:com.ods.util.filter<br>
     *方法名:write方法.<br>
     *
     *{@inheritDoc}
     *author :qq911110yufei@gmail.com
     *@see java.io.OutputStream#write(byte[], int, int)
     *@param b 字节大小
     *@param off 偏移量
     *@param len 长度
     *@throws IOException 无法输出一个已经关闭的流
     */
    public void write(byte b[], int off, int len) throws IOException {
        if (closed) {
          throw new IOException("Cannot write to a closed output stream");
        }
        gzipstream.write(b, off, len);
    }
    
    /**
     * 
     *是否关闭了流.<br>
     *工程名:<br>
     *包名:com.ods.util.filter<br>
     *方法名:closed方法.<br>
     *
     *@author:qq911110yufei@gmail.com
     *@since :1.0:2009-8-18
     *@return 是否关闭了流
     */
    public boolean closed() {
        return (this.closed);
    }
    
    /**
     * 
     *重置.<br>
     *工程名:<br>
     *包名:com.ods.util.filter<br>
     *方法名:reset方法.<br>
     *
     *@author:qq911110yufei@gmail.com
     *@since :1.0:2009-8-18
     */
    public void reset() {
        //noop
    }
}
