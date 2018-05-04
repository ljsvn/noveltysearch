/**
 * 包名：com.ods.util.log
 * 类名：LogUtil
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.log;

import org.apache.log4j.Logger;

/**
 * 功能：log日志输出帮助类 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */
public class LogUtil {

    /**
     * 获取Log4j对象传入的参数
     */
    public static final String LOG_NAME = "LogUtil.FileLog";

    /**
     *属性名：logger、类型：Logger、作成日：2010-6-17.<br>
     *含义：日志输出对象
     */
    private static Logger logger = Logger.getLogger(LOG_NAME);

    /**
     * log信息错误输出
     * 
     * @param e 错误信息
     */
    public static void writeLog(Throwable e) {
        try {
            e.printStackTrace();
            if(org.apache.log4j.Level.DEBUG == logger.getLevel()) {
                logger.warn(e.toString());
            } else if(org.apache.log4j.Level.WARN == logger.getLevel()) {
                logger.info(e.toString());
            } else if(org.apache.log4j.Level.INFO == logger.getLevel()) {
                logger.info(e.toString());
            } else if(org.apache.log4j.Level.ERROR == logger.getLevel()) {
                logger.error(e.toString());
            } else if(org.apache.log4j.Level.FATAL == logger.getLevel()) {
                logger.fatal(e.toString());
            }
            e.printStackTrace();
        } catch(Exception ex) {
            ex.printStackTrace();
        }
    }

}
