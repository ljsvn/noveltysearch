/**
 *copyright(C)2012
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.flexpaper;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import com.artofsolving.jodconverter.DocumentConverter;
import com.artofsolving.jodconverter.openoffice.connection.OpenOfficeConnection;
import com.artofsolving.jodconverter.openoffice.connection.SocketOpenOfficeConnection;
import com.artofsolving.jodconverter.openoffice.converter.OpenOfficeDocumentConverter;
import com.ods.util.config.bean.xml.Product;
import com.ods.util.config.bean.xml.ProductsDataCache;
import com.ods.util.type.FileUtil;
import com.ods.util.type.NumberUtil;
import com.ods.util.type.StringUtil;

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * OnLineReadUtil.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * OnLineReadUtil类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * OnLineReadUtil类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 实现把上传的文件转换为swf，以供flexPaper调用<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2012-2-11, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :10325431@qq.com
 * @since :2012-2-11
 * @version:1.0
 */
public class OnLineReadUtil {
    // 要转换为pdf文件的集合
    private static List<String> toPdfSuffixList = new ArrayList<String>(10);

    // 要转换为swf文件的集合
    private static List<String> toSwfSuffixList = new ArrayList<String>(10);
    // openOffice启动端口
    private static String openofficePort="18081";
    // 转换swf程序路径
    private static String toSwfPath="C:/SWFTools/";
    static {
        toPdfSuffixList.add("doc");
        toPdfSuffixList.add("docx");
        toPdfSuffixList.add("xls");
        toPdfSuffixList.add("xlsx");
        toPdfSuffixList.add("ppt");
        toPdfSuffixList.add("pptx");
        // ///////////////////////////////////
        // gif2swf.exe jpeg2swf.exe pdf2swf.exe png2swf.exe
        toSwfSuffixList.add("pdf");
        toSwfSuffixList.add("gif");
        toSwfSuffixList.add("jpeg");
        toSwfSuffixList.add("jpg");
        toSwfSuffixList.add("png");
        
        //获取配置的端口和路径
        ProductsDataCache productsDataCache=ProductsDataCache.getInstance();
        List<Product> productList=productsDataCache.getProducts().getProductList();
        for(Product product : productList) {
            if(StringUtil.equals("openofficePort", product.getName())){
                openofficePort=product.getValue();
            }
            if(StringUtil.equals("toSwfPath", product.getName())){
                toSwfPath=product.getValue();
            }
        }
    }

    /**
     * 把文件转换为swf.<br>
     * 工程名:odsonlineread<br>
     * 包名:com.ods.util.flexpaper<br>
     * 方法名:swfFileConvert方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2012-2-11
     * @param soureFilePath：源文件路径
     * @param soureFileName：源文件名称
     * @return
     */
    public synchronized static boolean swfFileConvert(String soureFilePath, String soureFileName) {
        try {
            // 源文件不存在则返回
            if(!FileUtil.isFileExisted(soureFilePath + File.separator + soureFileName)) {
                return false;
            }

            // 把文件转换为pdf
            // 获取文件名后缀，如果是office系列文件就转换为pdf
            String fileSuffix = FileUtil.fileSuffix(soureFileName);
            if(toPdfSuffixList.contains(fileSuffix.toLowerCase())) {// 进行pdf转换
                fielToPdf(soureFilePath, soureFileName);
                fileSuffix = "pdf";// 转换成功后就把该文件的后缀值设置为pdf
            }
            // 把对应的pdf文件转换为swf
            if(toSwfSuffixList.contains(fileSuffix)) {
                if(StringUtil.equals(fileSuffix.toLowerCase(), "pdf")) {
                    pdfToSwf(soureFilePath, soureFileName);
                } else if(StringUtil.equals(fileSuffix.toLowerCase(), "png")) {
                    pngToSwf(soureFilePath, soureFileName);
                } else if(StringUtil.equals(fileSuffix.toLowerCase(), "jpg") || StringUtil.equals(fileSuffix.toLowerCase(),
                        "jpeg")) {
                    jpgToSwf(soureFilePath, soureFileName);
                } else if(StringUtil.equals(fileSuffix.toLowerCase(), "gif")) {
                    gifToSwf(soureFilePath, soureFileName);
                }
            } else {
                return false;
            }

        } catch(Throwable e) {
            e.printStackTrace();
            return false;
        }

        return true;
    }

