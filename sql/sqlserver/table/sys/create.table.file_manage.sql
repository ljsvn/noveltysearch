-- =============================================
-- 使用刚创建的数据库
-- =============================================
use noveltysearch
go
-- =============================================
-- 用途：文件目录表
-- 表名：t_file_directory
-- =============================================
if exists (select 1
            from  sysobjects
           where  id = object_id('t_file_directory')
            and   type = 'U')
   drop table t_file_directory
go
create table t_file_directory(
	--主键
	file_directory_pk			uniqueidentifier			not null,
	--父主键
	father_file_directory_pk	varchar(50)					not null,
	--名称 备注：同级目录下名称不能相同
	directory_name				varchar(50)					not null,
	--创建人主键
	create_user_pk			varchar(50)					not null,
	--创建时间
	create_time				varchar(100)				not null,
	--软删除标识	0未删除	1已删除
	delete_type				tinyint default (0)   		not null,
	constraint PK_T_FILE_DIRECTORY primary key clustered (file_directory_pk)
);
go
-- =============================================
-- 用途：文件存储表
-- 表名：t_file_store
-- =============================================
if exists (select 1
            from  sysobjects
           where  id = object_id('t_file_store')
            and   type = 'U')
   drop table t_file_store
go
create table t_file_store(
	--主键
	file_store_pk				uniqueidentifier			not null,
	--文件所在目录pk
	file_directory_pk			varchar(50)					,
	--文件名称 自动截取上传文件的名称
	file_name					varchar(100)				,
	--文件概要说明
	file_narrate				varchar(2000)				,
	--文件搜索关键字
	file_keywords				varchar(200)				,
	--文件上传存储路径  
	--注意如果转换成功，转换过的文件也会存在这个路径下
	file_sotre_upload_path		varchar(200)				not null,
	-- 是否转换 0：未转换    1：已转换
	file_transition				tinyint default (0)   		not null,
	--文件上传人
	create_user_name			varchar(50)					not null,
	--创建人主键（文件上传人pk）
	create_user_pk				varchar(50)					not null,
	--创建时间
	create_time					varchar(100)				not null,
	--软删除标识	0未删除	1已删除
	delete_type					tinyint default (0)   		not null,
	constraint PK_T_FILE_STORE primary key clustered (file_store_pk)
);
go
-- =============================================
-- 用途：文件操作表：含谁什么时间进行查看，下载
-- 表名：t_file_operation
-- =============================================
if exists (select 1
            from  sysobjects
           where  id = object_id('t_file_operation')
            and   type = 'U')
   drop table t_file_operation
go
create table t_file_operation(
	--主键
	file_operation_pk			uniqueidentifier			not null,
	--文件存储表pk
	file_store_pk				varchar(50)					,
	--操作类型  0：查看    1：下载
	file_operation_type			tinyint default (0)   		not null,
	--操作人
	create_user_name			varchar(50)					not null,
	--操作人主键（文件上传人pk）
	create_user_pk				varchar(50)					not null,
	--操作时间
	create_time					varchar(100)				not null,
	--软删除标识	0未删除	1已删除
	delete_type					tinyint default (0)   		not null,
	constraint PK_T_FILE_OPERATION primary key clustered (file_operation_pk)
);
go
