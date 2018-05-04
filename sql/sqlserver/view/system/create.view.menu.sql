-- =============================================
-- 使用刚创建的数据库
-- =============================================
use noveltysearch
go
-- =============================================
--用途：用户的一级菜单
-- 表名：v_user_menu_modual
-- =============================================
if exists (select 1 from sysobjects where id = object_id('v_user_menu_modual') and type = 'V')
   drop view v_user_menu_modual
go
--创建视图
create view v_user_menu_modual as
(  
 select newId() menu_modual_pk,a.* from (
   select   u.user_pk,r.role_pk,m.menu_id_one  from t_role_menu m,t_role r,t_user_role u
    where u.delete_type=0 
      and r.delete_type=0
      and m.delete_type=0 
      and m.menu_id_two=''
      and r.role_pk=m.role_pk
      and u.role_pk=r.role_pk
) a
)
go 

-- =============================================
--用途：用户的二级菜单
-- 表名：v_user_menu_two
-- =============================================
if exists (select 1 from sysobjects where id = object_id('v_user_menu_two') and type = 'V')
   drop view v_user_menu_two
go
--创建视图
create view v_user_menu_two as
(  
  select newid() user_two_menu_pk,a.*
  from (
    select user_pk,role_pk,menu_id_one,menu_id_two,sum(threeCount)threeCount from
    (
      select u.user_pk,r.role_pk,m.menu_id_one,m.menu_id_two,0 threeCount
    from t_role_menu m,t_role r,t_user_role u
	where u.delete_type=0 
		  and r.delete_type=0
		  and m.delete_type=0
		  and u .role_pk=r.role_pk 
		  and m.role_pk=r.role_pk 
          and m.menu_id_two!=''
          and m.menu_id_three=''
	group by u.user_pk,r.role_pk,m.menu_id_one,m.menu_id_two

union
 
   select u.user_pk,r.role_pk,menu_id_one,menu_id_two,count(menu_id_three) threeCount
    from t_role_menu m,t_role r,t_user_role u
	where u.delete_type=0 
		  and r.delete_type=0
		  and m.delete_type=0
		  and u .role_pk=r.role_pk 
		  and m.role_pk=r.role_pk 
          and m.menu_id_two!=''
          and m.menu_id_three!=''
	group by u.user_pk,r.role_pk,menu_id_one,menu_id_two
    ) b group by user_pk,role_pk,menu_id_one,menu_id_two
  )a 
)
go 
 
-- =============================================
--用途：用户的三级菜单
-- 表名：v_user_menu_three
-- =============================================
if exists (select 1 from sysobjects where id = object_id('v_user_menu_three') and type = 'V')
   drop view v_user_menu_three
go
--创建视图
create view v_user_menu_three as
(  
   select newid() user_three_menu_pk,a.*
   from (
   select user_pk,role_pk,menu_id_one,menu_id_two,menu_id_three,sum(fourCount)fourCount from (
     select u.user_pk,r.role_pk,menu_id_one,menu_id_two,menu_id_three,0 fourCount
     from t_user u,t_user_role r,t_role_menu f
	   where u.delete_type=0 
		  and r.delete_type=0
		  and f.delete_type=0
		  and u.user_pk=r.user_pk 
		  and f.role_pk=r.role_pk
          and f.menu_id_three!=''
          and f.menu_id_four=''
	group by u.user_pk,r.role_pk,menu_id_one,menu_id_two,menu_id_three
	
	union
	
	select u.user_pk,r.role_pk,menu_id_one,menu_id_two,menu_id_three,count(menu_id_four) fourCount
     from t_user u,t_user_role r,t_role_menu f
	   where u.delete_type=0 
		  and r.delete_type=0
		  and f.delete_type=0
		  and u.user_pk=r.user_pk 
		  and f.role_pk=r.role_pk
          and f.menu_id_three!=''
          and f.menu_id_four!=''
	group by u.user_pk,r.role_pk,menu_id_one,menu_id_two,menu_id_three
   ) b group by  user_pk, role_pk,menu_id_one,menu_id_two,menu_id_three 
 )a
)
go 

-- =============================================
--用途：用户的二、三、四级菜单
-- 表名：v_user_menu_function
-- =============================================
if exists (select 1 from sysobjects where id = object_id('v_user_menu_function') and type = 'V')
   drop view v_user_menu_function
go
--创建视图
create view v_user_menu_function as
(  
select newId() menu_function_pk,a.* from (
 select distinct u.user_pk,r.role_pk,f.menu_id_one,f.menu_id_two,f.menu_id_three,f.menu_id_four from t_user u,t_user_role r,t_role_menu f
 where u.delete_type=0 
      and r.delete_type=0
      and f.delete_type=0
      and u.user_pk=r.user_pk 
      and f.role_pk=r.role_pk
)a 
)
go 
 
-- =============================================
--用途：用户的portal权限
-- 表名：v_user_menu_portal
-- =============================================
if exists (select 1 from sysobjects where id = object_id('v_user_menu_portal') and type = 'V')
   drop view v_user_menu_portal
go
--创建视图
create view v_user_menu_portal as
(  
  select newId() menu_portal_pk,u.user_pk,r.role_pk,p.portals_id,p.portal_id from t_user u,t_user_role r,t_role_portal p
  where u.delete_type=0 
      and r.delete_type=0
      and p.delete_type=0
      and u.user_pk=r.user_pk 
      and p.role_pk=r.role_pk
)
go 
-- =============================================
--用途：用户的功能按钮权限
-- 表名：v_user_menu_button
-- =============================================
if exists (select 1 from sysobjects where id = object_id('v_user_menu_button') and type = 'V')
   drop view v_user_menu_button
go
--创建视图
create view v_user_menu_button as
(  
 select newId() menu_button_pk,u.user_pk,r.role_pk,b.page_id,b.button_id from t_user u,t_user_role r,t_role_button b
  where u.delete_type=0 
      and r.delete_type=0
      and b.delete_type=0
      and u.user_pk=r.user_pk 
      and b.role_pk=r.role_pk
)
go 