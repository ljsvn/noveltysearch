-- =============================================
-- 使用数据库
-- =============================================
use noveltysearch
go

-- =============================================
-- 用途：科技查新合同
-- 表名：t_contract
-- =============================================
if exists (select 1
           from   sysobjects
           where  id = Object_id('t_contract')
                  and type = 'U')
    drop table t_contract
go
create table t_contract (
  --主键
  contract_pk  uniqueidentifier   not null,
  --名称
  contract_name    varchar(150)   not null,
  --名称 英文
  contract_ename   varchar(150)    null,
  --单位
  company varchar(50)    null,
  --负责人
  lead   varchar(50)    null,
  --通讯地址
  address   varchar(250)    null,
  --邮编
  post_code varchar(10)    null,
  --联系人
  linkman   varchar(20)   null,
  --电话
  tel       varchar(20)   null,
  --电子邮箱
  email     varchar(50)   null,
  --开始时间
  begin_time varchar(19)  null,
  --结束时间
  end_time varchar(19)   null,
  --查新方 负责人
  leading_official varchar(50)    null,
  --查新人
  office_holder varchar(50)    null,
  --查新范围
  purpose_scope varchar(500)    null, 
  --查新目的立项查新
  project_approval  varchar(100) null,
  --查新目的 成果查新
  achievement   varchar(100) null,
  --查新目的 其他
  objective_other varchar(100) null,
  --查新点
  novelty_point text  null,
  --检索词（中、英文）
  key_words varchar(500)    null, 
  search_terms_strategy varchar(500)    null,
  
  --纳税人识别号
  taxpayer_no varchar(100) null,
  
  --状态 [新建、检索主题分类、]
  contract_state  varchar(50) null,
  --附件路径
  file_path            varchar(100)                   ,
  --附件名称
  file_name          	varchar(100)   ,
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
  CONSTRAINT PK_t_contract PRIMARY KEY NONCLUSTERED ( contract_pk ));
go