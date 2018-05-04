-- =============================================
-- 使用刚创建的数据库
-- =============================================
use noveltysearch
go
-- =============================================
--用途：用户组织机构视图
-- 表名：v_user_org
-- =============================================
if exists (select 1 from sysobjects where id = object_id('v_user_org') and type = 'V')
   drop view v_user_org
go
--创建视图
create view v_user_org as
(  
	select u.*,o.org_name_short,o.org_type,o.org_name from t_user u,t_organization o
	where u.org_pk=o.org_pk 
)
go 