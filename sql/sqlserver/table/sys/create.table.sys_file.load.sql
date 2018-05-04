
-- =============================================
-- 使用刚创建的数据库
-- =============================================
use noveltysearch
go
 
-- =============================================
-- 用途：文件上传导入信息
-- 表名：t_fileupload_info
-- =============================================
if exists (select 1
            from  sysobjects
           where  id = object_id('t_file_upload_info')
            and   type = 'U')
   drop table t_file_upload_info
go
create table t_file_upload_info 
(
	--主键
   info_pk              uniqueidentifier           	not null,
   --文件类型：是在配置文件中的Id
   config_id            varchar(100)               	not null,
   --任务类型: 0业务营销,1客户关怀
   load_type            tinyint   	default(0)    		null,
   --状态 
   task_state			tinyint     default(0)			null,
   --任务名称
   load_name            varchar(100)               	not null,
   --文件名称
   file_name            varchar(100)               	not null,
   --文件路径名
   file_path            varchar(1000)              	not null,
   --解析结果错误内容
   parse_result_content ntext               		not null,
   --上传人主键
   --任务执行开始时间
   work_start_time      varchar(100)                	null,
   --任务执行结束时间
   work_stop_time       varchar(100)                	null,
   --删除状态(0:表示没有删除，1：表示删除)
   delete_type          tinyint default(0)   			null,
   --创建人主键
   create_user_pk       varchar(50)                  	null,
   --创建时间
   create_time          varchar(100)                not null,
   constraint PK_T_FILE_UPLOAD_INFO primary key clustered (info_pk)
);
