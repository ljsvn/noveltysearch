/**
 * 包名：com.ods.util.pwd
 * 类名：PwdGenerator
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.pwd;

import java.util.Random;

/**
 * 功能：随机数生成
 * 创建者: 10325431@qq.com
 * 修改者                   修改时间
 * 
 */
public class PwdGenerator {

    /**
     * 包含0的可能数字随机数值
     */
    public static String KEY1 = "0123456789";
    /**
     * 不包含0的可能数字随机数值
     */
    public static String KEY11 = "123456789";
    /**
     * 可能随机数的大写字母
     */
    public static String KEY2 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    /**
     * 可能随机数的小写字母
     */
    public static String KEY3 = "abcdefghijklmnopqrstuvwxyz";
    /**
     * 随机数种子
     */
    static Random seed;


    static {
        seed = new Random(System.currentTimeMillis());
    }

    /**
     * 按照指定长度产生随机数，随机数可能含有数字和大小写字母
     * @param length
     * @return 随即数
     */
    public static String getRandomValue(int length) {
        return _getPassword(KEY1, length);
    }

    /**
     * 按照指定长度和键值产生随机数
     * @param key 键值
     * @param length 指定长度
     * @return 随机字符串
     */
    public static String getPassword(String key, int length) {
        return _getPassword(key, length);
    }

    /**
     * 按照指定长度和键值产生随机数
     * @param key 键值
     * @param length 指定长度
     * @return 随机字符串
     */
    private static String _getPassword(String key, int length) {
        StringBuffer sb = new StringBuffer();

        for (int i = 0; i < length; i++) {
            sb.append(key.charAt((int) (Math.random() * key.length())));
        }
        return sb.toString();
    }

    /**
     * 在一定范围内获取随机数
     * @param range 指定的范围
     * @return 随机数值
     */
    public static int getRandom(int range) {
        return (int) (seed.nextDouble() * range);
    }
}
