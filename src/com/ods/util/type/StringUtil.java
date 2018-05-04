/**
 * 包名：com.ods.util.type
 * 类名：StringUtil
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.type;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

/**
 * 功能：对java中常见的字符串使用的功能进行二次封装，<br>
 * 达到减少字符串使用出错的机会。 创建者: 10325431@qq.com 修改者 修改时间
 * 
 */
public class StringUtil {

    /**
     * 判别字符串是否为null或者没有内容
     * 
     * @param inStr 被判断的输入参数
     * @return 布尔值：true=表示输入字符串为null或者没有内容 false=表示输入字符串不为null或者有内容
     */
    public static boolean zero(String inStr) {
        return ((null == inStr) || (inStr.length() <= 0));
    }

    /**
     * 判断字符串是否为null或没有内容或全部为空格。
     * 
     * @param inStr 被判断的输入参数
     * @return 布尔值：true=表示输入字符串为null或没有内容或全部为空格 false=表示输入字符串不为null或有内容或全部不为空格
     */
    public static boolean empty(String inStr) {
        return (zero(inStr) || (inStr.trim().equals("")));
    }

    /**
     * 在str为null或者没有内容的情况下，返回空串；否则返回输入参数。
     * 
     * @param inStr 被判断的输入参数
     * @return 字符串="" 表示输入字符串为null或者没有内容 字符串!="" 表示输入字符串有内容
     */
    public static String toZeroSafe(String inStr) {
        if(zero(inStr)) {
            return "";
        }
        return inStr;
    }

    /**
     * 在inStr为null或者没有内容的情况下，返回def；否则返回str
     * 
     * @param inStr 被判断的输入参数
     * @param def inStr为null或者没有内容的情况下，需要返回的字符串
     * @return 字符串=def 表示输入字符串为null或者没有内容 字符串=inStr 表示输入字符串有内容
     */
    public static String toZeroSafe(String inStr, String def) {
        if(zero(inStr)) {
            return def;
        }
        return inStr;
    }

    /**
     * 在str为null或者没有内容，或者全部为空格的情况下，返回空串；否则返回str
     * 
     * @param inStr 被判断的输入参数
     * @return 字符串="" 表示输入字符串为null或者没有内容或者全部为空格 字符串!="" 表示输入字符串有内容
     */
    public static String toEmptySafe(String inStr) {
        if(empty(inStr)) {
            return "";
        }
        return inStr;
    }

    /**
     * 在str为null或者没有内容，或者全部为空格的情况下，返回def；否则返回str
     * 
     * @param inStr 被判断的输入参数
     * @param def inStr为null或者没有内容或者全部为空格的情况下，需要返回的字符串
     * @return 字符串=def 表示输入字符串为null或者没有内容或者全部为空格 字符串=inStr 表示输入字符串有内容
     */
    public static String toEmptySafe(String inStr, String def) {
        if(empty(inStr)) {
            return def;
        }
        return inStr;
    }

    /**
     * 去掉输入字符串首尾空格
     * 
     * @param inStr 输入字符串
     * @return 首尾无空格的字符串
     */
    public static String trim(String inStr) {
        if(empty(inStr)) {
            return inStr;
        }
        return inStr.trim();
    }

    /**
     * 判断字符串是否内容相同
     * 
     * @param s1 第1个输入字符串
     * @param s2 第2个输入字符串
     * @return 布尔值=true：两个字符串相等 =false:两个字符串不相等
     */
    public static boolean equals(String s1, String s2) {
        if(s1 == s2)
            return true;
        if(null == s1)
            return false;
        return s1.equals(s2);
    }

    /**
     * 判断字符串是否内容相同，不区分大小写
     * 
     * @param s1 第1个输入字符串
     * @param s2 第2个输入字符串
     * @return 布尔值=true：两个字符串相等 =false:两个字符串不相等
     */
    public static boolean equalsIgnoreCase(String s1, String s2) {
        if(null == s1) {
            return false;
        }
        return s1.equalsIgnoreCase(s2);
    }

