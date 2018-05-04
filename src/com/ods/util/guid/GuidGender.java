/**
 *copyright(C)2010
 *陕西Ods信息技术软件有限公司软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.guid;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Random;

/**
 *<b>系统名称:</b><b> 南平广电呼叫中心系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 *<b>文件名:</b><br>
 * 
 *GuidGender.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 *GuidGender类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 *GuidGender类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 *Guid的生成<br>
 * 
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因， 姓名， 更新内容<br>
 *2010-4-14, cause, 10325431@qq.com, 新建<br>
 * 
 *@author :10325431@qq.com
 *@since :2010-4-14
 *@version:1.0
 */
public class GuidGender {
    public String valueBeforeMD5 = "";

    public String valueAfterMD5 = "";

    private static Random myRand;

    private static SecureRandom mySecureRand;

    private static String s_id;

    private static final int PAD_BELOW = 0x10;

    private static final int TWO_BYTES = 0xFF;

    /*
     * Static block to take care of one time secureRandom seed. It takes a few
     * seconds to initialize SecureRandom. You might want to consider removing
     * this static block or replacing it with a "time since first loaded" seed
     * to reduce this time. This block will run only once per JVM instance.
     */

    static {
        mySecureRand = new SecureRandom();
        long secureInitializer = mySecureRand.nextLong();
        myRand = new Random(secureInitializer);
        try {
            s_id = InetAddress.getLocalHost().toString();
        } catch(UnknownHostException e) {
            e.printStackTrace();
        }

    }

    /*
     * Default constructor. With no specification of security option, this
     * constructor defaults to lower security, high performance.
     */
    public GuidGender() {
        getRandomGUID(false);
    }

    /*
     * Constructor with security option. Setting secure true enables each random
     * number generated to be cryptographically strong. Secure false defaults to
     * the standard Random function seeded with a single cryptographically
     * strong random number.
     */
    public GuidGender(boolean secure) {
        getRandomGUID(secure);
    }

    /*
     * Method to generate the random GUID
     */
    private void getRandomGUID(boolean secure) {
        MessageDigest md5 = null;
        StringBuffer sbValueBeforeMD5 = new StringBuffer(128);

        try {
            md5 = MessageDigest.getInstance("MD5");
        } catch(NoSuchAlgorithmException e) {
            e.printStackTrace();
        }

        try {
            long time = System.currentTimeMillis();
            long rand = 0;

            if(secure) {
                rand = mySecureRand.nextLong();
            } else {
                rand = myRand.nextLong();
            }
            sbValueBeforeMD5.append(s_id);
            sbValueBeforeMD5.append(":");
            sbValueBeforeMD5.append(Long.toString(time));
            sbValueBeforeMD5.append(":");
            sbValueBeforeMD5.append(Long.toString(rand));

            valueBeforeMD5 = sbValueBeforeMD5.toString();
            md5.update(valueBeforeMD5.getBytes());

            byte[] array = md5.digest();
            StringBuffer sb = new StringBuffer(32);
            for(int j = 0; j < array.length; ++j) {
                int b = array[j] & TWO_BYTES;
                if(b < PAD_BELOW)
                    sb.append('0');
                sb.append(Integer.toHexString(b));
            }

            valueAfterMD5 = sb.toString();

        } catch(Exception e) {
            e.printStackTrace();
        }
    }

    /*
     * Convert to the standard format for GUID (Useful for SQL Server
     * UniqueIdentifiers, etc.) Example: C2FEEEAC-CFCD-11D1-8B05-00600806D9B6
     */
    public String toString() {
        String raw = valueAfterMD5.toUpperCase();
        StringBuffer sb = new StringBuffer(64);
        sb.append(raw.substring(0, 8));
        sb.append("-");
        sb.append(raw.substring(8, 12));
        sb.append("-");
        sb.append(raw.substring(12, 16));
        sb.append("-");
        sb.append(raw.substring(16, 20));
        sb.append("-");
        sb.append(raw.substring(20));

        return sb.toString();
    }
    
    public static void main(String[] args){
        GuidGender gender=new GuidGender(true);
        System.out.println("Guid="+gender.toString());
    }
}
