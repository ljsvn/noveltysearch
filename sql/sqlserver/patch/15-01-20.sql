---- =============================================
-- 使用刚创建的数据库
-- =============================================
use noveltysearch
go

-- 要事日记主表中增加“记录时间”字段 
alter table t_main_diary add main_diary_time varchar(19) default('') not null;


alter table t_contract add contract_code varchar(50) default('')  null;
--科技查新合同主表中增加“纳税人识别号”字段 
alter table t_contract add taxpayer_no varchar(100)   null;