    /**
     * 把字符数组转换成字符串
     * 
     * @param array 字符数组
     * @return 转换后的字符串
     */
    public static String toString(char[] array) {
        return String.valueOf(array);
    }

    /**
     * 在str字符串中，将所有token字符串，用delim字符串进行转义处理。
     * 
     * @param str 被替换的字符串
     * @param token 被替换的子字符串
     * @param delim 子字符串需要替换的内容
     * @return 已经替换好的字符串
     */
    public static String normalize(String str, String token, String delim) {
        // 为空，直接返回
        if(empty(str)) {
            return "";
        }
        // 查找并替换
        StringTokenizer tokenizer = new StringTokenizer(str, token);
        StringBuilder fixedBuilder = new StringBuilder();
        while (tokenizer.hasMoreTokens()) {
            if(fixedBuilder.length() == 0) {
                fixedBuilder.append(tokenizer.nextToken());
            } else {
                fixedBuilder.append(fixedBuilder);
                fixedBuilder.append(delim);
                fixedBuilder.append(token);
                fixedBuilder.append(tokenizer.nextToken());
            }
        }

        if(str.indexOf(delim) == 0) {
            fixedBuilder.append(delim).append(token).append(fixedBuilder);
        }

        if(str.lastIndexOf(delim) == (str.length() - 1)) {
            fixedBuilder.append(fixedBuilder).append(delim).append(token);
        }

        return fixedBuilder.toString();
    }

    /**
     * 在字符串中，用新的字符串替换指定的字符
     * 
     * @param src 需要替换的字符串
     * @param charOld 被替换的字符
     * @param strNew 用于替换的字符串
     * @return 已经替换好的字符串
     */
    public static String replace(String src, char charOld, String strNew) {
        if(null == src) {
            return src;
        }
        if(null == strNew) {
            return src;
        }

        StringBuilder buf = new StringBuilder();
        for(int i = 0, n = src.length(); i < n; i++) {
            char c = src.charAt(i);
            if(c == charOld) {
                buf.append(strNew);
            } else {
                buf.append(c);
            }
        }
        return buf.toString();
    }

    /**
     * 在字符对象中，用新的字符串替换指定的字符串
     * 
     * @param src 需要替换的字符对象
     * @param strOld 被替换的字符串
     * @param strNew 用于替换的字符串
     */
    public static void replace(StringBuilder src, String strOld, String strNew) {
        if((null == src) || (src.length() <= 0)) {
            return;
        }
        String s = replace(src.toString(), strOld, strNew);
        src.setLength(0);
        src.append(s);
    }

    /**
     * 在字符串中，用新的字符串替换指定的字符串
     * 
     * @param src 需要替换的字符对象
     * @param strOld 被替换的字符串
     * @param strNew 用于替换的字符串
     * @return 已经被替换的字符串
     */
    public static String replace(String src, String strOld, String strNew) {
        if(null == src) {
            return src;
        }
        if(zero(strOld)) {
            return src;
        }
        if(null == strNew) {
            return src;
        }
        if(equals(strOld, strNew)) {
            return src;
        }
        return org.apache.avalon.excalibur.util.StringUtil.replaceSubString(
                src, strOld, strNew);
    }

    /**
     * 把字符串的第一个字符变为大写
     * 
     * @param s 输入字符串
     * @return 返回第一个字符是大写的字符串
     */
    public static String upperFirst(String s) {
        String str = null;
        if(null != s) {
            if(s.length() == 1) {
                str = s.toUpperCase();
            } else {
                str = s.substring(0, 1).toUpperCase() + s.substring(1);
            }
        }
        return str;
    }

    /**
     * 把字符对象第一个字符变为大写
     * 
     * @param sb 字符对象
     */
    public static void upperFirst(StringBuilder sb) {
        if((null != sb) && (sb.length() > 0)) {
            sb.setCharAt(0, Character.toUpperCase(sb.charAt(0)));
        }
    }

