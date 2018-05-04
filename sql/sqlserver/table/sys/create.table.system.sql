-- =============================================
-- 使用刚创建的数据库
-- =============================================
use noveltysearch
go
-- =============================================
-- 用途：创建组织机构表
-- 表名：t_organization
-- =============================================
if exists (select 1
           from   sysobjects
           where  id = Object_id('t_organization')
                  and type = 'U')
    drop table t_organization
go
create table t_organization (
  --主键
  org_pk      uniqueidentifier   not null,
  --父主键
  father_org_pk varchar(50)   null,
  --1级组织机构主键
  first_org_pk varchar(50)   not null,
  --所有父主键 每个之间用"_"分割
  father_org_pk_all varchar(2000)   null,
  --组织机构名称
  org_name varchar(100)   not null,
  --行政区划
  org_name_short varchar(100)   not null,
  --科所队
  org_type varchar(50)   null, 
  --首字母拼音码
  first_alphabet			varchar(100)					 null,
  --在同级节点下的顺序
  node_orderby			    tinyint   default (0)   null,
  --全部拼音码
  full_alphabet			varchar(1000)					 null,
  --组织结构分类 0：家政公司组织机构，1：政府部门组织机构，2：养老服务站
  org_classify			tinyint default(0)			not null,
  --删除状态(0:表示没有删除，1：表示删除)
  delete_type tinyint   default (0)   null,
  --创建人主键
  create_user_pk varchar(50)   null,
  --创建时间
  create_time varchar(100)   not null,
  constraint pk_t_organization primary key nonclustered ( org_pk ))
go
-- =============================================
--用途：创建职务表
-- 表名：t_duty
-- =============================================
if exists (select 1
            from  sysobjects
           where  id = object_id('t_duty')
            and   type = 'U')
   drop table t_duty
go

create table t_duty (
   --组键
   duty_pk         	uniqueidentifier  				not null,
   --职务名称
   duty_name       	varchar(100)          			not null,
   --备注    
   duty_memo      	varchar(2000)          				null,
   --删除状态(0:表示没有删除，1：表示删除)
   delete_type      tinyint default(0)   				null,
   --创建人主键
   create_user_pk   varchar(50)                  		null,
   --创建时间
   create_time    	varchar(100)         			not null,
   constraint PK_T_DUTY primary key nonclustered (duty_pk)
)
go
/*==============================================================*/
--创建登录用户表
--表名：t_user
/*==============================================================*/
if exists (select 1
           from   sysobjects
           where  id = Object_id('t_user')
                  and type = 'U')
    drop table t_user
go
create table t_user (
  --主键
  user_pk     uniqueidentifier   not null,
  --上级用户主键
  parent_user_pk  varchar(50)   null,
  --所属组织机构主键
  org_pk  varchar(50)  not null,
  --所有组织机构父主键
  all_org_pk varchar(2000)  not null,
  --1级组织机构主键
  first_org_pk varchar(50)   not null,
  --登录名称
  user_login_name varchar(50)   not null,
  --用户姓名
  user_real_name varchar(50)   not null,
  --用户编号
  user_sex  varchar(50)   null,
  --职务名称  注意：全局数据字典
  user_duty_name varchar(50)   null,
  --手机号码
  user_education varchar(50)   null,
  --办公电话
  user_birthday		varchar(50)   null,
  --邮箱
  user_native    varchar(50)   null,
  --联系电话
  user_phone	varchar(50)   null,
  --能否登录   0：是1：否  默认选中 0
  is_system_user tinyint   default (0)   not null,
  --用户性别    0:女 1：男
  user_marital_status tinyint   default (0)   not null,
  --登录密码
  user_password varchar(1000)  not null,
  --上次登录时间
  before_login_time varchar(50)  null,
  --传真
  memo		varchar(2000)		null,
  --所属组织结构分类 0：运营人员，1：政府部门组织机构，2：养老服务站
  org_classify			tinyint default(0)			not null,
  --创建人组织机构主键
  create_org_pk varchar(50)   not null,
  --创建人主键
  create_user_pk varchar(50)  not null,
  --创建时间
  create_time varchar(100)   not null,
  --删除状态(0:表示没有删除，1：表示删除)
  delete_type tinyint   default (0)  not null,
  constraint PK_T_USER primary key nonclustered ( user_pk )
)
go
/*==============================================================*/
--创建角色表
--表名：t_role
/*==============================================================*/
if exists (select 1
           from   sysobjects
           where  id = Object_id('t_role')
                  and type = 'U')
    drop table t_role
