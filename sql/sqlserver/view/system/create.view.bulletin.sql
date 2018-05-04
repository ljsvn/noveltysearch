-- =============================================
-- 使用刚创建的数据库
-- =============================================
use noveltysearch
go

-- =============================================
--用途：公告接收信息视图
-- 表名：v_bulletin_view_info
-- =============================================
if exists (select 1 from sysobjects where id = object_id('v_bulletin_view_info') and type = 'V')
   drop view v_bulletin_view_info
go
--创建视图
create view v_bulletin_view_info as
(  
	select newid() as view_pk,bi.*,
	br.receive_pk,br.user_name,br.user_pk,br.bulletin_isread,
	br.create_org_pk as receive_org_pk,br.create_user_pk as receive_user_pk,br.delete_type as receive_delete_type,
	br.create_time as receive_create_time
	from t_bulletin_info bi,t_bulletin_receive br
	where bi.delete_type = 0 and br.delete_type = 0
		and bi.bulletin_pk = br.bulletin_pk
)
go 
