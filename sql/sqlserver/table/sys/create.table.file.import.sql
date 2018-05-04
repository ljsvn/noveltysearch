-- =============================================
-- 使用刚创建的数据库
-- =============================================
use noveltysearch
go
 -- =============================================
-- 用途：文件导入信息表
-- 表名：t_execl_file_import_info
-- =============================================
if exists (select 1
            from  sysobjects
           where  id = object_id('t_execl_file_import_info')
            and   type = 'U')
   drop table t_execl_file_import_info
go
create table t_execl_file_import_info 
(
  --主键
  execl_file_import_pk   uniqueidentifier   not null,
  --导入类型
  --"yearPlaneImportId"	年计划导入 
  execl_file_import_type_id   varchar(100)               	not null,
  --文件名称
  execl_file_name            varchar(100)               	not null,
  --文件路径名 注意：是指定文件夹下+导入类型
  execl_file_path            varchar(1000)              	not null, 
  --文件导入方式  注意：0代表新增导入，1：代表覆盖导入
  import_file_method         tinyint   default (0)   not null,
  --文件导入错误内容 注意：在导入界面并不出现，在列表页面有状态显示 ，查看错误时以列表的形式展现：列表字段是：第几行，什么数据出现错误，错误原因是什么
  execl_file_import_error_content  text,
   --使用组织机构分厂主键
  first_org_pk    varchar(50)     null,
  --创建人组织机构主键
  create_org_pk    varchar(50)   not null,
  --创建人主键
  create_user_pk       varchar(50)   not null,
  --创建时间
  create_time           varchar(19)   not null,
  --软删除标识	0未删除	1已删除
  delete_type tinyint   default (0)   not null,
  constraint PK_T_EXECL_FILE_IMPORT_INFO primary key nonclustered ( execl_file_import_pk ));
go

 -- =============================================
-- 用途：文件导入信息内容存储临时表
-- 表名：t_execl_file_import_temp_content
-- =============================================
if exists (select 1
            from  sysobjects
           where  id = object_id('t_execl_file_import_temp_content')
            and   type = 'U')
   drop table t_execl_file_import_temp_content
go
create table t_execl_file_import_temp_content 
(
  --主键
  execl_file_import_temp_pk   uniqueidentifier   not null,
  --文件导入信息表主键
  execl_file_import_pk        varchar(50)               	not null,
  --第几个sheeth号 注意：默认是第一个sheet 其值为0
  sheet_no                    tinyint   default (0)   not null,
  --sheet第几行数据
  row_no                      int   default (0)       not null,
  --文件第1列
  file_colmun1                varchar(2000)               	 null,
  --文件第2列
  file_colmun2                varchar(2000)               	 null,
  --文件第3列
  file_colmun3                varchar(2000)               	 null,
  --文件第4列
  file_colmun4                varchar(2000)               	 null,
  --文件第5列
  file_colmun5                varchar(2000)               	 null,
  --文件第6列
  file_colmun6                varchar(2000)               	 null,
  --文件第7列
  file_colmun7                varchar(2000)               	 null,
  --文件第8列
  file_colmun8                varchar(2000)               	 null,
  --文件第9列
  file_colmun9                varchar(2000)               	 null,
  --文件第10列
  file_colmun10                varchar(2000)               	 null,
  --文件第11列
  file_colmun11                varchar(2000)               	 null,
  --文件第12列
  file_colmun12                varchar(2000)               	 null,
  --文件第13列
  file_colmun13                varchar(2000)               	 null,
  --文件第14列
  file_colmun14                varchar(2000)               	 null,
  --文件第15列
  file_colmun15                varchar(2000)               	 null,
  --文件第16列
  file_colmun16                varchar(2000)               	 null,
  --文件第17列
  file_colmun17                varchar(2000)               	 null,
  --文件第18列
  file_colmun18                varchar(2000)               	 null,
  --文件第19列
  file_colmun19               varchar(2000)               	 null,
  --文件第20列
  file_colmun20                varchar(2000)               	 null,
  --文件第21列
  file_colmun21                varchar(2000)               	 null,
  --文件第22列
  file_colmun22                varchar(2000)               	 null,
  --文件第23列
  file_colmun23                varchar(2000)               	 null,
  --文件第24列
  file_colmun24                varchar(2000)               	 null,
  --文件第25列
  file_colmun25                varchar(2000)               	 null,
  --文件第26列
  file_colmun26                varchar(2000)               	 null,
  --文件第27列
  file_colmun27                varchar(2000)               	 null,
  --文件第28列
  file_colmun28                varchar(2000)               	 null,
  --文件第29列
  file_colmun29                varchar(2000)               	 null,
  --文件第30列
  file_colmun30                varchar(2000)               	 null,
  --文件第31列
  file_colmun31                varchar(2000)               	 null,
  --文件第32列
  file_colmun32                varchar(2000)               	 null,
  --文件第33列
  file_colmun33                varchar(2000)               	 null,
  --文件第34列
  file_colmun34                varchar(2000)               	 null,
  --文件第35列
  file_colmun35                varchar(2000)               	 null,
  --文件第36列
  file_colmun36                varchar(2000)               	 null,
  --文件第37列
  file_colmun37                varchar(2000)               	 null,
  --文件第38列
  file_colmun38                varchar(2000)               	 null,
  --文件第39列
  file_colmun39                varchar(2000)               	 null,
  --文件第40列
  file_colmun40                varchar(2000)               	 null,
  --文件第41列
  file_colmun41                varchar(2000)               	 null,
  --文件第42列
  file_colmun42                varchar(2000)               	 null,
  --文件第43列
  file_colmun43                varchar(2000)               	 null,
  --文件第44列
  file_colmun44                varchar(2000)               	 null,
  --文件第45列
  file_colmun45                varchar(2000)               	 null,
  --文件第46列
  file_colmun46                varchar(2000)               	 null,
  --文件第47列
  file_colmun47                varchar(2000)               	 null,
  --文件第48列
  file_colmun48                varchar(2000)               	 null,
  --文件第49列
  file_colmun49                varchar(2000)               	 null,
  --文件第50列
  file_colmun50                varchar(2000)               	 null,
  constraint PK_T_EXECL_FILE_IMPORT_TEMP_CONTENT primary key nonclustered ( execl_file_import_temp_pk ));
go