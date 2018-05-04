-- =============================================
use noveltysearch
go
-- =============================================
-- 用途：自动标号存储表
-- 表名：t_serial_number
-- =============================================
if exists (select 1
            from  sysobjects
           where  id = object_id('t_serial_number')
            and   type = 'U')
   drop table t_serial_number
go
create table t_serial_number(
	--主键
	serial_number_pk	uniqueidentifier	        not null,
	--条件
	condition		    varchar(100)			    null,
	--编号位数
	code_length         tinyint  		            null,
	--自动标号
	code                varchar(100)                null,
	--内容
	memo                varchar(200)                null,
	--删除状态(0:表示没有删除，1：表示删除)
   	delete_type         tinyint default(0)   		null,
	--最后修改时间
	last_time			varchar(50)					not null,
	constraint PK_T_SERIAL_NUMBER primary key clustered (serial_number_pk)
);
go