    /**
     * 把字符串的第一个字符变为小写
     * 
     * @param s 输入的字符串
     * @return 返回的第一个字符是小写的字符串
     */
    public static String lowerFirst(String s) {
        String str = null;
        if(null != s) {
            if(s.length() == 1) {
                str = s.toLowerCase();
            } else {
                str = s.substring(0, 1).toLowerCase() + s.substring(1);
            }
        }
        return str;
    }

    /**
     * 把字符对象的第一个字符变为小写
     * 
     * @param sb 输入的字符对象
     */
    public static void lowerFirst(StringBuilder sb) {
        if((null != sb) && (sb.length() > 0)) {
            sb.setCharAt(0, Character.toLowerCase(sb.charAt(0)));
        }
    }

    /**
     * 根据指定的delima标志获取输入字符串的后缀
     * 
     * @param str 输入字符串
     * @param delima 指定的标志,一般是一个字符，如“.”
     * @return 输入字符串子的后缀
     */
    public static String getLastSuffix(String str, String delima) {
        if(zero(delima)) {
            return str;
        }

        String suffix = "";
        if(!zero(str)) {
            int index = str.lastIndexOf(delima);
            if(index >= 0) {
                suffix = str.substring(index + delima.length());
            } else {
                suffix = str;
            }
        }
        return suffix;
    }

    /**
     * 根据指定的delima标志获取输入字符串的前缀
     * 
     * @param src 输入字符串
     * @param delima 指定的标志,一般是一个字符，如“.”
     * @return 输入字符串的前缀
     */
    public static String getLastPrefix(String src, String delima) {
        if(zero(delima)) {
            return src;
        }

        String prefix = "";
        if(!zero(src)) {
            int index = src.lastIndexOf(delima);
            if(index >= 0) {
                prefix = src.substring(0, index);
            }
        }
        return prefix;
    }

    /**
     * 将str字符串按照其中出现的delim分割成字符串数组
     * 
     * @param str 输入的字符串
     * @param delim 分割标志
     * @return 分割好的数组
     */
    public static String[] split(String str, String delim) {
        if(zero(str) || zero(delim)) {
            return new String[0];
        }
        return org.apache.avalon.excalibur.util.StringUtil.split(str, delim);
    }

    /**
     * 将str字符串按照其中出现的delim分割成字符串数组,并能去掉前后空格
     * 
     * @param str 输入的字符串
     * @param delim 分割标志
     * @param trim =true 去掉前后空格 =false 不去掉前后空格
     * @return 分割好的数组
     */
    public static String[] split(String str, String delim, boolean trim) {
        String[] set = split(str, delim);
        if(trim) {
            for(int i = 0; i < set.length; i++) {
                set[i] = set[i].trim();
            }
        }
        return set;
    }

    /**
     * 判断输入字符串是否包含指定的字符串
     * 
     * @param str 输入字符串
     * @param searchStr 指定是否包含的字符串
     * @return =true:包含指定的字符串 =false:不包含指定的字符串
     */
    public static boolean contains(String str, String searchStr) {
        if(str == null || searchStr == null) {
            return false;
        }
        if(searchStr.length() == 0) // ""空串不认为被包含。String.indexOf()认为空串被包含
        {
            return false;
        } else {
            return str.indexOf(searchStr) >= 0;
        }
    }

    /**
     * 将string按照length长度设置，左边不足部分填充为padding
     * 
     * @param length 指定长度
     * @param padding 填充内容
     * @param string 需要设置的字符串
     * @return 填充好的字符串
     */
    public static String leftPadding(String string, int length, char padding) {
        return format(length, length, true, padding, string);
    }

    /**
     * 将string按照length长度设置，左边不足部分填充为padding
     * 
     * @param length 指定长度
     * @param padding 填充内容
     * @param string 需要设置的字符串
     * @return 填充好的字符串
     */
    public static String leftPadding(int length, char padding, String string) {
        return format(length, length, true, padding, string);
    }