go
create table t_role (
  --主键
  role_pk  uniqueidentifier   not null,
  --父主键
  father_role_pk varchar(50)   null,
  --角色名称
  role_name varchar(100)   not null,
  --角色状态 0：启用 1：未启用
  role_state tinyint   default (0)   not null,
  --描述
  role_desc varchar(1000)   null,
  --删除状态(0:表示没有删除，1：表示删除)
  delete_type tinyint   default (0)   null,
  ---------------------------------------------------------------   
  --使用组织机构一级组织机构主键
  first_org_pk    varchar(50)     null,
  ----------------------------------------------------------------
  --创建人主键
  create_user_pk varchar(50)   null,
  --创建时间
  create_time varchar(100)   not null,
  constraint pk_t_role primary key nonclustered ( role_pk ))
go
/*==============================================================*/
--创建角色-菜单权限关联表
--表名：t_role_menu
/*==============================================================*/
if exists (select 1
           from   sysobjects
           where  id = Object_id('t_role_menu')
                  and type = 'U')
    drop table t_role_menu
go
create table t_role_menu (
  --主键
  role_menu_pk uniqueidentifier   not null,
  --一级菜单
  menu_id_one varchar(100)   not null,
  --一级菜单顺序
  menu_one_order int default(0)   ,
  --二级菜单
  menu_id_two varchar(100)   not null,
  --二级菜单顺序
  menu_two_order int default(0)   ,
  --三级菜单
  menu_id_three varchar(100)   null,
  --三级菜单顺序
  menu_three_order int default(0)   ,
  --四级菜单
  menu_id_four varchar(100)   null,
  --四级菜单顺序
  menu_four_order int default(0)   ,
  --角色Pk
  role_pk varchar(50)   null,
  --删除状态(0:表示没有删除，1：表示删除)
  delete_type tinyint   default (0)   null,
  constraint pk_t_role_menu primary key nonclustered ( role_menu_pk ))
go
/*==============================================================*/
--创建角色-portal关联表
--表名：t_role_portal
/*==============================================================*/
if exists (select 1
           from   sysobjects
           where  id = Object_id('t_role_portal')
                  and type = 'U')
    drop table t_role_portal
go
create table t_role_portal (
  --主键
  role_portal_pk uniqueidentifier   not null,
  --portalsId
  portals_id varchar(100)   not null,
  --portalId
  portal_id varchar(100)   not null,
  --第几列portal
  protals_columnNo   int default(0) ,
  --排在portal列的顺序
  protal_order       int default(0)   ,
  --角色Pk
  role_pk varchar(50)   null,
  --删除状态(0:表示没有删除，1：表示删除)
  delete_type tinyint   default (0)   null,
  constraint pk_t_role_portal primary key nonclustered ( role_portal_pk ))
go
/*==============================================================*/
--创建角色-功能按钮关联表
--表名：t_role_button
/*==============================================================*/
if exists (select 1
           from   sysobjects
           where  id = Object_id('t_role_button')
                  and type = 'U')
    drop table t_role_button
go
create table t_role_button (
  --主键
  role_button_pk uniqueidentifier   not null,
  --功能页面Id
  page_id varchar(100)   not null,
  --功能按钮Id
  button_id varchar(100)   not null,
  --角色Pk
  role_pk varchar(50)   null,
  --删除状态(0:表示没有删除，1：表示删除)
  delete_type tinyint   default (0)   null,
  constraint pk_t_role_button primary key nonclustered ( role_button_pk ))
go
/*==============================================================*/
--创建角色-登录用户关联表
--表名：t_user_role
/*==============================================================*/
if exists (select 1
           from   sysobjects
           where  id = Object_id('t_user_role')
                  and type = 'U')
    drop table t_user_role
go
create table t_user_role (
  user_role_pk uniqueidentifier   not null,
  user_pk      varchar(50)   null,
  role_pk      varchar(50)   null,
  --删除状态(0:表示没有删除，1：表示删除)
  delete_type tinyint   default (0)   null,
  constraint pk_t_user_role primary key nonclustered ( user_role_pk ))
go


/*==============================================================*/
--创建角色-组织机构权限表
--表名：t_role_org
/*==============================================================*/
if exists (select 1
           from   sysobjects
           where  id = Object_id('t_role_org')
                  and type = 'U')
    drop table t_role_org
go
create table t_role_org (
  --主键
  role_org_pk uniqueidentifier   not null,
  --用户Id
  user_id varchar(100)   not null,
  --组织机构Id
  org_id varchar(100)   not null,
  --角色Pk
  role_pk varchar(50)   null,
  --删除状态(0:表示没有删除，1：表示删除)
  delete_type tinyint   default (0)   null,
  constraint pk_t_role_org primary key nonclustered ( role_org_pk ))
go