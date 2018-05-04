-- =============================================
-- 使用数据库
-- =============================================
use noveltysearch
go

-- =============================================
-- 用途：检索结果
-- 表名：t_search_result
-- =============================================
if exists (select 1
           from   sysobjects
           where  id = Object_id('t_search_result')
                  and type = 'U')
    drop table t_search_result
go
create table t_search_result (
  --主键
  search_result_pk  uniqueidentifier   not null,
  --合同主键
  contract_pk       varchar(50)   not null,
  --题目
  search_result_name   varchar(150)    null,
  --作者
  author   varchar(150)    null,
  --作者单位(或者称机构)
  company   varchar(150)    null,
  --来源(应包括来源出版物名称、发表年、卷、期、起始及终止页)(或是其他来源如会议的名称、地点、会议时间、会议论文集名称等)
  source   varchar(300)    null,
  --ISSN
  issn     varchar(250)  null,
  --摘要
  result_abstract   varchar(300)    null,
  --主题词(或称序词、关键词)
  keyword    varchar(300)    null,
  --分类
  result_class   varchar(150)    null,
  --保留
  retain1        varchar(150)    null,
  retain2        varchar(150)    null,
  retain3        varchar(150)    null,
  retain4        varchar(150)    null,
  retain5        varchar(150)    null,
  retain6        varchar(150)    null,
  retain7        varchar(150)    null,
  --排序号
  order_no     int default(0),
  --备注
  memo    varchar(500)    null, 
  --创建人组织机构主键
  create_org_pk varchar(50)   not null,
  --创建人主键
  create_user_pk       varchar(50)   not null,
  --创建时间
  create_time           varchar(19)   not null,
  --软删除标识	0未删除	1已删除
  delete_type tinyint   default (0)   not null,
  CONSTRAINT PK_T_SEARCH_RESULT PRIMARY KEY NONCLUSTERED ( SEARCH_RESULT_PK ));
go

