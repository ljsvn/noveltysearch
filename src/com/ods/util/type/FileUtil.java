/**
 * 包名：com.ods.util.type
 * 类名：FileUtil
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.type;

import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 * 功能：对java中的File进行2次封装 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */
public class FileUtil {
    public static String treeDate(char format) {
        StringBuffer sb = new StringBuffer();
        int year = Integer.valueOf(TimeUtil.toString(Calendar.getInstance(), "yyyy"));
        int cuyear = 2011;
        int addYear = 10;
        if(year >= 2021) {
            addYear = (year - cuyear) + 1;
        }
        switch (format) {
            case 'Y':
                for(int i = cuyear; i < cuyear + addYear; i++) {
                    if(i > cuyear) {
                        sb.append(",");
                    }
                    sb.append("{text: '" + i + "', checked: false, leaf: true}");
                }
                break;
            case 'Q':
                for(int i = cuyear; i < cuyear + addYear; i++) {
                    if(i > cuyear) {
                        sb.append(",");
                    }
                    sb.append("{text: '" + i + "', leaf: false, children: [");
                    for(int q = 1; q <= 4; q++) {
                        if(q > 1) {
                            sb.append(",");
                        }
                        sb.append("{text: '第" + q + "季度',year: '" + i + "',quarter: '" + q + "', checked: false, leaf: true}");
                    }
                    sb.append("]}");
                }
                break;
            case 'M':
                for(int i = cuyear; i < cuyear + addYear; i++) {
                    if(i > year) {
                        sb.append(",");
                    }
                    sb.append("{text: '" + i + "', leaf: false, children: [");
                    for(int m = 1; m <= 12; m++) {
                        if(m > 1) {
                            sb.append(",");
                        }
                        sb.append("{text: '" + m + "月',year: '" + i + "',month: '" + m + "', checked: false, leaf: true}");
                    }
                    sb.append("]}");
                }
                break;
        }
        return sb.toString();
    }

