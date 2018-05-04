-- =============================================
-- 使用刚创建的数据库
-- =============================================
use noveltysearch
go
-- =============================================
--用途：用户组织机构视图
-- 表名：v_user_org_view
-- =============================================
if exists (select 1 from sysobjects where id = object_id('v_user_org_view') and type = 'V')
   drop view v_user_org_view
go
--创建视图
create view v_user_org_view as
(  
	select  u.user_pk, u.parent_user_pk, u.org_pk, u.first_org_pk, u.all_org_pk, u.user_login_name, u.user_real_name, u.user_sex, u.user_duty_name, 
      u.user_education, u.user_birthday, u.user_native, u.is_system_user, u.user_marital_status, u.user_password, u.before_login_time, 
      u.delete_type, u.create_user_pk, u.create_time,o.org_name
	from t_user u,t_organization o
	where u.org_pk=o.org_pk 
)
go 
