/**
 * 包名：com.ods.util.type
 * 类名：SortUtil
 * Ods信息技术软件有限公司研发中心
 */
package com.ods.util.type;


/**
 * 功能：常用的排序工具方法
 * 创建者: 10325431@qq.com
 * 修改者                   修改时间
 * 
 */
public class SortUtil {

    /**
     * 冒泡排序
     *
     * @param info 要求排序数组
     * @return 已经排序好的数组,按照从小到大的顺序排s序
     */
    public static int[] bubbleSort(int[] info) {
        int i;
        int j;
        int tempVariables;
        for (i = 0; i < info.length; i++) {
            for (j = info.length - 1; j > i; j--) {
                if (info[j - 1] >info[j]) {
                    tempVariables = info[j - 1];
                    info[j - 1] = info[j];
                    info[j] = tempVariables;
                }
            }
        }
        return info;
    }

}