    /**
     * 根据路径创建指定的文件夹
     * 
     * @param path 文件夹路径
     */
    public static void touchPath(String path) {
        try {
            File filePath = new File(path);
            if(!filePath.exists()) {
                filePath.mkdirs();
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 文件备份操作，备份后的路径是：path+/当前时间(yyyy-dd-MM-HH-mm-ss)
     * 
     * @param path 要备份的路径
     * @return 已经备份的路径
     */
    public static String backup(String path) {
        final String dstPath = path + "." + TimeUtil.toString(System.currentTimeMillis(), "yyyy-dd-MM-HH-mm-ss");
        backup(path, dstPath);
        return dstPath;
    }

    /**
     * 文件备份操作
     * 
     * @param srcPath 文件元路径
     * @param dstPath 备份目标路径
     */
    public static void backup(final String srcPath, final String dstPath) {
        try {
            File srcFile = new File(srcPath);
            File dstFile = new File(dstPath);
            org.apache.avalon.excalibur.io.FileUtil.copyFile(srcFile, dstFile);
        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 文件拷贝
     * 
     * @param srcFile 要拷贝的文件
     * @param dstPath 拷贝的路径
     * @return =true 拷贝成功 =false 拷贝失败
     */
    public static boolean copy(File srcFile, final String dstPath,String uploadFileName) {
        try {
            File dstFile = new File(dstPath);
            if(!dstFile.exists()){
                FileUtil.touchPath(dstPath);
            }
            org.apache.avalon.excalibur.io.FileUtil.copyFile(srcFile, new File(dstPath+uploadFileName));
            return true;
        } catch(Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    /**
     * 文件拷贝
     * 
     * @param srcFile 要拷贝的文件
     * @param dstPath 拷贝的路径
     * @return =true 拷贝成功 =false 拷贝失败
     */
    public static boolean copy(File srcFile, final String dstPath) {
        try {
            File dstFile = new File(dstPath);
            org.apache.avalon.excalibur.io.FileUtil.copyFile(srcFile, dstFile);
            return true;
        } catch(Exception e) {
            e.printStackTrace();
            return false;
        }
    }
//    public static boolean copy(File srcFile, final String dstPath) {
//        try {
//            File dstFile = new File(dstPath);
//            if(!dstFile.exists()){
//                FileUtil.touchPath(dstPath);
//            }
//            org.apache.avalon.excalibur.io.FileUtil.copyFile(srcFile, new File(dstPath));
//            return true;
//        } catch(Exception e) {
//            e.printStackTrace();
//            return false;
//        }
//    }

    /**
     * 输入流拷贝文件
     * 
     * @param src 文件输入流
     * @param dstPath 文件输出路径
     * @return =true 拷贝成功 =false 拷贝失败
     */
    public static boolean copy(InputStream src, final String dstPath) {
        try {
            File dstFile = new File(dstPath);
            byte[] buffer = new byte[64 * 1024];
            int length = 0;
            OutputStream os = new FileOutputStream(dstFile);

            try {
                while ((length = src.read(buffer, 0, buffer.length)) != -1) {
                    os.write(buffer, 0, length);
                }
            } finally {
                close(os);
            }
            return true;
        } catch(Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /**
     * 文件添加后缀
     * 
     * @param path 文件(带路径)
     * @param suffix 后缀名称
     */
    public static void rename(String path, String suffix) {
        try {
            File file = new File(path);
            File dstFile = new File(path + "." + suffix);
            file.renameTo(dstFile);
        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 指定路径下的文件列表
     * 
     * @param fileInfo 文件信息对象
     * @param path 文件所在路径
     * @return 指定路径下的文件列表
     */
    public static String[] toFileList(FileInfo fileInfo, String path) {
        String[] listfilenames;
        File file = new File(path);
        listfilenames = file.list();
        if(null == listfilenames) {
            fileInfo.setTotalCount(0);
            return new String[] {};
        }

        fileInfo.setTotalCount(listfilenames.length);
        return listfilenames;
    }

    /**
     * 
     * 获取指定文件夹下的所有文件，包括子文件夹的文件名称.<br>
     * 工程名:odscati<br>
     * 包名:com.ods.util.type<br>
     * 方法名:toFileList方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2009-6-26
     * @param strPath ：指定文件夹路径
     * @param filelist ：获取的文件集合
     */
    public static void toFileNameList(String strPath, List<String> filelist) {
        File dir = new File(strPath);
        File[] files = dir.listFiles();
        if(files == null) {
            return;
        }
        for(int i = 0; i < files.length; i++) {
            if(files[i].isDirectory()) {
                toFileNameList(files[i].getAbsolutePath(), filelist);
            } else {
                // filelist.add(files[i].getAbsolutePath());
                filelist.add(files[i].getName());
            }
        }
    }
    /**
     * 
     * 获取指定文件夹下的所有文件，包括子文件夹的文件名称，含路径.<br>
     * 工程名:odscati<br>
     * 包名:com.ods.util.type<br>
     * 方法名:toFileList方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2009-6-26
     * @param strPath ：指定文件夹路径
     * @param filelist ：获取的文件集合
     */
    public static List<String> toFileNamePathList(String strPath) {
        List<String> filelist=new ArrayList<String>();
        File dir = new File(strPath);
        File[] files = dir.listFiles();
        if(files == null) {
            return filelist;
        }
        for(int i = 0; i < files.length; i++) {
            if(files[i].isDirectory()) {
                toFileNameList(files[i].getAbsolutePath(), filelist);
            } else {
                filelist.add(files[i].getAbsolutePath()); 
            }
        }
        return filelist;
    }/**
     * 
     * 获取指定文件夹下的所有文件，包括子文件夹的文件名称，含路径.<br>
     * 工程名:odscati<br>
     * 包名:com.ods.util.type<br>
     * 方法名:toFileList方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2009-6-26
     * @param strPath ：指定文件夹路径
     * @param filelist ：获取的文件集合
     */
    public static List<String> toFileNamePathList(String strPath,List<String> filelist,String includeFileSuffix) {
        File dir = new File(strPath);
        File[] files = dir.listFiles();
        if(files == null) {
            return filelist;
        }
        for(int i = 0; i < files.length; i++) {
            if(files[i].isDirectory()) {
                toFileNamePathList(files[i].getAbsolutePath(), filelist,includeFileSuffix);
            } else {
                if(files[i].getName().endsWith(includeFileSuffix)){
                    filelist.add(files[i].getAbsolutePath());
                } 
            }
        }
        return filelist;
    }

    /**
     * 关闭输入流
     * 
     * @param stream 输入流
     */
    public static void close(InputStream stream) {
        try {
            stream.close();
        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 关闭输出流
     * 
     * @param stream 输出流
     */
    public static void close(OutputStream stream) {
        try {
            stream.flush();
            stream.close();
        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 关闭读入文件流
     * 
     * @param reader 读入文件流
     */
    public static void close(Reader reader) {
        try {
            reader.close();
        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 关闭寫入文件流
     * 
     * @param writer 寫入文件流
     */
    public static void close(Writer writer) {
        try {
            writer.flush();
            writer.close();
        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 删除指定路径下的文件
     * 
     * @param dirPath 指定路径
     * @throws java.lang.Exception 删除失败错误
     */
    public static void deleteAllSubFiles1(String dirPath) throws Exception {
        try {
            File dir = new File(dirPath);
            if(dir.isDirectory()) {
                File[] subFiles = dir.listFiles();
                for(int i = 0; i < subFiles.length; i++) {
                    File subFile = subFiles[i];
                    try {
                        subFile.delete();
                    } catch(Exception e) {
                        throw e;
                    }
                }
            }
        } catch(Exception e) {
            throw e;
        }
    }
    
    public static void main(String[] args){
        deleteDirectory("D:\\aa",false);
    }
    /**
     * 
     *获取指定文件的后缀名称.<br>
     *工程名:odsonlineread<br>
     *包名:com.ods.util.type<br>
     *方法名:fileSuffix方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2012-2-11
     *@param fileName ：带路径的文件名
     *@return
     */
    public static String fileSuffix(String fileName){  
        return fileName.substring(fileName.lastIndexOf(".")+1);

    }
    /**
     * 文件是否存在错误
     * 
     * @param filePathname 指定的文件
     * @return =true 文件存在 false 文件不存在
     */
    public static boolean isFileExisted(String filePathname) {
        boolean existed;
        try {
            File f = new File(filePathname);
            existed = f.isFile();
        } catch(Exception e) {
            existed = false;
        }
        return existed;
    }

    /**
     * 去掉文件的路径，只留下文件名
     * 
     * @param pathname 带路径的文件名
     * @return 文件名称
     */
    public static String removePath(String pathname) {
        String fname = pathname;
        int index = pathname.lastIndexOf(File.separator);
        if(index >= 0) {
            fname = pathname.substring(index + 1);
        }
        return fname;
    }

    /**
     * 去掉文件名而只保留文件路径
     * 
     * @param pathname 带路径的文件名
     * @return 文件路径
     */
    public static String removeFileName(String pathname) {
        String fname = pathname;
        int index = pathname.lastIndexOf(File.separator);
        if(index >= 0) {
            fname = pathname.substring(0, index);
        }
        return fname;
    }

    /**
     * 根据路径删除指定的目录或文件，无论存在与否<br>
     * 工程名:odspsp<br>
     * 包名:com.ods.psp.action.knowledgebase.knowledgetype<br>
     * 方法名:DeleteFolder方法.<br>
     * 
     * @author:jiangwenqi
     * @since :1.0:2009-11-5
     * @param sPath 要删除的目录或文件
     * @return 删除成功返回 true，否则返回 false。
     */
    public static boolean DeleteFolder(String sPath) {
        boolean flag = false;
        File file = new File(sPath);
        // 判断目录或文件是否存在
        if(!file.exists()) { // 不存在返回 false
            return flag;
        } else {
            // 判断是否为文件
            if(file.isFile()) { // 为文件时调用删除文件方法
                return deleteFile(sPath);
            } else { // 为目录时调用删除目录方法
                return deleteDirectory(sPath, true);
            }
        }
    }

    /**
     * 删除单个文件.<br>
     * 工程名:odspsp<br>
     * 包名:com.ods.psp.action.knowledgebase.knowledgetype<br>
     * 方法名:deleteFile方法.<br>
     * 
     * @author:jiangwenqi
     * @since :1.0:2009-11-5
     * @param sPath 被删除文件的文件名
     * @return 单个文件删除成功返回true，否则返回false
     */
    public static boolean deleteFile(String sPath) {
        boolean flag = false;
        File file = new File(sPath);
        // 路径为文件且不为空则进行删除
        if(file.isFile() && file.exists()) {
            file.delete();
            flag = true;
        }
        return flag;
    }

    /**
     * 删除目录（文件夹）以及目录下的文件 工程名:odspsp<br>
     * 包名:com.ods.psp.action.knowledgebase.knowledgetype<br>
     * 方法名:deleteDirectory方法.<br>
     * 
     * @author:jiangwenqi
     * @since :1.0:2009-11-5
     * @param sPath 被删除目录的文件路径
     * @return 目录删除成功返回true，否则返回false
     */
    public static boolean deleteDirectory(String sPath, boolean selfFlag) {
        // 如果sPath不以文件分隔符结尾，自动添加文件分隔符
        if(!sPath.endsWith(File.separator)) {
            sPath = sPath + File.separator;
        }
        File dirFile = new File(sPath);
        // 如果dir对应的文件不存在，或者不是一个目录，则退出
        if(!dirFile.exists() || !dirFile.isDirectory()) {
            return false;
        }
        boolean flag = true;
        // 删除文件夹下的所有文件(包括子目录)
        File[] files = dirFile.listFiles();
        for(int i = 0; i < files.length; i++) {
            // 删除子文件
            if(files[i].isFile()) {
                flag = deleteFile(files[i].getAbsolutePath());
                if(!flag)
                    break;
            } // 删除子目录
            else {
                flag = deleteDirectory(files[i].getAbsolutePath(), true);
                if(!flag)
                    break;
            }
        }
        if(!flag)
            return false;
        if(selfFlag) {// 删除当前目录
            if(dirFile.delete()) {
                return true;
            } else {
                return false;
            }
        } else {
            return true;
        }
    }

    public static void writeUTFFile(String fileName, String fileBody) throws Throwable {
        FileOutputStream fos = null;
        OutputStreamWriter osw = null;
        try {
            File fileNameBefore = new File(fileName);
            if(fileNameBefore.exists()) {
                fileNameBefore.delete();
            }
            fos = new FileOutputStream(fileName);
            osw = new OutputStreamWriter(fos, "UTF-8");
            osw.write(fileBody);
        } finally {
            close(osw);
            close(fos);
        }

    }

    class ExtensionFileFilter implements FileFilter {

        private String extension;

        public ExtensionFileFilter(String extension) {
            this.extension = extension;
        }

        public boolean accept(File file) {
            if(file.isDirectory()) {
                return false;
            }
            String name = file.getName();// find the last
            int index = name.lastIndexOf(".");
            if(index == -1) {
                return false;
            } else if(index == name.length() - 1) {
                return false;
            } else {
                return this.extension.equals(name.substring(index + 1));
            }
        }
    }

}