    /**
     * 将string格式化成最小minSize、最大maxSize，并且rightJustify右对其的字符串（采用空格填充） 返回结果在sb中
     * 
     * @param sb 保存格式化的字符串
     * @param minSize 最小值
     * @param maxSize 最大值
     * @param rightJustify 右对齐字符串
     * @param string 格式化的字符串
     */
    public static final void format(StringBuffer sb, int minSize, int maxSize,
            boolean rightJustify, String string) {
        org.apache.avalon.excalibur.util.StringUtil.format(sb, minSize,
                maxSize, rightJustify, string);
    }

    /**
     * 将string格式化成最小minSize、最大maxSize，并且rightJustify右对其的字符串（采用空格填充）
     * 
     * @param minSize 最小值
     * @param maxSize 最大值
     * @param rightJustify 右对齐字符串
     * @param string 格式化的字符串
     * @return 格式化后的字符串
     */
    public static String format(int minSize, int maxSize, boolean rightJustify,
            String string) {
        return org.apache.avalon.excalibur.util.StringUtil.format(minSize,
                maxSize, rightJustify, string);
    }

    /**
     */
    /**
     * 将string格式化成最小minSize、最大maxSize，并且rightJustify右对其的字符串，采用padding填充空格
     * 如果string的边界存在空格，则可能被padding替换掉
     * 
     * @param minSize 最小值
     * @param maxSize 最大值
     * @param rightJustify 右对齐字符串
     * @param padding 填充空格的内容
     * @param string 格式化的字符串
     * @return 格式化后的字符串
     */
    public static String format(int minSize, int maxSize, boolean rightJustify,
            char padding, String string) {
        StringBuffer sb = new StringBuffer();
        format(sb, minSize, maxSize, rightJustify, string);
        //
        final int length = sb.length();
        if(length <= 0) {
            return sb.toString();
        }
        //
        if(rightJustify) {
            for(int i = 0; i < length; i++) {
                if(sb.charAt(i) != ' ') {
                    break;
                }
                sb.setCharAt(i, padding);
            }
        } else {
            for(int i = length - 1; i >= 0; i--) {
                if(sb.charAt(i) != ' ') {
                    break;
                }
                sb.setCharAt(i, padding);
            }
        }
        return sb.toString();
    }

    /**
     * 从str字符串的起始位置中，按照words数组中各个元素字符串出现的顺序，去除所有这些元素字符串。 不去分大小写，不考虑whitespace符号。
     * 如果str中不存在这些元素字符串，或者没有按照顺序出现，抛出异常。
     * 
     * @param str
     * @param words
     * @return
     * @throws Exception
     */
    public static String removeSequenceHeadingWordsIgnoreCase(String str,
            String[] words, String delim) throws Exception {
        if(empty(str) || ArrayUtil.empty(words))
            return "";

        String[] set = split(str, delim);
        int setIndex = 0;
        for(int wordIndex = 0; (setIndex < set.length) && (wordIndex < words.length); wordIndex++) {
            String s = set[setIndex];
            String w = words[wordIndex];
            if(empty(w))
                continue;

            if(!s.trim().equalsIgnoreCase(w.trim()))
                throw new Exception(
                        "no word '" + w + "' in the string '" + str + "' of index " + setIndex);

            setIndex++;
        }
        return join(set, delim, setIndex);
    }

    /**
     * 将set字符串数组从fromIndex开始以后的元素合并成以delim为分割符的字符串
     * 
     * @param set
     * @param delim
     * @param fromIndex 以0开始
     * @return
     */
    public static String join(String[] set, String delim, int fromIndex) {
        if((null == set) || (set.length <= 0) || (fromIndex >= set.length))
            return "";

        if(fromIndex < 0)
            fromIndex = 0;

        StringBuffer sb = new StringBuffer();
        sb.append(set[fromIndex]);
        for(int i = fromIndex + 1; i < set.length; i++) {
            sb.append(delim);
            sb.append(set[i]);
        }
        return sb.toString();
    }

