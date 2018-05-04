/**
 *copyright(C)2011
 *Ods信息技术软件有限公司 & Service Corporation All rights reserved
 */
package com.ods.util.formula;

import java.math.BigDecimal; 
import java.util.Iterator;
import java.util.Map;
 

import net.sourceforge.jeval.Evaluator;

import com.ods.util.type.NumberUtil;
import com.ods.util.type.StringUtil; 

/**
 * <b>系统名称:</b><b> 武警遵义支队按纲建队系统 </b>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * 
 * <b>文件名:</b><br>
 * 
 * FormulaUtil.java<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <b>类名:</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * FormulaUtil类.<br>
 * &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 * 
 * <br>
 * <b>概要说明</b><br>
 * &nbsp;&nbsp;&nbsp;&nbsp;
 * 
 * 
 * FormulaUtil类的概要说明<br>
 ** &nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 * 
 * 数学计算公式<br>
 * 
 * <b>***History*** </b/><br>
 * 更新年月日， 更改原因， 姓名， 更新内容<br>
 * 2011-8-3, cause, 10325431@qq.com, 新建<br>
 * 
 * @author :10325431@qq.com
 * @since :2011-8-3
 * @version:1.0
 */
public class FormulaUtil {
    /**
     * 
     * 计算公式的布尔值.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.util.formula<br>
     * 方法名:getFormulaBooleanValue方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2011-8-3
     * @param expression
     * @return 测试例子：3 < 3，3 < 4，((2 < 3) || (1 == 1)) && (3 < 4)
     */
    public static boolean getFormulaBooleanValue(String expression) {
        try {
            Evaluator evaluator = new Evaluator();
            String expressionValue = evaluator.evaluate(expression);
            if(!StringUtil.equals(expressionValue, "0.0")) {
                return true;
            }
        } catch(Throwable e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * 
     * 获取无变量公式的计算值,采用4舍5入的算法.<br>
     * 工程名:kunlunmes<br>
     * 包名:com.ods.util.formula<br>
     * 方法名:getFormulaExpressionValue方法.<br>
     * 
     * @author:10325431@qq.com
     * @since :1.0:2011-8-3
     * @param expression
     * @return "":错误公式的值
     */
    public static String getFormulaExpressionValue(String expression) {
        try {
            Evaluator evaluator = new Evaluator();
            String expressionValue = evaluator.evaluate(expression);
            if(StringUtil.equals(expressionValue.substring(expressionValue.indexOf(".")), ".0") || StringUtil.equals(
                    expressionValue.substring(expressionValue.indexOf(".")), ".00")) {
                return new BigDecimal(expressionValue).setScale(0, BigDecimal.ROUND_HALF_UP).intValue() + "";
            } else {
                return new BigDecimal(expressionValue).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue() + "";
            }
        } catch(Throwable e) {
            e.printStackTrace();
        }
        return "0";
    }
    /**
     * 
     *根据公式的变量进行公式计算.<br>
     *工程名:kunlunmes<br>
     *包名:com.ods.util.formula<br>
     *方法名:getFormulaExpressionValue方法.<br>
     *
     *@author:10325431@qq.com
     *@since :1.0:2011-8-3
     *@param expression
     * @param evaluator 
     *@param expressionVariablesMap:key  公式中的变量，value：键对应的值 
     *  注意：公式的变量应该是#{a}这种形式
     *@return
     */
    public static String getFormulaExpressionValue(String expression, Map<String,String> expressionVariablesMap) {
        try { 
            Evaluator evaluator = new Evaluator();
            for(Iterator<Map.Entry<String, String>> it = expressionVariablesMap
                    .entrySet().iterator(); it.hasNext();) {
                Map.Entry<String, String> entry = (Map.Entry<String, String>) it
                        .next();
                String condKey = entry.getKey();
                String condVal = entry.getValue();
                if(StringUtil.empty(condKey)){
                    continue;
                }
                if(StringUtil.empty(condVal)){
                    evaluator.putVariable(condKey, "0");
                }
                evaluator.putVariable(condKey, condVal);
            } 
            String expressionValue = evaluator.evaluate(expression);
            if(StringUtil.equals(expressionValue.substring(expressionValue.indexOf(".")), ".0") || StringUtil.equals(
                    expressionValue.substring(expressionValue.indexOf(".")), ".00")) {
                return new BigDecimal(expressionValue).setScale(0, BigDecimal.ROUND_HALF_UP).intValue() + "";
            } else {
                return new BigDecimal(expressionValue).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue() + "";
            }
        } catch(Throwable e) {
            e.printStackTrace();
        }
        return "";
    }
 
    public static void main(String[] args){
        //.replaceAll("[^0-9]", "");
            String testStr = "c01";
            testStr=stringAddOne(testStr);
            //System.out.println(testStr);          
        }
    public static String stringAddOne(String addOneString){
        String tempString="";
        String tempStringOther="";
        int i=0;
        for( i=addOneString.length()-1;i>=0;i--){
            if(NumberUtil.isInteger(addOneString.substring(i,i+1))&&!StringUtil.equals(addOneString.substring(i,i+1),"0")){
                tempString=addOneString.substring(i,i+1)+tempString;
            } else if(!StringUtil.empty(tempString)){
                break;
            }else{
                tempStringOther=addOneString.substring(i,i+1)+tempStringOther;
            }
        }
        if(StringUtil.empty(addOneString.substring(0,i+1))){
            addOneString=tempStringOther+(NumberUtil.toInt(tempString)+1);
        }else{
            addOneString=addOneString.substring(0,i+1)+(NumberUtil.toInt(tempString)+1)+tempStringOther;
        }
       
        System.out.println(addOneString);   
//        if(NumberUtil.isInteger(tempString)){
//            addOneStringNew= addOneStringNew.substring(0,stringLength-1)+(NumberUtil.toInt(tempString)+1);
//        } else{
//            lastString=tempString+lastString;
//            addOneStringNew= stringAddOne(addOneStringOld,addOneStringNew,lastString, stringLength-1); 
//            lastString="";
//        } 
        return "";
    }
    

}
