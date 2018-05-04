package com.ods.util.jasper.bo.xml;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import com.ods.util.type.StringUtil;

public class Query {
    private List<Parameter> parameterList;

    /**
     * parameterList的获取.
     * 
     * @return parameterList值返回.
     */
    public List<Parameter> getParameterList() {
        return parameterList;
    }

    /**
     * parameterList的值设定
     * 
     * @param parameterList 设定parameterList的值.
     */
    public void setParameterList(List<Parameter> parameterList) {
        if(parameterList == null) {
            parameterList = new ArrayList<Parameter>();
        }
        this.parameterList = parameterList;
    }

    public void addParameterList(Parameter parameter) {
        if(parameterList == null) {
            parameterList = new ArrayList<Parameter>();
        }
        if(!StringUtil.empty(parameter.getClassName()) && !StringUtil.equals(parameter.getType(), Parameter.TYPE_SELECT)) {
            String className = parameter.getClassName();
            String methodName = parameter.getMethodName();
            try {
                Class<?> classes = Class.forName(className);
                Method method = classes.getDeclaredMethod(methodName);
                String value = String.valueOf(method.invoke(classes.newInstance(), new Object[] {}));
                parameter.setValue(value);
            } catch(Throwable e) {
                e.printStackTrace();
                parameter.setValue("");
            }
        }
        parameterList.add(parameter);
    }

}
