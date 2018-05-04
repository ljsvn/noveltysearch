-- =============================================
-- 使用刚创建的数据库
-- =============================================
use noveltysearch
go
-- =============================================
--用途：记录系统用户操作日志
--表名：t_operation_log
-- =============================================
if exists (select 1
            from  sysobjects
           where  id = object_id('t_operation_log')
            and   type = 'U')
   drop table t_operation_log
go

create table t_operation_log 
(
    --主键
	log_pk        	uniqueidentifier               not null, 
    --操作人主键
    user_pk      varchar(50)                       not null, 
    --操作人 姓名
    user_name      varchar(50)                    not null, 
    --操作人一级组织机构主键
    first_org_pk      varchar(50)                 not null, 
    --操作的内容
    action_content  varchar(100)                    not null, 
    --操作IP
    action_ip        varchar(50)                    not null,
    --创建时间
	create_time         varchar(50)                 not null,
   constraint PK_T_OPERATION_LOG primary key clustered (log_pk)
);
 