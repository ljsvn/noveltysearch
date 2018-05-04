package com.ods.util.jasper.bo.xml;
public class Parameter {
    private String name;
    private String vtype;
    public static final String VTYPE_STRING="String";
    public static final String VTYPE_INT="int";
    public static final String VTYPE_DOUBLE="double";
    public static final String VTYPE_LONG="long";
    public static final String VTYPE_BOOLEAN="boolean";
    private String type;
    public static final String TYPE_HIDDEN="hidden"; 
    public static final String TYPE_TEXT="text";
    public static final String TYPE_SELECT="select";
    public static final String TYPE_TIME="time"; 
    public static final String TYPE_BR="br"; 
    public static final String TYPE_CHARACTER="character"; 
    public static final String TYPE_SESSION="session"; 
    private String value;    
    private String showName;
     private String className;
    private String methodName;
     private String checkRegular;
    private String warnContent;
    private String timeFormat="yyyy-MM-dd";
    private String methodNamePage;
    private boolean operation;
    
    /**
     *showName的获取.
     *@return showName值返回.
     */
    public String getShowName() {
        return showName;
    }
    /**
     *showName的值设定
     *@param showName 设定showName的值.
     */
    public void setShowName(String showName) {
        this.showName = showName;
    }
    /**
     *name的获取.
     *@return name值返回.
     */
    public String getName() {
        return name;
    }
    /**
     *name的值设定
     *@param name 设定name的值.
     */
    public void setName(String name) {
        this.name = name;
    }
    /**
     *type的获取.
     *@return type值返回.
     */
    public String getType() {
        return type;
    }
    /**
     *type的值设定
     *@param type 设定type的值.
     */
    public void setType(String type) {
        this.type = type;
    }
    /**
     *value的获取.
     *@return value值返回.
     */
    public String getValue() {
        return value;
    }
    /**
     *value的值设定
     *@param value 设定value的值.
     */
    public void setValue(String value) {
        this.value = value;
    } 
    /**
     *vtype的获取.
     *@return vtype值返回.
     */
    public String getVtype() {
        return vtype;
    }
    /**
     *vtype的值设定
     *@param vtype 设定vtype的值.
     */
    public void setVtype(String vtype) {
        this.vtype = vtype;
    }
    /**
     *className的获取.
     *@return className值返回.
     */
    public String getClassName() {
        return className;
    }
    /**
     *className的值设定
     *@param className 设定className的值.
     */
    public void setClassName(String className) {
        this.className = className;
    }
    /**
     *methodName的获取.
     *@return methodName值返回.
     */
    public String getMethodName() {
        return methodName;
    }
    /**
     *methodName的值设定
     *@param methodName 设定methodName的值.
     */
    public void setMethodName(String methodName) {
        this.methodName = methodName;
    }
    /**
     *checkRegular的获取.
     *@return checkRegular值返回.
     */
    public String getCheckRegular() {
        return checkRegular;
    }
    /**
     *checkRegular的值设定
     *@param checkRegular 设定checkRegular的值.
     */
    public void setCheckRegular(String checkRegular) {
        this.checkRegular = checkRegular;
    } 
    
    /**
     *warnContent的获取.
     *@return warnContent值返回.
     */
    public String getWarnContent() {
        return warnContent;
    }
    /**
     *warnContent的值设定
     *@param warnContent 设定warnContent的值.
     */
    public void setWarnContent(String warnContent) {
        this.warnContent = warnContent;
    }
    /**
     *timeFormat的获取.
     *@return timeFormat值返回.
     */
    public String getTimeFormat() {
        return timeFormat;
    }
    /**
     *timeFormat的值设定
     *@param timeFormat 设定timeFormat的值.
     */
    public void setTimeFormat(String timeFormat) {
        this.timeFormat = timeFormat;
    }
    /**
     *methodNamePage的获取.
     *@return methodNamePage值返回.
     */
    public String getMethodNamePage() {
        return methodNamePage;
    }
    /**
     *methodNamePage的值设定
     *@param methodNamePage 设定methodNamePage的值.
     */
    public void setMethodNamePage(String methodNamePage) {
        this.methodNamePage = methodNamePage;
    }
    /**
     *operation的获取.
     *@return operation值返回.
     */
    public boolean isOperation() {
        return operation;
    }
    /**
     *operation的值设定
     *@param operation 设定operation的值.
     */
    public void setOperation(boolean operation) {
        this.operation = operation;
    } 
    
}
