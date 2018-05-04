---- =============================================
-- 使用刚创建的数据库
-- =============================================
use noveltysearch
go
-- =============================================
-- Author:		puxiaolong
-- Create date: 2010-02-23
-- Description:根据原生sql修改指定表的值
-- =============================================
--根据原始sql执行插入数据
if exists (select name from sysobjects where 
			name = 'p_exec_sql_util' and type='P')
	drop procedure p_exec_sql_util
go
create procedure p_exec_sql_util
	@execsql text--要执行的sql 
	as
	begin  
     exec(@execsql)
     commit;
    end
go