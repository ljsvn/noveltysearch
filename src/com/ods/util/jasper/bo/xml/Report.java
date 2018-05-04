package com.ods.util.jasper.bo.xml;

public class Report {
    private String id;
    private String name;

    private String jasperFile;

    private String detailColorStart;
    private String dataSourceSrc;
    private String dbName;
    private Query query;
    

    /**
     *dbName的获取.
     *@return dbName值返回.
     */
    public String getDbName() {
        return dbName;
    }

    /**
     *dbName的值设定
     *@param dbName 设定dbName的值.
     */
    public void setDbName(String dbName) {
        this.dbName = dbName;
    }

    /**
     *dataSourceSrc的获取.
     *@return dataSourceSrc值返回.
     */
    public String getDataSourceSrc() {
        return dataSourceSrc;
    }

    /**
     *dataSourceSrc的值设定
     *@param dataSourceSrc 设定dataSourceSrc的值.
     */
    public void setDataSourceSrc(String dataSourceSrc) {
        this.dataSourceSrc = dataSourceSrc;
    }

    /**
     *query的获取.
     *@return query值返回.
     */
    public Query getQuery() {
        if(query==null){
            query=new Query();  
        }
        return query;
    }

    /**
     *query的值设定
     *@param query 设定query的值.
     */
    public void setQuery(Query query) {
        this.query = query;
    }  

    /**
     * id的获取.
     * 
     * @return id值返回.
     */
    public String getId() {
        return id;
    }

    /**
     * id的值设定
     * 
     * @param id 设定id的值.
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     *jasperFile的获取.
     *@return jasperFile值返回.
     */
    public String getJasperFile() {
        return jasperFile;
    }

    /**
     *jasperFile的值设定
     *@param jasperFile 设定jasperFile的值.
     */
    public void setJasperFile(String jasperFile) {
        this.jasperFile = jasperFile;
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
     *detailColorStart的获取.
     *@return detailColorStart值返回.
     */
    public String getDetailColorStart() {
        return detailColorStart;
    }

    /**
     *detailColorStart的值设定
     *@param detailColorStart 设定detailColorStart的值.
     */
    public void setDetailColorStart(String detailColorStart) {
        this.detailColorStart = detailColorStart;
    }
 

}
