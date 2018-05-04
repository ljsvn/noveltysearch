-- =============================================
-- 使用刚创建的数据库
-- =============================================
use noveltysearch
go

--======================================================================
--以下是按照国家知识库结构来重新做知识库的表
--======================================================================

-- =============================================
-- 用途：知识点类型
-- 表名：t_kb_type
-- =============================================
if exists (select 1
            from  sysobjects
           where  id = object_id('t_kb_type')
            and   type = 'U')
   drop table t_kb_type
go
create table t_kb_type 
(
	--主键
	kb_type_pk				uniqueidentifier			not null,
	--编码
	kb_type_code         	varchar(100)				not null,
	--名称
	kb_type_name	      	varchar(100)				not null,
	--创建人组织机构主键
	create_org_pk			varchar(50)					not null,
	--创建人主键
	create_user_pk			varchar(50)					not null,
	--创建时间
	create_time				varchar(100)				not null,
	--软删除标识	0未删除	1已删除
	delete_type				tinyint default (0)   		not null,
	constraint PK_T_KB_TYPE primary key clustered (kb_type_pk)
);
go
-- =============================================
-- 用途：知识点目录表
-- 表名：t_kb_directory
-- =============================================
if exists (select 1
            from  sysobjects
           where  id = object_id('t_kb_directory')
            and   type = 'U')
   drop table t_kb_directory
go
create table t_kb_directory 
(
	--主键
	kb_dir_pk				uniqueidentifier			not null,
	--父主键
	parent_pk				varchar(50)					not null,
	--名称
	kb_dir_name				varchar(100)				not null,
	--编码
	kb_dir_code				varchar(100)				not null,
	--（目录）级别
	kb_dir_clevel			int	default(0)				not null,
	--excel标记
	kb_dir_excel_flag		varchar(100)				null,
	--创建人组织机构主键
	create_org_pk			varchar(50)					not null,
	--创建人主键
	create_user_pk			varchar(50)					not null,
	--创建时间
	create_time				varchar(100)				not null,
	--软删除标识	0未删除	1已删除
	delete_type				tinyint default (0)   		not null,
	constraint PK_T_KB_DIRECTORY primary key clustered (kb_dir_pk)
);
go
-- =============================================
--用途：输入的知识点信息
-- 表名：t_kb_content 
-- =============================================
if exists (select 1
            from  sysobjects
           where  id = object_id('t_kb_content')
            and   type = 'U')
   drop table t_kb_content
go
create table t_kb_content 
(
	--主键
	kb_pk					uniqueidentifier			not null,
	--知识点编码
	kb_code					varchar(100)				not null,
	--知识点目录主键
	kb_dir_pk				varchar(50)					not null,
	--知识点类型主键
	kb_type_pk				varchar(50)					not null,
	--知识点类型名称
	kb_type_name	      	varchar(100)				not null,
	--关联知识点主键
	link_kb_pk				varchar(50)					,
	--关联知识点名称
	link_kb_name			varchar(50)					,
	--标题(名称)
	kb_name					varchar(1000)				not null,
	--关键字(多个关键字以逗号分隔)
	key_word				varchar(2000)				,
	--知识库具体内容
	kb_content				ntext						not null,
	--参考资料
	url						varchar(1000)				,
	--备注
	kb_demo					varchar(4000)				,
	--搜索次数
	kb_count				int default(0)				not null,
	--浏览次数
	kb_view_count			int default(0)				not null,
	--最后修改时间
	update_time				varchar(100)				,
	--创建人组织机构主键
	create_org_pk			varchar(50)					not null,
	--创建人主键
	create_user_pk			varchar(50)					not null,
	--创建时间
	create_time				varchar(100)				not null,
	--软删除标识	0未删除	1已删除
	delete_type				tinyint default (0)   		not null,
	constraint PK_T_KB_CONTENT primary key clustered (kb_pk)
);
go