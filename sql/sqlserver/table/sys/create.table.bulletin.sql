---- =============================================
-- 使用刚创建的数据库
-- =============================================
use noveltysearch
go

-- =============================================
--用途：公告发送表
-- 表名：t_bulletin_info 
-- =============================================
if exists (select 1
            from  sysobjects
           where  id = object_id('t_bulletin_info')
            and   type = 'U')
   drop table t_bulletin_info 
go
 
create table t_bulletin_info 
(
   --公告信息主键
   bulletin_pk          uniqueidentifier         	   not null,
   --发送方式 0全体 1部门 2个人
   send_type	        tinyint     	default(0)     not null,
   --公告标题
   bulletin_title       varchar(100)                   not null,
   --图片路径
   img_path				varchar(100)                   ,
   --附件路径
   file_path            varchar(100)                   ,
   --附件名称
   file_name          	varchar(100)                   ,
   --公告内容
   bulletin_note        ntext                          ,
   --公告类型   全局数据字典
   bulletin_type        varchar(50)                    not null,
   --是否是草稿 0:否，1:是
   is_draft				tinyint default(0)			   not null, 
   --创建人组织机构主键
   create_org_pk        varchar(50)                    not null,   
   --创建人主键
   create_user_pk       varchar(50)                    not null,   
   --删除状态(0:表示没有删除，1：表示删除)
   delete_type          tinyint     	default(0)     not null,
   --创建时间   
   create_time          varchar(100)                   not null,
   constraint PK_T_BULLETIN_INFO primary key clustered (bulletin_pk)
);

-- =============================================
--用途：公告接收表
-- 表名：t_bulletin_receive 
-- =============================================
if exists (select 1
            from  sysobjects
           where  id = object_id('t_bulletin_receive')
            and   type = 'U')
   drop table t_bulletin_receive  
go

create table t_bulletin_receive 
(
   --公告接收主键
   receive_pk           uniqueidentifier        	   not null,
   --公告信息主键
   bulletin_pk          varchar(50)                    not null,
   --发送方式 0全体 1部门 2个人 3坐席
   send_type	        tinyint     	default(0)     not null,
   --接收人主键
   user_pk              varchar(50)                    not null,
   --接收人姓名
   user_name            varchar(50)                    not null,
   --是否已读   0:未读 1:已读
   bulletin_isread      tinyint default(0),
   --创建人组织机构主键
   create_org_pk        varchar(50)                    null,   
   --创建人主键
   create_user_pk       varchar(50)                    null,   
   --删除状态(0:表示没有删除，1：表示删除)
   delete_type          tinyint     	default(0)     null,
   --创建时间   
   create_time          varchar(100)                   not null,
   constraint PK_T_BULLETIN_RECEIVE primary key clustered (receive_pk)
);
