/**
*copyright(C)2015
*Ods信息技术软件有限公司 & Service Corporation All rights reserved
*/
package com.ods.data.util;


import com.ods.data.bo.contractsubject.ContractSubject;
import com.ods.data.bo.searchresult.SearchResult;
import com.ods.dic.bo.datadictionarycommon.DataDictionaryCommon;
import com.ods.util.action.ActionView;
import com.ods.util.hibernate.query.QueryCondition;
import com.ods.util.hibernate.query.QueryResult;
import com.ods.util.log.LogUtil;
import com.ods.util.resource.ResourceUtil;

/**
 *<b>系统名称:</b><b>
 *系统
 *</b>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *
 *<b>文件名:</b><br>
 *
 *SubjectClass.java<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<b>类名:</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *SubjectClass类.<br>
 *&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
 *
 *<br>
 *<b>概要说明</b><br>
 *&nbsp;&nbsp;&nbsp;&nbsp;
 *
 *
 *SubjectClass类的概要说明<br>
 **&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;*&nbsp;
 *
 *比较类。<br>
 *
 *<b>***History*** </b/><br>
 *更新年月日， 更改原因，   姓名，   		更新内容<br>
 *2015年6月22日,    cause,    10325431@qq.com,   	新建<br>
 *
 *@author :10325431@qq.com
 *@since  :2015年6月22日
 *@version:1.0
 */
public class SubjectClassOrder extends  ActionView{

    /**
    *属性名：serialVersionUID、类型：long、作成日：2015年6月22日.<br>
    *含义：
    */
    private static final long serialVersionUID = -2261475802545121132L;
    
    
    private String contractPk ="";
    
    private double  nameweight = 0;
    private double  resultAbstractweight = 0;
    private double  keywordweight = 0;


    /**
     *contractPk的获取.
     *@return contractPk值返回.
     */
    public String getContractPk() {
        return contractPk;
    }


    /**
     *contractPk的值设定
     *@param contractPk 设定contractPk的值.
     */
    public void setContractPk(String contractPk) {
        this.contractPk = contractPk;
    }
    
    @SuppressWarnings("null")
    public String doOrder(String contractPk){
        QueryCondition qc = new QueryCondition(getRequest());
        QueryResult qr = null;QueryResult qrtj = null;
       
        try { 
            getWeight();
            if(contractPk ==null &&  contractPk.equals("")) return null;
            qc.put("contractPk", contractPk);
            double dvalue = 0;
            qr = getSpringHibernate().select(qc, SearchResult.class);
            qrtj = getSpringHibernate().select(qc, ContractSubject.class);
            
            for(Object object : qr) {
                SearchResult sr = (SearchResult) object;
                dvalue = 0;
                //名称
                String name = sr.getSearchResultName();
                //摘要
                String resultAbstract = sr.getResultAbstract();
                //主题词
                String keyword = sr.getKeyword();
                
                for(Object ob : qrtj){
                    ContractSubject cs = (ContractSubject) ob;
                    
                    if(name.indexOf(cs.getSubjectClassName()) >= 0){
                        dvalue = dvalue +nameweight;
                    }
                    
                    if(resultAbstract.indexOf(cs.getSubjectClassName()) >= 0){
                        dvalue = dvalue +resultAbstractweight;
                    }
                    
                    if(keyword.indexOf(cs.getSubjectClassName()) >= 0){
                        dvalue = dvalue +keywordweight;
                    }
                }
                sr.setRetain7(String.valueOf(dvalue));
                getSpringHibernate().update(sr);
               
            }
            
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.success"), true);
            return SUCCESS;
        } catch(Throwable e) {
            LogUtil.writeLog(e);
            setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);
            return ERROR;
        }
    }
    
    
    private String getWeight(){
        
        QueryCondition qc = new QueryCondition(getRequest());
        try {
            qc.put("dicCommonFatherPk", "66");
            QueryResult qr = getSpringHibernate().select(qc, DataDictionaryCommon.class);
            
            for(Object ob : qr){
                DataDictionaryCommon ddc =(DataDictionaryCommon) ob; 
                if(ddc.getDicName().equals("标题")){
                    this.nameweight = Double.valueOf(ddc.getDicCode());
                }
                
                if(ddc.getDicName().equals("主题词")){
                    this.resultAbstractweight = Double.valueOf(ddc.getDicCode());
                }
                
                if(ddc.getDicName().equals("摘要")){
                    this.keywordweight = Double.valueOf(ddc.getDicCode());
                }
                
            }
        } catch(Throwable e) {
            LogUtil.writeLog(e);setRequestMessage(ResourceUtil.getResourceString("com.ods.operation.info.fail"), false);return ERROR;
        }
        
        
        return null;
    }


    /**
     *nameweight的获取.
     *@return nameweight值返回.
     */
    public double getNameweight() {
        return nameweight;
    }


    /**
     *nameweight的值设定
     *@param nameweight 设定nameweight的值.
     */
    public void setNameweight(double nameweight) {
        this.nameweight = nameweight;
    }


    /**
     *resultAbstractweight的获取.
     *@return resultAbstractweight值返回.
     */
    public double getResultAbstractweight() {
        return resultAbstractweight;
    }


    /**
     *resultAbstractweight的值设定
     *@param resultAbstractweight 设定resultAbstractweight的值.
     */
    public void setResultAbstractweight(double resultAbstractweight) {
        this.resultAbstractweight = resultAbstractweight;
    }


    /**
     *keywordweight的获取.
     *@return keywordweight值返回.
     */
    public double getKeywordweight() {
        return keywordweight;
    }


    /**
     *keywordweight的值设定
     *@param keywordweight 设定keywordweight的值.
     */
    public void setKeywordweight(double keywordweight) {
        this.keywordweight = keywordweight;
    }
    
    
    
    
    
    

}
