package com.ods.util.dialect;

import org.hibernate.dialect.SQLServerDialect;

public class SqlServerDialect extends SQLServerDialect {
    public boolean supportsLimit() {
        return false;
    }
}