    /**
     * 把pdf文件转换为swf文件.<br>
     * 工程名:odsonlineread<br>
     * 包名:com.ods.util.flexpaper<br>
     * 方法名:pdfToSwf方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2012-2-11
     * @param soureFilePath
     * @param soureFileName
     * @throws Throwable
     */
    private static void pdfToSwf(String soureFilePath, String soureFileName) throws Throwable {
        // 调用pdf2swf命令进行转换
        String pathFileName = soureFilePath + File.separator + soureFileName;
        String command = toSwfPath+"pdf2swf.exe  -t \"" + pathFileName + ".pdf\" -T 9  -o " + pathFileName + ".swf\"";
        fileToSwf(soureFilePath, soureFileName, command);
    }

    private static void gifToSwf(String soureFilePath, String soureFileName) throws Throwable {
        // 调用pdf2swf命令进行转换
        String pathFileName = soureFilePath + File.separator + soureFileName;
        String command = toSwfPath+"gif2swf.exe  \"" + pathFileName + "\" -T 9 -o " + pathFileName + ".swf\"";
        fileToSwf(soureFilePath, soureFileName, command);
    }

    private static void pngToSwf(String soureFilePath, String soureFileName) throws Throwable {
        // 调用pdf2swf命令进行转换
        String pathFileName = soureFilePath + File.separator + soureFileName;
        String command = toSwfPath+"png2swf.exe  \"" + pathFileName + "\" -T 9 -o " + pathFileName + ".swf\"";
        fileToSwf(soureFilePath, soureFileName, command);
    }

    private static void jpgToSwf(String soureFilePath, String soureFileName) throws Throwable {
        // 调用pdf2swf命令进行转换
        String pathFileName = soureFilePath + File.separator + soureFileName;
        String command = toSwfPath+"jpeg2swf.exe  \"" + pathFileName + "\" -T 9 -o " + pathFileName + ".swf\"";
        fileToSwf(soureFilePath, soureFileName, command);
    }

    /**
     * 把文件转换为swf.<br>
     * 工程名:odsonlineread<br>
     * 包名:com.ods.util.flexpaper<br>
     * 方法名:fileToSwf方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2012-2-11
     * @param soureFilePath
     * @param soureFileName
     * @param command
     * @throws Throwable
     */
    private static void fileToSwf(String soureFilePath, String soureFileName, String command) throws Throwable {
        Process process = Runtime.getRuntime().exec(command); // 调用外部程序
        final InputStream is1 = process.getInputStream();
        new Thread(new Runnable() {
            public void run() {
                BufferedReader br = new BufferedReader(new InputStreamReader(is1));
                try {
                    while (br.readLine() != null)
                        ;
                } catch(IOException e) {
                    e.printStackTrace();
                }
            }
        }).start(); // 启动单独的线程来清空process.getInputStream()的缓冲区
        process.waitFor();
    }

    /**
     * 把相关文件转换为pdf.<br>
     * 工程名:odsonlineread<br>
     * 包名:com.ods.util.flexpaper<br>
     * 方法名:fielToPdf方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2012-2-11
     * @param soureFilePath
     * @param soureFileName
     * @throws Throwable
     */
    private static void fielToPdf(String soureFilePath, String soureFileName) throws Throwable {
        // 连接 OpenOffice运行的端口
        OpenOfficeConnection connection = new SocketOpenOfficeConnection(NumberUtil.toInt(openofficePort,18081));
        try {
            connection.connect();
            // 进行转换
            DocumentConverter converter = new OpenOfficeDocumentConverter(connection);
            converter.convert(new File(soureFilePath + File.separator + soureFileName), new File(
                    soureFilePath + File.separator + soureFileName + ".pdf"));
        } finally {
            // close the connection
            if(connection != null) {
                connection.disconnect();
                connection = null;
            }
        }
    }

    public static void main(String[] args) throws IOException {
//        List<String> filelist = FileUtil.toFileNamePathList("e:/test");
//        for(Iterator iterator = filelist.iterator(); iterator.hasNext();) {
//            String fileName = (String) iterator.next();
//            File f = new File(fileName);
//            swfFileConvert("e:/test", f.getName());
//        }
        swfFileConvert("C:/homecareFileImport/00000000000000000000000000000000/20120217102746", "工作计划.docx");
    }
}
