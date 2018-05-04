package com.ods.util.pinyin;

import com.ods.util.type.StringUtil;

import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType; 

public class PingyinUtil {
    /**
     * 汉字转换为汉语拼音首字母，英文字符不变
     * 
     * @param chines 汉字
     * @return 拼音
     */
    public static String converterToFirstSpell(String chines) {
        String pinyinName = "";
        chines = toSemiangle(chines);
        // 转化为字符
        char[] nameChar = chines.toCharArray(); 

        // 汉语拼音格式输出类
        HanyuPinyinOutputFormat defaultFormat = new HanyuPinyinOutputFormat();

        // 输出设置,大小写,音标方式等
        defaultFormat.setCaseType(HanyuPinyinCaseType.LOWERCASE);
        defaultFormat.setToneType(HanyuPinyinToneType.WITHOUT_TONE);

        for(int i = 0; i < nameChar.length; i++) {
            pinyinName=pinyinName.trim();
            // 如果是中文
            if(nameChar[i] > 128) {
                try {
                    pinyinName += PinyinHelper.toHanyuPinyinStringArray(
                            nameChar[i], defaultFormat)[0].charAt(0);
                }catch(Throwable e) {
                    pinyinName +="";
                }
            }else {// 为英文字符
                pinyinName += nameChar[i];
            }
        }
        return pinyinName;
    }

    /**
     * 汉字转换位汉语拼音，英文字符不变
     * 
     * @param chines 汉字
     * @return 拼音
     */
    public static String converterToSpell(String chines) {
        String pinyinName = "";
        char[] nameChar = chines.toCharArray();
        HanyuPinyinOutputFormat defaultFormat = new HanyuPinyinOutputFormat();
        defaultFormat.setCaseType(HanyuPinyinCaseType.UPPERCASE);
        defaultFormat.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
        for(int i = 0; i < nameChar.length; i++) {
            if(nameChar[i] > 128) {
                try {
                    String pinyinNameNew=PinyinHelper.toHanyuPinyinStringArray(
                            nameChar[i], defaultFormat)[0];
                    if(!StringUtil.empty(pinyinNameNew)){
                        pinyinName += pinyinNameNew;
                    }
                    
                }catch(Throwable e) {
                    continue;
                }
            }else {
                pinyinName += nameChar[i];
            }
        }
        return pinyinName;
    }

    /**
     * 全角空格为12288，半角空格为32 其他字符半角(33-126)与全角(65281-65374)的对应关系是：均相差65248
     * 
     * 将字符串中的全角字符转为半角
     * 
     * @param src 要转换的包含全角的任意字符串
     * @return 转换之后的字符串
     */
    private static String toSemiangle(String src) {
        char[] c = src.toCharArray();
        for(int index = 0; index < c.length; index++) {
            if(c[index] == 12288) {// 全角空格 22. c[index] = (char) 32;
            }else if(c[index] > 65280 && c[index] < 65375) {// 其他全角字符 24.
                c[index] = (char)(c[index] - 65248);
            }
        }
        return String.valueOf(c);
    }
    
    public static void main(String[] args) {
        String test="看、试";
        System.out.println(converterToSpell(test));
    }

}
