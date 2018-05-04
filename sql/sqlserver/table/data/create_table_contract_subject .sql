
-- =============================================
-- 使用数据库
-- =============================================
use noveltysearch
go

-- =============================================
-- 用途：合同主题分类
-- 表名：t_contract_subject
-- =============================================
if exists (select 1
           from   sysobjects
           where  id = Object_id('t_contract_subject')
                  and type = 'U')
    drop table t_contract_subject
go
create table t_contract_subject (
  --主键
  contract_subject_pk  uniqueidentifier   not null,
  --合同主键
  subject_class_pk  varchar(50)    not null,
  contract_pk       varchar(50)   not null,
  --名称
  subject_class_name   varchar(150)    null,
  --别名
  alias_name1   varchar(150)    null,
  alias_name2   varchar(150)    null,
  alias_name3   varchar(150)    null,
  --英文名称
  subject_class_ename varchar(150)  null,
  alias_ename1   varchar(150)    null,
  alias_ename2   varchar(150)    null,
  alias_ename3   varchar(150)    null,
  alias_ename4   varchar(150)    null,
  alias_ename5   varchar(150)    null,
  retain1        varchar(150)    null,
  retain2        varchar(150)    null,
  --是否是主题词  0分类   1 主题词
  is_key_word     tinyint   default (0)   not null, 
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
  CONSTRAINT PK_T_CONTRACT_SUBJECT PRIMARY KEY NONCLUSTERED ( CONTRACT_SUBJECT_PK ));
go

