
-- =============================================
-- 使用数据库
-- =============================================
use noveltysearch
go

-- =============================================
-- 用途：主题分类
-- 表名：t_subject_class
-- =============================================
if exists (select 1
           from   sysobjects
           where  id = Object_id('t_subject_class')
                  and type = 'U')
    drop table t_subject_class
go
create table t_subject_class (
  --主键
  subject_class_pk  uniqueidentifier   not null,
   --父主键
  father_pk varchar(50)   null,
  --所有父主键 每个之间用"_"分割
  father_pk_all varchar(2000)   null,
  
  --名称
  subject_class_name   varchar(150)    null,
  --别名
  alias_name1   varchar(150)    null,
  alias_name2   varchar(150)    null,
  alias_name3   varchar(150)    null,
  
  alias_name4   varchar(150)    null,
  alias_name5   varchar(150)    null,
  alias_name6   varchar(150)    null,
  --英文名称
  subject_class_ename varchar(150)  null,
  alias_ename1   varchar(150)    null,
  alias_ename2   varchar(150)    null,
  alias_ename3   varchar(150)    null,
  alias_ename4   varchar(150)    null,
  alias_ename5   varchar(150)    null,
  alias_ename6   varchar(150)    null,
  alias_ename7   varchar(150)    null,
  alias_ename8   varchar(150)    null,
  alias_ename9   varchar(150)    null,
  retain1        varchar(150)    null,
  retain2        varchar(150)    null,
  retain3        varchar(150)    null,
  --是否是主题词  0分类   1 主题词
  is_key_word     tinyint   default (0)   not null, 
  --状态
  state varchar(19)   null,
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
  CONSTRAINT PK_T_SUBJECT_CLASS PRIMARY KEY NONCLUSTERED ( SUBJECT_CLASS_PK ));
go


-- =============================================
-- 用途：主题分类权重表
-- 表名：t_subject_class_weight
-- =============================================
if exists (select 1
           from   sysobjects
           where  id = Object_id('t_subject_class_weight')
                  and type = 'U')
    drop table t_subject_class_weight
go
create table t_subject_class_weight (
  --主键
  subject_class_weight_pk  uniqueidentifier   not null, 
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
  CONSTRAINT PK_T_SUBJECT_CLASS_WEIGHT PRIMARY KEY NONCLUSTERED ( SUBJECT_CLASS_WEIGHT_PK ));
go


