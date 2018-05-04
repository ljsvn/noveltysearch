-- =============================================
-- 使用数据库
-- =============================================
use noveltysearch
go

-- =============================================
-- 用途：检索数据库 - 数据字典
-- 表名：t_search_database
-- =============================================
if exists (select 1
           from   sysobjects
           where  id = Object_id('t_search_database')
                  and type = 'U')
    drop table t_search_database
go
create table t_search_database (
  --主键
  search_database_pk  uniqueidentifier   not null,
  --名称
  search_database_name   varchar(150)    null,
  --URL
  url   varchar(250)    null,
  --年限
  age_limit   varchar(19)    null,
  --检索策略
  search_strategy   varchar(500)    null,
  
  --保留
  retain1        varchar(150)    null,
  retain2        varchar(150)    null,
 
  --排序号
  order_no     int default(0),
  --备注
  memo    varchar(500)    null, 
  --创建人组织机构主键
  create_org_pk varchar(50)   not null,
  --创建人主键
  create_user_pk       varchar(50)   not null,
  create_time           varchar(19)   not null,
  --软删除标识	0未删除	1已删除
  delete_type tinyint   default (0)   not null,
  CONSTRAINT PK_T_SEARCH_DATABASE PRIMARY KEY NONCLUSTERED ( SEARCH_DATABASE_PK ));
go

