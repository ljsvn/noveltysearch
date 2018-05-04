/**
 * 包名：com.ods.util.encrypt
 * 类名：MD5Encrypt
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.encrypt;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 功能：把字符串进行MD5加密后在保存到持久层中
 * 创建者: 10325431@qq.com
 * 修改者                   修改时间
 * 
 */
public class MD5Encrypt {

    /**
     * 对字符串进行MD5加密处理
     * @param str 需要加密的字符串
     * @return 加密后的字符串 
     */
    public static String MD5(String str) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] md5 = md.digest(str.getBytes());
            StringBuffer sb = new StringBuffer();
            String part = null;
            for (int i = 0; i < md5.length; i++) {
                part = Integer.toHexString(md5[i] & 0xFF);
                if (part.length() == 1) {
                    part = "0" + part;
                }
                sb.append(part);
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException ex) {
            ex.printStackTrace();
            return str;
        }
    }
    public static void main(String[] args) {
        String s=MD5("adminadmin");
        System.out.println("s1111="+s);
    }
}