    /**
     * 把占位符号进行替换.<br>
     *工程名:odscati<br>
     *方法名:replaceSpecialChar方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2009-8-8
     *@param replaceContentSrc:被替换的原字符串
     *@param inputPrifx：input输入框的名称前缀
     *@return 替换好的字符串
     */
    public static StringBuilder replaceSpecialChar(String replaceContentSrc,
            String inputPrifx) {
        String oldReplaceContent = replaceContentSrc;
        StringBuilder builder = new StringBuilder();
        if(StringUtil.empty(oldReplaceContent)) {
            return builder;
        }
        String splitChar = new String("_");
        String replaceStrBegin = "<input type=\"text\" class=\"inputUnderLine2\" name=\"" + inputPrifx;
        String replaceStrMiddle = "\" id=\"" + inputPrifx + "Id";
        String replaceStrend = "\">&nbsp;&nbsp;&nbsp;";
        // 首先判断开始有没有
        String beginChar = oldReplaceContent.substring(0, splitChar.length());
        if(StringUtil.equals(beginChar, splitChar)) {
            builder
                    .append(replaceStrBegin + 0 + replaceStrMiddle + 0 + replaceStrend);
            oldReplaceContent = oldReplaceContent.substring(splitChar.length());
        }
        // 把中间的替换掉
        boolean flagReplace = false;
        String endChar = oldReplaceContent.substring(
                oldReplaceContent.length() - splitChar.length(),
                oldReplaceContent.length());
        if(StringUtil.equals(endChar, splitChar)) {
            oldReplaceContent = oldReplaceContent.substring(0,
                    oldReplaceContent.length() - splitChar.length());
            flagReplace = true;
        }
        // 把中间的去掉
        String[] splitStrs = StringUtil.split(oldReplaceContent, splitChar);
        if(flagReplace) {
            for(int i = 0; i < splitStrs.length; i++) {
                String q = splitStrs[i];
                builder.append(q);
                builder
                        .append(replaceStrBegin + (i + 1) + replaceStrMiddle + (i + 1) + replaceStrend);

            }
        } else {
            for(int i = 0; i < splitStrs.length; i++) {
                String q = splitStrs[i];
                builder.append(q);
                if(i != splitStrs.length - 1) {
                    builder
                            .append(replaceStrBegin + (i + 1) + replaceStrMiddle + (i + 1) + replaceStrend);
                }
            }
        }
        return builder;
    }

    /**
     * 指定字符串出现的次数.<br>
     *工程名:odscati<br>
     *包名:com.ods.util.type<br>
     *方法名:countStringNumber方法.<br>
     * 
     *@author:10325431@qq.com
     *@since :1.0:2009-8-10
     *@param srcStr：查找的字符串
     *@param countStr：指定要查找的字符串
     *@return
     */
    public static int countStringNumber(String srcStr, String countStr) {
        int indexCount = 0;
        int index = 0;
        int count = 0;
        for(;;) {
            index = srcStr.indexOf(countStr, indexCount);
            if(index == -1) {
                break;
            }
            count++;
            indexCount = (index += countStr.length());
        }
        return count;
    }

    public static List<String> getListByStr(String inStr, String delim) {
        List<String> tempList = new ArrayList<String>();
        if(!empty(inStr)) {
            String[] tempArr = split(inStr, delim);
            for(String str : tempArr) {
                tempList.add(str);
            }
        }
        return tempList;
    }

    /**
     *为字符串前后加上单引号.<br>
     *工程名:odstv(oracle)<br>
     *包名:com.ods.util.type<br>
     *方法名:toUpdateStr方法.<br>
     * 
     *@author:cui_wenke
     *@since :1.0:2010-6-2
     *@param inStr
     *@return
     */
    public static String toUpdateStr(String inStr) {
        if(zero(inStr)) {
            return "";
        }
        return "'" + inStr + "'";
    }
}
