-- =============================================
-- 使用刚创建的数据库
-- =============================================
use noveltysearch
go
-- =============================================
--用途：创建数据字典表
-- 表名：t_data_dictionary_common 
-- =============================================
if exists (select 1 from  sysobjects where  id = object_id('t_data_dictionary_common') and type = 'U')
	drop table t_data_dictionary_common
go
 
create table t_data_dictionary_common 
( 
	--	主键	
	dic_common_pk			uniqueidentifier				not null,
	--	父主键
	dic_common_father_pk	varchar(50)						not null,
	--	编码:全局唯一
	dic_code				varchar(100)					not null,
	--	名称:同类型下唯一
	dic_name				varchar(100)					not null,
	--	首字母拼音码
	frist_alphabet			varchar(100)					not null,
	--	全部拼音码
	full_alphabet			varchar(1000)					not null,
	--	类型
	dict_type				tinyint default(0)				not null,
   	--删除状态(0:表示没有删除，1：表示删除)
   	delete_type          	tinyint default(0)   				null,
	--	创建人
	create_user_pk			varchar(50)						not null,
	--	创建时间
	create_time				varchar(50)						not null,
	--节点顺序
	node_orderby			int              default (0)   not null,
	constraint PK_T_DATA_DICTIONARY_COMMON primary key clustered (dic_common_pk)
);
go