/**
 *copyright(C)2012
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.type;
 
import java.util.Calendar; 

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * IDCard.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * IDCard类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * IDCard类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 根据身份证号码算出性别，年龄或提取出出生日期<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2012-4-10, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :10325431@qq.com
 * @since :2012-4-10
 * @version:1.0
 */
public class IDCard {
    public IDCard() {

    }

    /**
     * 把15位的身份证转化为18位.<br>
     * 工程名:homecarecallcenterNew<br>
     * 包名:com.ods.util.type<br>
     * 方法名:getIDCard_18bit方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2012-4-10
     * @param id
     * @return
     */
    private static final String getIDCard_18bit(String id) {
        // 若是15位，则转换成18位；否则直接返回ID
        if(15 == id.length()) {
            final int[] W = { 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2, 1 };
            final String[] A = { "1", "0", "X", "9", "8", "7", "6", "5", "4", "3", "2" };
            int i, j, s = 0;
            String newid;
            newid = id;
            newid = newid.substring(0, 6) + "19" + newid.substring(6, id.length());
            for(i = 0; i < newid.length(); i++) {

                j = Integer.parseInt(newid.substring(i, i + 1)) * W[i];
                s = s + j;
            }
            s = s % 11;
            newid = newid + A[s];

            return newid;
        } else {
            return id;
        }

    }

    /**
     * 
     * 根据身份证号码获取他的出生日期.<br>
     * 工程名:homecarecallcenterNew<br>
     * 包名:com.ods.util.type<br>
     * 方法名:getBirthDateFromCard方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2012-4-10
     * @param cardNumber
     * @return
     */
    public static String getBirthDateFromCard(String cardNumber) {
        // 如果身份证15位则将其转化为18位
        if(cardNumber.length() == 15){
            cardNumber = getIDCard_18bit(cardNumber); 
        }
        String card = cardNumber.trim();
        String year;
        String month;
        String day;
        if(card.length() == 18) { // 处理18位身份证
            year = card.substring(6, 10);
            month = card.substring(10, 12);
            day = card.substring(12, 14);
        } else { // 处理非18位身份证
            year = card.substring(6, 8);
            month = card.substring(8, 10);
            day = card.substring(10, 12);
            year = "19" + year;
        }
        if(month.length() == 1) {
            month = "0" + month; // 补足两位
        }
        if(day.length() == 1) {
            day = "0" + day; // 补足两位
        }
        return year + "-" + month + "-" + day;
    }

    /**
     * 根据身份证号码获取到他的性别.<br>
     * 工程名:homecarecallcenterNew<br>
     * 包名:com.ods.util.type<br>
     * 方法名:getSexFromCard方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2012-4-10
     * @param cardNumber
     * @return
     */
    public static String getSexFromCard(String cardNumber) {
        String Aac004_AAC004_MALE = "男";// 01:代表男
        String Aac004_AAC0004_FEMALE = "女";// 02:代表女
        // 如果身份证15位则将其转化为18位
        if(cardNumber.length() == 15){
            cardNumber = getIDCard_18bit(cardNumber); 
        }
        String inputStr = cardNumber.toString();
        int sex;
        if(inputStr.length() == 18) {
            sex = inputStr.charAt(16);
            if(sex % 2 == 0) {
                return Aac004_AAC0004_FEMALE;
            } else {
                return Aac004_AAC004_MALE;
            }
        } else {
            sex = inputStr.charAt(14);
            if(sex % 2 == 0) {
                return Aac004_AAC0004_FEMALE;
            } else {
                return Aac004_AAC004_MALE;
            }
        }
    }
 

    /**
     * 根据身份证号码计算出它的年龄.<br>
     * 工程名:homecarecallcenterNew<br>
     * 包名:com.ods.util.type<br>
     * 方法名:getAge方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2012-4-10
     * @param IDCardNum
     * @return
     */
    public static int getAge(String IDCardNum) {
        Calendar cal1 = Calendar.getInstance();
        Calendar today = Calendar.getInstance();
        // 如果身份证15位则将其转化为18位
        if(IDCardNum.length() == 15){
            IDCardNum = getIDCard_18bit(IDCardNum); 
        } 
        cal1.set(Integer.parseInt(IDCardNum.substring(6, 10)), Integer.parseInt(IDCardNum.substring(10, 12)),
                Integer.parseInt(IDCardNum.substring(12, 14)));
        return getYearDiff(today, cal1);
    }

    private static int getYearDiff(Calendar cal, Calendar cal1) {
        int m = (cal.get(cal.MONTH)) - (cal1.get(cal1.MONTH));
        int y = (cal.get(cal.YEAR)) - (cal1.get(cal1.YEAR));
        return (y * 12 + m) / 12;
    }

    public static void main(String args[]) {
       String idcard="610323198307202610";
        System.out.println("出生日期="+IDCard.getBirthDateFromCard(idcard)); 
        System.out.println("年龄="+IDCard.getAge(idcard)); 
        System.out.println("性别="+IDCard.getSexFromCard(idcard)); 
    }

}
