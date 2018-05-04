---- =============================================
--  补全数据字典
-- =============================================
delete FROM t_data_dictionary_common
go
--性别
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3','0','未知的性别','wzdxb','WEIZHIXINGBIE',3,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3','1','男','n','NAN',3,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3','2','女','n','NV',3,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3','9','未说明的性别','n','WEISHUOMINGXINGBIE:',3,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
--线索类别
VALUES(newid(),'4','010000','危害国家安全案','whgjaqa','WEIHAIGUOJIAANQUANAN',4,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4','020000','危害公共安全案','whggaqa','WEIHAIGONGGONGANQUANAN',4,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4','030000','破坏社会主义市场经济秩序案','phshzyscjjzxa','POHUAISHEHUIZHUYISHICHANGJINGJIZHIXU',4,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4','040000','破坏公民人身权利、民主权利案','phgmrsqmzqla','POHUAIGONGMINRENSHENQUANLIMINZHUQUANLIAN',4,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4','050000','侵犯财产案','qfcca','QINFANCAICHANAN',4,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4','060000','妨害社会管理秩序案','fhshglzxa','FANGHAISHENGHUIGUANLIZHIXUAN',4,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4','070000','危害国防利益案','whgflya','WEIHAIGUOFANGLIYIAN',4,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4','080000','贪污贿赂案','twhla','TANWUHUILUAN',4,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4','090000','渎职案','dza','渎职案',4,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4','100000','军人违反职责案','jrwfzza','JUNRENWEIFANZHIZEAN',4,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4','110000','刑事案件','xsaj','XINGSHIANJIAN',4,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4','200000','行政（治安）案例','xzzaal','XINGZHENGZHIANANLI',4,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4','210000','涉外行政案件','swxzaj','SHEWAIXINGZHENGANJIAN',4,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4','220000','交通行政案件','jtxzaj','JIAOTONGXINGZHENGANJIAN',4,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4','230000','消防行政案件','xfxzaj','XIAOFANGXINGZHENGANJIAN',4,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4','240000','信息网络安全行政案件','xxwlaqxzaj','XINXIWANGLUOANQUANXINGZHENGANJIAN',4,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4','250000','治安管理行政案件','zaglxzaj','ZHIANGUANLIXINGZHENGANJIAN',4,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4','290000','其他行政案件','qtxzaj','QITAXINGZHENGANJIAN',4,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4','300000','治安案件案由','zaajay','ZHIANANJIANANYOU',4,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
--特情成分
VALUES(newid(),'2','1','刑满释放解除劳教','xmsfjclj','XINGMANSHIFANGJIECHULAOJIAO',2,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2','2','有违法犯罪行为','ywffzxw','YOUWEIFAFANZUIXINGWEI',2,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2','3','基本群众','jbqz','JIBENQUNZHONG',2,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
--宗教信仰
VALUES(newid(),'5','00','无宗教信仰','wzjxy','WUZONGJIAOXINYANG',5,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5','10','佛教','fj','FOJIAO',5,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5','20','喇嘛教','lmj','LAMAJIAO',5,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5','30','道教','dj','DAOJIAO',5,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5','40','天主教','tzj','TIANZHUJIAO',5,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5','50','基督教','jdj','JIDUJIAO',5,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5','60','东正教','dzj','DONGZHENGJIAO',5,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5','70','伊斯兰教','yslj','YISILANJIAO',5,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5','99','其它','qt','QITA',5,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
--文化程度
VALUES(newid(),'7','10','研究生','yjs','YANJIUSHENG',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','11','研究生毕业','yjsby','YANJIUSHENGBIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','19','研究生肄业','yjsyy','YANJIUSHENGYIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','20','大学本科','dxbk','DAXUEBENKE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','28','相当大学毕业','xddxby','XIANGDANGDAXUEBIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','29','大学肄业','dxyy','DAXUEYIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','30','大学专科和专科学院','dxzkhzkxy','DAXUEZHUANKEHEZHUANKEXUEYUAN',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','31','专科毕业','zkby','ZHUANKEBIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','38','相当专科毕业','xdzkby','XIANGDANGZHUANKEBIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','39','专科肄业','zkyy','ZHUANKEYIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','40','中等专业学校或中等技术学校','zdzyxx','ZHONGDENGZHUANYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','41','中专毕业','zzby','ZHONGZHUANBIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','42','中技毕业','zjby','ZHONGJIBIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','20','相当中专或中技毕业','xdzzzjby','XIANGDANGZHONGZHUAN',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','48','相当大学毕业','xddxby','XIANGDANGDAXUEBIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','49','中专或中技肄业','zzhzjyy','ZHONGZHUANHUOZHONGJIYIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','50','技工学校','jgxx','JIGONGXUEXIAO',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','51','技工学校毕业','jgxxby','JIGONGXUEXIAOBIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','59','技工学校肄业','jgxxyy','JIGONGXUEXIAOYIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','60','高中','gz','GAOZHONG',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','61','高中毕业','gzby','GAOZHONGBIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','62','职业高中毕业','zygzby','ZHIYEGAOZHONGBIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','63','农业高中毕业','nygzby','NONGYEGAOZHONGBIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','68','相当高中毕业','xdgzby','XIANGDANGGAOZHONGBIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','69','高中肄业','gzyy','GAOZHONGYIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','70','初中','cz','CHUZHONG',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','71','初中毕业','czby','CHUZHONGBIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','72','职业初中毕业','zyczby','ZHIYECHUZHONGBIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','73','农业初中毕业','nyczby','NONGYECHUZHONGBIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','78','相当初中毕业','xdczby','XIANGDANGCHUZHONGBIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','79','初中肄业','czyy','CHUZHONGYIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','80','小学','xx','XIAOXUE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','81','小学毕业','xxby','XIAOXUEBIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','88','相当小学毕业','xdxxby','XIANGDANGXIAOXUEBIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','89','小学肄业','xxyy','XIAOXUEYIYE',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','90','文盲或半文盲','wm','WENMANG',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7','99','学龄前儿童','xlqet','XUELINGQIANERTONG',7,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--专长嗜好
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','01','驾车','jc','JIACHE',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','02','驾船','jch','JIACHUAN',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','03','驾机','jj','JIAJI',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','04','爆破','bp','BAOPO',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','05','射击','sj','SHEJI',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','06','枪械','qx','QIANGXIE',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','07','屠宰','tz','TUZAI',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','08','解剖','jp','JIEPOU',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','09','绘画','hh','HUIHUA',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','10','书法','sf','SHUFA',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','11','表演','by','BIAOYAN',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','12','印刷','ys','YINSHUA',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','14','誉印','yyin','YUYIN',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','15','打字','dz','DAZI',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','16','雕刻','dk','DIAOKE',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','17','摄影','sy','SHEYING',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','18','摄像','sx','SHEXIANG',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','19','装裱','zb','ZHUANGBIAO',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','20','装潢设计','zhsj','ZHUANGHUANGSHEJI',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','21','缝纫','fr','FENGREN',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','22','钳工','qg','QIANGONG',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','23','机床操作','jccz','JICHUANCAOZUO',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','24','焊割','hg','HANGE',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','25','铸造','zc','ZHUZAO',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','26','木工','mg','MUGONG',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','27','瓦工','wg','WAGONG',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','28','电工','dg','DIANGONG',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','29','油漆工','yqg','YOUQIGONG',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','30','通讯','tx','TONGXUN',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','31','懂计算机','djsj','DONGJISUANJI',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','32','懂财会','dck','DONGCAIKUI',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','33','修电器','xdq','XIUDIANQI',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','34','修钟表','xzb','XIUZHONGBIAO',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','35','修机动车','xjdc','XIUJIDONGCHE',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','36','修非机动车','xfjdc','XIUFEIJIDONGCHE',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','37','修锁','xsuo','XIUSUO',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','39','饰物制作','swzz','SHIWUZHIZUO',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','40','化妆','hz','HUAZHUANG',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','41','化验','hy','HUAYAN',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','42','医药','yyao','YIYAO',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','43','潜水','qs','QIANSHUI',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','44','攀高','pgao','PANGAO',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','45','武术','ws','WUSHU',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','46','魔术','mshu','MOSHU',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','47','巫术','wshu','WSHU',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','48','外语','wy','WAIYU',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','49','民族语言','mzyy','MINZUYUYAN',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','50','手语','shouy','SHOUYU',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','51','模仿','mfang','MOFANG',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11','90','其他专长','qtzc','QITAZHUANCHANG',11,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--建立依据
INSERT INTO t_data_dictionary_common
VALUES(newid(),'12','1','能够发现或者接近犯罪嫌疑人','fjxyr','FANZUIXIANYIREN',12,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'12','2','有一定活动能力','hdnl','HUODONGNENGLI',12,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'12','3','愿意为公安机关工作','yygz','YUANYIGONGZUO',12,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'12','4','能被公安机关控制使用','kzsy','KONGZHISHIYONG',12,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--特情类别
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1','1','控制特情','kztq','KONGZHITEQING',1,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1','2','情报特情','qbtq','QINGBAOTEQING',1,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1','3','专案特情','zatq','ZHUANANTEQING',1,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1','4','狱侦特情','yztq','YUZHENTEQING',1,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--民族
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','01','汉族','hz','HANZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','02','蒙古族','mgz','MENGGUZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','03','满族','mz','MANZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','04','回族','hz','HUIZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','05','藏族','zz','ZANGZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','06','维吾尔族','wwez','WEIWUERZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','07','苗族','mz','MIAOZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','08','彝族','yz','YIZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','09','壮族','zz','ZHUANGZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','10','布依族','byz','BUYIZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','11','朝鲜族','cxz','CHAOXIANZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','12','侗族','dz','DONGZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','13','瑶族','yz','YAOZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','14','白族','bz','BAIZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','15','土家族','tjz','TUJIAZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','16','哈尼族','hnz','HANIZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','17','哈萨克族','hskz','HASAKEZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','18','傣族','dz','DAIZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','19','黎族','lz','LIZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','20','傈僳族','lsz','LISUZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','21','佤族','wz','WAZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','22','畲族','sz','SHEZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','23','高山族','gsz','GAOSHANZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','24','拉祜族','lhz','LAHUZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','25','水族','sz','SHUIZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','26','东乡族','dxz','DONGXIANGZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','27','纳西族','nxz','NAXIZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','28','景颇族','jpz','JINGPOZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','29','柯尔克孜族','kekzz','KEERKEZIZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','30','土族','tz','TUZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','31','达斡尔族','dwez','DAWOERZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','32','仫佬族','mlz','MULAOZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','33','羌族','qz','QIANGZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','34','布朗族','blz','BULANGZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','35','撒拉族','slz','SALAZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','36','毛南族','mnz','MAONANZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','37','仡佬族','glz','GELAOZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','38','锡伯族','xbz','XIBOZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','39','阿昌族','acz','ACHANGZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','40','普米族','pmz','PUMIZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','41','塔吉克族','tjkz','TAJIKEZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','42','怒族','nz','NUZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','43','乌孜别克族','wzbkz','WUZIBIEKEZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','44','俄罗斯族','elsz','ELUOSIZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','45','鄂温克族','ewkz','EWENKEZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','46','德昂族','daz','DEANGZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','47','保安族','baz','BAOANZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','48','裕固族','ygz','YUGUZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','49','京族','jz','JINGZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','50','塔塔尔族','ttez','TATAERZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','51','独龙族','dlz','DULONGZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','52','鄂伦春族','elcz','ELUNCHUNZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','53','赫哲族','hzz','HEZHEZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','54','门巴族','mbz','MENBAZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','55','珞巴族','lbz','LUOBAZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','56','基诺族','jnz','JINUOZU',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','57','其它','qta','QITA',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','58','入籍','rj','RUJI',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','98','外国血统','wgxt','WAIGUOXUETONG',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'10','99','不详','bx','BUXIANG',10,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--职业
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','400','特别身份','tbsf','TEBIESHENFEN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','401','人大代表','rddb','RENDADIAIBIAO',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','402','政协委员','zxwy','ZHENGXIEWEIYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','403','外交官员','wjgy','WAIJIAOGUANYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','404','高级公务员','gjgwy','GAOJIGONGWUYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','405','知名人士','zmrs','ZHIMINGRENSHI',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','406','民主人士','mzrs','MINZHURENSHI',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','407','高知','gz','GAOZHI',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','408','现役军人','xyjr','XIANYIJYNREN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','409','部队职工','bdzg','BUDUIZHIGONG',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','410','武装警察','wzjc','WUZHUANGJINGCHA',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','411','警察','jc','JINGCHA',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','412','司法人员','sfry','SIFARENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','413','保安人员','bary','BAOANRENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','414','联防人员','lfry','LIANFANGRENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','415','治报保人员','zbbry','ZHIBAOBAORENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','416','港澳台人','gatr','GANGAOTAIREN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','417','华侨','hq','HUAQIAO',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','418','外国人','wgr','WAIGUOREN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','500','一般身份','ybsf','YIBANSHENFEN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','501','科研人员','kyry','KEYANRENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','502','技术人员','jsry','JISHURENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','503','医务人员','ywry','YIWURENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','504','金融人员','jrry','JINRONGRENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','505','财会人员','ckry','CAIKUAIRENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','506','工商人员','gsry','GONGSHANGRENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','507','税务人员','swry','SUIWURENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','508','海关人员','hgry','HAIGUANRENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','509','律师','ls','LVSHI',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','510','教师','js','JIAOSHI',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','511','摄影师','sys','SHEYINGSHI',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','512','文艺工作者','wygzz','WENYIGONGZUOZHE',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','513','体育工作者','tygzz','TIYUGONGZUOZHE',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','514','宗教职业者','zjzyz','ZONGJIAOZHIYEZHE',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','515','记者','jz','JIZHE',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','516','作家','zj','ZUOJIA',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','517','编辑','bj','BIANJI',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','518','翻译','fy','FANYI',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','519','考古人员','kgry','KAOGURENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','520','文物人员','wwry','WENWURENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','521','公务员','gwy','GONGWUYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','522','邮政人员','yzry','YOUZHENGRENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','523','董事长','dsz','DONGSHIZHANG',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','524','总经理','zjl','ZONGJINGLI',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','525','经理','jl','JINGLI',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','526','厂长','cz','CHANGZHANG',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','527','企业管理人员','qyglry','QIYEGUANLIRENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','528','电信人员','dxry','DIANXINRENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','529','营业员','yyy','YINGYEYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','530','售货员','shy','SHOUHUOYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','531','采购员','cgy','CAIGOUYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','532','供销员','gxy','GONGXIAOYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','533','信托收购员','xtsgy','XINTUOSHOUGOUYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','534','废品收购员','fpsgy','FEIPINGSHOUGOUYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','535','服务员','fwy','FUWUYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','536','售票员','spy','SHOUPIAOYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','537','理发员','lfy','LIFAYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','538','厨师','cs','CHUSHI',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','539','炊事员','csy','CHUISHIYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','540','保育员','byy','BAOYUYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','541','家庭服务人员','jtfwry','JIATINGFUWURENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','542','洗染织补人员','xrzbry','XIRANZHIBURENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','543','工勤人员','gqry','GONGQINRENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','544','殡葬人员','bzry','BINZANGRENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','545','园林工作人员','ylgzry','YUANLINGONGZUORENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','546','导游员','dyy','DAOYOUYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','547','机电产品修理运','jdcpxly','JIDIANCHANPINGXIULIYUN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','548','生活用品修理员','shypxly','SHENHUOYONGPINGXIULIYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','549','信息业人员','xxyry','XINXIYERENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','550','农民','nm','NONGMIN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','551','乡镇企业人员','xzqyry','XIANGZHENQIYERENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','552','经商农民','jsnm','JINGSHANGNONGMIN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','553','民工','mg','MINGONG',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','554','林业人员','lyry','LINYERENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','555','牧业人员','myry','MUYERENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','556','渔业人员','yyry','YUYERENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','557','船民','cm','CHUANMING',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','558','猎民','lm','LIEMIN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','559','船员','cy','CHUANYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','560','驾驶员','jsy','JIASHIYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','561','出租车司机','czcsj','CHUZUCHESIJI',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','562','三轮车夫','slcf','SANLUNCHEFU',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','563','私营业主','syyz','SIYINGYEZHU',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','564','个体户','gth','GETIHU',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','565','工人','gr','GONGREN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','566','学生','xs','XUESHENG',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','567','离退修人员','ltxry','LITUIXIURENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','568','下岗人员','xgry','XIAGANGRENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','569','无业人员','wyry','WUYERENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','570','家务','jw','JIAWU',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','571','外企员工','wqyg','WAIQIYUANGONG',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','572','三资企业员工','szqyyg','SANZIQIYEYUANGONG',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','573','特殊人员','tsry','TESHURENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','574','物业管理人员','wyglry','WUYEGUANLIRENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','575','三陪女','spn','SANPEINV',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','576','卖淫女','myn','MAIYINNV',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8','577','其他人员','qtry','QITARENYUAN',8,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--口音
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','110000','北京口音','bjky','BEIJINGKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','120000','天津口音','tjky','TIANJINKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','310000','上海口音','shky','SHANGHAIKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','500000','重庆口音','zqky','ZHONGQINGKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','130000','河北口音','hbky','HEBEIKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','140000','山西口音','sxky','SHANXIKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','210000','辽宁口音','lnky','LIAONINGKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','220000','吉林口音','jlky','JILINKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','230000','黑龙江口音','hljky','HEILONGJIANGKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','320000','江苏口音','jsky','JIANGSUKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','330000','浙江口音','zjky','ZHEJIANGKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','340000','安徽口音','ahky','ANHUIKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','350000','福建口音','fjky','FUJIANKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','360000','江西口音','jxky','JIANGXIKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','370000','山东口音','sdky','SHANDONGKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','410000','河南口音','hnky','HENANKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','420000','湖北口音','hbky','HUBEIKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','430000','湖南口音','hnky','HUNANKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','440000','广东口音','gdky','GUANGDONGKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','460000','海南口音','hnky','HAINANKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','510000','四川口音','scky','SICHUANKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','520000','贵州口音','gzky','GUIZHOUKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','530000','云南口音','ynky','YUNNANKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','610000','陕西口音','sxky','SHANXIKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','620000','甘肃口音','gsky','GANSUKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','710000','台湾口音','twky','TAIWANKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','150000','内蒙口音','nmky','NEIMENGKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','640000','宁夏口音','nxky','NINGXIAKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','650000','新疆口音','xjky','XINJIANGKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','450000','广西口音','gxky','GUANGXIKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','810000','香港口音','xgky','XIANGGANGKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','820000','澳门口音','amky','AOMENKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','540000','西藏口音','xzky','XIZANGKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','630000','青海口音','qhky','QINGHAIKOUYIN',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6','990000','其它','qt','QITA',6,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--籍贯
INSERT INTO t_data_dictionary_common
VALUES('43AA83BB-FAC5-BEDE-A9CD-3E23DF04E03B','9','110000','北京市','bjs','BEIJINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43AA83BB-FAC5-BEDE-A9CD-3E23DF04E03B','110101','东城区','dcq','DONGCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43AA83BB-FAC5-BEDE-A9CD-3E23DF04E03B','110102','西城区','xcq','XICHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43AA83BB-FAC5-BEDE-A9CD-3E23DF04E03B','110103','崇文区','cwq','CHONGWENQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43AA83BB-FAC5-BEDE-A9CD-3E23DF04E03B','110104','宣武区','xwq','XUANWUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43AA83BB-FAC5-BEDE-A9CD-3E23DF04E03B','110105','朝阳区','cyq','CHAOYANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43AA83BB-FAC5-BEDE-A9CD-3E23DF04E03B','110106','丰台区','ftq','FENGTAIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43AA83BB-FAC5-BEDE-A9CD-3E23DF04E03B','110107','石景山区','sjsq','SHIJINGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43AA83BB-FAC5-BEDE-A9CD-3E23DF04E03B','110108','海淀区','hdq','HAIDIANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43AA83BB-FAC5-BEDE-A9CD-3E23DF04E03B','110109','门头沟区','mtgq','MENTOUGOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43AA83BB-FAC5-BEDE-A9CD-3E23DF04E03B','110111','房山区','fsq','FANGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43AA83BB-FAC5-BEDE-A9CD-3E23DF04E03B','110112','通州区','tzq','TONGZHOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43AA83BB-FAC5-BEDE-A9CD-3E23DF04E03B','110113','顺义区','syq','SHUNYIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43AA83BB-FAC5-BEDE-A9CD-3E23DF04E03B','110221','昌平县','cpx','CHANGPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43AA83BB-FAC5-BEDE-A9CD-3E23DF04E03B','110224','大兴县','dxx','DAXINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43AA83BB-FAC5-BEDE-A9CD-3E23DF04E03B','110226','平谷县','pgx','PINGGUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43AA83BB-FAC5-BEDE-A9CD-3E23DF04E03B','110227','怀柔县','hrx','HUAIROUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43AA83BB-FAC5-BEDE-A9CD-3E23DF04E03B','110228','密云县','myx','MIYUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43AA83BB-FAC5-BEDE-A9CD-3E23DF04E03B','110229','延庆县','yqx','YANQINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('9EB12603-7927-648E-D8B5-617449E79DB2','9','500','天津市','tjs','TIANJINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9EB12603-7927-648E-D8B5-617449E79DB2','120101','和平区','hpq','HEPINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9EB12603-7927-648E-D8B5-617449E79DB2','120102','河东区','hdq','HEDONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9EB12603-7927-648E-D8B5-617449E79DB2','12010','河西区','hxq','HEXIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9EB12603-7927-648E-D8B5-617449E79DB2','120104','南开区','nkq','NANKAIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9EB12603-7927-648E-D8B5-617449E79DB2','120105','河北区','hbq','HEBEIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9EB12603-7927-648E-D8B5-617449E79DB2','120106','红桥区','hqq','HONGQIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9EB12603-7927-648E-D8B5-617449E79DB2','120107','塘沽区','tgq','TANGGUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9EB12603-7927-648E-D8B5-617449E79DB2','120108','汉沽区','hgq','HANGUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9EB12603-7927-648E-D8B5-617449E79DB2','120109','大港区','dgq','DAGANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9EB12603-7927-648E-D8B5-617449E79DB2','120110','东丽区','dlq','DONGLIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9EB12603-7927-648E-D8B5-617449E79DB2','120111','西青区','xqq','XIQINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9EB12603-7927-648E-D8B5-617449E79DB2','120112','津南区','jnq','JINNANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9EB12603-7927-648E-D8B5-617449E79DB2','120113','北辰区','bcq','BEICHENQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9EB12603-7927-648E-D8B5-617449E79DB2','120221','宁河县','nhx','NINGHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9EB12603-7927-648E-D8B5-617449E79DB2','120222','武清县','wqx','WUQINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9EB12603-7927-648E-D8B5-617449E79DB2','120223','静海县','jhx','JINGHAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9EB12603-7927-648E-D8B5-617449E79DB2','120224','宝坻县','bcx','BAOCHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9EB12603-7927-648E-D8B5-617449E79DB2','120225','蓟县','jx','JIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('571CF58C-FF11-D1BE-6DCD-F26952DF7524','9','310000','上海市','shs','SHANGHAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310101','黄浦区','hpq','HUANGPUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310102','南市区','nsq','NANSHIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310103','卢湾区','lwq','LUWANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310104','徐汇区','xhq','XUHUIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310105','长宁区','znq','ZHANGNINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310106','静安区','jaq','JINGANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310107','普陀区','ptq','PUTUOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310108','闸北区','zbq','ZHABEIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310109','虹口区','hkq','HONGKOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310110','杨浦区','ypq','YANGPUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310112','闵行区','mxq','MINXINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310113','宝山区','bsq','BAOSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310114','嘉定区','jdq','JIADINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310115','浦东新区','pdxq','PUDONGXINQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310116','金山区','jsq','JINSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310117','松江区','sjq','SONGJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310225','南汇县','nhx','NANHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310226','奉贤县','fxx','FENGXIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310229','青浦县','qpx','QINGPUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'571CF58C-FF11-D1BE-6DCD-F26952DF7524','310230','崇明县','cmx','CHONGMINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('6F755456-EB7F-D5C6-E9B8-5889D808B42A','9','500000','重庆市','zqs','ZHONGQINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500101','万州区','wzq','WANZHOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500102','涪陵区','flq','FULINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500103','渝中区','yzq','YUZHONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500104','大渡口区','ddkq','DADUKOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500105','江北区','jbq','JIANGBEIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500106','沙坪坝区','spbq','SHAPINGBAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500107','九龙坡区','jlpq','JIULONGPOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500108','南岸区','naq','NANANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500109','北碚区','bbq','BEIBEIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500110','万盛区','wsq','WANSHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500111','双桥区','sqq','SHUANGQIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500112','渝北区','ybq','YUBEIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500113','巴南区','bnq','BANANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500221','长寿县','zsx','ZHANGSHOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500222','綦江县','qjx','QIJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500223','潼南县','tnx','TONGNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500224','铜梁县','tlx','TONGLIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500225','大足县','dzx','DAZUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500226','荣昌县','rcx','RONGCHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500227','璧山县','bsx','BISHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500228','梁平县','lpx','LIANGPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500229','城口县','ckx','CHENGKOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500230','丰都县','fdx','FENGDOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500231','垫江县','djx','DIANJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500232','武隆县','wlx','WULONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500233','忠县','zx','ZHONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500234','开县','kx','KAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500235','云阳县','yyx','YUNYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500236','奉节县','fjx','FENGJIEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500237','巫山县','wsx','WUSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500238','巫溪县','wxx','WUXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500239','黔江土家族苗族自治县','qjtjzmzzzx','QIANJIANGTUJIAZUMIAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500240','石柱土家族自治县','sztjzzzx','SHIZHUTUJIAZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500241','秀山土家族苗族自治县','xstjzmzzzx','XIUSHANTUJIAZUMIAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500242','酉阳土家族苗族自治县','yytjzmzzzx','YOUYANGTUJIAZUMIAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500243','彭水苗族土家族自治县','psmztjzzzx','PENGSHUIMIAOZUTUJIAZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500381','江津市','jjs','JIANGJINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500382','合川市','hcs','HECHUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500383','永川市','ycs','YONGCHUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F755456-EB7F-D5C6-E9B8-5889D808B42A','500384','南川市','ncs','NANCHUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--河北
INSERT INTO t_data_dictionary_common
VALUES('69CB9DB1-F7B6-F95D-C180-28AD1C96D2C6','9','13000','河北省','hbs','HEBEISHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('547DB068-C20B-B56E-9FAC-D24112D1BDC4','69CB9DB1-F7B6-F95D-C180-28AD1C96D2C6','130100','石家庄市','sjzs','SHIJIAZHUANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130102','长安区','zaq','ZHANGANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130103','桥东区','qdq','QIAODONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130104','桥西区','qxq','QIAOXIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130105','新华区','xhq','XINHUAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130106','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130107','井陉矿区','jxkq','JINGXINGKUANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130121','井陉县','jxx','JINGXINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130123','正定县','zdx','ZHENGDINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130124','栾城县','lcx','LUANCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130125','行唐县','xtx','XINGTANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130126','灵寿县','lsx','LINGSHOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130127','高邑县','gyx','GAOYIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130128','深泽县','szx','SHENZEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130129','赞皇县','zhx','ZANHUANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130130','无极县','wjx','WUJIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130131','平山县','psx','PINGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130132','元氏县','ysx','YUANSHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130133','赵县','zx','ZHAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130181','辛集市','xjs','XINJISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130182','藁城市','gcs','GAOCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130183','晋州市','jzs','JINZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130184','新乐市','xls','XINLESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'547DB068-C20B-B56E-9FAC-D24112D1BDC4','130185','鹿泉市','lqs','LUQUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('EFA6067E-50FA-C19D-C05B-5F57AA90AA3E','69CB9DB1-F7B6-F95D-C180-28AD1C96D2C6','130200','唐山市','tss','TANGSHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EFA6067E-50FA-C19D-C05B-5F57AA90AA3E','130201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EFA6067E-50FA-C19D-C05B-5F57AA90AA3E','130202','路南区','lnq','LUNANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EFA6067E-50FA-C19D-C05B-5F57AA90AA3E','130203','路北区','lbq','LUBEIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EFA6067E-50FA-C19D-C05B-5F57AA90AA3E','130204','古冶区','gyq','GUYEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EFA6067E-50FA-C19D-C05B-5F57AA90AA3E','130205','开平区','kpq','KAIPINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EFA6067E-50FA-C19D-C05B-5F57AA90AA3E','130206','新区','xq','XINQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EFA6067E-50FA-C19D-C05B-5F57AA90AA3E','130221','丰润县','frx','FENGRUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EFA6067E-50FA-C19D-C05B-5F57AA90AA3E','130223','滦县','lx','LUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EFA6067E-50FA-C19D-C05B-5F57AA90AA3E','130224','滦南县','lnx','LUANNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EFA6067E-50FA-C19D-C05B-5F57AA90AA3E','130225','乐亭县','ltx','LETINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EFA6067E-50FA-C19D-C05B-5F57AA90AA3E','130227','迁西县','qxx','QIANXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EFA6067E-50FA-C19D-C05B-5F57AA90AA3E','130229','玉田县','ytx','YUTIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EFA6067E-50FA-C19D-C05B-5F57AA90AA3E','130230','唐海县','thx','TANGHAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EFA6067E-50FA-C19D-C05B-5F57AA90AA3E','130281','遵化市','zhs','ZUNHUASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EFA6067E-50FA-C19D-C05B-5F57AA90AA3E','130282','丰南市','fns','FENGNANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EFA6067E-50FA-C19D-C05B-5F57AA90AA3E','130283','迁安市','qas','QIANANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('C48988AD-FE76-7821-2CBB-653BB4129B55','69CB9DB1-F7B6-F95D-C180-28AD1C96D2C6','130300','秦皇岛市','qhds','QINHUANGDAOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C48988AD-FE76-7821-2CBB-653BB4129B55','130301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C48988AD-FE76-7821-2CBB-653BB4129B55','130302','海港区','hgq','HAIGANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C48988AD-FE76-7821-2CBB-653BB4129B55','130303','山海关区','shgq','SHANHAIGUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C48988AD-FE76-7821-2CBB-653BB4129B55','130304','北戴河区','bdhq','BEIDAIHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C48988AD-FE76-7821-2CBB-653BB4129B55','130321','青龙满族自治县','qlmzzzx','QINGLONGMANZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C48988AD-FE76-7821-2CBB-653BB4129B55','130322','昌黎县','clx','CHANGLIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C48988AD-FE76-7821-2CBB-653BB4129B55','130323','抚宁县','fnx','FUNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C48988AD-FE76-7821-2CBB-653BB4129B55','130324','卢龙县','llx','LULONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('D6951F4E-12F1-FE3D-0895-180AC6D0BD82','69CB9DB1-F7B6-F95D-C180-28AD1C96D2C6','130400','邯郸市','hds','HANDANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130402','邯山区','hsq','HANSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130403','丛台区','ctq','CONGTAIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130404','复兴区','fxq','FUXINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130406','峰峰矿区','ffkq','FENGFENGKUANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130421','邯郸县','hdx','HANDANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130423','临漳县','lzx','LINZHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130424','成安县','cax','CHENGANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130425','大名县','dmx','DAMINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130426','涉县','sx','SHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130427','磁县','cx','CIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130428','肥乡县','fxx','FEIXIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130429','永年县','ynx','YONGNIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130430','邱县','qx','QIUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130431','鸡泽县','jzx','JIZEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130432','广平县','gpx','GUANGPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130433','馆陶县','gtx','GUANTAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130434','魏县','wx','WEIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130435','曲周县','qzx','QUZHOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6951F4E-12F1-FE3D-0895-180AC6D0BD82','130481','武安市','was','WUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('16A6C2EC-685B-2DF7-5D44-DCCF5902A500','69CB9DB1-F7B6-F95D-C180-28AD1C96D2C6','130500','邢台市','xts','XINGTAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130502','桥东区','qdq','QIAODONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130503','桥西区','qxq','QIAOXIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130521','邢台县','xtx','XINGTAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130522','临城县','lcx','LINCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130523','内丘县','nqx','NEIQIUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130524','柏乡县','bxx','BOXIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130525','隆尧县','lyx','LONGYAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130526','任县','rx','RENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130527','南和县','nhx','NANHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130528','宁晋县','njx','NINGJINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130529','巨鹿县','jlx','JULUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130530','新河县','xhx','XINHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130531','广宗县','gzx','GUANGZONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130532','平乡县','pxx','PINGXIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130533','威县','wx','WEIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130534','清河县','qhx','QINGHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130535','临西县','lxx','LINXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130581','南宫市','ngs','NANGONGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16A6C2EC-685B-2DF7-5D44-DCCF5902A500','130582','沙河市','shs','SHAHESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('96C0D234-BD7F-64F2-F554-526111773A95','69CB9DB1-F7B6-F95D-C180-28AD1C96D2C6','130600','保定市','bds','BAODINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130601','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130602','新市区','xsq','XINSHIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130603','北市区','bsq','BEISHIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130604','南市区','nsq','NANSHIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130621','满城县','mcx','MANCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130622','清苑县','qyx','QINGYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130623','涞水县','lsx','LAISHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130624','阜平县','fpx','FUPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130625','徐水县','xsx','XUSHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130626','徐水县','xsx','XUSHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130627','唐县','tx','TANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130628','高阳县','gyx','GAOYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130629','容城县','rcx','RONGCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130630','涞源县','lyx','LAIYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130631','望都县','wdx','WANGDOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130632','安新县','axx','ANXINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130633','易县','yx','YIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130634','曲阳县','qyx','QUYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130635','蠡县','lx','LIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130636','顺平县','spx','SHUNPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130637','博野县','byx','BOYEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130638','雄县','xx','XIONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130681','涿州市','zzs','ZHUOZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130682','定州市','dzs','DINGZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130683','安国市','ags','ANGUOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96C0D234-BD7F-64F2-F554-526111773A95','130684','高碑店市','gbds','GAOBEIDIANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('49A7ADA9-9A1A-0BED-CB8D-1609F89791B5','69CB9DB1-F7B6-F95D-C180-28AD1C96D2C6','130700','张家口市','zjks','ZHANGJIAKOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49A7ADA9-9A1A-0BED-CB8D-1609F89791B5','130701','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49A7ADA9-9A1A-0BED-CB8D-1609F89791B5','130702','桥东区','qdq','QIAODONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49A7ADA9-9A1A-0BED-CB8D-1609F89791B5','130703','桥西区','qxq','QIAOXIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49A7ADA9-9A1A-0BED-CB8D-1609F89791B5','130705','宣化区','xhq','XUANHUAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49A7ADA9-9A1A-0BED-CB8D-1609F89791B5','130706','下花园区','xhyq','XIAHUAYUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49A7ADA9-9A1A-0BED-CB8D-1609F89791B5','130721','宣化县','xhx','XUANHUAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49A7ADA9-9A1A-0BED-CB8D-1609F89791B5','130722','张北县','zbx','ZHANGBEIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49A7ADA9-9A1A-0BED-CB8D-1609F89791B5','130723','康保县','kbx','KANGBAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49A7ADA9-9A1A-0BED-CB8D-1609F89791B5','130724','沽源县','gyx','GUYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49A7ADA9-9A1A-0BED-CB8D-1609F89791B5','130725','尚义县','syx','SHANGYIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49A7ADA9-9A1A-0BED-CB8D-1609F89791B5','130726','蔚县','yx','YUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49A7ADA9-9A1A-0BED-CB8D-1609F89791B5','130727','阳原县','yyx','YANGYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49A7ADA9-9A1A-0BED-CB8D-1609F89791B5','130728','怀安县','hax','HUAIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49A7ADA9-9A1A-0BED-CB8D-1609F89791B5','130729','万全县','wqx','WANQUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49A7ADA9-9A1A-0BED-CB8D-1609F89791B5','130730','怀来县','hlx','HUAILAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49A7ADA9-9A1A-0BED-CB8D-1609F89791B5','130731','涿鹿县','zlx','ZHUOLUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49A7ADA9-9A1A-0BED-CB8D-1609F89791B5','130732','赤城县','ccx','CHICHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49A7ADA9-9A1A-0BED-CB8D-1609F89791B5','130733','崇礼县','clx','CHONGLIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('0AE27682-3B5B-AD8F-8278-A8A4C526A0B1','69CB9DB1-F7B6-F95D-C180-28AD1C96D2C6','130800','承德市','cds','CHENGDESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0AE27682-3B5B-AD8F-8278-A8A4C526A0B1','130801','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0AE27682-3B5B-AD8F-8278-A8A4C526A0B1','130802','双桥区','sqq','SHUANGQIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0AE27682-3B5B-AD8F-8278-A8A4C526A0B1','130803','双滦区','slq','SHUANGLUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0AE27682-3B5B-AD8F-8278-A8A4C526A0B1','130804','鹰手营子矿区','ysyzkq','YINGSHOUYINGZIKUANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0AE27682-3B5B-AD8F-8278-A8A4C526A0B1','130821','承德县','cdx','CHENGDEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0AE27682-3B5B-AD8F-8278-A8A4C526A0B1','130822','兴隆县','xlx','XINGLONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0AE27682-3B5B-AD8F-8278-A8A4C526A0B1','130823','平泉县','pqx','PINGQUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0AE27682-3B5B-AD8F-8278-A8A4C526A0B1','130824','滦平县','lpx','LUANPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0AE27682-3B5B-AD8F-8278-A8A4C526A0B1','130825','隆化县','lhx','LONGHUAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0AE27682-3B5B-AD8F-8278-A8A4C526A0B1','130826','丰宁满族自治县','fnmzzzx','FENGNINGMANZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0AE27682-3B5B-AD8F-8278-A8A4C526A0B1','130827','宽城满族自治县','kcmzzzx','KUANCHENGMANZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0AE27682-3B5B-AD8F-8278-A8A4C526A0B1','130828','围场满族蒙古族自治县','wcmzmgzzzx','WEICHANGMANZUMENGGUZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('9A75CE66-F961-E9E0-92AF-CF8E6CB37731','69CB9DB1-F7B6-F95D-C180-28AD1C96D2C6','130900','沧州市','czs','CANGZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A75CE66-F961-E9E0-92AF-CF8E6CB37731','130901','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A75CE66-F961-E9E0-92AF-CF8E6CB37731','130902','新华区','xhq','XINHUAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A75CE66-F961-E9E0-92AF-CF8E6CB37731','130903','运河区','yhq','YUNHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A75CE66-F961-E9E0-92AF-CF8E6CB37731','130921','沧县','cx','CANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A75CE66-F961-E9E0-92AF-CF8E6CB37731','130922','青县','qx','QINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A75CE66-F961-E9E0-92AF-CF8E6CB37731','130923','东光县','dgx','DONGGUANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A75CE66-F961-E9E0-92AF-CF8E6CB37731','130924','海兴县','hxx','HAIXINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A75CE66-F961-E9E0-92AF-CF8E6CB37731','130925','盐山县','ysx','YANSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A75CE66-F961-E9E0-92AF-CF8E6CB37731','130926','肃宁县','snx','SUNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A75CE66-F961-E9E0-92AF-CF8E6CB37731','130927','南皮县','npx','NANPIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A75CE66-F961-E9E0-92AF-CF8E6CB37731','130928','吴桥县','wqx','WUQIAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A75CE66-F961-E9E0-92AF-CF8E6CB37731','130929','献县','xx','XIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A75CE66-F961-E9E0-92AF-CF8E6CB37731','130930','孟村回族自治县','mchzzzx','MENGCUNHUIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A75CE66-F961-E9E0-92AF-CF8E6CB37731','130931','泊头市','bts','BOTOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A75CE66-F961-E9E0-92AF-CF8E6CB37731','130932','任丘市','rqs','RENQIUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A75CE66-F961-E9E0-92AF-CF8E6CB37731','130933','黄骅市','hhs','HUANGHUASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A75CE66-F961-E9E0-92AF-CF8E6CB37731','130934','河间市','hjs','HEJIANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E9141B12-753F-0478-9FB0-0DDB9093D4CA','69CB9DB1-F7B6-F95D-C180-28AD1C96D2C6','131000','廊坊市','lfs','LANGFANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E9141B12-753F-0478-9FB0-0DDB9093D4CA','131001','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E9141B12-753F-0478-9FB0-0DDB9093D4CA','131002','安次区','acq','ANCIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E9141B12-753F-0478-9FB0-0DDB9093D4CA','131022','固安县','gax','GUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E9141B12-753F-0478-9FB0-0DDB9093D4CA','131023','永清县','yqx','YONGQINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E9141B12-753F-0478-9FB0-0DDB9093D4CA','131024','香河县','xhx','XIANGHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E9141B12-753F-0478-9FB0-0DDB9093D4CA','131025','大城县','dcx','DACHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E9141B12-753F-0478-9FB0-0DDB9093D4CA','131026','文安县','wax','WENANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E9141B12-753F-0478-9FB0-0DDB9093D4CA','131028','大厂回族自治县','dchzzzx','DACHANGHUIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E9141B12-753F-0478-9FB0-0DDB9093D4CA','131081','霸州市','bzs','BAZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E9141B12-753F-0478-9FB0-0DDB9093D4CA','131082','三河市','shs','SANHESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('8B936F61-B6AE-91CB-2953-E18327E37AD1','69CB9DB1-F7B6-F95D-C180-28AD1C96D2C6','131100','衡水市','hss','HENGSHUISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8B936F61-B6AE-91CB-2953-E18327E37AD1','131101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8B936F61-B6AE-91CB-2953-E18327E37AD1','131102','桃城区','tcq','TAOCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8B936F61-B6AE-91CB-2953-E18327E37AD1','131121','枣强县','zqx','ZAOQIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8B936F61-B6AE-91CB-2953-E18327E37AD1','131122','武邑县','wyx','WUYIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8B936F61-B6AE-91CB-2953-E18327E37AD1','131123','武强县','wqx','WUQIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8B936F61-B6AE-91CB-2953-E18327E37AD1','131124','饶阳县','ryx','RAOYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8B936F61-B6AE-91CB-2953-E18327E37AD1','131125','安平县','apx','ANPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8B936F61-B6AE-91CB-2953-E18327E37AD1','131126','故城县','gcx','GUCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8B936F61-B6AE-91CB-2953-E18327E37AD1','131127','景县','jx','JINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8B936F61-B6AE-91CB-2953-E18327E37AD1','131128','阜城县','fcx','FUCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8B936F61-B6AE-91CB-2953-E18327E37AD1','131181','冀州市','jzs','JIZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8B936F61-B6AE-91CB-2953-E18327E37AD1','131182','深州市','szs','SHENZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--山西
INSERT INTO t_data_dictionary_common
VALUES('73EF7E46-994A-1413-1AB4-5A5AF70E8B40','9','140000','山西省','sxs','SHANXISHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('9FB4CA37-5065-E69E-4D92-87764E30B3AE','73EF7E46-994A-1413-1AB4-5A5AF70E8B40','140100','太原市','tys','TAIYUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FB4CA37-5065-E69E-4D92-87764E30B3AE','140101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FB4CA37-5065-E69E-4D92-87764E30B3AE','140105','小店区','xdq','XIAODIANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FB4CA37-5065-E69E-4D92-87764E30B3AE','140106','迎泽区','yzq','YINGZEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FB4CA37-5065-E69E-4D92-87764E30B3AE','140107','杏花岭区','xhlq','XINGHUALINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FB4CA37-5065-E69E-4D92-87764E30B3AE','140108','尖草坪区','jcpq','JIANCAOPINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FB4CA37-5065-E69E-4D92-87764E30B3AE','140109','万柏林区','wblq','WANBOLINQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FB4CA37-5065-E69E-4D92-87764E30B3AE','140110','晋源区','jyq','JINYUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FB4CA37-5065-E69E-4D92-87764E30B3AE','140121','清徐县','qxx','QINGXUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FB4CA37-5065-E69E-4D92-87764E30B3AE','140122','阳曲县','yqx','YANGQUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FB4CA37-5065-E69E-4D92-87764E30B3AE','140123','娄烦县','lfx','LOUFANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FB4CA37-5065-E69E-4D92-87764E30B3AE','140181','古交市','gjs','GUJIAOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('9CF6F6C7-6714-FC49-F340-9C8355CF252D','73EF7E46-994A-1413-1AB4-5A5AF70E8B40','140200','大同市','dts','DATONGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9CF6F6C7-6714-FC49-F340-9C8355CF252D','140201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9CF6F6C7-6714-FC49-F340-9C8355CF252D','140202','城区','cq','CHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9CF6F6C7-6714-FC49-F340-9C8355CF252D','140203','矿区','kq','KUANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9CF6F6C7-6714-FC49-F340-9C8355CF252D','140211','南郊区','njq','NANJIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9CF6F6C7-6714-FC49-F340-9C8355CF252D','140212','新荣区','xrq','XINRONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9CF6F6C7-6714-FC49-F340-9C8355CF252D','140221','阳高县','ygx','YANGGAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9CF6F6C7-6714-FC49-F340-9C8355CF252D','140222','天镇县','tzx','TIANZHENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9CF6F6C7-6714-FC49-F340-9C8355CF252D','140223','广灵县','glx','GUANGLINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9CF6F6C7-6714-FC49-F340-9C8355CF252D','140224','灵丘县','lqx','LINGQIUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9CF6F6C7-6714-FC49-F340-9C8355CF252D','140225','浑源县','hyx','HUNYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9CF6F6C7-6714-FC49-F340-9C8355CF252D','140226','左云县','zyx','ZUOYUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9CF6F6C7-6714-FC49-F340-9C8355CF252D','140227','大同县','dtx','DATONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('66DEABE2-5F9C-BCDC-A0BC-E7FE14FD72A7','73EF7E46-994A-1413-1AB4-5A5AF70E8B40','140300','阳泉市','yqs','YANGQUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'66DEABE2-5F9C-BCDC-A0BC-E7FE14FD72A7','140301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'66DEABE2-5F9C-BCDC-A0BC-E7FE14FD72A7','140302','城区','cq','CHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'66DEABE2-5F9C-BCDC-A0BC-E7FE14FD72A7','140303','矿区','kq','KUANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'66DEABE2-5F9C-BCDC-A0BC-E7FE14FD72A7','140311','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'66DEABE2-5F9C-BCDC-A0BC-E7FE14FD72A7','140321','平定县','pdx','PINGDINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'66DEABE2-5F9C-BCDC-A0BC-E7FE14FD72A7','140322','盂县','yx','YUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('03F2800D-D099-8EE9-D005-EB1638FC7A01','73EF7E46-994A-1413-1AB4-5A5AF70E8B40','140400','长治市','zzs','ZHANGZHISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'03F2800D-D099-8EE9-D005-EB1638FC7A01','140401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'03F2800D-D099-8EE9-D005-EB1638FC7A01','140402','城区','cq','CHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'03F2800D-D099-8EE9-D005-EB1638FC7A01','140411','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'03F2800D-D099-8EE9-D005-EB1638FC7A01','140421','长治县','zzx','ZHANGZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'03F2800D-D099-8EE9-D005-EB1638FC7A01','140423','襄垣县','xyx','XIANGYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'03F2800D-D099-8EE9-D005-EB1638FC7A01','140424','屯留县','tlx','TUNLIUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'03F2800D-D099-8EE9-D005-EB1638FC7A01','140425','平顺县','psx','PINGSHUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'03F2800D-D099-8EE9-D005-EB1638FC7A01','140426','黎城县','lcx','LICHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'03F2800D-D099-8EE9-D005-EB1638FC7A01','140427','壶关县','hgx','HUGUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'03F2800D-D099-8EE9-D005-EB1638FC7A01','140428','长子县','zzx','ZHANGZIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'03F2800D-D099-8EE9-D005-EB1638FC7A01','140429','武乡县','wxx','WUXIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'03F2800D-D099-8EE9-D005-EB1638FC7A01','140430','沁县','qx','QINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'03F2800D-D099-8EE9-D005-EB1638FC7A01','140431','沁源县','qyx','QINYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'03F2800D-D099-8EE9-D005-EB1638FC7A01','140481','潞城市','lcs','LUCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('7CC31EFA-8F03-D399-3014-92A772689E5C','73EF7E46-994A-1413-1AB4-5A5AF70E8B40','140500','晋城市','jcs','JINCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CC31EFA-8F03-D399-3014-92A772689E5C','140501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CC31EFA-8F03-D399-3014-92A772689E5C','140502','城区','cq','CHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CC31EFA-8F03-D399-3014-92A772689E5C','140521','沁水县','qsx','QINSHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CC31EFA-8F03-D399-3014-92A772689E5C','140522','阳城县','ycx','YANGCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CC31EFA-8F03-D399-3014-92A772689E5C','140524','陵川县','lcx','LINGCHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CC31EFA-8F03-D399-3014-92A772689E5C','140525','泽州县','zzx','ZEZHOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CC31EFA-8F03-D399-3014-92A772689E5C','140581','高平市','gps','GAOPINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CC31EFA-8F03-D399-3014-92A772689E5C','140600','朔州市','szs','SHUOZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CC31EFA-8F03-D399-3014-92A772689E5C','140602','朔城区','scq','SHUOCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CC31EFA-8F03-D399-3014-92A772689E5C','140603','平鲁区','plq','PINGLUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CC31EFA-8F03-D399-3014-92A772689E5C','140621','山阴县','syx','SHANYINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CC31EFA-8F03-D399-3014-92A772689E5C','140622','应县','yx','YINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CC31EFA-8F03-D399-3014-92A772689E5C','140623','右玉县','yyx','YOUYUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CC31EFA-8F03-D399-3014-92A772689E5C','140624','怀仁县','hrx','HUAIRENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','73EF7E46-994A-1413-1AB4-5A5AF70E8B40','142200','忻州地区','xzdq','XINZHOUDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142201','忻州市','xzs','XINZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142202','原平市','yps','YUANPINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142222','定襄县','dxx','DINGXIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142223','五台县','wtx','WUTAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142225','代县','dx','DAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142226','繁峙县','fzx','FANZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142227','宁武县','nwx','NINGWUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142228','静乐县','jlx','JINGLEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142229','神池县','scx','SHENCHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142230','五寨县','wzx','WUZHAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142231','岢岚县','klx','KELANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142232','河曲县','hqx','HEQUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142233','保德县','bdx','BAODEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142234','偏关县','pgx','PIANGUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142300','吕梁地区','lldq','LU:LIANGDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142301','孝义市','xys','XIAOYISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142302','离石市','lss','LISHISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142303','汾阳市','fys','FENYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142322','文水县','wsx','WENSHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142323','交城县','jcx','JIAOCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142325','兴县','xx','XINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142326','临县','lx','LINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142327','柳林县','llx','LIULINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142328','石楼县','slx','SHILOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142329','岚县','lx','LANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142330','方山县','fsx','FANGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142332','中阳县','zyx','ZHONGYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B4C1F901-1FB4-D5D1-AE4F-5D870584A74F','142333','交口县','jkx','JIAOKOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('81D58BA2-E193-DC8A-D41C-0E55CFF65D73','73EF7E46-994A-1413-1AB4-5A5AF70E8B40','142400','晋中地区','jzdq','JINZHONGDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81D58BA2-E193-DC8A-D41C-0E55CFF65D73','142401','榆次市','ycs','YUCISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81D58BA2-E193-DC8A-D41C-0E55CFF65D73','142402','介休市','jxs','JIEXIUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81D58BA2-E193-DC8A-D41C-0E55CFF65D73','142421','榆社县','ysx','YUSHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81D58BA2-E193-DC8A-D41C-0E55CFF65D73','142422','左权县','zqx','ZUOQUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81D58BA2-E193-DC8A-D41C-0E55CFF65D73','142423','和顺县','hsx','HESHUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81D58BA2-E193-DC8A-D41C-0E55CFF65D73','142424','昔阳县','xyx','XIYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81D58BA2-E193-DC8A-D41C-0E55CFF65D73','142427','寿阳县','syx','SHOUYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81D58BA2-E193-DC8A-D41C-0E55CFF65D73','142429','太谷县','tgx','TAIGUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81D58BA2-E193-DC8A-D41C-0E55CFF65D73','142430','祁县','qx','QIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81D58BA2-E193-DC8A-D41C-0E55CFF65D73','142431','平遥县','pyx','PINGYAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81D58BA2-E193-DC8A-D41C-0E55CFF65D73','142433','灵石县','lsx','LINGSHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('9857512A-FEA7-1389-0820-A24F9C453335','73EF7E46-994A-1413-1AB4-5A5AF70E8B40','142600','临汾地区','lfdq','LINFENDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9857512A-FEA7-1389-0820-A24F9C453335','142601','临汾市','lfs','LINFENSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9857512A-FEA7-1389-0820-A24F9C453335','142602','侯马市','hms','HOUMASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9857512A-FEA7-1389-0820-A24F9C453335','142603','霍州市','hzs','HUOZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9857512A-FEA7-1389-0820-A24F9C453335','142621','曲沃县','qwx','QUWOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9857512A-FEA7-1389-0820-A24F9C453335','142622','翼城县','ycx','YICHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9857512A-FEA7-1389-0820-A24F9C453335','142623','襄汾县','xfx','XIANGFENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9857512A-FEA7-1389-0820-A24F9C453335','142625','洪洞县','hdx','HONGDONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9857512A-FEA7-1389-0820-A24F9C453335','142627','古县','gx','GUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9857512A-FEA7-1389-0820-A24F9C453335','142628','安泽县','azx','ANZEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9857512A-FEA7-1389-0820-A24F9C453335','142629','浮山县','fsx','FUSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9857512A-FEA7-1389-0820-A24F9C453335','142630','吉县','jx','JIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9857512A-FEA7-1389-0820-A24F9C453335','142631','乡宁县','xnx','XIANGNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9857512A-FEA7-1389-0820-A24F9C453335','142632','蒲县','px','PUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9857512A-FEA7-1389-0820-A24F9C453335','142633','大宁县','dnx','DANINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9857512A-FEA7-1389-0820-A24F9C453335','142634','永和县','yhx','YONGHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9857512A-FEA7-1389-0820-A24F9C453335','142635','隰县','xx','XIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9857512A-FEA7-1389-0820-A24F9C453335','142636','汾西县','fxx','FENXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('DB2DFA10-EE58-52EA-6387-262DF0076286','73EF7E46-994A-1413-1AB4-5A5AF70E8B40','142700','运城地区','ycdq','YUNCHENGDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB2DFA10-EE58-52EA-6387-262DF0076286','142701','运城市','ycs','YUNCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB2DFA10-EE58-52EA-6387-262DF0076286','142702','永济市','yjs','YONGJISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB2DFA10-EE58-52EA-6387-262DF0076286','142703','河津市','hjs','HEJINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB2DFA10-EE58-52EA-6387-262DF0076286','142723','芮城县','rcx','RUICHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB2DFA10-EE58-52EA-6387-262DF0076286','142724','临猗县','lyx','LINYIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB2DFA10-EE58-52EA-6387-262DF0076286','142725','万荣县','wrx','WANRONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB2DFA10-EE58-52EA-6387-262DF0076286','142726','新绛县','xjx','XINJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB2DFA10-EE58-52EA-6387-262DF0076286','142727','稷山县','jsx','JISHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB2DFA10-EE58-52EA-6387-262DF0076286','142729','闻喜县','wxx','WENXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB2DFA10-EE58-52EA-6387-262DF0076286','142730','夏县','xx','XIAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB2DFA10-EE58-52EA-6387-262DF0076286','142731','绛县','jx','JIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB2DFA10-EE58-52EA-6387-262DF0076286','142732','平陆县','plx','PINGLUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB2DFA10-EE58-52EA-6387-262DF0076286','142733','垣曲县','yqx','YUANQUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--内蒙古
INSERT INTO t_data_dictionary_common
VALUES('9DDE20DD-739A-E771-F32E-D445AF7B2E4C','9','150000','内蒙古自治区','nmgzzq','NEIMENGGUZIZHIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('49AF6BAC-B89F-C95F-EE21-0F8FF4DD7BD3','9DDE20DD-739A-E771-F32E-D445AF7B2E4C','150100','呼和浩特市','hhhts','HUHEHAOTESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49AF6BAC-B89F-C95F-EE21-0F8FF4DD7BD3','150101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49AF6BAC-B89F-C95F-EE21-0F8FF4DD7BD3','150102','新城区','xcq','XINCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49AF6BAC-B89F-C95F-EE21-0F8FF4DD7BD3','150103','回民区','hmq','HUIMINQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49AF6BAC-B89F-C95F-EE21-0F8FF4DD7BD3','150104','玉泉区','yqq','YUQUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49AF6BAC-B89F-C95F-EE21-0F8FF4DD7BD3','150105','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49AF6BAC-B89F-C95F-EE21-0F8FF4DD7BD3','150121','土默特左旗','tmtzq','TUMOTEZUOQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49AF6BAC-B89F-C95F-EE21-0F8FF4DD7BD3','150122','托克托县','tktx','TUOKETUOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49AF6BAC-B89F-C95F-EE21-0F8FF4DD7BD3','150123','和林格尔县','hlgex','HELINGEERXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49AF6BAC-B89F-C95F-EE21-0F8FF4DD7BD3','150124','清水河县','qshx','QINGSHUIHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49AF6BAC-B89F-C95F-EE21-0F8FF4DD7BD3','150125','武川县','wcx','WUCHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('9E2F8316-6CC3-8FEF-D0CE-F026BAF4AE1C','9DDE20DD-739A-E771-F32E-D445AF7B2E4C','150200','包头市','bts','BAOTOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E2F8316-6CC3-8FEF-D0CE-F026BAF4AE1C','150201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E2F8316-6CC3-8FEF-D0CE-F026BAF4AE1C','150202','东河区','dhq','DONGHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E2F8316-6CC3-8FEF-D0CE-F026BAF4AE1C','150203','昆都伦区','kdlq','KUNDOULUNQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E2F8316-6CC3-8FEF-D0CE-F026BAF4AE1C','150204','青山区','qsq','QINGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E2F8316-6CC3-8FEF-D0CE-F026BAF4AE1C','150205','石拐矿区','sgkq','SHIGUAIKUANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E2F8316-6CC3-8FEF-D0CE-F026BAF4AE1C','150206','白云矿区','bykq','BAIYUNKUANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E2F8316-6CC3-8FEF-D0CE-F026BAF4AE1C','150207','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E2F8316-6CC3-8FEF-D0CE-F026BAF4AE1C','150221','土默特右旗','tmtyq','TUMOTEYOUQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E2F8316-6CC3-8FEF-D0CE-F026BAF4AE1C','150222','固阳县','gyx','GUYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E2F8316-6CC3-8FEF-D0CE-F026BAF4AE1C','150223','达尔罕茂明安联合旗','dehmmalhq','DAERHANMAOMINGANLIANHEQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('DF8ADEED-2F58-FD9F-582C-F04EE6C8BC3D','9DDE20DD-739A-E771-F32E-D445AF7B2E4C','150300','乌海市','whs','WUHAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DF8ADEED-2F58-FD9F-582C-F04EE6C8BC3D','150301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DF8ADEED-2F58-FD9F-582C-F04EE6C8BC3D','150302','海勃湾区','hbwq','HAIBOWANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DF8ADEED-2F58-FD9F-582C-F04EE6C8BC3D','150303','海南区','hnq','HAINANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DF8ADEED-2F58-FD9F-582C-F04EE6C8BC3D','150304','市乌达区','swdq','SHIWUDAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('0A53DA6C-92AF-9A73-F7AA-3B79FC8B6EE7','9DDE20DD-739A-E771-F32E-D445AF7B2E4C','150400','赤峰市','cfs','CHIFENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A53DA6C-92AF-9A73-F7AA-3B79FC8B6EE7','150401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A53DA6C-92AF-9A73-F7AA-3B79FC8B6EE7','150402','红山区','hsq','HONGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A53DA6C-92AF-9A73-F7AA-3B79FC8B6EE7','150403','元宝山区','ybsq','YUANBAOSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A53DA6C-92AF-9A73-F7AA-3B79FC8B6EE7','150404','松山区','ssq','SONGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A53DA6C-92AF-9A73-F7AA-3B79FC8B6EE7','150421','阿鲁科尔沁旗','alkeqq','ALUKEERQINQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A53DA6C-92AF-9A73-F7AA-3B79FC8B6EE7','150422','巴林左旗','blzq','BALINZUOQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A53DA6C-92AF-9A73-F7AA-3B79FC8B6EE7','150423','巴林右旗','blyq','BALINYOUQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A53DA6C-92AF-9A73-F7AA-3B79FC8B6EE7','150424','林西县','lxx','LINXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A53DA6C-92AF-9A73-F7AA-3B79FC8B6EE7','150425','克什克腾旗','ksktq','KESHENKETENGQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A53DA6C-92AF-9A73-F7AA-3B79FC8B6EE7','150426','翁牛特旗','wntq','WENGNIUTEQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A53DA6C-92AF-9A73-F7AA-3B79FC8B6EE7','150428','喀喇沁旗','klqq','KALAQINQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A53DA6C-92AF-9A73-F7AA-3B79FC8B6EE7','150429','宁城县','ncx','NINGCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A53DA6C-92AF-9A73-F7AA-3B79FC8B6EE7','150430','敖汉旗','ahq','AOHANQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('A512530E-99E4-F7FB-2666-FD77E02A9BBD','9DDE20DD-739A-E771-F32E-D445AF7B2E4C','152100','呼伦贝尔盟','hlbem','HULUNBEIERMENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A512530E-99E4-F7FB-2666-FD77E02A9BBD','152101','海拉尔市','hles','HAILAERSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A512530E-99E4-F7FB-2666-FD77E02A9BBD','152101','满洲里市','mzls','MANZHOULISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A512530E-99E4-F7FB-2666-FD77E02A9BBD','152103','扎兰屯市','zlts','ZHALANTUNSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A512530E-99E4-F7FB-2666-FD77E02A9BBD','152104','牙克石市','ykss','YAKESHISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A512530E-99E4-F7FB-2666-FD77E02A9BBD','152105','根河市','ghs','GENHESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A512530E-99E4-F7FB-2666-FD77E02A9BBD','152106','额尔古纳市','eegns','EERGUNASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A512530E-99E4-F7FB-2666-FD77E02A9BBD','152122','阿荣旗','arq','ARONGQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A512530E-99E4-F7FB-2666-FD77E02A9BBD','152123','莫力达瓦达斡尔族自治旗','mldwdwezzzq','MOLIDAWADAWOERZUZIZHIQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A512530E-99E4-F7FB-2666-FD77E02A9BBD','152127','鄂伦春自治旗','elczzq','ELUNCHUNZIZHIQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A512530E-99E4-F7FB-2666-FD77E02A9BBD','152128','鄂温克族自治旗','ewkzzzq','EWENKEZUZIZHIQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A512530E-99E4-F7FB-2666-FD77E02A9BBD','152129','新巴尔虎右旗','xbehyq','XINBAERHUYOUQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A512530E-99E4-F7FB-2666-FD77E02A9BBD','152130','新巴尔虎左旗','xbehzq','XINBAERHUZUOQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A512530E-99E4-F7FB-2666-FD77E02A9BBD','152131','陈巴尔虎旗','cbehq','CHENBAERHUQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('357C93A6-0363-2F70-319C-7FE9EAE851AD','9DDE20DD-739A-E771-F32E-D445AF7B2E4C','152200','兴安盟','xam','XINGANMENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'357C93A6-0363-2F70-319C-7FE9EAE851AD','152201','乌兰浩特市','wlhts','WULANHAOTESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'357C93A6-0363-2F70-319C-7FE9EAE851AD','152202','阿尔山市','aess','AERSHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'357C93A6-0363-2F70-319C-7FE9EAE851AD','152221','科尔沁右翼前旗','keqyyqq','KEERQINYOUYIQIANQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'357C93A6-0363-2F70-319C-7FE9EAE851AD','152222','科尔沁右翼中旗','keqyyzq','KEERQINYOUYIZHONGQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'357C93A6-0363-2F70-319C-7FE9EAE851AD','152223','扎赉特旗','zltq','ZHALAITEQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'357C93A6-0363-2F70-319C-7FE9EAE851AD','152224','突泉县','tqx','TUQUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('B46CF533-18F9-EEA4-C580-428766B7991D','9DDE20DD-739A-E771-F32E-D445AF7B2E4C','152300','哲里木盟','zlmm','ZHELIMUMENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B46CF533-18F9-EEA4-C580-428766B7991D','152301','通辽市','tls','TONGLIAOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B46CF533-18F9-EEA4-C580-428766B7991D','152302','霍林郭勒市','hlgls','HUOLINGUOLESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B46CF533-18F9-EEA4-C580-428766B7991D','152322','科尔沁左翼中旗','keqzyzq','KEERQINZUOYIZHONGQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B46CF533-18F9-EEA4-C580-428766B7991D','152323','科尔沁左翼后旗','keqzyhq','KEERQINZUOYIHOUQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B46CF533-18F9-EEA4-C580-428766B7991D','152324','开鲁县','klx','KAILUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B46CF533-18F9-EEA4-C580-428766B7991D','152325','库伦旗','klq','KULUNQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B46CF533-18F9-EEA4-C580-428766B7991D','152326','奈曼旗','nmq','NAIMANQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B46CF533-18F9-EEA4-C580-428766B7991D','152327','扎鲁特旗','zltq','ZHALUTEQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('45F86134-CED0-B6A9-F9EF-613E527D1070','9DDE20DD-739A-E771-F32E-D445AF7B2E4C','152500','锡林郭勒盟','xlglm','XILINGUOLEMENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45F86134-CED0-B6A9-F9EF-613E527D1070','152501','二连浩特市','elhts','ERLIANHAOTESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45F86134-CED0-B6A9-F9EF-613E527D1070','152502','锡林浩特市','xlhts','XILINHAOTESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45F86134-CED0-B6A9-F9EF-613E527D1070','152522','阿巴嘎旗','abgq','ABAGAQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45F86134-CED0-B6A9-F9EF-613E527D1070','152523','苏尼特左旗','sntzq','SUNITEZUOQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45F86134-CED0-B6A9-F9EF-613E527D1070','152524','苏尼特右旗','sntyq','SUNITEYOUQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45F86134-CED0-B6A9-F9EF-613E527D1070','152525','东乌珠穆沁旗','dwzmqq','DONGWUZHUMUQINQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45F86134-CED0-B6A9-F9EF-613E527D1070','152526','西乌珠穆沁旗','xwzmqq','XIWUZHUMUQINQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45F86134-CED0-B6A9-F9EF-613E527D1070','152527','太仆寺旗','tpsq','TAIPUSIQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45F86134-CED0-B6A9-F9EF-613E527D1070','152528','镶黄旗','xhq','XIANGHUANGQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45F86134-CED0-B6A9-F9EF-613E527D1070','152529','正镶白旗','zxbq','ZHENGXIANGBAIQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45F86134-CED0-B6A9-F9EF-613E527D1070','152530','正蓝旗','zlq','ZHENGLANQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45F86134-CED0-B6A9-F9EF-613E527D1070','152531','多伦县','dlx','DUOLUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('25CA6B82-CA7F-55C4-CC51-DDDF2462A914','9DDE20DD-739A-E771-F32E-D445AF7B2E4C','152600','乌兰察布盟','wlcbm','WULANCHABUMENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'25CA6B82-CA7F-55C4-CC51-DDDF2462A914','152601','集宁市','jns','JININGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'25CA6B82-CA7F-55C4-CC51-DDDF2462A914','152602','丰镇市','fzs','FENGZHENSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'25CA6B82-CA7F-55C4-CC51-DDDF2462A914','152624','卓资县','zzx','ZHUOZIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'25CA6B82-CA7F-55C4-CC51-DDDF2462A914','152625','化德县','hdx','HUADEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'25CA6B82-CA7F-55C4-CC51-DDDF2462A914','152626','商都县','sdx','SHANGDOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'25CA6B82-CA7F-55C4-CC51-DDDF2462A914','152627','兴和县','xhx','XINGHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'25CA6B82-CA7F-55C4-CC51-DDDF2462A914','152629','凉城县','lcx','LIANGCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'25CA6B82-CA7F-55C4-CC51-DDDF2462A914','152630','察哈尔右翼前旗','cheyyqq','CHAHAERYOUYIQIANQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'25CA6B82-CA7F-55C4-CC51-DDDF2462A914','152631','察哈尔右翼中旗','cheyyzq','CHAHAERYOUYIZHONGQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'25CA6B82-CA7F-55C4-CC51-DDDF2462A914','152632','察哈尔右翼后旗','cheyyhq','CHAHAERYOUYIHOUQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'25CA6B82-CA7F-55C4-CC51-DDDF2462A914','152633','四子王旗','szwq','SIZIWANGQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('34FC7A14-9490-845B-711A-AD2742A33069','9DDE20DD-739A-E771-F32E-D445AF7B2E4C','152700','伊克昭盟','ykzm','YIKEZHAOMENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34FC7A14-9490-845B-711A-AD2742A33069','152701','东胜市','dss','DONGSHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34FC7A14-9490-845B-711A-AD2742A33069','152722','达拉特旗','dltq','DALATEQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34FC7A14-9490-845B-711A-AD2742A33069','152723','准格尔旗','zgeq','ZHUNGEERQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34FC7A14-9490-845B-711A-AD2742A33069','152724','鄂托克前旗','etkqq','ETUOKEQIANQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34FC7A14-9490-845B-711A-AD2742A33069','152725','鄂托克旗','etkq','ETUOKEQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34FC7A14-9490-845B-711A-AD2742A33069','152726','杭锦旗','hjq','HANGJINQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34FC7A14-9490-845B-711A-AD2742A33069','152727','乌审旗','wsq','WUSHENQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34FC7A14-9490-845B-711A-AD2742A33069','152728','伊金霍洛旗','yjhlq','YIJINHUOLUOQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('93565EED-3446-EE39-E5E6-37EE9AE1A852','9DDE20DD-739A-E771-F32E-D445AF7B2E4C','152800','巴彦淖尔盟','bynem','BAYANNAOERMENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'93565EED-3446-EE39-E5E6-37EE9AE1A852','152801','临河市','lhs','LINHESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'93565EED-3446-EE39-E5E6-37EE9AE1A852','152822','五原县','wyx','WUYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'93565EED-3446-EE39-E5E6-37EE9AE1A852','152823','磴口县','dkx','DENGKOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'93565EED-3446-EE39-E5E6-37EE9AE1A852','152824','乌拉特前旗','wltqq','WULATEQIANQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'93565EED-3446-EE39-E5E6-37EE9AE1A852','152825','乌拉特中旗','wltzq','WULATEZHONGQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'93565EED-3446-EE39-E5E6-37EE9AE1A852','152826','乌拉特后旗','wlthq','WULATEHOUQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'93565EED-3446-EE39-E5E6-37EE9AE1A852','152827','杭锦后旗','hjhq','HANGJINHOUQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('4A580785-E602-6A1D-AE79-322AE47B9193','9DDE20DD-739A-E771-F32E-D445AF7B2E4C','152900','阿拉善盟','alsm','ALASHANMENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4A580785-E602-6A1D-AE79-322AE47B9193','152921','阿拉善左旗','alszq','ALASHANZUOQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4A580785-E602-6A1D-AE79-322AE47B9193','152922','阿拉善右旗','alsyq','ALASHANYOUQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4A580785-E602-6A1D-AE79-322AE47B9193','152923','额济纳旗','ejnq','EJINAQI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--辽宁省
INSERT INTO t_data_dictionary_common
VALUES('33FFDF1B-D20B-0D96-5A95-F0C263443C0A','9','210000','辽宁省','lns','LIAONINGSHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('11326270-9688-CA61-E07C-B57901A9F8EF','33FFDF1B-D20B-0D96-5A95-F0C263443C0A','210100','沈阳市','sys','SHENYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11326270-9688-CA61-E07C-B57901A9F8EF','210101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11326270-9688-CA61-E07C-B57901A9F8EF','210102','和平区','hpq','HEPINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11326270-9688-CA61-E07C-B57901A9F8EF','210103','沈河区','shq','SHENHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11326270-9688-CA61-E07C-B57901A9F8EF','210104','大东区','ddq','DADONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11326270-9688-CA61-E07C-B57901A9F8EF','210105','皇姑区','hgq','HUANGGUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11326270-9688-CA61-E07C-B57901A9F8EF','210106','铁西区','txq','TIEXIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11326270-9688-CA61-E07C-B57901A9F8EF','210111','苏家屯区','sjtq','SUJIATUNQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11326270-9688-CA61-E07C-B57901A9F8EF','210112','东陵区','dlq','DONGLINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11326270-9688-CA61-E07C-B57901A9F8EF','210113','新城子区','xczq','XINCHENGZIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11326270-9688-CA61-E07C-B57901A9F8EF','210114','于洪区','yhq','YUHONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11326270-9688-CA61-E07C-B57901A9F8EF','210122','辽中县','lzx','LIAOZHONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11326270-9688-CA61-E07C-B57901A9F8EF','210123','康平县','kpx','KANGPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11326270-9688-CA61-E07C-B57901A9F8EF','210124','法库县','fkx','FAKUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11326270-9688-CA61-E07C-B57901A9F8EF','210181','新民市','xms','XINMINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('97210DF1-F041-6483-ED9A-810C398636BF','33FFDF1B-D20B-0D96-5A95-F0C263443C0A','210200','大连市','dls','DALIANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'97210DF1-F041-6483-ED9A-810C398636BF','210201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'97210DF1-F041-6483-ED9A-810C398636BF','210202','中山区','zsq','ZHONGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'97210DF1-F041-6483-ED9A-810C398636BF','210203','西岗区','xgq','XIGANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'97210DF1-F041-6483-ED9A-810C398636BF','210204','沙河口区','shkq','SHAHEKOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'97210DF1-F041-6483-ED9A-810C398636BF','210211','甘井子区','gjzq','GANJINGZIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'97210DF1-F041-6483-ED9A-810C398636BF','210212','旅顺口区','lskq','LU:SHUNKOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'97210DF1-F041-6483-ED9A-810C398636BF','210213','金州区','jzq','JINZHOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'97210DF1-F041-6483-ED9A-810C398636BF','210224','长海县','zhx','ZHANGHAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'97210DF1-F041-6483-ED9A-810C398636BF','210281','瓦房店市','wfds','WAFANGDIANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'97210DF1-F041-6483-ED9A-810C398636BF','210282','普兰店市','plds','PULANDIANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'97210DF1-F041-6483-ED9A-810C398636BF','210283','庄河市','zhs','ZHUANGHESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('8BE4E81E-1EA6-EE74-457F-93DC5A8D88F1','33FFDF1B-D20B-0D96-5A95-F0C263443C0A','210300','鞍山市','ass','ANSHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8BE4E81E-1EA6-EE74-457F-93DC5A8D88F1','210301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8BE4E81E-1EA6-EE74-457F-93DC5A8D88F1','210302','铁东区','tdq','TIEDONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8BE4E81E-1EA6-EE74-457F-93DC5A8D88F1','210303','铁西区','txq','TIEXIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8BE4E81E-1EA6-EE74-457F-93DC5A8D88F1','210304','立山区','lsq','LISHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8BE4E81E-1EA6-EE74-457F-93DC5A8D88F1','210311','千山区','qsq','QIANSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8BE4E81E-1EA6-EE74-457F-93DC5A8D88F1','210321','台安县','tax','TAIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8BE4E81E-1EA6-EE74-457F-93DC5A8D88F1','210323','岫岩满族自治县','xymzzzx','XIUYANMANZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8BE4E81E-1EA6-EE74-457F-93DC5A8D88F1','210381','海城市','hcs','HAICHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('EEF8D930-9FDF-F4FC-CF6A-406A84E5F85F','33FFDF1B-D20B-0D96-5A95-F0C263443C0A','210400','抚顺市','fss','FUSHUNSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EEF8D930-9FDF-F4FC-CF6A-406A84E5F85F','210401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EEF8D930-9FDF-F4FC-CF6A-406A84E5F85F','210402','新抚区','xfq','XINFUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EEF8D930-9FDF-F4FC-CF6A-406A84E5F85F','210403','露天区','ltq','LUTIANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EEF8D930-9FDF-F4FC-CF6A-406A84E5F85F','210404','望花区','whq','WANGHUAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EEF8D930-9FDF-F4FC-CF6A-406A84E5F85F','210411','顺城区','scq','SHUNCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EEF8D930-9FDF-F4FC-CF6A-406A84E5F85F','210421','抚顺县','fsx','FUSHUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EEF8D930-9FDF-F4FC-CF6A-406A84E5F85F','210422','新宾满族自治县','xbmzzzx','XINBINMANZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EEF8D930-9FDF-F4FC-CF6A-406A84E5F85F','210423','清原满族自治县','qymzzzx','QINGYUANMANZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('A3689F00-52CC-AB76-0B5A-A1C10AC7E3B1','33FFDF1B-D20B-0D96-5A95-F0C263443C0A','210500','本溪市','bxs','BENXISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A3689F00-52CC-AB76-0B5A-A1C10AC7E3B1','210501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A3689F00-52CC-AB76-0B5A-A1C10AC7E3B1','210502','平山区','psq','PINGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A3689F00-52CC-AB76-0B5A-A1C10AC7E3B1','210503','溪湖区','xhq','XIHUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A3689F00-52CC-AB76-0B5A-A1C10AC7E3B1','210504','明山区','msq','MINGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A3689F00-52CC-AB76-0B5A-A1C10AC7E3B1','210505','南芬区','nfq','NANFENQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A3689F00-52CC-AB76-0B5A-A1C10AC7E3B1','210521','本溪满族自治县','bxmzzzx','BENXIMANZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A3689F00-52CC-AB76-0B5A-A1C10AC7E3B1','210522','桓仁满族自治县','hrmzzzx','HUANRENMANZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('8016372F-8805-303D-DAD1-3C999B26A687','33FFDF1B-D20B-0D96-5A95-F0C263443C0A','210600','丹东市','dds','DANDONGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8016372F-8805-303D-DAD1-3C999B26A687','210601','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8016372F-8805-303D-DAD1-3C999B26A687','210602','元宝区','ybq','YUANBAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8016372F-8805-303D-DAD1-3C999B26A687','210603','振兴区','zxq','ZHENXINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8016372F-8805-303D-DAD1-3C999B26A687','210604','振安区','zaq','ZHENANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8016372F-8805-303D-DAD1-3C999B26A687','210624','宽甸满族自治县','kdmzzzx','KUANDIANMANZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8016372F-8805-303D-DAD1-3C999B26A687','210681','东港市','dgs','DONGGANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8016372F-8805-303D-DAD1-3C999B26A687','210682','凤城市','fcs','FENGCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E4A1F763-5277-3F56-8233-CDF4F47A410E','33FFDF1B-D20B-0D96-5A95-F0C263443C0A','210700','锦州市','jzs','JINZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E4A1F763-5277-3F56-8233-CDF4F47A410E','210701','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E4A1F763-5277-3F56-8233-CDF4F47A410E','210702','古塔区','gtq','GUTAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E4A1F763-5277-3F56-8233-CDF4F47A410E','210703','凌河区','lhq','LINGHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E4A1F763-5277-3F56-8233-CDF4F47A410E','210711','太和区','thq','TAIHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E4A1F763-5277-3F56-8233-CDF4F47A410E','210726','黑山县','hsx','HEISHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E4A1F763-5277-3F56-8233-CDF4F47A410E','210727','义县','yx','YIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E4A1F763-5277-3F56-8233-CDF4F47A410E','210781','凌海市','lhs','LINGHAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E4A1F763-5277-3F56-8233-CDF4F47A410E','210782','北宁市','bns','BEININGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('46FCEF65-23AD-6CC2-3C53-CFDFA7603358','33FFDF1B-D20B-0D96-5A95-F0C263443C0A','210800','营口市','yks','YINGKOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'46FCEF65-23AD-6CC2-3C53-CFDFA7603358','210801','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'46FCEF65-23AD-6CC2-3C53-CFDFA7603358','210802','站前区','zqq','ZHANQIANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'46FCEF65-23AD-6CC2-3C53-CFDFA7603358','210803','西市区','xsq','XISHIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'46FCEF65-23AD-6CC2-3C53-CFDFA7603358','210804','鲅鱼圈区','byqq','BAYUQUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'46FCEF65-23AD-6CC2-3C53-CFDFA7603358','210811','老边区','lbq','LAOBIANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'46FCEF65-23AD-6CC2-3C53-CFDFA7603358','210881','盖州市','gzs','GAIZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'46FCEF65-23AD-6CC2-3C53-CFDFA7603358','210882','大石桥市','dsqs','DASHIQIAOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E61BF227-9129-09B7-D064-46D0214076DF','33FFDF1B-D20B-0D96-5A95-F0C263443C0A','210900','阜新市','fxs','FUXINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E61BF227-9129-09B7-D064-46D0214076DF','210901','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E61BF227-9129-09B7-D064-46D0214076DF','210902','海州区','hzq','HAIZHOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E61BF227-9129-09B7-D064-46D0214076DF','210903','新邱区','xqq','XINQIUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E61BF227-9129-09B7-D064-46D0214076DF','210904','太平区','tpq','TAIPINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E61BF227-9129-09B7-D064-46D0214076DF','210905','清河门区','qhmq','QINGHEMENQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E61BF227-9129-09B7-D064-46D0214076DF','210911','细河区','xhq','XIHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E61BF227-9129-09B7-D064-46D0214076DF','210921','阜新蒙古族自治县','fxmgzzzx','FUXINMENGGUZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E61BF227-9129-09B7-D064-46D0214076DF','210922','彰武县','zwx','ZHANGWUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('4A3D444C-90E1-4CA2-9F03-E1F415AD0941','33FFDF1B-D20B-0D96-5A95-F0C263443C0A','211000','辽阳市','lys','LIAOYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4A3D444C-90E1-4CA2-9F03-E1F415AD0941','211001','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4A3D444C-90E1-4CA2-9F03-E1F415AD0941','211002','白塔区','btq','BAITAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4A3D444C-90E1-4CA2-9F03-E1F415AD0941','211003','文圣区','wsq','WENSHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4A3D444C-90E1-4CA2-9F03-E1F415AD0941','211004','宏伟区','hwq','HONGWEIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4A3D444C-90E1-4CA2-9F03-E1F415AD0941','211005','弓长岭区','gzlq','GONGZHANGLINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4A3D444C-90E1-4CA2-9F03-E1F415AD0941','211011','太子河区','tzhq','TAIZIHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4A3D444C-90E1-4CA2-9F03-E1F415AD0941','211021','辽阳县','lyx','LIAOYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4A3D444C-90E1-4CA2-9F03-E1F415AD0941','211081','灯塔市','dts','DENGTASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('7B91942F-4FE8-1CAE-63C2-BED9A14BCBDC','33FFDF1B-D20B-0D96-5A95-F0C263443C0A','211100','盘锦市','pjs','PANJINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7B91942F-4FE8-1CAE-63C2-BED9A14BCBDC','211101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7B91942F-4FE8-1CAE-63C2-BED9A14BCBDC','211102','双台子区','stzq','SHUANGTAIZIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7B91942F-4FE8-1CAE-63C2-BED9A14BCBDC','211103','兴隆台区','xltq','XINGLONGTAIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7B91942F-4FE8-1CAE-63C2-BED9A14BCBDC','211121','大洼县','dwx','DAWAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7B91942F-4FE8-1CAE-63C2-BED9A14BCBDC','211122','盘山县','psx','PANSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('5EB247C8-1C20-E654-55E2-E787AA425F84','33FFDF1B-D20B-0D96-5A95-F0C263443C0A','211200','铁岭市','tls','TIELINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5EB247C8-1C20-E654-55E2-E787AA425F84','211201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5EB247C8-1C20-E654-55E2-E787AA425F84','211202','银州区','yzq','YINZHOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5EB247C8-1C20-E654-55E2-E787AA425F84','211204','清河区','qhq','QINGHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5EB247C8-1C20-E654-55E2-E787AA425F84','211221','铁岭县','tlx','TIELINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5EB247C8-1C20-E654-55E2-E787AA425F84','211223','西丰县','xfx','XIFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5EB247C8-1C20-E654-55E2-E787AA425F84','211224','昌图县','ctx','CHANGTUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5EB247C8-1C20-E654-55E2-E787AA425F84','211281','铁法市','tfs','TIEFASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5EB247C8-1C20-E654-55E2-E787AA425F84','211282','开原市','kys','KAIYUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('C5CB387A-B431-35F7-0F97-177BF6712626','33FFDF1B-D20B-0D96-5A95-F0C263443C0A','211300','朝阳市','cys','CHAOYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C5CB387A-B431-35F7-0F97-177BF6712626','211301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C5CB387A-B431-35F7-0F97-177BF6712626','211302','双塔区','stq','SHUANGTAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C5CB387A-B431-35F7-0F97-177BF6712626','211303','龙城区','lcq','LONGCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C5CB387A-B431-35F7-0F97-177BF6712626','211321','朝阳县','cyx','CHAOYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C5CB387A-B431-35F7-0F97-177BF6712626','211322','建平县','jpx','JIANPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C5CB387A-B431-35F7-0F97-177BF6712626','211324','喀喇沁左翼蒙古族自治县','klqzymgzzzx','KALAQINZUOYIMENGGUZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C5CB387A-B431-35F7-0F97-177BF6712626','211381','北票市','bps','BEIPIAOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C5CB387A-B431-35F7-0F97-177BF6712626','211382','凌源市','lys','LINGYUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('B540A33F-89EB-0BF8-A402-D39044DB426F','33FFDF1B-D20B-0D96-5A95-F0C263443C0A','211400','葫芦岛市','hlds','HULUDAOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B540A33F-89EB-0BF8-A402-D39044DB426F','211401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B540A33F-89EB-0BF8-A402-D39044DB426F','211402','连山区','lsq','LIANSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B540A33F-89EB-0BF8-A402-D39044DB426F','211403','龙港区','lgq','LONGGANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B540A33F-89EB-0BF8-A402-D39044DB426F','211404','南票区','npq','NANPIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B540A33F-89EB-0BF8-A402-D39044DB426F','211421','绥中县','szx','SUIZHONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B540A33F-89EB-0BF8-A402-D39044DB426F','211422','建昌县','jcx','JIANCHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B540A33F-89EB-0BF8-A402-D39044DB426F','211481','兴城市','xcs','XINGCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--吉林省
INSERT INTO t_data_dictionary_common
VALUES('28DCC0DB-A1F4-5FA9-67CD-E50295E0092A','9','220000','吉林省','jls','JILINSHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('F7390BA9-B011-CF01-C32C-70CEC427122E','28DCC0DB-A1F4-5FA9-67CD-E50295E0092A','220100','长春市','zcs','ZHANGCHUNSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F7390BA9-B011-CF01-C32C-70CEC427122E','220101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F7390BA9-B011-CF01-C32C-70CEC427122E','220102','南关区','ngq','NANGUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F7390BA9-B011-CF01-C32C-70CEC427122E','220103','宽城区','kcq','KUANCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F7390BA9-B011-CF01-C32C-70CEC427122E','220104','朝阳区','cyq','CHAOYANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F7390BA9-B011-CF01-C32C-70CEC427122E','220105','二道区','edq','ERDAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F7390BA9-B011-CF01-C32C-70CEC427122E','220106','绿园区','lyq','LU:YUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F7390BA9-B011-CF01-C32C-70CEC427122E','220112','双阳区','syq','SHUANGYANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F7390BA9-B011-CF01-C32C-70CEC427122E','220122','农安县','nax','NONGANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F7390BA9-B011-CF01-C32C-70CEC427122E','220181','九台市','jts','JIUTAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F7390BA9-B011-CF01-C32C-70CEC427122E','220182','榆树市','yss','YUSHUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F7390BA9-B011-CF01-C32C-70CEC427122E','220183','德惠市','dhs','DEHUISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('067ECE5D-BFBE-2FD9-5169-8EF3BB4A488E','28DCC0DB-A1F4-5FA9-67CD-E50295E0092A','220200','吉林市','jls','JILINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067ECE5D-BFBE-2FD9-5169-8EF3BB4A488E','220201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067ECE5D-BFBE-2FD9-5169-8EF3BB4A488E','220202','昌邑区','cyq','CHANGYIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067ECE5D-BFBE-2FD9-5169-8EF3BB4A488E','220203','龙潭区','ltq','LONGTANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067ECE5D-BFBE-2FD9-5169-8EF3BB4A488E','220204','船营区','cyq','CHUANYINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067ECE5D-BFBE-2FD9-5169-8EF3BB4A488E','220211','丰满区','fmq','FENGMANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067ECE5D-BFBE-2FD9-5169-8EF3BB4A488E','220221','永吉县','yjx','YONGJIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067ECE5D-BFBE-2FD9-5169-8EF3BB4A488E','220281','蛟河市','jhs','JIAOHESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067ECE5D-BFBE-2FD9-5169-8EF3BB4A488E','220282','桦甸市','hds','HUADIANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067ECE5D-BFBE-2FD9-5169-8EF3BB4A488E','220283','舒兰市','sls','SHULANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067ECE5D-BFBE-2FD9-5169-8EF3BB4A488E','220284','磐石市','pss','PANSHISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('B57DDEC3-0A7C-C373-8E96-CA3EA593F82E','28DCC0DB-A1F4-5FA9-67CD-E50295E0092A','220300','四平市','sps','SIPINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B57DDEC3-0A7C-C373-8E96-CA3EA593F82E','220301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B57DDEC3-0A7C-C373-8E96-CA3EA593F82E','220302','铁西区','txq','TIEXIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B57DDEC3-0A7C-C373-8E96-CA3EA593F82E','220303','铁东区','tdq','TIEDONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B57DDEC3-0A7C-C373-8E96-CA3EA593F82E','220322','梨树县','lsx','LISHUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B57DDEC3-0A7C-C373-8E96-CA3EA593F82E','220323','伊通满族自治县','ytmzzzx','YITONGMANZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B57DDEC3-0A7C-C373-8E96-CA3EA593F82E','220381','公主岭市','gzls','GONGZHULINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B57DDEC3-0A7C-C373-8E96-CA3EA593F82E','220382','双辽市','sls','SHUANGLIAOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('723EC9F7-7B26-04D4-D500-FDD912CB1D50','28DCC0DB-A1F4-5FA9-67CD-E50295E0092A','220400','辽源市','lys','LIAOYUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'723EC9F7-7B26-04D4-D500-FDD912CB1D50','220401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'723EC9F7-7B26-04D4-D500-FDD912CB1D50','220402','龙山区','lsq','LONGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'723EC9F7-7B26-04D4-D500-FDD912CB1D50','220403','西安区','xaq','XIANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'723EC9F7-7B26-04D4-D500-FDD912CB1D50','220421','东丰县','dfx','DONGFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'723EC9F7-7B26-04D4-D500-FDD912CB1D50','220422','东辽县','dlx','DONGLIAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('65D40441-A612-FC37-0F58-49D221796C07','28DCC0DB-A1F4-5FA9-67CD-E50295E0092A','220500','通化市','ths','TONGHUASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65D40441-A612-FC37-0F58-49D221796C07','220501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65D40441-A612-FC37-0F58-49D221796C07','220502','东昌区','dcq','DONGCHANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65D40441-A612-FC37-0F58-49D221796C07','220503','二道江区','edjq','ERDAOJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65D40441-A612-FC37-0F58-49D221796C07','220521','通化县','thx','TONGHUAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65D40441-A612-FC37-0F58-49D221796C07','220523','辉南县','hnx','HUINANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65D40441-A612-FC37-0F58-49D221796C07','220524','柳河县','lhx','LIUHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65D40441-A612-FC37-0F58-49D221796C07','220581','梅河口市','mhks','MEIHEKOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65D40441-A612-FC37-0F58-49D221796C07','220582','集安市','jas','JIANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('3C971952-747C-1461-E0C7-B53D974CB0B7','28DCC0DB-A1F4-5FA9-67CD-E50295E0092A','220600','白山市','bss','BAISHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C971952-747C-1461-E0C7-B53D974CB0B7','220601','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C971952-747C-1461-E0C7-B53D974CB0B7','220602','八道江区','bdjq','BADAOJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C971952-747C-1461-E0C7-B53D974CB0B7','220621','抚松县','fsx','FUSONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C971952-747C-1461-E0C7-B53D974CB0B7','220622','靖宇县','jyx','JINGYUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C971952-747C-1461-E0C7-B53D974CB0B7','220623','长白朝鲜族自治县','zbcxzzzx','ZHANGBAICHAOXIANZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C971952-747C-1461-E0C7-B53D974CB0B7','220625','江源县','jyx','JIANGYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C971952-747C-1461-E0C7-B53D974CB0B7','220681','临江市','ljs','LINJIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('DDD2B5C2-385E-723C-41B5-9EFD4977582F','28DCC0DB-A1F4-5FA9-67CD-E50295E0092A','220700','松原市','sys','SONGYUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDD2B5C2-385E-723C-41B5-9EFD4977582F','220701','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDD2B5C2-385E-723C-41B5-9EFD4977582F','220702','宁江区','njq','NINGJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDD2B5C2-385E-723C-41B5-9EFD4977582F','220721','前郭尔罗斯蒙古族自治县','qgelsmgzzzx','QIANGUOERLUOSIMENGGUZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDD2B5C2-385E-723C-41B5-9EFD4977582F','220722','长岭县','zlx','ZHANGLINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDD2B5C2-385E-723C-41B5-9EFD4977582F','220723','乾安县','qax','QIANANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDD2B5C2-385E-723C-41B5-9EFD4977582F','220724','扶余县','fyx','FUYUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E62DBCC8-FA0D-DDD4-5F6E-C6CD79A33714','28DCC0DB-A1F4-5FA9-67CD-E50295E0092A','220800','白城市','bcs','BAICHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E62DBCC8-FA0D-DDD4-5F6E-C6CD79A33714','220801','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E62DBCC8-FA0D-DDD4-5F6E-C6CD79A33714','220802','洮北区','tbq','TAOBEIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E62DBCC8-FA0D-DDD4-5F6E-C6CD79A33714','220821','镇赉县','zlx','ZHENLAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E62DBCC8-FA0D-DDD4-5F6E-C6CD79A33714','220822','通榆县','tyx','TONGYUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E62DBCC8-FA0D-DDD4-5F6E-C6CD79A33714','220881','洮南市','tns','TAONANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E62DBCC8-FA0D-DDD4-5F6E-C6CD79A33714','220882','大安市','das','DAANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('A509BB48-93A8-BF57-49BF-111002331F2F','28DCC0DB-A1F4-5FA9-67CD-E50295E0092A','222400','延边朝鲜族自治州','ybcxzzzz','YANBIANCHAOXIANZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A509BB48-93A8-BF57-49BF-111002331F2F','222401','延吉市','yjs','YANJISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A509BB48-93A8-BF57-49BF-111002331F2F','222402','图们市','tms','TUMENSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A509BB48-93A8-BF57-49BF-111002331F2F','222403','敦化市','dhs','DUNHUASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A509BB48-93A8-BF57-49BF-111002331F2F','222404','珲春市','hcs','HUNCHUNSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A509BB48-93A8-BF57-49BF-111002331F2F','222405','龙井市','ljs','LONGJINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A509BB48-93A8-BF57-49BF-111002331F2F','222406','和龙市','hls','HELONGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A509BB48-93A8-BF57-49BF-111002331F2F','222424','汪清县','wqx','WANGQINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A509BB48-93A8-BF57-49BF-111002331F2F','222426','安图县','atx','ANTUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--黑龙江省
INSERT INTO t_data_dictionary_common
VALUES('BDEFDD48-3631-24FA-FFF6-EC45D59F68AF','9','230000','黑龙江省','hljs','HEILONGJIANGSHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('6956871F-26A1-72C2-68C5-DA2EB3F30809','BDEFDD48-3631-24FA-FFF6-EC45D59F68AF','230100','哈尔滨市','hebs','HAERBINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230102','道里区','dlq','DAOLIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230103','南岗区','ngq','NANGANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230104','道外区','dwq','DAOWAIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230105','太平区','tpq','TAIPINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230106','香坊区','xfq','XIANGFANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230107','动力区','dlq','DONGLIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230108','平房区','pfq','PINGFANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230121','呼兰县','hlx','HULANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230123','依兰县','ylx','YILANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230124','方正县','fzx','FANGZHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230125','宾县','bx','BINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230126','巴彦县','byx','BAYANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230127','木兰县','mlx','MULANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230128','通河县','thx','TONGHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230129','延寿县','ysx','YANSHOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230181','阿城市','acs','ACHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230182','双城市','scs','SHUANGCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230183','尚志市','szs','SHANGZHISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6956871F-26A1-72C2-68C5-DA2EB3F30809','230184','五常市','wcs','WUCHANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('2BF1A045-C1BB-B817-F928-6908B8416E87','BDEFDD48-3631-24FA-FFF6-EC45D59F68AF','230200','齐齐哈尔市','qqhes','QIQIHAERSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF1A045-C1BB-B817-F928-6908B8416E87','230201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF1A045-C1BB-B817-F928-6908B8416E87','230202','龙沙区','lsq','LONGSHAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF1A045-C1BB-B817-F928-6908B8416E87','230203','建华区','jhq','JIANHUAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF1A045-C1BB-B817-F928-6908B8416E87','230204','铁锋区','tfq','TIEFENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF1A045-C1BB-B817-F928-6908B8416E87','230205','昂昂溪区','aaxq','ANGANGXIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF1A045-C1BB-B817-F928-6908B8416E87','230206','富拉尔基区','flejq','FULAERJIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF1A045-C1BB-B817-F928-6908B8416E87','230207','碾子山区','nzsq','NIANZISHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF1A045-C1BB-B817-F928-6908B8416E87','230208','梅里斯达斡尔族区','mlsdwezq','MEILISIDAWOERZUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF1A045-C1BB-B817-F928-6908B8416E87','230221','龙江县','ljx','LONGJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF1A045-C1BB-B817-F928-6908B8416E87','230223','依安县','yax','YIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF1A045-C1BB-B817-F928-6908B8416E87','230224','泰来县','tlx','TAILAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF1A045-C1BB-B817-F928-6908B8416E87','230225','甘南县','gnx','GANNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF1A045-C1BB-B817-F928-6908B8416E87','230227','富裕县','fyx','FUYUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF1A045-C1BB-B817-F928-6908B8416E87','230229','克山县','ksx','KESHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF1A045-C1BB-B817-F928-6908B8416E87','230230','克东县','kdx','KEDONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF1A045-C1BB-B817-F928-6908B8416E87','230231','拜泉县','bqx','BAIQUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF1A045-C1BB-B817-F928-6908B8416E87','230281','讷河市','nhs','NEHESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('92F70333-63EE-CF33-5499-D6FC21AFAEB0','BDEFDD48-3631-24FA-FFF6-EC45D59F68AF','230300','鸡西市','jxs','JIXISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92F70333-63EE-CF33-5499-D6FC21AFAEB0','230301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92F70333-63EE-CF33-5499-D6FC21AFAEB0','230302','鸡冠区','jgq','JIGUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92F70333-63EE-CF33-5499-D6FC21AFAEB0','230303','恒山区','hsq','HENGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92F70333-63EE-CF33-5499-D6FC21AFAEB0','230304','滴道区','ddq','DIDAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92F70333-63EE-CF33-5499-D6FC21AFAEB0','230305','梨树区','lsq','LISHUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92F70333-63EE-CF33-5499-D6FC21AFAEB0','230306','城子河区','czhq','CHENGZIHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92F70333-63EE-CF33-5499-D6FC21AFAEB0','230307','麻山区','msq','MASHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92F70333-63EE-CF33-5499-D6FC21AFAEB0','230321','鸡东县','jdx','JIDONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92F70333-63EE-CF33-5499-D6FC21AFAEB0','230381','虎林市','hls','HULINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92F70333-63EE-CF33-5499-D6FC21AFAEB0','230382','密山市','mss','MISHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('77741932-E066-9AE4-D24A-8182A6D7A2DB','BDEFDD48-3631-24FA-FFF6-EC45D59F68AF','230400','鹤岗市','hgs','HEGANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'77741932-E066-9AE4-D24A-8182A6D7A2DB','230401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'77741932-E066-9AE4-D24A-8182A6D7A2DB','230402','向阳区','xyq','XIANGYANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'77741932-E066-9AE4-D24A-8182A6D7A2DB','230403','工农区','gnq','GONGNONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'77741932-E066-9AE4-D24A-8182A6D7A2DB','230404','南山区','nsq','NANSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'77741932-E066-9AE4-D24A-8182A6D7A2DB','230405','兴安区','xaq','XINGANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'77741932-E066-9AE4-D24A-8182A6D7A2DB','230406','东山区','dsq','DONGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'77741932-E066-9AE4-D24A-8182A6D7A2DB','230407','兴山区','xsq','XINGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'77741932-E066-9AE4-D24A-8182A6D7A2DB','230421','萝北县','lbx','LUOBEIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'77741932-E066-9AE4-D24A-8182A6D7A2DB','230422','绥滨县','sbx','SUIBINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('7A52E8E1-E27D-150A-88B2-56599F15E380','BDEFDD48-3631-24FA-FFF6-EC45D59F68AF','230500','双鸭山市','syss','SHUANGYASHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7A52E8E1-E27D-150A-88B2-56599F15E380','230501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7A52E8E1-E27D-150A-88B2-56599F15E380','230502','尖山区','jsq','JIANSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7A52E8E1-E27D-150A-88B2-56599F15E380','230503','岭东区','ldq','LINGDONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7A52E8E1-E27D-150A-88B2-56599F15E380','230505','四方台区','sftq','SIFANGTAIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7A52E8E1-E27D-150A-88B2-56599F15E380','230506','宝山区','bsq','BAOSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7A52E8E1-E27D-150A-88B2-56599F15E380','230521','集贤县','jxx','JIXIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7A52E8E1-E27D-150A-88B2-56599F15E380','230522','友谊县','yyx','YOUYIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7A52E8E1-E27D-150A-88B2-56599F15E380','230523','宝清县','bqx','BAOQINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7A52E8E1-E27D-150A-88B2-56599F15E380','230524','饶河县','rhx','RAOHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('8A1B2102-A2A7-4306-76EF-D5205CACE79E','BDEFDD48-3631-24FA-FFF6-EC45D59F68AF','230600','大庆市','dqs','DAQINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8A1B2102-A2A7-4306-76EF-D5205CACE79E','230601','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8A1B2102-A2A7-4306-76EF-D5205CACE79E','230602','萨尔图区','setq','SAERTUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8A1B2102-A2A7-4306-76EF-D5205CACE79E','230603','龙凤区','lfq','LONGFENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8A1B2102-A2A7-4306-76EF-D5205CACE79E','230604','让胡路区','rhlq','RANGHULUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8A1B2102-A2A7-4306-76EF-D5205CACE79E','230605','红岗区','hgq','HONGGANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8A1B2102-A2A7-4306-76EF-D5205CACE79E','230606','大同区','dtq','DATONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8A1B2102-A2A7-4306-76EF-D5205CACE79E','230621','肇州县','zzx','ZHAOZHOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8A1B2102-A2A7-4306-76EF-D5205CACE79E','230622','肇源县','zyx','ZHAOYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8A1B2102-A2A7-4306-76EF-D5205CACE79E','230623','林甸县','ldx','LINDIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8A1B2102-A2A7-4306-76EF-D5205CACE79E','230624','杜尔伯特蒙古族自治县','debtmgzzzx','DUERBOTEMENGGUZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('3D802A94-6EC4-7F32-837B-6CCF0F8EFB6B','BDEFDD48-3631-24FA-FFF6-EC45D59F68AF','230700','伊春市','ycs','YICHUNSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3D802A94-6EC4-7F32-837B-6CCF0F8EFB6B','230701','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3D802A94-6EC4-7F32-837B-6CCF0F8EFB6B','230702','伊春区','ycq','YICHUNQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3D802A94-6EC4-7F32-837B-6CCF0F8EFB6B','230703','南岔区','ncq','NANCHAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3D802A94-6EC4-7F32-837B-6CCF0F8EFB6B','230704','友好区','yhq','YOUHAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3D802A94-6EC4-7F32-837B-6CCF0F8EFB6B','230705','西林区','xlq','XILINQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3D802A94-6EC4-7F32-837B-6CCF0F8EFB6B','230706','翠峦区','clq','CUILUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3D802A94-6EC4-7F32-837B-6CCF0F8EFB6B','230707','新青区','xqq','XINQINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3D802A94-6EC4-7F32-837B-6CCF0F8EFB6B','230708','美溪区','mxq','MEIXIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3D802A94-6EC4-7F32-837B-6CCF0F8EFB6B','230709','金山屯区','jstq','JINSHANTUNQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3D802A94-6EC4-7F32-837B-6CCF0F8EFB6B','230710','五营区','wyq','WUYINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3D802A94-6EC4-7F32-837B-6CCF0F8EFB6B','230711','乌马河区','wmhq','WUMAHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3D802A94-6EC4-7F32-837B-6CCF0F8EFB6B','230712','汤旺河区','twhq','TANGWANGHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3D802A94-6EC4-7F32-837B-6CCF0F8EFB6B','230713','带岭区','dlq','DAILINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3D802A94-6EC4-7F32-837B-6CCF0F8EFB6B','230714','乌伊岭区','wylq','WUYILINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3D802A94-6EC4-7F32-837B-6CCF0F8EFB6B','230715','红星区','hxq','HONGXINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3D802A94-6EC4-7F32-837B-6CCF0F8EFB6B','230716','上甘岭区','sglq','SHANGGANLINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3D802A94-6EC4-7F32-837B-6CCF0F8EFB6B','230722','嘉荫县','jyx','JIAYINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3D802A94-6EC4-7F32-837B-6CCF0F8EFB6B','230781','铁力市','tls','TIELISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('9AFF77DF-6D90-8F05-B4D7-563C235CF98B','BDEFDD48-3631-24FA-FFF6-EC45D59F68AF','230800','佳木斯市','jmss','JIAMUSISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9AFF77DF-6D90-8F05-B4D7-563C235CF98B','230801','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9AFF77DF-6D90-8F05-B4D7-563C235CF98B','230802','永红区','yhq','YONGHONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9AFF77DF-6D90-8F05-B4D7-563C235CF98B','230803','向阳区','xyq','XIANGYANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9AFF77DF-6D90-8F05-B4D7-563C235CF98B','230804','前进区','qjq','QIANJINQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9AFF77DF-6D90-8F05-B4D7-563C235CF98B','230805','东风区','dfq','DONGFENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9AFF77DF-6D90-8F05-B4D7-563C235CF98B','230811','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9AFF77DF-6D90-8F05-B4D7-563C235CF98B','230822','桦南县','hnx','HUANANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9AFF77DF-6D90-8F05-B4D7-563C235CF98B','230826','桦川县','hcx','HUACHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9AFF77DF-6D90-8F05-B4D7-563C235CF98B','230828','汤原县','tyx','TANGYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9AFF77DF-6D90-8F05-B4D7-563C235CF98B','230833','抚远县','fyx','FUYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9AFF77DF-6D90-8F05-B4D7-563C235CF98B','230881','同江市','tjs','TONGJIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9AFF77DF-6D90-8F05-B4D7-563C235CF98B','230882','富锦市','fjs','FUJINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E2356F00-CE68-9D8D-F8F0-B2D00A229C91','BDEFDD48-3631-24FA-FFF6-EC45D59F68AF','230900','七台河市','qths','QITAIHESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E2356F00-CE68-9D8D-F8F0-B2D00A229C91','230901','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E2356F00-CE68-9D8D-F8F0-B2D00A229C91','230902','新兴区','xxq','XINXINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E2356F00-CE68-9D8D-F8F0-B2D00A229C91','230903','桃山区','tsq','TAOSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E2356F00-CE68-9D8D-F8F0-B2D00A229C91','230904','茄子河区','qzhq','QIEZIHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E2356F00-CE68-9D8D-F8F0-B2D00A229C91','230921','勃利县','blx','BOLIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('6307FD19-5FE0-FFB6-63DA-485E459965EB','BDEFDD48-3631-24FA-FFF6-EC45D59F68AF','231000','牡丹江市','mdjs','MUDANJIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6307FD19-5FE0-FFB6-63DA-485E459965EB','231001','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6307FD19-5FE0-FFB6-63DA-485E459965EB','231002','东安区','daq','DONGANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6307FD19-5FE0-FFB6-63DA-485E459965EB','231003','阳明区','ymq','YANGMINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6307FD19-5FE0-FFB6-63DA-485E459965EB','231004','爱民区','amq','AIMINQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6307FD19-5FE0-FFB6-63DA-485E459965EB','231005','西安区','xaq','XIANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6307FD19-5FE0-FFB6-63DA-485E459965EB','231024','东宁县','dnx','DONGNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6307FD19-5FE0-FFB6-63DA-485E459965EB','231025','林口县','lkx','LINKOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6307FD19-5FE0-FFB6-63DA-485E459965EB','231081','绥芬河市','sfhs','SUIFENHESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6307FD19-5FE0-FFB6-63DA-485E459965EB','231083','海林市','hls','HAILINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6307FD19-5FE0-FFB6-63DA-485E459965EB','231084','宁安市','nas','NINGANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6307FD19-5FE0-FFB6-63DA-485E459965EB','231085','穆棱市','mls','MULENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('8932D59A-4957-949D-2E72-EF483272378E','BDEFDD48-3631-24FA-FFF6-EC45D59F68AF','231100','黑河市','hhs','HEIHESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8932D59A-4957-949D-2E72-EF483272378E','231101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8932D59A-4957-949D-2E72-EF483272378E','231102','爱辉区','ahq','AIHUIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8932D59A-4957-949D-2E72-EF483272378E','231121','嫩江县','njx','NENJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8932D59A-4957-949D-2E72-EF483272378E','231123','逊克县','xkx','XUNKEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8932D59A-4957-949D-2E72-EF483272378E','231124','孙吴县','swx','SUNWUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8932D59A-4957-949D-2E72-EF483272378E','231181','北安市','bas','BEIANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8932D59A-4957-949D-2E72-EF483272378E','231182','五大连池市','wdlcs','WUDALIANCHISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('BBECD628-2DFB-F8AD-5C6C-C618D925C842','BDEFDD48-3631-24FA-FFF6-EC45D59F68AF','232300','绥化地区','shdq','SUIHUADIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BBECD628-2DFB-F8AD-5C6C-C618D925C842','232301','绥化市','shs','SUIHUASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BBECD628-2DFB-F8AD-5C6C-C618D925C842','232302','安达市','ads','ANDASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BBECD628-2DFB-F8AD-5C6C-C618D925C842','232303','肇东市','zds','ZHAODONGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BBECD628-2DFB-F8AD-5C6C-C618D925C842','232304','海伦市','hls','HAILUNSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BBECD628-2DFB-F8AD-5C6C-C618D925C842','232324','望奎县','wkx','WANGKUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BBECD628-2DFB-F8AD-5C6C-C618D925C842','232325','兰西县','lxx','LANXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BBECD628-2DFB-F8AD-5C6C-C618D925C842','232326','青冈县','qgx','QINGGANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BBECD628-2DFB-F8AD-5C6C-C618D925C842','232330','庆安县','qax','QINGANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BBECD628-2DFB-F8AD-5C6C-C618D925C842','232331','明水县','msx','MINGSHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BBECD628-2DFB-F8AD-5C6C-C618D925C842','232332','绥棱县','slx','SUILENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('D8BF0BDE-61B2-F73B-F867-C14024C7FB05','BDEFDD48-3631-24FA-FFF6-EC45D59F68AF','232700','大兴安岭地区','dxaldq','DAXINGANLINGDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D8BF0BDE-61B2-F73B-F867-C14024C7FB05','232721','呼玛县','hmx','HUMAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D8BF0BDE-61B2-F73B-F867-C14024C7FB05','232722','塔河县','thx','TAHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D8BF0BDE-61B2-F73B-F867-C14024C7FB05','232723','漠河县','mhx','MOHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--江苏省
INSERT INTO t_data_dictionary_common
VALUES('BA7387B7-A61C-601B-D8C7-111CDAC161EB','9','320000','江苏省','jss','JIANGSUSHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('2D36C6A5-9D94-C638-777E-E7228AFB9036','BA7387B7-A61C-601B-D8C7-111CDAC161EB','320100','南京市','njs','NANJINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2D36C6A5-9D94-C638-777E-E7228AFB9036','320101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2D36C6A5-9D94-C638-777E-E7228AFB9036','320102','玄武区','xwq','XUANWUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2D36C6A5-9D94-C638-777E-E7228AFB9036','320103','白下区','bxq','BAIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2D36C6A5-9D94-C638-777E-E7228AFB9036','320104','秦淮区','qhq','QINHUAIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2D36C6A5-9D94-C638-777E-E7228AFB9036','320105','建邺区','jyq','JIANYEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2D36C6A5-9D94-C638-777E-E7228AFB9036','320106','鼓楼区','glq','GULOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2D36C6A5-9D94-C638-777E-E7228AFB9036','320107','下关区','xgq','XIAGUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2D36C6A5-9D94-C638-777E-E7228AFB9036','320111','浦口区','pkq','PUKOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2D36C6A5-9D94-C638-777E-E7228AFB9036','320112','大厂区','dcq','DACHANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2D36C6A5-9D94-C638-777E-E7228AFB9036','320113','栖霞区','qxq','QIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2D36C6A5-9D94-C638-777E-E7228AFB9036','320114','雨花台区','yhtq','YUHUATAIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2D36C6A5-9D94-C638-777E-E7228AFB9036','320121','江宁县','jnx','JIANGNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2D36C6A5-9D94-C638-777E-E7228AFB9036','320122','江浦县','jpx','JIANGPUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2D36C6A5-9D94-C638-777E-E7228AFB9036','320123','六合县','lhx','LIUHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2D36C6A5-9D94-C638-777E-E7228AFB9036','320124','溧水县','lsx','LISHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2D36C6A5-9D94-C638-777E-E7228AFB9036','320125','高淳县','gcx','GAOCHUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('A2E918E0-6887-AAA6-7B95-06F3CF6B7E61','BA7387B7-A61C-601B-D8C7-111CDAC161EB','320200','无锡市','wxs','WUXISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A2E918E0-6887-AAA6-7B95-06F3CF6B7E61','320201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A2E918E0-6887-AAA6-7B95-06F3CF6B7E61','320202','崇安区','caq','CHONGANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A2E918E0-6887-AAA6-7B95-06F3CF6B7E61','320203','南长区','nzq','NANZHANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A2E918E0-6887-AAA6-7B95-06F3CF6B7E61','320204','北塘区','btq','BEITANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A2E918E0-6887-AAA6-7B95-06F3CF6B7E61','320211','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A2E918E0-6887-AAA6-7B95-06F3CF6B7E61','320281','江阴市','jys','JIANGYINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A2E918E0-6887-AAA6-7B95-06F3CF6B7E61','320282','宜兴市','yxs','YIXINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A2E918E0-6887-AAA6-7B95-06F3CF6B7E61','320283','锡山市','xss','XISHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('68AC64C3-CBF6-63A7-D40D-A4948EEAA226','BA7387B7-A61C-601B-D8C7-111CDAC161EB','320300','徐州市','xzs','XUZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'68AC64C3-CBF6-63A7-D40D-A4948EEAA226','320301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'68AC64C3-CBF6-63A7-D40D-A4948EEAA226','320302','鼓楼区','glq','GULOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'68AC64C3-CBF6-63A7-D40D-A4948EEAA226','320303','云龙区','ylq','YUNLONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'68AC64C3-CBF6-63A7-D40D-A4948EEAA226','320304','九里区','jlq','JIULIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'68AC64C3-CBF6-63A7-D40D-A4948EEAA226','320305','贾汪区','jwq','JIAWANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'68AC64C3-CBF6-63A7-D40D-A4948EEAA226','320311','泉山区','qsq','QUANSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'68AC64C3-CBF6-63A7-D40D-A4948EEAA226','320321','丰县','fx','FENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'68AC64C3-CBF6-63A7-D40D-A4948EEAA226','320322','沛县','px','PEIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'68AC64C3-CBF6-63A7-D40D-A4948EEAA226','320323','铜山县','tsx','TONGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'68AC64C3-CBF6-63A7-D40D-A4948EEAA226','320324','睢宁县','snx','SUININGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'68AC64C3-CBF6-63A7-D40D-A4948EEAA226','320381','新沂市','xys','XINYISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'68AC64C3-CBF6-63A7-D40D-A4948EEAA226','320382','邳州市','pzs','PIZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('D70A88E7-B978-7E8A-996D-58C7F5BD61C6','BA7387B7-A61C-601B-D8C7-111CDAC161EB','320400','常州市','czs','CHANGZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D70A88E7-B978-7E8A-996D-58C7F5BD61C6','320401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D70A88E7-B978-7E8A-996D-58C7F5BD61C6','320402','天宁区','tnq','TIANNINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D70A88E7-B978-7E8A-996D-58C7F5BD61C6','320404','钟楼区','zlq','ZHONGLOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D70A88E7-B978-7E8A-996D-58C7F5BD61C6','320405','戚墅堰区','qsyq','QISHUYANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D70A88E7-B978-7E8A-996D-58C7F5BD61C6','320411','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D70A88E7-B978-7E8A-996D-58C7F5BD61C6','320481','溧阳市','lys','LIYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D70A88E7-B978-7E8A-996D-58C7F5BD61C6','320482','金坛市','jts','JINTANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D70A88E7-B978-7E8A-996D-58C7F5BD61C6','320483','武进市','wjs','WUJINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('8D2556E0-DD49-43ED-3963-8D9B01603B8B','BA7387B7-A61C-601B-D8C7-111CDAC161EB','320500','苏州市','szs','SUZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D2556E0-DD49-43ED-3963-8D9B01603B8B','320501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D2556E0-DD49-43ED-3963-8D9B01603B8B','320502','沧浪区','clq','CANGLANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D2556E0-DD49-43ED-3963-8D9B01603B8B','320503','平江区','pjq','PINGJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D2556E0-DD49-43ED-3963-8D9B01603B8B','320504','金阊区','jcq','JINCHANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D2556E0-DD49-43ED-3963-8D9B01603B8B','320511','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D2556E0-DD49-43ED-3963-8D9B01603B8B','320581','常熟市','css','CHANGSHUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D2556E0-DD49-43ED-3963-8D9B01603B8B','320582','张家港市','zjgs','ZHANGJIAGANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D2556E0-DD49-43ED-3963-8D9B01603B8B','320583','昆山市','kss','KUNSHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D2556E0-DD49-43ED-3963-8D9B01603B8B','320584','吴江市','wjs','WUJIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D2556E0-DD49-43ED-3963-8D9B01603B8B','320585','太仓市','tcs','TAICANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D2556E0-DD49-43ED-3963-8D9B01603B8B','320586','吴县市','wxs','WUXIANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('929E866A-CF89-012E-AC46-9F2F4944F945','BA7387B7-A61C-601B-D8C7-111CDAC161EB','320600','南通市','nts','NANTONGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'929E866A-CF89-012E-AC46-9F2F4944F945','320601','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'929E866A-CF89-012E-AC46-9F2F4944F945','320602','崇川区','ccq','CHONGCHUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'929E866A-CF89-012E-AC46-9F2F4944F945','320611','港闸区','gzq','GANGZHAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'929E866A-CF89-012E-AC46-9F2F4944F945','320621','海安县','hax','HAIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'929E866A-CF89-012E-AC46-9F2F4944F945','320623','如东县','rdx','RUDONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'929E866A-CF89-012E-AC46-9F2F4944F945','320681','启东市','qds','QIDONGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'929E866A-CF89-012E-AC46-9F2F4944F945','320682','如皋市','rgs','RUGAOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'929E866A-CF89-012E-AC46-9F2F4944F945','320683','通州市','tzs','TONGZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'929E866A-CF89-012E-AC46-9F2F4944F945','320684','海门市','hms','HAIMENSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('314BD48A-22F6-5933-C9F7-DD743BA02ACA','BA7387B7-A61C-601B-D8C7-111CDAC161EB','320700','连云港市','lygs','LIANYUNGANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'314BD48A-22F6-5933-C9F7-DD743BA02ACA','320701','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'314BD48A-22F6-5933-C9F7-DD743BA02ACA','320703','连云区','lyq','LIANYUNQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'314BD48A-22F6-5933-C9F7-DD743BA02ACA','320704','云台区','ytq','YUNTAIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'314BD48A-22F6-5933-C9F7-DD743BA02ACA','320705','新浦区','xpq','XINPUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'314BD48A-22F6-5933-C9F7-DD743BA02ACA','320706','海州区','hzq','HAIZHOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'314BD48A-22F6-5933-C9F7-DD743BA02ACA','320721','赣榆县','gyx','GANYUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'314BD48A-22F6-5933-C9F7-DD743BA02ACA','320722','东海县','dhx','DONGHAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'314BD48A-22F6-5933-C9F7-DD743BA02ACA','320723','灌云县','gyx','GUANYUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'314BD48A-22F6-5933-C9F7-DD743BA02ACA','320724','灌南县','gnx','GUANNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('16563E83-CE18-A44C-672F-7E514B41DDFA','BA7387B7-A61C-601B-D8C7-111CDAC161EB','320800','淮阴市','hys','HUAIYINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16563E83-CE18-A44C-672F-7E514B41DDFA','320801','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16563E83-CE18-A44C-672F-7E514B41DDFA','320802','清河区','qhq','QINGHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16563E83-CE18-A44C-672F-7E514B41DDFA','320811','清浦区','qpq','QINGPUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16563E83-CE18-A44C-672F-7E514B41DDFA','320821','淮阴县','hyx','HUAIYINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16563E83-CE18-A44C-672F-7E514B41DDFA','320826','涟水县','lsx','LIANSHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16563E83-CE18-A44C-672F-7E514B41DDFA','320829','洪泽县','hzx','HONGZEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16563E83-CE18-A44C-672F-7E514B41DDFA','320830','盱眙县','xyx','XUYIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16563E83-CE18-A44C-672F-7E514B41DDFA','320831','金湖县','jhx','JINHUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'16563E83-CE18-A44C-672F-7E514B41DDFA','320832','淮安市','has','HUAIANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('B0C525CC-1CCE-1ED2-8BA0-486505D4B899','BA7387B7-A61C-601B-D8C7-111CDAC161EB','320900','盐城市','ycs','YANCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B0C525CC-1CCE-1ED2-8BA0-486505D4B899','320901','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B0C525CC-1CCE-1ED2-8BA0-486505D4B899','320902','城区','cq','CHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B0C525CC-1CCE-1ED2-8BA0-486505D4B899','320921','响水县','xsx','XIANGSHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B0C525CC-1CCE-1ED2-8BA0-486505D4B899','320922','滨海县','bhx','BINHAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B0C525CC-1CCE-1ED2-8BA0-486505D4B899','320923','阜宁县','fnx','FUNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B0C525CC-1CCE-1ED2-8BA0-486505D4B899','320924','射阳县','syx','SHEYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B0C525CC-1CCE-1ED2-8BA0-486505D4B899','320925','建湖县','jhx','JIANHUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B0C525CC-1CCE-1ED2-8BA0-486505D4B899','320928','盐都县','ydx','YANDOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B0C525CC-1CCE-1ED2-8BA0-486505D4B899','320981','东台市','dts','DONGTAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B0C525CC-1CCE-1ED2-8BA0-486505D4B899','320982','大丰市','dfs','DAFENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('74493594-B79E-9589-BB65-4AC92E62498E','BA7387B7-A61C-601B-D8C7-111CDAC161EB','321000','扬州市','yzs','YANGZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'74493594-B79E-9589-BB65-4AC92E62498E','321001','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'74493594-B79E-9589-BB65-4AC92E62498E','321002','广陵区','glq','GUANGLINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'74493594-B79E-9589-BB65-4AC92E62498E','321011','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'74493594-B79E-9589-BB65-4AC92E62498E','321023','宝应县','byx','BAOYINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'74493594-B79E-9589-BB65-4AC92E62498E','321027','邗江县','hjx','HANJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'74493594-B79E-9589-BB65-4AC92E62498E','321081','仪征市','yzs','YIZHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'74493594-B79E-9589-BB65-4AC92E62498E','321084','高邮市','gys','GAOYOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'74493594-B79E-9589-BB65-4AC92E62498E','321088','江都市','jds','JIANGDOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('66AE3D94-41FD-E88D-26FA-59E20BD7C853','BA7387B7-A61C-601B-D8C7-111CDAC161EB','321100','镇江市','zjs','ZHENJIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'66AE3D94-41FD-E88D-26FA-59E20BD7C853','321101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'66AE3D94-41FD-E88D-26FA-59E20BD7C853','321102','京口区','jkq','JINGKOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'66AE3D94-41FD-E88D-26FA-59E20BD7C853','321111','润州区','rzq','RUNZHOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'66AE3D94-41FD-E88D-26FA-59E20BD7C853','321121','丹徒县','dtx','DANTUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'66AE3D94-41FD-E88D-26FA-59E20BD7C853','321181','丹阳市','dys','DANYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'66AE3D94-41FD-E88D-26FA-59E20BD7C853','321182','扬中市','yzs','YANGZHONGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'66AE3D94-41FD-E88D-26FA-59E20BD7C853','321183','句容市','jrs','JURONGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('4B46896B-E3E8-4579-3158-9A74321FAB41','BA7387B7-A61C-601B-D8C7-111CDAC161EB','321200','泰州市','tzs','TAIZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4B46896B-E3E8-4579-3158-9A74321FAB41','321201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4B46896B-E3E8-4579-3158-9A74321FAB41','321202','海陵区','hlq','HAILINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4B46896B-E3E8-4579-3158-9A74321FAB41','321203','高港区','ggq','GAOGANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4B46896B-E3E8-4579-3158-9A74321FAB41','321281','兴化市','xhs','XINGHUASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4B46896B-E3E8-4579-3158-9A74321FAB41','321282','靖江市','jjs','JINGJIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4B46896B-E3E8-4579-3158-9A74321FAB41','321283','泰兴市','txs','TAIXINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4B46896B-E3E8-4579-3158-9A74321FAB41','321284','姜堰市','jys','JIANGYANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('2A0D7820-ABF1-C944-D53A-0141F8FF47CC','BA7387B7-A61C-601B-D8C7-111CDAC161EB','321300','宿迁市','sqs','SUQIANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2A0D7820-ABF1-C944-D53A-0141F8FF47CC','321301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2A0D7820-ABF1-C944-D53A-0141F8FF47CC','321302','宿城区','scq','SUCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2A0D7820-ABF1-C944-D53A-0141F8FF47CC','321321','宿豫县','syx','SUYUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2A0D7820-ABF1-C944-D53A-0141F8FF47CC','321322','沭阳县','syx','SHUYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2A0D7820-ABF1-C944-D53A-0141F8FF47CC','321323','泗阳县','syx','SIYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2A0D7820-ABF1-C944-D53A-0141F8FF47CC','321324','泗洪县','shx','SIHONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--浙江省
INSERT INTO t_data_dictionary_common
VALUES('3AE9C9C3-0745-5D9E-3296-640637E57253','9','330000','浙江省','zjs','ZHEJIANGSHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('9908135E-A7A8-DE5A-6483-E2B372B7436B','3AE9C9C3-0745-5D9E-3296-640637E57253','330100','杭州市','hzs','HANGZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9908135E-A7A8-DE5A-6483-E2B372B7436B','330101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9908135E-A7A8-DE5A-6483-E2B372B7436B','330102','上城区','scq','SHANGCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9908135E-A7A8-DE5A-6483-E2B372B7436B','330103','下城区','xcq','XIACHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9908135E-A7A8-DE5A-6483-E2B372B7436B','330104','江干区','jgq','JIANGGANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9908135E-A7A8-DE5A-6483-E2B372B7436B','330105','拱墅区','gsq','GONGSHUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9908135E-A7A8-DE5A-6483-E2B372B7436B','330106','西湖区','xhq','XIHUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9908135E-A7A8-DE5A-6483-E2B372B7436B','330108','滨江区','bjq','BINJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9908135E-A7A8-DE5A-6483-E2B372B7436B','330122','桐庐县','tlx','TONGLUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9908135E-A7A8-DE5A-6483-E2B372B7436B','330127','淳安县','cax','CHUNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9908135E-A7A8-DE5A-6483-E2B372B7436B','330181','萧山市','xss','XIAOSHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9908135E-A7A8-DE5A-6483-E2B372B7436B','330182','建德市','jds','JIANDESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9908135E-A7A8-DE5A-6483-E2B372B7436B','330183','富阳市','fys','FUYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9908135E-A7A8-DE5A-6483-E2B372B7436B','330184','余杭市','yhs','YUHANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9908135E-A7A8-DE5A-6483-E2B372B7436B','330185','临安市','las','LINANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('4761E9E8-E12B-151F-1B13-5E73B4ACB639','3AE9C9C3-0745-5D9E-3296-640637E57253','330200','宁波市','nbs','NINGBOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4761E9E8-E12B-151F-1B13-5E73B4ACB639','330201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4761E9E8-E12B-151F-1B13-5E73B4ACB639','330203','海曙区','hsq','HAISHUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4761E9E8-E12B-151F-1B13-5E73B4ACB639','330204','江东区','jdq','JIANGDONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4761E9E8-E12B-151F-1B13-5E73B4ACB639','330205','江北区','jbq','JIANGBEIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4761E9E8-E12B-151F-1B13-5E73B4ACB639','330206','北仑区','blq','BEILUNQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4761E9E8-E12B-151F-1B13-5E73B4ACB639','330211','镇海区','zhq','ZHENHAIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4761E9E8-E12B-151F-1B13-5E73B4ACB639','330225','象山县','xsx','XIANGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4761E9E8-E12B-151F-1B13-5E73B4ACB639','330226','宁海县','nhx','NINGHAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4761E9E8-E12B-151F-1B13-5E73B4ACB639','330227','鄞县','yx','YINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4761E9E8-E12B-151F-1B13-5E73B4ACB639','330281','余姚市','yys','YUYAOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4761E9E8-E12B-151F-1B13-5E73B4ACB639','330282','慈溪市','cxs','CIXISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4761E9E8-E12B-151F-1B13-5E73B4ACB639','330283','奉化市','fhs','FENGHUASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('DE90B5DA-760F-7F41-3E1E-5CA7919BAFEC','3AE9C9C3-0745-5D9E-3296-640637E57253','330300','温州市','wzs','WENZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE90B5DA-760F-7F41-3E1E-5CA7919BAFEC','330301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE90B5DA-760F-7F41-3E1E-5CA7919BAFEC','330302','鹿城区','lcq','LUCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE90B5DA-760F-7F41-3E1E-5CA7919BAFEC','330303','龙湾区','lwq','LONGWANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE90B5DA-760F-7F41-3E1E-5CA7919BAFEC','330304','瓯海区','ohq','OUHAIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE90B5DA-760F-7F41-3E1E-5CA7919BAFEC','330322','洞头县','dtx','DONGTOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE90B5DA-760F-7F41-3E1E-5CA7919BAFEC','330324','永嘉县','yjx','YONGJIAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE90B5DA-760F-7F41-3E1E-5CA7919BAFEC','330326','平阳县','pyx','PINGYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE90B5DA-760F-7F41-3E1E-5CA7919BAFEC','330327','苍南县','cnx','CANGNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE90B5DA-760F-7F41-3E1E-5CA7919BAFEC','330328','文成县','wcx','WENCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE90B5DA-760F-7F41-3E1E-5CA7919BAFEC','330329','泰顺县','tsx','TAISHUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE90B5DA-760F-7F41-3E1E-5CA7919BAFEC','330381','瑞安市','ras','RUIANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE90B5DA-760F-7F41-3E1E-5CA7919BAFEC','330382','乐清市','lqs','LEQINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('6214F4C2-642E-695F-37BA-58421AB404C0','3AE9C9C3-0745-5D9E-3296-640637E57253','330400','嘉兴市','jxs','JIAXINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6214F4C2-642E-695F-37BA-58421AB404C0','330401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6214F4C2-642E-695F-37BA-58421AB404C0','330402','秀城区','xcq','XIUCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6214F4C2-642E-695F-37BA-58421AB404C0','330411','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6214F4C2-642E-695F-37BA-58421AB404C0','330421','嘉善县','jsx','JIASHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6214F4C2-642E-695F-37BA-58421AB404C0','330424','海盐县','hyx','HAIYANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6214F4C2-642E-695F-37BA-58421AB404C0','330481','海宁市','hns','HAININGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6214F4C2-642E-695F-37BA-58421AB404C0','330482','平湖市','phs','PINGHUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6214F4C2-642E-695F-37BA-58421AB404C0','330483','桐乡市','txs','TONGXIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('89249D6A-74BE-4856-7B9F-8520A490EA62','3AE9C9C3-0745-5D9E-3296-640637E57253','330500','湖州市','hzs','HUZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'89249D6A-74BE-4856-7B9F-8520A490EA62','330501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'89249D6A-74BE-4856-7B9F-8520A490EA62','330521','德清县','dqx','DEQINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'89249D6A-74BE-4856-7B9F-8520A490EA62','330522','长兴县','zxx','ZHANGXINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'89249D6A-74BE-4856-7B9F-8520A490EA62','330523','安吉县','ajx','ANJIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('291839D3-D0C9-F83B-2040-C950755F79C9','3AE9C9C3-0745-5D9E-3296-640637E57253','330600','绍兴市','sxs','SHAOXINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'291839D3-D0C9-F83B-2040-C950755F79C9','330601','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'291839D3-D0C9-F83B-2040-C950755F79C9','330602','越城区','ycq','YUECHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'291839D3-D0C9-F83B-2040-C950755F79C9','330621','绍兴县','sxx','SHAOXINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'291839D3-D0C9-F83B-2040-C950755F79C9','330624','新昌县','xcx','XINCHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'291839D3-D0C9-F83B-2040-C950755F79C9','330681','诸暨市','zjs','ZHUJISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'291839D3-D0C9-F83B-2040-C950755F79C9','330682','上虞市','sys','SHANGYUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'291839D3-D0C9-F83B-2040-C950755F79C9','330683','嵊州市','szs','SHENGZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('15DC5DA0-A520-1FA0-5D60-055A4D1A4530','3AE9C9C3-0745-5D9E-3296-640637E57253','330700','金华市','jhs','JINHUASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'15DC5DA0-A520-1FA0-5D60-055A4D1A4530','330701','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'15DC5DA0-A520-1FA0-5D60-055A4D1A4530','330702','婺城区','wcq','WUCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'15DC5DA0-A520-1FA0-5D60-055A4D1A4530','330721','金华县','jhx','JINHUAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'15DC5DA0-A520-1FA0-5D60-055A4D1A4530','330723','武义县','wyx','WUYIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'15DC5DA0-A520-1FA0-5D60-055A4D1A4530','330726','浦江县','pjx','PUJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'15DC5DA0-A520-1FA0-5D60-055A4D1A4530','330727','磐安县','pax','PANANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'15DC5DA0-A520-1FA0-5D60-055A4D1A4530','330781','兰溪市','lxs','LANXISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'15DC5DA0-A520-1FA0-5D60-055A4D1A4530','330782','义乌市','yws','YIWUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'15DC5DA0-A520-1FA0-5D60-055A4D1A4530','330783','东阳市','dys','DONGYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'15DC5DA0-A520-1FA0-5D60-055A4D1A4530','330784','永康市','yks','YONGKANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('3C270232-C67D-5FC4-E998-B691EE4D3008','3AE9C9C3-0745-5D9E-3296-640637E57253','330800','衢州市','qzs','QUZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C270232-C67D-5FC4-E998-B691EE4D3008','330801','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C270232-C67D-5FC4-E998-B691EE4D3008','330802','柯城区','kcq','KECHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C270232-C67D-5FC4-E998-B691EE4D3008','330821','衢县','qx','QUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C270232-C67D-5FC4-E998-B691EE4D3008','330822','常山县','csx','CHANGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C270232-C67D-5FC4-E998-B691EE4D3008','330824','开化县','khx','KAIHUAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C270232-C67D-5FC4-E998-B691EE4D3008','330825','龙游县','lyx','LONGYOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C270232-C67D-5FC4-E998-B691EE4D3008','330881','江山市','jss','JIANGSHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('FB306F80-4288-8182-901B-83B591A0DF42','3AE9C9C3-0745-5D9E-3296-640637E57253','330900','舟山市','zss','ZHOUSHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FB306F80-4288-8182-901B-83B591A0DF42','330901','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FB306F80-4288-8182-901B-83B591A0DF42','330902','定海区','dhq','DINGHAIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FB306F80-4288-8182-901B-83B591A0DF42','330903','普陀区','ptq','PUTUOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FB306F80-4288-8182-901B-83B591A0DF42','330921','岱山县','dsx','DAISHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FB306F80-4288-8182-901B-83B591A0DF42','330922','嵊泗县','ssx','SHENGSIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('0390EEBD-8882-1875-45CF-51BBBA4EAB1F','3AE9C9C3-0745-5D9E-3296-640637E57253','331000','台州市','tzs','TAIZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0390EEBD-8882-1875-45CF-51BBBA4EAB1F','331001','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0390EEBD-8882-1875-45CF-51BBBA4EAB1F','331002','椒江区','jjq','JIAOJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0390EEBD-8882-1875-45CF-51BBBA4EAB1F','331003','黄岩区','hyq','HUANGYANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0390EEBD-8882-1875-45CF-51BBBA4EAB1F','331004','路桥区','lqq','LUQIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0390EEBD-8882-1875-45CF-51BBBA4EAB1F','331021','玉环县','yhx','YUHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0390EEBD-8882-1875-45CF-51BBBA4EAB1F','331022','三门县','smx','SANMENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0390EEBD-8882-1875-45CF-51BBBA4EAB1F','331023','天台县','ttx','TIANTAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0390EEBD-8882-1875-45CF-51BBBA4EAB1F','331024','仙居县','xjx','XIANJUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0390EEBD-8882-1875-45CF-51BBBA4EAB1F','331081','温岭市','wls','WENLINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0390EEBD-8882-1875-45CF-51BBBA4EAB1F','331082','临海市','lhs','LINHAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('93DA5D64-006D-0845-9C24-9023B39EC444','3AE9C9C3-0745-5D9E-3296-640637E57253','332500','丽水地区','lsdq','LISHUIDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'93DA5D64-006D-0845-9C24-9023B39EC444','332501','丽水市','lss','LISHUISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'93DA5D64-006D-0845-9C24-9023B39EC444','332502','龙泉市','lqs','LONGQUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'93DA5D64-006D-0845-9C24-9023B39EC444','332522','青田县','qtx','QINGTIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'93DA5D64-006D-0845-9C24-9023B39EC444','332523','云和县','yhx','YUNHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'93DA5D64-006D-0845-9C24-9023B39EC444','332525','庆元县','qyx','QINGYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'93DA5D64-006D-0845-9C24-9023B39EC444','332526','缙云县','jyx','JINYUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'93DA5D64-006D-0845-9C24-9023B39EC444','332527','遂昌县','scx','SUICHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'93DA5D64-006D-0845-9C24-9023B39EC444','332528','松阳县','syx','SONGYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'93DA5D64-006D-0845-9C24-9023B39EC444','332529','景宁畲族自治县','jnszzzx','JINGNINGSHEZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--安徽省
INSERT INTO t_data_dictionary_common
VALUES('99C6551A-A3B0-8001-B5B8-8757463AB9C6','9','340000','安徽省','ahs','ANHUISHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('6BE4B1FF-C5E9-BEC3-0BC5-82368EF9BA01','99C6551A-A3B0-8001-B5B8-8757463AB9C6','340100','合肥市','hfs','HEFEISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6BE4B1FF-C5E9-BEC3-0BC5-82368EF9BA01','340101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6BE4B1FF-C5E9-BEC3-0BC5-82368EF9BA01','340102','东市区','dsq','DONGSHIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6BE4B1FF-C5E9-BEC3-0BC5-82368EF9BA01','340103','中市区','zsq','ZHONGSHIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6BE4B1FF-C5E9-BEC3-0BC5-82368EF9BA01','340104','西市区','xsq','XISHIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6BE4B1FF-C5E9-BEC3-0BC5-82368EF9BA01','340111','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6BE4B1FF-C5E9-BEC3-0BC5-82368EF9BA01','340121','长丰县','zfx','ZHANGFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6BE4B1FF-C5E9-BEC3-0BC5-82368EF9BA01','340122','肥东县','fdx','FEIDONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6BE4B1FF-C5E9-BEC3-0BC5-82368EF9BA01','340123','肥西县','fxx','FEIXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('B5B6DB25-03EE-B8D3-0BD8-80786125E559','99C6551A-A3B0-8001-B5B8-8757463AB9C6','340200','芜湖市','whs','WUHUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B5B6DB25-03EE-B8D3-0BD8-80786125E559','340201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B5B6DB25-03EE-B8D3-0BD8-80786125E559','340202','镜湖区','jhq','JINGHUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B5B6DB25-03EE-B8D3-0BD8-80786125E559','340203','马塘区','mtq','MATANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B5B6DB25-03EE-B8D3-0BD8-80786125E559','340204','新芜区','xwq','XINWUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B5B6DB25-03EE-B8D3-0BD8-80786125E559','340207','鸠江区','jjq','JIUJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B5B6DB25-03EE-B8D3-0BD8-80786125E559','340221','芜湖县','whx','WUHUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B5B6DB25-03EE-B8D3-0BD8-80786125E559','340222','繁昌县','fcx','FANCHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B5B6DB25-03EE-B8D3-0BD8-80786125E559','340223','南陵县','nlx','NANLINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('D9196417-F45C-8675-F777-AB0EBD5B41B6','99C6551A-A3B0-8001-B5B8-8757463AB9C6','340300','蚌埠市','bbs','BANGBUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9196417-F45C-8675-F777-AB0EBD5B41B6','340301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9196417-F45C-8675-F777-AB0EBD5B41B6','340302','东市区','dsq','DONGSHIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9196417-F45C-8675-F777-AB0EBD5B41B6','340303','中市区','zsq','ZHONGSHIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9196417-F45C-8675-F777-AB0EBD5B41B6','340304','西市区','xsq','XISHIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9196417-F45C-8675-F777-AB0EBD5B41B6','340311','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9196417-F45C-8675-F777-AB0EBD5B41B6','340321','怀远县','hyx','HUAIYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9196417-F45C-8675-F777-AB0EBD5B41B6','340322','五河县','whx','WUHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9196417-F45C-8675-F777-AB0EBD5B41B6','340323','固镇县','gzx','GUZHENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E1F6189B-9F26-05E2-DB72-777E7F99B417','99C6551A-A3B0-8001-B5B8-8757463AB9C6','340400','淮南市','hns','HUAINANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E1F6189B-9F26-05E2-DB72-777E7F99B417','340401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E1F6189B-9F26-05E2-DB72-777E7F99B417','340402','大通区','dtq','DATONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E1F6189B-9F26-05E2-DB72-777E7F99B417','340403','田家庵区','tjaq','TIANJIAANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E1F6189B-9F26-05E2-DB72-777E7F99B417','340404','谢家集区','xjjq','XIEJIAJIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E1F6189B-9F26-05E2-DB72-777E7F99B417','340405','八公山区','bgsq','BAGONGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E1F6189B-9F26-05E2-DB72-777E7F99B417','340406','潘集区','pjq','PANJIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E1F6189B-9F26-05E2-DB72-777E7F99B417','340421','凤台县','ftx','FENGTAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('04D730A8-68EA-5D15-C480-5CB2C0075C89','99C6551A-A3B0-8001-B5B8-8757463AB9C6','340500','马鞍山市','mass','MAANSHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'04D730A8-68EA-5D15-C480-5CB2C0075C89','340501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'04D730A8-68EA-5D15-C480-5CB2C0075C89','340502','金家庄区','jjzq','JINJIAZHUANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'04D730A8-68EA-5D15-C480-5CB2C0075C89','340503','花山区','hsq','HUASHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'04D730A8-68EA-5D15-C480-5CB2C0075C89','340504','雨山区','ysq','YUSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'04D730A8-68EA-5D15-C480-5CB2C0075C89','340505','向山区','xsq','XIANGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'04D730A8-68EA-5D15-C480-5CB2C0075C89','340521','当涂县','dtx','DANGTUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('7443DCD4-AF8D-40DA-B579-03432E29FAC5','99C6551A-A3B0-8001-B5B8-8757463AB9C6','340600','淮北市','hbs','HUAIBEISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7443DCD4-AF8D-40DA-B579-03432E29FAC5','340601','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7443DCD4-AF8D-40DA-B579-03432E29FAC5','340602','杜集区','djq','DUJIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7443DCD4-AF8D-40DA-B579-03432E29FAC5','340603','相山区','xsq','XIANGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7443DCD4-AF8D-40DA-B579-03432E29FAC5','340604','烈山区','lsq','LIESHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7443DCD4-AF8D-40DA-B579-03432E29FAC5','340621','濉溪县','sxx','SUIXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('39DCE1B2-DF50-F849-FC6A-46638D519AFC','99C6551A-A3B0-8001-B5B8-8757463AB9C6','340700','铜陵市','tls','TONGLINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'39DCE1B2-DF50-F849-FC6A-46638D519AFC','340701','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'39DCE1B2-DF50-F849-FC6A-46638D519AFC','340702','铜官山区','tgsq','TONGGUANSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'39DCE1B2-DF50-F849-FC6A-46638D519AFC','340703','狮子山区','szsq','SHIZISHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'39DCE1B2-DF50-F849-FC6A-46638D519AFC','340711','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'39DCE1B2-DF50-F849-FC6A-46638D519AFC','340721','铜陵县','tlx','TONGLINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('1E2DFC19-DB11-35A2-A717-39A2886DD6B4','99C6551A-A3B0-8001-B5B8-8757463AB9C6','340800','安庆市','aqs','ANQINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1E2DFC19-DB11-35A2-A717-39A2886DD6B4','340801','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1E2DFC19-DB11-35A2-A717-39A2886DD6B4','340802','迎江区','yjq','YINGJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1E2DFC19-DB11-35A2-A717-39A2886DD6B4','340803','大观区','dgq','DAGUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1E2DFC19-DB11-35A2-A717-39A2886DD6B4','340811','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1E2DFC19-DB11-35A2-A717-39A2886DD6B4','340822','怀宁县','hnx','HUAININGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1E2DFC19-DB11-35A2-A717-39A2886DD6B4','340823','枞阳县','zyx','ZONGYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1E2DFC19-DB11-35A2-A717-39A2886DD6B4','340824','潜山县','qsx','QIANSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1E2DFC19-DB11-35A2-A717-39A2886DD6B4','340825','太湖县','thx','TAIHUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1E2DFC19-DB11-35A2-A717-39A2886DD6B4','340826','宿松县','ssx','SUSONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1E2DFC19-DB11-35A2-A717-39A2886DD6B4','340827','望江县','wjx','WANGJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1E2DFC19-DB11-35A2-A717-39A2886DD6B4','340828','岳西县','yxx','YUEXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1E2DFC19-DB11-35A2-A717-39A2886DD6B4','340881','桐城市','tcs','TONGCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('094F8554-355F-3425-DBB7-753A5E82F5C3','99C6551A-A3B0-8001-B5B8-8757463AB9C6','341000','黄山市','hss','HUANGSHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'094F8554-355F-3425-DBB7-753A5E82F5C3','341001','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'094F8554-355F-3425-DBB7-753A5E82F5C3','341002','屯溪区','txq','TUNXIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'094F8554-355F-3425-DBB7-753A5E82F5C3','341003','黄山区','hsq','HUANGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'094F8554-355F-3425-DBB7-753A5E82F5C3','341004','徽州区','hzq','HUIZHOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'094F8554-355F-3425-DBB7-753A5E82F5C3','341021','歙县','sx','SHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'094F8554-355F-3425-DBB7-753A5E82F5C3','341022','休宁县','xnx','XIUNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'094F8554-355F-3425-DBB7-753A5E82F5C3','341023','黟县','yx','YIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'094F8554-355F-3425-DBB7-753A5E82F5C3','341024','祁门县','qmx','QIMENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('1B5B8372-0731-EC14-A743-887887832F08','99C6551A-A3B0-8001-B5B8-8757463AB9C6','341100','滁州市','czs','CHUZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1B5B8372-0731-EC14-A743-887887832F08','341101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1B5B8372-0731-EC14-A743-887887832F08','341102','琅琊区','lyq','LANGYAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1B5B8372-0731-EC14-A743-887887832F08','341103','南谯区','nqq','NANQIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1B5B8372-0731-EC14-A743-887887832F08','341122','来安县','lax','LAIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1B5B8372-0731-EC14-A743-887887832F08','341124','全椒县','qjx','QUANJIAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1B5B8372-0731-EC14-A743-887887832F08','341125','定远县','dyx','DINGYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1B5B8372-0731-EC14-A743-887887832F08','341126','凤阳县','fyx','FENGYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1B5B8372-0731-EC14-A743-887887832F08','341181','天长市','tzs','TIANZHANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1B5B8372-0731-EC14-A743-887887832F08','341182','明光市','mgs','MINGGUANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('44F2F4D8-58EE-2596-E61A-0983148A1D83','99C6551A-A3B0-8001-B5B8-8757463AB9C6','341200','阜阳市','fys','FUYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44F2F4D8-58EE-2596-E61A-0983148A1D83','341201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44F2F4D8-58EE-2596-E61A-0983148A1D83','341202','颍州区','yzq','YINGZHOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44F2F4D8-58EE-2596-E61A-0983148A1D83','341203','颍东区','ydq','YINGDONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44F2F4D8-58EE-2596-E61A-0983148A1D83','341204','颍泉区','yqq','YINGQUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44F2F4D8-58EE-2596-E61A-0983148A1D83','341221','临泉县','lqx','LINQUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44F2F4D8-58EE-2596-E61A-0983148A1D83','341222','太和县','thx','TAIHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44F2F4D8-58EE-2596-E61A-0983148A1D83','341223','涡阳县','wyx','WOYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44F2F4D8-58EE-2596-E61A-0983148A1D83','341224','蒙城县','mcx','MENGCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44F2F4D8-58EE-2596-E61A-0983148A1D83','341225','阜南县','fnx','FUNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44F2F4D8-58EE-2596-E61A-0983148A1D83','341226','颍上县','ysx','YINGSHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44F2F4D8-58EE-2596-E61A-0983148A1D83','341227','利辛县','lxx','LIXINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44F2F4D8-58EE-2596-E61A-0983148A1D83','341281','亳州市','bzs','BOZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44F2F4D8-58EE-2596-E61A-0983148A1D83','341282','界首市','jss','JIESHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('96D5B701-059E-0FD5-2F83-FB189B92952D','99C6551A-A3B0-8001-B5B8-8757463AB9C6','341300','宿州市','szs','SUZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96D5B701-059E-0FD5-2F83-FB189B92952D','341301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96D5B701-059E-0FD5-2F83-FB189B92952D','341302','甬桥区','yqq','YONGQIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96D5B701-059E-0FD5-2F83-FB189B92952D','341321','砀山县','dsx','DANGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96D5B701-059E-0FD5-2F83-FB189B92952D','341322','萧县','xx','XIAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96D5B701-059E-0FD5-2F83-FB189B92952D','341323','灵璧县','lbx','LINGBIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'96D5B701-059E-0FD5-2F83-FB189B92952D','341324','泗县','sx','SIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('F0F89CF5-510F-9CC6-CBA4-F0513F82089C','99C6551A-A3B0-8001-B5B8-8757463AB9C6','342400','六安地区','ladq','LIUANDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0F89CF5-510F-9CC6-CBA4-F0513F82089C','342401','六安市','las','LIUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0F89CF5-510F-9CC6-CBA4-F0513F82089C','342422','寿县','sx','SHOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0F89CF5-510F-9CC6-CBA4-F0513F82089C','342423','霍邱县','hqx','HUOQIUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0F89CF5-510F-9CC6-CBA4-F0513F82089C','342425','舒城县','scx','SHUCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0F89CF5-510F-9CC6-CBA4-F0513F82089C','342426','金寨县','jzx','JINZHAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0F89CF5-510F-9CC6-CBA4-F0513F82089C','342427','霍山县','hsx','HUOSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('C293C58D-B25D-9981-C2CB-2CDBE91D3B98','99C6551A-A3B0-8001-B5B8-8757463AB9C6','342500','宣城地区','xcdq','XUANCHENGDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C293C58D-B25D-9981-C2CB-2CDBE91D3B98','342501','宣州市','xzs','XUANZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C293C58D-B25D-9981-C2CB-2CDBE91D3B98','342502','宁国市','ngs','NINGGUOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C293C58D-B25D-9981-C2CB-2CDBE91D3B98','342522','郎溪县','lxx','LANGXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C293C58D-B25D-9981-C2CB-2CDBE91D3B98','342523','广德县','gdx','GUANGDEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C293C58D-B25D-9981-C2CB-2CDBE91D3B98','342529','泾县','jx','JINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C293C58D-B25D-9981-C2CB-2CDBE91D3B98','342530','旌德县','jdx','JINGDEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C293C58D-B25D-9981-C2CB-2CDBE91D3B98','342531','绩溪县','jxx','JIXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('AC0F7BFE-2197-0D54-81AD-4265329B4003','99C6551A-A3B0-8001-B5B8-8757463AB9C6','342600','巢湖地区','chdq','CHAOHUDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AC0F7BFE-2197-0D54-81AD-4265329B4003','342601','巢湖市','chs','CHAOHUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AC0F7BFE-2197-0D54-81AD-4265329B4003','342622','庐江县','ljx','LUJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AC0F7BFE-2197-0D54-81AD-4265329B4003','342623','无为县','wwx','WUWEIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AC0F7BFE-2197-0D54-81AD-4265329B4003','342625','含山县','hsx','HANSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AC0F7BFE-2197-0D54-81AD-4265329B4003','342626','和县','hx','HEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E8D42331-FD41-EB53-6E57-9ACCAFADC70D','99C6551A-A3B0-8001-B5B8-8757463AB9C6','342900','池州地区','czdq','CHIZHOUDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E8D42331-FD41-EB53-6E57-9ACCAFADC70D','342901','贵池市','gcs','GUICHISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E8D42331-FD41-EB53-6E57-9ACCAFADC70D','342921','东至县','dzx','DONGZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E8D42331-FD41-EB53-6E57-9ACCAFADC70D','342922','石台县','stx','SHITAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E8D42331-FD41-EB53-6E57-9ACCAFADC70D','342923','青阳县','qyx','QINGYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--福建省
INSERT INTO t_data_dictionary_common
VALUES('BCA395D5-C71F-FEA5-AEAD-BF64874ACC04','9','350000','福建省','fjs','FUJIANSHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('FE93E577-5E05-C8DF-31E9-498C9774F1E4','BCA395D5-C71F-FEA5-AEAD-BF64874ACC04','350100','福州市','fzs','FUZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FE93E577-5E05-C8DF-31E9-498C9774F1E4','350101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FE93E577-5E05-C8DF-31E9-498C9774F1E4','350102','鼓楼区','glq','GULOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FE93E577-5E05-C8DF-31E9-498C9774F1E4','350103','台江区','tjq','TAIJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FE93E577-5E05-C8DF-31E9-498C9774F1E4','350104','仓山区','csq','CANGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FE93E577-5E05-C8DF-31E9-498C9774F1E4','350105','马尾区','mwq','MAWEIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FE93E577-5E05-C8DF-31E9-498C9774F1E4','350111','晋安区','jaq','JINANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FE93E577-5E05-C8DF-31E9-498C9774F1E4','350121','闽侯县','mhx','MINHOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FE93E577-5E05-C8DF-31E9-498C9774F1E4','350122','连江县','ljx','LIANJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FE93E577-5E05-C8DF-31E9-498C9774F1E4','350123','罗源县','lyx','LUOYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FE93E577-5E05-C8DF-31E9-498C9774F1E4','350124','闽清县','mqx','MINQINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FE93E577-5E05-C8DF-31E9-498C9774F1E4','350125','永泰县','ytx','YONGTAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FE93E577-5E05-C8DF-31E9-498C9774F1E4','350128','平潭县','ptx','PINGTANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FE93E577-5E05-C8DF-31E9-498C9774F1E4','350181','福清市','fqs','FUQINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FE93E577-5E05-C8DF-31E9-498C9774F1E4','350182','长乐市','zls','ZHANGLESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('9E3950E9-C296-8F07-F0F0-095A35D553B7','BCA395D5-C71F-FEA5-AEAD-BF64874ACC04','350200','厦门市','sms','SHAMENSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E3950E9-C296-8F07-F0F0-095A35D553B7','350201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E3950E9-C296-8F07-F0F0-095A35D553B7','350202','鼓浪屿区','glyq','GULANGYUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E3950E9-C296-8F07-F0F0-095A35D553B7','350203','思明区','smq','SIMINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E3950E9-C296-8F07-F0F0-095A35D553B7','350204','开元区','kyq','KAIYUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E3950E9-C296-8F07-F0F0-095A35D553B7','350205','杏林区','xlq','XINGLINQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E3950E9-C296-8F07-F0F0-095A35D553B7','350206','湖里区','hlq','HULIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E3950E9-C296-8F07-F0F0-095A35D553B7','350211','集美区','jmq','JIMEIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E3950E9-C296-8F07-F0F0-095A35D553B7','350212','同安区','taq','TONGANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E0578F1B-2E01-EDBB-C2B2-49932AFBBD51','BCA395D5-C71F-FEA5-AEAD-BF64874ACC04','350300','莆田市','pts','PUTIANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0578F1B-2E01-EDBB-C2B2-49932AFBBD51','350301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0578F1B-2E01-EDBB-C2B2-49932AFBBD51','350302','城厢区','cxq','CHENGXIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0578F1B-2E01-EDBB-C2B2-49932AFBBD51','350303','涵江区','hjq','HANJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0578F1B-2E01-EDBB-C2B2-49932AFBBD51','350321','莆田县','ptx','PUTIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0578F1B-2E01-EDBB-C2B2-49932AFBBD51','350322','仙游县','xyx','XIANYOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('ED3C83C8-4F6F-587B-EE62-5FCD0495EE7F','BCA395D5-C71F-FEA5-AEAD-BF64874ACC04','350400','三明市','sms','SANMINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED3C83C8-4F6F-587B-EE62-5FCD0495EE7F','350401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED3C83C8-4F6F-587B-EE62-5FCD0495EE7F','350402','梅列区','mlq','MEILIEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED3C83C8-4F6F-587B-EE62-5FCD0495EE7F','350403','三元区','syq','SANYUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED3C83C8-4F6F-587B-EE62-5FCD0495EE7F','350421','明溪县','mxx','MINGXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED3C83C8-4F6F-587B-EE62-5FCD0495EE7F','350423','清流县','qlx','QINGLIUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED3C83C8-4F6F-587B-EE62-5FCD0495EE7F','350424','宁化县','nhx','NINGHUAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED3C83C8-4F6F-587B-EE62-5FCD0495EE7F','350425','大田县','dtx','DATIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED3C83C8-4F6F-587B-EE62-5FCD0495EE7F','350426','尤溪县','yxx','YOUXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED3C83C8-4F6F-587B-EE62-5FCD0495EE7F','350427','沙县','sx','SHAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED3C83C8-4F6F-587B-EE62-5FCD0495EE7F','350428','将乐县','jlx','JIANGLEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED3C83C8-4F6F-587B-EE62-5FCD0495EE7F','350429','泰宁县','tnx','TAININGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED3C83C8-4F6F-587B-EE62-5FCD0495EE7F','350430','建宁县','jnx','JIANNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED3C83C8-4F6F-587B-EE62-5FCD0495EE7F','350481','永安市','yas','YONGANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('5B019694-0EA5-F1DA-6CA9-E79D01604B88','BCA395D5-C71F-FEA5-AEAD-BF64874ACC04','350500','泉州市','qzs','QUANZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5B019694-0EA5-F1DA-6CA9-E79D01604B88','350501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5B019694-0EA5-F1DA-6CA9-E79D01604B88','350502','鲤城区','lcq','LICHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5B019694-0EA5-F1DA-6CA9-E79D01604B88','350503','丰泽区','fzq','FENGZEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5B019694-0EA5-F1DA-6CA9-E79D01604B88','350504','洛江区','ljq','LUOJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5B019694-0EA5-F1DA-6CA9-E79D01604B88','350521','惠安县','hax','HUIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5B019694-0EA5-F1DA-6CA9-E79D01604B88','350524','安溪县','axx','ANXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5B019694-0EA5-F1DA-6CA9-E79D01604B88','350525','永春县','ycx','YONGCHUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5B019694-0EA5-F1DA-6CA9-E79D01604B88','350526','德化县','dhx','DEHUAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5B019694-0EA5-F1DA-6CA9-E79D01604B88','350527','金门县','jmx','JINMENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5B019694-0EA5-F1DA-6CA9-E79D01604B88','350581','石狮市','sss','SHISHISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5B019694-0EA5-F1DA-6CA9-E79D01604B88','350582','晋江市','jjs','JINJIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5B019694-0EA5-F1DA-6CA9-E79D01604B88','350583','南安市','nas','NANANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('7466B66E-D58C-CC56-D663-6AA7BBA1B943','BCA395D5-C71F-FEA5-AEAD-BF64874ACC04','350600','漳州市','zzs','ZHANGZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7466B66E-D58C-CC56-D663-6AA7BBA1B943','350601','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7466B66E-D58C-CC56-D663-6AA7BBA1B943','350602','芗城区','xcq','XIANGCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7466B66E-D58C-CC56-D663-6AA7BBA1B943','350603','龙文区','lwq','LONGWENQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7466B66E-D58C-CC56-D663-6AA7BBA1B943','350622','云霄县','yxx','YUNXIAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7466B66E-D58C-CC56-D663-6AA7BBA1B943','350623','漳浦县','zpx','ZHANGPUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7466B66E-D58C-CC56-D663-6AA7BBA1B943','350624','诏安县','zax','ZHAOANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7466B66E-D58C-CC56-D663-6AA7BBA1B943','350625','长泰县','ztx','ZHANGTAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7466B66E-D58C-CC56-D663-6AA7BBA1B943','350626','东山县','dsx','DONGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7466B66E-D58C-CC56-D663-6AA7BBA1B943','350627','南靖县','njx','NANJINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7466B66E-D58C-CC56-D663-6AA7BBA1B943','350628','平和县','phx','PINGHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7466B66E-D58C-CC56-D663-6AA7BBA1B943','350629','华安县','hax','HUAANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7466B66E-D58C-CC56-D663-6AA7BBA1B943','350681','龙海市','lhs','LONGHAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E37DA6FB-384B-0C36-FECE-6E7D10348207','BCA395D5-C71F-FEA5-AEAD-BF64874ACC04','350700','南平市','nps','NANPINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E37DA6FB-384B-0C36-FECE-6E7D10348207','350701','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E37DA6FB-384B-0C36-FECE-6E7D10348207','350702','延平区','ypq','YANPINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E37DA6FB-384B-0C36-FECE-6E7D10348207','350721','顺昌县','scx','SHUNCHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E37DA6FB-384B-0C36-FECE-6E7D10348207','350722','浦城县','pcx','PUCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E37DA6FB-384B-0C36-FECE-6E7D10348207','350723','光泽县','gzx','GUANGZEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E37DA6FB-384B-0C36-FECE-6E7D10348207','350724','松溪县','sxx','SONGXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E37DA6FB-384B-0C36-FECE-6E7D10348207','350725','政和县','zhx','ZHENGHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E37DA6FB-384B-0C36-FECE-6E7D10348207','350781','邵武市','sws','SHAOWUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E37DA6FB-384B-0C36-FECE-6E7D10348207','350782','武夷山市','wyss','WUYISHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E37DA6FB-384B-0C36-FECE-6E7D10348207','350783','建瓯市','jos','JIANOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E37DA6FB-384B-0C36-FECE-6E7D10348207','350784','建阳市','jys','JIANYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('A5A42CA3-86B3-60ED-40BD-33749517E6AE','BCA395D5-C71F-FEA5-AEAD-BF64874ACC04','350800','龙岩市','lys','LONGYANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A5A42CA3-86B3-60ED-40BD-33749517E6AE','350801','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A5A42CA3-86B3-60ED-40BD-33749517E6AE','350802','新罗区','xlq','XINLUOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A5A42CA3-86B3-60ED-40BD-33749517E6AE','350821','长汀县','ztx','ZHANGTINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A5A42CA3-86B3-60ED-40BD-33749517E6AE','350822','永定县','ydx','YONGDINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A5A42CA3-86B3-60ED-40BD-33749517E6AE','350823','上杭县','shx','SHANGHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A5A42CA3-86B3-60ED-40BD-33749517E6AE','350824','武平县','wpx','WUPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A5A42CA3-86B3-60ED-40BD-33749517E6AE','350825','连城县','lcx','LIANCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A5A42CA3-86B3-60ED-40BD-33749517E6AE','350881','漳平市','zps','ZHANGPINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('D08AE31D-EF7C-A449-D3FD-E08F6543D028','BCA395D5-C71F-FEA5-AEAD-BF64874ACC04','352200','宁德地区','nddq','NINGDEDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D08AE31D-EF7C-A449-D3FD-E08F6543D028','352201','宁德市','nds','NINGDESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D08AE31D-EF7C-A449-D3FD-E08F6543D028','352202','福安市','fas','FUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D08AE31D-EF7C-A449-D3FD-E08F6543D028','352203','福鼎市','fds','FUDINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D08AE31D-EF7C-A449-D3FD-E08F6543D028','352225','霞浦县','xpx','XIAPUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D08AE31D-EF7C-A449-D3FD-E08F6543D028','352227','古田县','gtx','GUTIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D08AE31D-EF7C-A449-D3FD-E08F6543D028','352228','屏南县','pnx','PINGNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D08AE31D-EF7C-A449-D3FD-E08F6543D028','352229','寿宁县','snx','SHOUNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D08AE31D-EF7C-A449-D3FD-E08F6543D028','352230','周宁县','znx','ZHOUNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D08AE31D-EF7C-A449-D3FD-E08F6543D028','352231','柘荣县','zrx','ZHERONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--江西省（编号未改）
INSERT INTO t_data_dictionary_common
VALUES('2590067C-EDAD-463B-F974-4463692E6B79','9','360000','江西省','jxs','JIANGXISHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('2C36B9FA-832E-554F-A42B-A9EFD4630AEE','2590067C-EDAD-463B-F974-4463692E6B79','360100','南昌市','ncs','NANCHANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2C36B9FA-832E-554F-A42B-A9EFD4630AEE','360101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2C36B9FA-832E-554F-A42B-A9EFD4630AEE','360102','东湖区','dhq','DONGHUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2C36B9FA-832E-554F-A42B-A9EFD4630AEE','360103','西湖区','xhq','XIHUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2C36B9FA-832E-554F-A42B-A9EFD4630AEE','360104','青云谱区','qypq','QINGYUNPUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2C36B9FA-832E-554F-A42B-A9EFD4630AEE','360105','湾里区','wlq','WANLIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2C36B9FA-832E-554F-A42B-A9EFD4630AEE','360111','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2C36B9FA-832E-554F-A42B-A9EFD4630AEE','360121','南昌县','ncx','NANCHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2C36B9FA-832E-554F-A42B-A9EFD4630AEE','360122','新建县','xjx','XINJIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2C36B9FA-832E-554F-A42B-A9EFD4630AEE','360123','安义县','ayx','ANYIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2C36B9FA-832E-554F-A42B-A9EFD4630AEE','360124','进贤县','jxx','JINXIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('51B4E71F-656C-D22A-830B-ECCC6FDE59B1','2590067C-EDAD-463B-F974-4463692E6B79','360200','景德镇市','jdzs','JINGDEZHENSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'51B4E71F-656C-D22A-830B-ECCC6FDE59B1','360201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'51B4E71F-656C-D22A-830B-ECCC6FDE59B1','360202','昌江区','cjq','CHANGJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'51B4E71F-656C-D22A-830B-ECCC6FDE59B1','360203','珠山区','zsq','ZHUSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'51B4E71F-656C-D22A-830B-ECCC6FDE59B1','360222','浮梁县','flx','FULIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'51B4E71F-656C-D22A-830B-ECCC6FDE59B1','360281','乐平市','lps','LEPINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('2297AEFD-00C6-2F6A-B905-89C9B4C63CE7','2590067C-EDAD-463B-F974-4463692E6B79','360300','萍乡市','pxs','PINGXIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2297AEFD-00C6-2F6A-B905-89C9B4C63CE7','360301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2297AEFD-00C6-2F6A-B905-89C9B4C63CE7','360302','安源区','ayq','ANYUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2297AEFD-00C6-2F6A-B905-89C9B4C63CE7','360313','湘东区','xdq','XIANGDONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2297AEFD-00C6-2F6A-B905-89C9B4C63CE7','360321','莲花县','lhx','LIANHUAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2297AEFD-00C6-2F6A-B905-89C9B4C63CE7','360322','上栗县','slx','SHANGLIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2297AEFD-00C6-2F6A-B905-89C9B4C63CE7','360323','芦溪县','lxx','LUXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('141B3BE5-29AB-77A1-CB10-9454C0228F95','2590067C-EDAD-463B-F974-4463692E6B79','360400','九江市','jjs','JIUJIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'141B3BE5-29AB-77A1-CB10-9454C0228F95','360401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'141B3BE5-29AB-77A1-CB10-9454C0228F95','360402','庐山区','lsq','LUSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'141B3BE5-29AB-77A1-CB10-9454C0228F95','360403','浔阳区','xyq','XUNYANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'141B3BE5-29AB-77A1-CB10-9454C0228F95','360421','九江县','jjx','JIUJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'141B3BE5-29AB-77A1-CB10-9454C0228F95','360423','武宁县','wnx','WUNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'141B3BE5-29AB-77A1-CB10-9454C0228F95','360424','修水县','xsx','XIUSHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'141B3BE5-29AB-77A1-CB10-9454C0228F95','360425','永修县','yxx','YONGXIUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'141B3BE5-29AB-77A1-CB10-9454C0228F95','360426','德安县','dax','DEANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'141B3BE5-29AB-77A1-CB10-9454C0228F95','360427','星子县','xzx','XINGZIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'141B3BE5-29AB-77A1-CB10-9454C0228F95','360428','都昌县','dcx','DOUCHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'141B3BE5-29AB-77A1-CB10-9454C0228F95','360429','湖口县','hkx','HUKOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'141B3BE5-29AB-77A1-CB10-9454C0228F95','360430','彭泽县','pzx','PENGZEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'141B3BE5-29AB-77A1-CB10-9454C0228F95','360481','瑞昌市','rcs','RUICHANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('20109BE3-E511-0F03-73B5-AF680807D254','2590067C-EDAD-463B-F974-4463692E6B79','360500','新余市','xys','XINYUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'20109BE3-E511-0F03-73B5-AF680807D254','360501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'20109BE3-E511-0F03-73B5-AF680807D254','360502','渝水区','ysq','YUSHUIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'20109BE3-E511-0F03-73B5-AF680807D254','360521','分宜县','fyx','FENYIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('B5BD99BC-B81B-88C0-56DD-D0C05BC92642','2590067C-EDAD-463B-F974-4463692E6B79','360600','鹰潭市','yts','YINGTANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B5BD99BC-B81B-88C0-56DD-D0C05BC92642','360601','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B5BD99BC-B81B-88C0-56DD-D0C05BC92642','360602','月湖区','yhq','YUEHUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B5BD99BC-B81B-88C0-56DD-D0C05BC92642','360622','余江县','yjx','YUJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B5BD99BC-B81B-88C0-56DD-D0C05BC92642','360681','贵溪市','gxs','GUIXISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('95B00927-5E79-7EE5-63B2-9A1D3A6884A6','2590067C-EDAD-463B-F974-4463692E6B79','360700','赣州市','gzs','GANZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'95B00927-5E79-7EE5-63B2-9A1D3A6884A6','360701','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'95B00927-5E79-7EE5-63B2-9A1D3A6884A6','360702','章贡区','zgq','ZHANGGONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'95B00927-5E79-7EE5-63B2-9A1D3A6884A6','360721','赣县','gx','GANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'95B00927-5E79-7EE5-63B2-9A1D3A6884A6','360722','信丰县','xfx','XINFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'95B00927-5E79-7EE5-63B2-9A1D3A6884A6','360723','大余县','dyx','DAYUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'95B00927-5E79-7EE5-63B2-9A1D3A6884A6','360724','上犹县','syx','SHANGYOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'95B00927-5E79-7EE5-63B2-9A1D3A6884A6','360725','崇义县','cyx','CHONGYIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'95B00927-5E79-7EE5-63B2-9A1D3A6884A6','360726','安远县','ayx','ANYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'95B00927-5E79-7EE5-63B2-9A1D3A6884A6','360727','龙南县','lnx','LONGNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'95B00927-5E79-7EE5-63B2-9A1D3A6884A6','360728','定南县','dnx','DINGNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'95B00927-5E79-7EE5-63B2-9A1D3A6884A6','360729','全南县','qnx','QUANNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'95B00927-5E79-7EE5-63B2-9A1D3A6884A6','360730','宁都县','ndx','NINGDOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'95B00927-5E79-7EE5-63B2-9A1D3A6884A6','360731','于都县','ydx','YUDOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'95B00927-5E79-7EE5-63B2-9A1D3A6884A6','360732','兴国县','xgx','XINGGUOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'95B00927-5E79-7EE5-63B2-9A1D3A6884A6','360733','会昌县','hcx','HUICHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'95B00927-5E79-7EE5-63B2-9A1D3A6884A6','360734','寻乌县','xwx','XUNWUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'95B00927-5E79-7EE5-63B2-9A1D3A6884A6','360735','石城县','scx','SHICHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'95B00927-5E79-7EE5-63B2-9A1D3A6884A6','360781','瑞金市','rjs','RUIJINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'95B00927-5E79-7EE5-63B2-9A1D3A6884A6','360782','南康市','nks','NANKANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('303186DB-B497-4095-8935-D67F8E498627','2590067C-EDAD-463B-F974-4463692E6B79','362200','宜春地区','ycdq','YICHUNDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'303186DB-B497-4095-8935-D67F8E498627','362201','宜春市','ycs','YICHUNSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'303186DB-B497-4095-8935-D67F8E498627','362202','丰城市','fcs','FENGCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'303186DB-B497-4095-8935-D67F8E498627','362203','樟树市','zss','ZHANGSHUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'303186DB-B497-4095-8935-D67F8E498627','362204','高安市','gas','GAOANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'303186DB-B497-4095-8935-D67F8E498627','362226','奉新县','fxx','FENGXINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'303186DB-B497-4095-8935-D67F8E498627','362227','万载县','wzx','WANZAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'303186DB-B497-4095-8935-D67F8E498627','362228','上高县','sgx','SHANGGAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'303186DB-B497-4095-8935-D67F8E498627','362229','宜丰县','yfx','YIFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'303186DB-B497-4095-8935-D67F8E498627','362232','靖安县','jax','JINGANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'303186DB-B497-4095-8935-D67F8E498627','362233','铜鼓县','tgx','TONGGUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('D9B3207A-E256-C181-283F-9B50C9BC578D','2590067C-EDAD-463B-F974-4463692E6B79','362300','上饶地区','srdq','SHANGRAODIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9B3207A-E256-C181-283F-9B50C9BC578D','362301','上饶市','srs','SHANGRAOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9B3207A-E256-C181-283F-9B50C9BC578D','362302','德兴市','dxs','DEXINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9B3207A-E256-C181-283F-9B50C9BC578D','362321','上饶县','srx','SHANGRAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9B3207A-E256-C181-283F-9B50C9BC578D','362322','广丰县','gfx','GUANGFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9B3207A-E256-C181-283F-9B50C9BC578D','362323','玉山县','ysx','YUSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9B3207A-E256-C181-283F-9B50C9BC578D','362324','铅山县','qsx','QIANSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9B3207A-E256-C181-283F-9B50C9BC578D','362325','横峰县','hfx','HENGFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9B3207A-E256-C181-283F-9B50C9BC578D','362326','弋阳县','yyx','YIYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9B3207A-E256-C181-283F-9B50C9BC578D','362329','余干县','ygx','YUGANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9B3207A-E256-C181-283F-9B50C9BC578D','362330','波阳县','byx','BOYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9B3207A-E256-C181-283F-9B50C9BC578D','362331','万年县','wnx','WANNIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D9B3207A-E256-C181-283F-9B50C9BC578D','362334','婺源县','wyx','WUYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('78AD3C0B-DE3D-0FCD-83BA-D8E0F02CAD80','2590067C-EDAD-463B-F974-4463692E6B79','362400','吉安地区','jadq','JIANDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'78AD3C0B-DE3D-0FCD-83BA-D8E0F02CAD80','362401','吉安市','jas','JIANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'78AD3C0B-DE3D-0FCD-83BA-D8E0F02CAD80','362402','井冈山市','jgss','JINGGANGSHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'78AD3C0B-DE3D-0FCD-83BA-D8E0F02CAD80','362421','吉安县','jax','JIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'78AD3C0B-DE3D-0FCD-83BA-D8E0F02CAD80','362422','吉水县','jsx','JISHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'78AD3C0B-DE3D-0FCD-83BA-D8E0F02CAD80','362423','峡江县','xjx','XIAJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'78AD3C0B-DE3D-0FCD-83BA-D8E0F02CAD80','362424','新干县','xgx','XINGANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'78AD3C0B-DE3D-0FCD-83BA-D8E0F02CAD80','362425','永丰县','yfx','YONGFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'78AD3C0B-DE3D-0FCD-83BA-D8E0F02CAD80','362426','泰和县','thx','TAIHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'78AD3C0B-DE3D-0FCD-83BA-D8E0F02CAD80','362427','遂川县','scx','SUICHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'78AD3C0B-DE3D-0FCD-83BA-D8E0F02CAD80','362428','万安县','wax','WANANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'78AD3C0B-DE3D-0FCD-83BA-D8E0F02CAD80','362429','安福县','afx','ANFUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'78AD3C0B-DE3D-0FCD-83BA-D8E0F02CAD80','362430','永新县','yxx','YONGXINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'78AD3C0B-DE3D-0FCD-83BA-D8E0F02CAD80','362432','宁冈县','ngx','NINGGANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('8C7A57E3-057E-F99C-718E-F36041793145','2590067C-EDAD-463B-F974-4463692E6B79','362500','抚州地区','fzdq','FUZHOUDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8C7A57E3-057E-F99C-718E-F36041793145','362502','临川市','lcs','LINCHUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8C7A57E3-057E-F99C-718E-F36041793145','362522','南城县','ncx','NANCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8C7A57E3-057E-F99C-718E-F36041793145','362523','黎川县','lcx','LICHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8C7A57E3-057E-F99C-718E-F36041793145','362524','南丰县','nfx','NANFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8C7A57E3-057E-F99C-718E-F36041793145','362525','崇仁县','crx','CHONGRENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8C7A57E3-057E-F99C-718E-F36041793145','362526','乐安县','lax','LEANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8C7A57E3-057E-F99C-718E-F36041793145','362527','宜黄县','yhx','YIHUANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8C7A57E3-057E-F99C-718E-F36041793145','362528','金溪县','jxx','JINXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8C7A57E3-057E-F99C-718E-F36041793145','362529','资溪县','zxx','ZIXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8C7A57E3-057E-F99C-718E-F36041793145','362531','东乡县','dxx','DONGXIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8C7A57E3-057E-F99C-718E-F36041793145','362532','广昌县','gcx','GUANGCHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--山东省
INSERT INTO t_data_dictionary_common
VALUES('6AFF127C-EE7E-13FA-56E7-B143C7092E6A','9','370000','山东省','sds','SHANDONGSHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('8FEEE8FB-F967-D98C-E856-320136C3894F','6AFF127C-EE7E-13FA-56E7-B143C7092E6A','370100','济南市','jns','JINANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8FEEE8FB-F967-D98C-E856-320136C3894F','370101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8FEEE8FB-F967-D98C-E856-320136C3894F','370102','历下区','lxq','LIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8FEEE8FB-F967-D98C-E856-320136C3894F','370103','市中区','szq','SHIZHONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8FEEE8FB-F967-D98C-E856-320136C3894F','370104','槐荫区','hyq','HUAIYINQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8FEEE8FB-F967-D98C-E856-320136C3894F','370105','天桥区','tqq','TIANQIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8FEEE8FB-F967-D98C-E856-320136C3894F','370112','历城区','lcq','LICHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8FEEE8FB-F967-D98C-E856-320136C3894F','370123','长清县','zqx','ZHANGQINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8FEEE8FB-F967-D98C-E856-320136C3894F','370124','平阴县','pyx','PINGYINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8FEEE8FB-F967-D98C-E856-320136C3894F','370125','济阳县','jyx','JIYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8FEEE8FB-F967-D98C-E856-320136C3894F','370126','商河县','shx','SHANGHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8FEEE8FB-F967-D98C-E856-320136C3894F','370181','章丘市','zqs','ZHANGQIUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('9A7A681C-D4FD-6FE9-F7F4-FA1FA1CC1BF5','6AFF127C-EE7E-13FA-56E7-B143C7092E6A','370200','青岛市','qds','QINGDAOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A7A681C-D4FD-6FE9-F7F4-FA1FA1CC1BF5','370201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A7A681C-D4FD-6FE9-F7F4-FA1FA1CC1BF5','370202','市南区','snq','SHINANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A7A681C-D4FD-6FE9-F7F4-FA1FA1CC1BF5','370203','市北区','sbq','SHIBEIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A7A681C-D4FD-6FE9-F7F4-FA1FA1CC1BF5','370205','四方区','sfq','SIFANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A7A681C-D4FD-6FE9-F7F4-FA1FA1CC1BF5','370211','黄岛区','hdq','HUANGDAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A7A681C-D4FD-6FE9-F7F4-FA1FA1CC1BF5','370212','崂山区','lsq','LAOSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A7A681C-D4FD-6FE9-F7F4-FA1FA1CC1BF5','370213','李沧区','lcq','LICANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A7A681C-D4FD-6FE9-F7F4-FA1FA1CC1BF5','370214','城阳区','cyq','CHENGYANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A7A681C-D4FD-6FE9-F7F4-FA1FA1CC1BF5','370281','胶州市','jzs','JIAOZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A7A681C-D4FD-6FE9-F7F4-FA1FA1CC1BF5','370282','即墨市','jms','JIMOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A7A681C-D4FD-6FE9-F7F4-FA1FA1CC1BF5','370283','平度市','pds','PINGDUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A7A681C-D4FD-6FE9-F7F4-FA1FA1CC1BF5','370284','胶南市','jns','JIAONANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9A7A681C-D4FD-6FE9-F7F4-FA1FA1CC1BF5','370285','莱西市','lxs','LAIXISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E6A69516-17BA-2A2C-1C91-DFCCA9F50AC7','6AFF127C-EE7E-13FA-56E7-B143C7092E6A','370300','淄博市','zbs','ZIBOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E6A69516-17BA-2A2C-1C91-DFCCA9F50AC7','370301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E6A69516-17BA-2A2C-1C91-DFCCA9F50AC7','370302','淄川区','zcq','ZICHUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E6A69516-17BA-2A2C-1C91-DFCCA9F50AC7','370303','张店区','zdq','ZHANGDIANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E6A69516-17BA-2A2C-1C91-DFCCA9F50AC7','370304','博山区','bsq','BOSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E6A69516-17BA-2A2C-1C91-DFCCA9F50AC7','370305','临淄区','lzq','LINZIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E6A69516-17BA-2A2C-1C91-DFCCA9F50AC7','370306','周村区','zcq','ZHOUCUNQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E6A69516-17BA-2A2C-1C91-DFCCA9F50AC7','370321','桓台县','htx','HUANTAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E6A69516-17BA-2A2C-1C91-DFCCA9F50AC7','370322','高青县','gqx','GAOQINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E6A69516-17BA-2A2C-1C91-DFCCA9F50AC7','370323','沂源县','yyx','YIYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('6A6EE6AE-F0EA-EE97-8AEE-332E41076493','6AFF127C-EE7E-13FA-56E7-B143C7092E6A','370400','枣庄市','zzs','ZAOZHUANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6A6EE6AE-F0EA-EE97-8AEE-332E41076493','370401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6A6EE6AE-F0EA-EE97-8AEE-332E41076493','370402','市中区','szq','SHIZHONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6A6EE6AE-F0EA-EE97-8AEE-332E41076493','370403','薛城区','xcq','XUECHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6A6EE6AE-F0EA-EE97-8AEE-332E41076493','370404','峄城区','ycq','YICHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6A6EE6AE-F0EA-EE97-8AEE-332E41076493','370405','台儿庄区','tezq','TAIERZHUANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6A6EE6AE-F0EA-EE97-8AEE-332E41076493','370406','山亭区','stq','SHANTINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6A6EE6AE-F0EA-EE97-8AEE-332E41076493','370481','滕州市','tzs','TENGZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('36B33275-1428-A322-952A-2A0617F5453F','6AFF127C-EE7E-13FA-56E7-B143C7092E6A','370500','东营市','dys','DONGYINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'36B33275-1428-A322-952A-2A0617F5453F','370501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'36B33275-1428-A322-952A-2A0617F5453F','370502','东营区','dyq','DONGYINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'36B33275-1428-A322-952A-2A0617F5453F','370503','河口区','hkq','HEKOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'36B33275-1428-A322-952A-2A0617F5453F','370521','垦利县','klx','KENLIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'36B33275-1428-A322-952A-2A0617F5453F','370522','利津县','ljx','LIJINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'36B33275-1428-A322-952A-2A0617F5453F','370523','广饶县','grx','GUANGRAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('278369B5-8407-438F-16B2-AC1C8313572A','6AFF127C-EE7E-13FA-56E7-B143C7092E6A','370600','烟台市','yts','YANTAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'278369B5-8407-438F-16B2-AC1C8313572A','370601','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'278369B5-8407-438F-16B2-AC1C8313572A','370602','芝罘区','zfq','ZHIFUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'278369B5-8407-438F-16B2-AC1C8313572A','370611','福山区','fsq','FUSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'278369B5-8407-438F-16B2-AC1C8313572A','370612','牟平区','mpq','MOUPINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'278369B5-8407-438F-16B2-AC1C8313572A','370613','莱山区','lsq','LAISHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'278369B5-8407-438F-16B2-AC1C8313572A','370634','长岛县','zdx','ZHANGDAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'278369B5-8407-438F-16B2-AC1C8313572A','370681','龙口市','lks','LONGKOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'278369B5-8407-438F-16B2-AC1C8313572A','370682','莱阳市','lys','LAIYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'278369B5-8407-438F-16B2-AC1C8313572A','370683','莱州市','lzs','LAIZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'278369B5-8407-438F-16B2-AC1C8313572A','370684','蓬莱市','pls','PENGLAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'278369B5-8407-438F-16B2-AC1C8313572A','370685','招远市','zys','ZHAOYUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'278369B5-8407-438F-16B2-AC1C8313572A','370686','栖霞市','qxs','QIXIASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'278369B5-8407-438F-16B2-AC1C8313572A','370687','海阳市','hys','HAIYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('57DF3094-70AD-4D81-BA64-77AEB75D4DB4','6AFF127C-EE7E-13FA-56E7-B143C7092E6A','370700','潍坊市','wfs','WEIFANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'57DF3094-70AD-4D81-BA64-77AEB75D4DB4','370701','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'57DF3094-70AD-4D81-BA64-77AEB75D4DB4','370702','潍城区','wcq','WEICHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'57DF3094-70AD-4D81-BA64-77AEB75D4DB4','370703','寒亭区','htq','HANTINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'57DF3094-70AD-4D81-BA64-77AEB75D4DB4','370704','坊子区','fzq','FANGZIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'57DF3094-70AD-4D81-BA64-77AEB75D4DB4','370705','奎文区','kwq','KUIWENQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'57DF3094-70AD-4D81-BA64-77AEB75D4DB4','370724','临朐县','lqx','LINQUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'57DF3094-70AD-4D81-BA64-77AEB75D4DB4','370725','昌乐县','clx','CHANGLEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'57DF3094-70AD-4D81-BA64-77AEB75D4DB4','370781','青州市','qzs','QINGZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'57DF3094-70AD-4D81-BA64-77AEB75D4DB4','370782','诸城市','zcs','ZHUCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'57DF3094-70AD-4D81-BA64-77AEB75D4DB4','370783','寿光市','sgs','SHOUGUANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'57DF3094-70AD-4D81-BA64-77AEB75D4DB4','370784','安丘市','aqs','ANQIUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'57DF3094-70AD-4D81-BA64-77AEB75D4DB4','370785','高密市','gms','GAOMISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'57DF3094-70AD-4D81-BA64-77AEB75D4DB4','370786','昌邑市','cys','CHANGYISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('8858C075-32BE-FBB9-8635-69123D2F1D27','6AFF127C-EE7E-13FA-56E7-B143C7092E6A','370800','济宁市','jns','JININGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8858C075-32BE-FBB9-8635-69123D2F1D27','370801','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8858C075-32BE-FBB9-8635-69123D2F1D27','370802','市中区','szq','SHIZHONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8858C075-32BE-FBB9-8635-69123D2F1D27','370811','任城区','rcq','RENCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8858C075-32BE-FBB9-8635-69123D2F1D27','370826','微山县','wsx','WEISHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8858C075-32BE-FBB9-8635-69123D2F1D27','370827','鱼台县','ytx','YUTAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8858C075-32BE-FBB9-8635-69123D2F1D27','370828','金乡县','jxx','JINXIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8858C075-32BE-FBB9-8635-69123D2F1D27','370829','嘉祥县','jxx','JIAXIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8858C075-32BE-FBB9-8635-69123D2F1D27','370830','汶上县','wsx','WENSHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8858C075-32BE-FBB9-8635-69123D2F1D27','370831','泗水县','ssx','SISHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8858C075-32BE-FBB9-8635-69123D2F1D27','370832','梁山县','lsx','LIANGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8858C075-32BE-FBB9-8635-69123D2F1D27','370881','曲阜市','qfs','QUFUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8858C075-32BE-FBB9-8635-69123D2F1D27','370882','兖州市','yzs','YANZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8858C075-32BE-FBB9-8635-69123D2F1D27','370883','邹城市','zcs','ZOUCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('D8F29C56-B564-D938-E256-B3E2B18B90F2','6AFF127C-EE7E-13FA-56E7-B143C7092E6A','370900','泰安市','tas','TAIANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D8F29C56-B564-D938-E256-B3E2B18B90F2','370901','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D8F29C56-B564-D938-E256-B3E2B18B90F2','370902','泰山区','tsq','TAISHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D8F29C56-B564-D938-E256-B3E2B18B90F2','370911','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D8F29C56-B564-D938-E256-B3E2B18B90F2','370921','宁阳县','nyx','NINGYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D8F29C56-B564-D938-E256-B3E2B18B90F2','370923','东平县','dpx','DONGPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D8F29C56-B564-D938-E256-B3E2B18B90F2','370982','新泰市','xts','XINTAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D8F29C56-B564-D938-E256-B3E2B18B90F2','370983','肥城市','fcs','FEICHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('F44B9CFC-16F7-E8A8-94A3-C2A31B1CB2D0','6AFF127C-EE7E-13FA-56E7-B143C7092E6A','371000','威海市','whs','WEIHAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F44B9CFC-16F7-E8A8-94A3-C2A31B1CB2D0','371001','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F44B9CFC-16F7-E8A8-94A3-C2A31B1CB2D0','371002','环翠区','hcq','HUANCUIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F44B9CFC-16F7-E8A8-94A3-C2A31B1CB2D0','371081','文登市','wds','WENDENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F44B9CFC-16F7-E8A8-94A3-C2A31B1CB2D0','371082','荣成市','rcs','RONGCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F44B9CFC-16F7-E8A8-94A3-C2A31B1CB2D0','371083','乳山市','rss','RUSHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('AB18E2FC-38A2-5411-F525-72CB734420FA','6AFF127C-EE7E-13FA-56E7-B143C7092E6A','371100','日照市','rzs','RIZHAOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AB18E2FC-38A2-5411-F525-72CB734420FA','371101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AB18E2FC-38A2-5411-F525-72CB734420FA','371102','东港区','dgq','DONGGANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AB18E2FC-38A2-5411-F525-72CB734420FA','371121','五莲县','wlx','WULIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AB18E2FC-38A2-5411-F525-72CB734420FA','371122','莒县','jx','JUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('F7D79B7F-9276-B254-072A-39808A4A056D','6AFF127C-EE7E-13FA-56E7-B143C7092E6A','371200','莱芜市','lws','LAIWUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F7D79B7F-9276-B254-072A-39808A4A056D','371201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F7D79B7F-9276-B254-072A-39808A4A056D','371202','莱城区','lcq','LAICHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F7D79B7F-9276-B254-072A-39808A4A056D','371203','钢城区','gcq','GANGCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E0B579C9-F540-8466-5830-7F3798DB2B98','6AFF127C-EE7E-13FA-56E7-B143C7092E6A','371300','临沂市','lys','LINYISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0B579C9-F540-8466-5830-7F3798DB2B98','371301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0B579C9-F540-8466-5830-7F3798DB2B98','371302','兰山区','lsq','LANSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0B579C9-F540-8466-5830-7F3798DB2B98','371311','罗庄区','lzq','LUOZHUANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0B579C9-F540-8466-5830-7F3798DB2B98','371312','河东区','hdq','HEDONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0B579C9-F540-8466-5830-7F3798DB2B98','371321','沂南县','ynx','YINANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0B579C9-F540-8466-5830-7F3798DB2B98','371322','郯城县','tcx','TANCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0B579C9-F540-8466-5830-7F3798DB2B98','371323','沂水县','ysx','YISHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0B579C9-F540-8466-5830-7F3798DB2B98','371324','苍山县','csx','CANGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0B579C9-F540-8466-5830-7F3798DB2B98','371325','费县','fx','FEIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0B579C9-F540-8466-5830-7F3798DB2B98','371326','平邑县','pyx','PINGYIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0B579C9-F540-8466-5830-7F3798DB2B98','371327','莒南县','jnx','JUNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0B579C9-F540-8466-5830-7F3798DB2B98','371328','蒙阴县','myx','MENGYINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0B579C9-F540-8466-5830-7F3798DB2B98','371329','临沭县','lsx','LINSHUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('1CFF1307-463B-77FB-DEF0-35342E1953C0','6AFF127C-EE7E-13FA-56E7-B143C7092E6A','371400','德州市','dzs','DEZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1CFF1307-463B-77FB-DEF0-35342E1953C0','371401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1CFF1307-463B-77FB-DEF0-35342E1953C0','371402','德城区','dcq','DECHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1CFF1307-463B-77FB-DEF0-35342E1953C0','371421','陵县','lx','LINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1CFF1307-463B-77FB-DEF0-35342E1953C0','371422','宁津县','njx','NINGJINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1CFF1307-463B-77FB-DEF0-35342E1953C0','371423','庆云县','qyx','QINGYUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1CFF1307-463B-77FB-DEF0-35342E1953C0','371424','临邑县','lyx','LINYIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1CFF1307-463B-77FB-DEF0-35342E1953C0','371425','齐河县','qhx','QIHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1CFF1307-463B-77FB-DEF0-35342E1953C0','371426','平原县','pyx','PINGYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1CFF1307-463B-77FB-DEF0-35342E1953C0','371427','夏津县','xjx','XIAJINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1CFF1307-463B-77FB-DEF0-35342E1953C0','371428','武城县','wcx','WUCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1CFF1307-463B-77FB-DEF0-35342E1953C0','371481','乐陵市','lls','LELINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1CFF1307-463B-77FB-DEF0-35342E1953C0','371482','禹城市','ycs','YUCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('FA00199F-9961-E0D0-3911-34BC6F68FA3E','6AFF127C-EE7E-13FA-56E7-B143C7092E6A','371500','聊城市','lcs','LIAOCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FA00199F-9961-E0D0-3911-34BC6F68FA3E','371501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FA00199F-9961-E0D0-3911-34BC6F68FA3E','371502','东昌府区','dcfq','DONGCHANGFUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FA00199F-9961-E0D0-3911-34BC6F68FA3E','371521','阳谷县','ygx','YANGGUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FA00199F-9961-E0D0-3911-34BC6F68FA3E','371522','莘县','xx','XINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FA00199F-9961-E0D0-3911-34BC6F68FA3E','371523','茌平县','cpx','CHIPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FA00199F-9961-E0D0-3911-34BC6F68FA3E','371524','东阿县','dax','DONGAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FA00199F-9961-E0D0-3911-34BC6F68FA3E','371525','冠县','gx','GUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FA00199F-9961-E0D0-3911-34BC6F68FA3E','371526','高唐县','gtx','GAOTANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FA00199F-9961-E0D0-3911-34BC6F68FA3E','371581','临清市','lqs','LINQINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('51188B09-0F09-7F48-AF55-34A9D6FFBB74','6AFF127C-EE7E-13FA-56E7-B143C7092E6A','372300','滨州地区','bzdq','BINZHOUDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'51188B09-0F09-7F48-AF55-34A9D6FFBB74','372301','滨州市','bzs','BINZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'51188B09-0F09-7F48-AF55-34A9D6FFBB74','372321','惠民县','hmx','HUIMINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'51188B09-0F09-7F48-AF55-34A9D6FFBB74','372323','阳信县','yxx','YANGXINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'51188B09-0F09-7F48-AF55-34A9D6FFBB74','372324','无棣县','wdx','WUDIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'51188B09-0F09-7F48-AF55-34A9D6FFBB74','372325','沾化县','zhx','ZHANHUAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'51188B09-0F09-7F48-AF55-34A9D6FFBB74','372328','博兴县','bxx','BOXINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'51188B09-0F09-7F48-AF55-34A9D6FFBB74','372330','邹平县','zpx','ZOUPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('5F85ECCF-451C-73AB-8AB2-1E31F59AEA10','6AFF127C-EE7E-13FA-56E7-B143C7092E6A','372900','菏泽地区','hzdq','HEZEDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5F85ECCF-451C-73AB-8AB2-1E31F59AEA10','372901','菏泽市','hzs','HEZESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5F85ECCF-451C-73AB-8AB2-1E31F59AEA10','372922','曹县','cx','CAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5F85ECCF-451C-73AB-8AB2-1E31F59AEA10','372923','定陶县','dtx','DINGTAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5F85ECCF-451C-73AB-8AB2-1E31F59AEA10','372924','成武县','cwx','CHENGWUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5F85ECCF-451C-73AB-8AB2-1E31F59AEA10','372925','单县','dx','DANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5F85ECCF-451C-73AB-8AB2-1E31F59AEA10','372926','巨野县','jyx','JUYEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5F85ECCF-451C-73AB-8AB2-1E31F59AEA10','372928','郓城县','ycx','YUNCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5F85ECCF-451C-73AB-8AB2-1E31F59AEA10','372929','鄄城县','jcx','JUANCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5F85ECCF-451C-73AB-8AB2-1E31F59AEA10','372930','东明县','dmx','DONGMINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--河南省
INSERT INTO t_data_dictionary_common
VALUES('65F83DD3-E3B8-3E58-C0F4-9B22D87DEE54','9','410000','河南省','hns','HENANSHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('D1A9DEF4-F0F2-3329-0288-C9DB622DB854','65F83DD3-E3B8-3E58-C0F4-9B22D87DEE54','410100','郑州市','zzs','ZHENGZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A9DEF4-F0F2-3329-0288-C9DB622DB854','410101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A9DEF4-F0F2-3329-0288-C9DB622DB854','410102','中原区','zyq','ZHONGYUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A9DEF4-F0F2-3329-0288-C9DB622DB854','410103','二七区','eqq','ERQIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A9DEF4-F0F2-3329-0288-C9DB622DB854','410104','管城回族区','gchzq','GUANCHENGHUIZUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A9DEF4-F0F2-3329-0288-C9DB622DB854','410105','金水区','jsq','JINSHUIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A9DEF4-F0F2-3329-0288-C9DB622DB854','410106','上街区','sjq','SHANGJIEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A9DEF4-F0F2-3329-0288-C9DB622DB854','410108','邙山区','msq','MANGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A9DEF4-F0F2-3329-0288-C9DB622DB854','410122','中牟县','zmx','ZHONGMOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A9DEF4-F0F2-3329-0288-C9DB622DB854','410181','巩义市','gys','GONGYISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A9DEF4-F0F2-3329-0288-C9DB622DB854','410182','荥阳市','yys','YINGYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A9DEF4-F0F2-3329-0288-C9DB622DB854','410183','新密市','xms','XINMISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A9DEF4-F0F2-3329-0288-C9DB622DB854','410184','新郑市','xzs','XINZHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A9DEF4-F0F2-3329-0288-C9DB622DB854','410185','登封市','dfs','DENGFENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('8578466F-CA93-F006-43E9-A1C329FA42A4','65F83DD3-E3B8-3E58-C0F4-9B22D87DEE54','410200','开封市','kfs','KAIFENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8578466F-CA93-F006-43E9-A1C329FA42A4','410201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8578466F-CA93-F006-43E9-A1C329FA42A4','410202','龙亭区','ltq','LONGTINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8578466F-CA93-F006-43E9-A1C329FA42A4','410203','顺河回族区','shhzq','SHUNHEHUIZUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8578466F-CA93-F006-43E9-A1C329FA42A4','410204','鼓楼区','glq','GULOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8578466F-CA93-F006-43E9-A1C329FA42A4','410205','南关区','ngq','NANGUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8578466F-CA93-F006-43E9-A1C329FA42A4','410211','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8578466F-CA93-F006-43E9-A1C329FA42A4','410221','杞县','qx','QIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8578466F-CA93-F006-43E9-A1C329FA42A4','410222','通许县','txx','TONGXUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8578466F-CA93-F006-43E9-A1C329FA42A4','410223','尉氏县','wsx','WEISHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8578466F-CA93-F006-43E9-A1C329FA42A4','410224','开封县','kfx','KAIFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8578466F-CA93-F006-43E9-A1C329FA42A4','410225','兰考县','lkx','LANKAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('34A46D08-833F-4006-BA17-1B231939B727','65F83DD3-E3B8-3E58-C0F4-9B22D87DEE54','410300','洛阳市','lys','LUOYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34A46D08-833F-4006-BA17-1B231939B727','410301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34A46D08-833F-4006-BA17-1B231939B727','410302','老城区','lcq','LAOCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34A46D08-833F-4006-BA17-1B231939B727','410303','西工区','xgq','XIGONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34A46D08-833F-4006-BA17-1B231939B727','410304','廛河回族区','chhzq','CHANHEHUIZUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34A46D08-833F-4006-BA17-1B231939B727','410305','涧西区','jxq','JIANXIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34A46D08-833F-4006-BA17-1B231939B727','410306','吉利区','jlq','JILIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34A46D08-833F-4006-BA17-1B231939B727','410311','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34A46D08-833F-4006-BA17-1B231939B727','410322','孟津县','mjx','MENGJINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34A46D08-833F-4006-BA17-1B231939B727','410323','新安县','xax','XINANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34A46D08-833F-4006-BA17-1B231939B727','410324','栾川县','lcx','LUANCHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34A46D08-833F-4006-BA17-1B231939B727','410325','嵩县','sx','SONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34A46D08-833F-4006-BA17-1B231939B727','410326','汝阳县','ryx','RUYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34A46D08-833F-4006-BA17-1B231939B727','410327','宜阳县','yyx','YIYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34A46D08-833F-4006-BA17-1B231939B727','410328','洛宁县','lnx','LUONINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34A46D08-833F-4006-BA17-1B231939B727','410329','伊川县','ycx','YICHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34A46D08-833F-4006-BA17-1B231939B727','410381','偃师市','yss','YANSHISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('D55AE45F-65B7-26EC-DB4F-59A65D51EE09','65F83DD3-E3B8-3E58-C0F4-9B22D87DEE54','410400','平顶山市','pdss','PINGDINGSHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D55AE45F-65B7-26EC-DB4F-59A65D51EE09','410401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D55AE45F-65B7-26EC-DB4F-59A65D51EE09','410402','新华区','xhq','XINHUAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D55AE45F-65B7-26EC-DB4F-59A65D51EE09','410403','卫东区','wdq','WEIDONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D55AE45F-65B7-26EC-DB4F-59A65D51EE09','410404','石龙区','slq','SHILONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D55AE45F-65B7-26EC-DB4F-59A65D51EE09','410411','湛河区','zhq','ZHANHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D55AE45F-65B7-26EC-DB4F-59A65D51EE09','410421','宝丰县','bfx','BAOFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D55AE45F-65B7-26EC-DB4F-59A65D51EE09','410422','叶县','yx','YEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D55AE45F-65B7-26EC-DB4F-59A65D51EE09','410423','鲁山县','lsx','LUSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D55AE45F-65B7-26EC-DB4F-59A65D51EE09','410425','郏县','jx','JIAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D55AE45F-65B7-26EC-DB4F-59A65D51EE09','410481','舞钢市','wgs','WUGANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D55AE45F-65B7-26EC-DB4F-59A65D51EE09','410482','汝州市','rzs','RUZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('47AEDEA7-AF3F-268F-A6DA-8C9B5B8FE79A','65F83DD3-E3B8-3E58-C0F4-9B22D87DEE54','410500','安阳市','ays','ANYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'47AEDEA7-AF3F-268F-A6DA-8C9B5B8FE79A','410501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'47AEDEA7-AF3F-268F-A6DA-8C9B5B8FE79A','410502','文峰区','wfq','WENFENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'47AEDEA7-AF3F-268F-A6DA-8C9B5B8FE79A','410503','北关区','bgq','BEIGUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'47AEDEA7-AF3F-268F-A6DA-8C9B5B8FE79A','410504','铁西区','txq','TIEXIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'47AEDEA7-AF3F-268F-A6DA-8C9B5B8FE79A','410511','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'47AEDEA7-AF3F-268F-A6DA-8C9B5B8FE79A','410522','安阳县','ayx','ANYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'47AEDEA7-AF3F-268F-A6DA-8C9B5B8FE79A','410523','汤阴县','tyx','TANGYINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'47AEDEA7-AF3F-268F-A6DA-8C9B5B8FE79A','410526','滑县','hx','HUAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'47AEDEA7-AF3F-268F-A6DA-8C9B5B8FE79A','410527','内黄县','nhx','NEIHUANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'47AEDEA7-AF3F-268F-A6DA-8C9B5B8FE79A','410581','林州市','lzs','LINZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E8A45A31-33DA-1A3B-4680-4332037A6921','65F83DD3-E3B8-3E58-C0F4-9B22D87DEE54','410600','鹤壁市','hbs','HEBISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E8A45A31-33DA-1A3B-4680-4332037A6921','410601','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E8A45A31-33DA-1A3B-4680-4332037A6921','410602','鹤山区','hsq','HESHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E8A45A31-33DA-1A3B-4680-4332037A6921','410603','山城区','scq','SHANCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E8A45A31-33DA-1A3B-4680-4332037A6921','410611','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E8A45A31-33DA-1A3B-4680-4332037A6921','410621','浚县','jx','JUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E8A45A31-33DA-1A3B-4680-4332037A6921','410622','淇县','qx','QIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('DF8790F8-F7AA-81AA-FE4C-7AE9938A0C1B','65F83DD3-E3B8-3E58-C0F4-9B22D87DEE54','410700','新乡市','xxs','XINXIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DF8790F8-F7AA-81AA-FE4C-7AE9938A0C1B','410701','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DF8790F8-F7AA-81AA-FE4C-7AE9938A0C1B','410702','红旗区','hqq','HONGQIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DF8790F8-F7AA-81AA-FE4C-7AE9938A0C1B','410703','新华区','xhq','XINHUAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DF8790F8-F7AA-81AA-FE4C-7AE9938A0C1B','410704','北站区','bzq','BEIZHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DF8790F8-F7AA-81AA-FE4C-7AE9938A0C1B','410711','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DF8790F8-F7AA-81AA-FE4C-7AE9938A0C1B','410721','新乡县','xxx','XINXIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DF8790F8-F7AA-81AA-FE4C-7AE9938A0C1B','410724','获嘉县','hjx','HUOJIAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DF8790F8-F7AA-81AA-FE4C-7AE9938A0C1B','410725','原阳县','yyx','YUANYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DF8790F8-F7AA-81AA-FE4C-7AE9938A0C1B','410726','延津县','yjx','YANJINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DF8790F8-F7AA-81AA-FE4C-7AE9938A0C1B','410727','封丘县','fqx','FENGQIUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DF8790F8-F7AA-81AA-FE4C-7AE9938A0C1B','410728','长垣县','zyx','ZHANGYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DF8790F8-F7AA-81AA-FE4C-7AE9938A0C1B','410781','卫辉市','whs','WEIHUISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DF8790F8-F7AA-81AA-FE4C-7AE9938A0C1B','410782','辉县市','hxs','HUIXIANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('8D1E8222-C086-5C39-5BD5-016DDA896737','65F83DD3-E3B8-3E58-C0F4-9B22D87DEE54','410800','焦作市','jzs','JIAOZUOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D1E8222-C086-5C39-5BD5-016DDA896737','410801','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D1E8222-C086-5C39-5BD5-016DDA896737','410802','解放区','jfq','JIEFANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D1E8222-C086-5C39-5BD5-016DDA896737','410803','中站区','zzq','ZHONGZHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D1E8222-C086-5C39-5BD5-016DDA896737','410804','马村区','mcq','MACUNQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D1E8222-C086-5C39-5BD5-016DDA896737','410811','山阳区','syq','SHANYANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D1E8222-C086-5C39-5BD5-016DDA896737','410821','修武县','xwx','XIUWUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D1E8222-C086-5C39-5BD5-016DDA896737','410822','博爱县','bax','BOAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D1E8222-C086-5C39-5BD5-016DDA896737','410823','武陟县','wzx','WUZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D1E8222-C086-5C39-5BD5-016DDA896737','410825','温县','wx','WENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D1E8222-C086-5C39-5BD5-016DDA896737','410881','济源市','jys','JIYUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D1E8222-C086-5C39-5BD5-016DDA896737','410882','沁阳市','qys','QINYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D1E8222-C086-5C39-5BD5-016DDA896737','410883','孟州市','mzs','MENGZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('5F62C2A5-141D-FBB0-3D5E-33F6B05D2365','65F83DD3-E3B8-3E58-C0F4-9B22D87DEE54','410900','濮阳市','pys','PUYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5F62C2A5-141D-FBB0-3D5E-33F6B05D2365','410901','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5F62C2A5-141D-FBB0-3D5E-33F6B05D2365','410902','市区','sq','SHIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5F62C2A5-141D-FBB0-3D5E-33F6B05D2365','410922','清丰县','qfx','QINGFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5F62C2A5-141D-FBB0-3D5E-33F6B05D2365','410923','南乐县','nlx','NANLEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5F62C2A5-141D-FBB0-3D5E-33F6B05D2365','410926','范县','fx','FANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5F62C2A5-141D-FBB0-3D5E-33F6B05D2365','410927','台前县','tqx','TAIQIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5F62C2A5-141D-FBB0-3D5E-33F6B05D2365','410928','濮阳县','pyx','PUYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('FBEB993D-D51E-5711-3844-CF88048583A9','65F83DD3-E3B8-3E58-C0F4-9B22D87DEE54','411000','许昌市','xcs','XUCHANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FBEB993D-D51E-5711-3844-CF88048583A9','411001','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FBEB993D-D51E-5711-3844-CF88048583A9','411002','魏都区','wdq','WEIDOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FBEB993D-D51E-5711-3844-CF88048583A9','411023','许昌县','xcx','XUCHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FBEB993D-D51E-5711-3844-CF88048583A9','411024','鄢陵县','ylx','YANLINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FBEB993D-D51E-5711-3844-CF88048583A9','411025','襄城县','xcx','XIANGCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FBEB993D-D51E-5711-3844-CF88048583A9','411081','禹州市','yzs','YUZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FBEB993D-D51E-5711-3844-CF88048583A9','411082','长葛市','zgs','ZHANGGESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('EB37D97D-9819-E154-FA2E-9CCF44E4C2CD','65F83DD3-E3B8-3E58-C0F4-9B22D87DEE54','411100','漯河市','lhs','LUOHESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EB37D97D-9819-E154-FA2E-9CCF44E4C2CD','411101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EB37D97D-9819-E154-FA2E-9CCF44E4C2CD','411102','源汇区','yhq','YUANHUIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EB37D97D-9819-E154-FA2E-9CCF44E4C2CD','411121','舞阳县','wyx','WUYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EB37D97D-9819-E154-FA2E-9CCF44E4C2CD','411122','临颍县','lyx','LINYINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EB37D97D-9819-E154-FA2E-9CCF44E4C2CD','411123','郾城县','ycx','YANCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('BFC417AA-ABE0-6953-E678-4063A9F384CA','65F83DD3-E3B8-3E58-C0F4-9B22D87DEE54','411200','三门峡市','smxs','SANMENXIASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BFC417AA-ABE0-6953-E678-4063A9F384CA','411201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BFC417AA-ABE0-6953-E678-4063A9F384CA','411202','湖滨区','hbq','HUBINQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BFC417AA-ABE0-6953-E678-4063A9F384CA','411221','渑池县','mcx','MIANCHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BFC417AA-ABE0-6953-E678-4063A9F384CA','411222','陕县','sx','SHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BFC417AA-ABE0-6953-E678-4063A9F384CA','411224','卢氏县','lsx','LUSHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BFC417AA-ABE0-6953-E678-4063A9F384CA','411281','义马市','yms','YIMASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BFC417AA-ABE0-6953-E678-4063A9F384CA','411282','灵宝市','lbs','LINGBAOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('FC85F005-EB3A-5F1C-B349-691A2F573419','65F83DD3-E3B8-3E58-C0F4-9B22D87DEE54','411300','南阳市','nys','NANYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FC85F005-EB3A-5F1C-B349-691A2F573419','411301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FC85F005-EB3A-5F1C-B349-691A2F573419','411302','宛城区','wcq','WANCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FC85F005-EB3A-5F1C-B349-691A2F573419','411303','卧龙区','wlq','WOLONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FC85F005-EB3A-5F1C-B349-691A2F573419','411321','南召县','nzx','NANZHAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FC85F005-EB3A-5F1C-B349-691A2F573419','411322','方城县','fcx','FANGCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FC85F005-EB3A-5F1C-B349-691A2F573419','411323','西峡县','xxx','XIXIAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FC85F005-EB3A-5F1C-B349-691A2F573419','411324','镇平县','zpx','ZHENPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FC85F005-EB3A-5F1C-B349-691A2F573419','411325','内乡县','nxx','NEIXIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FC85F005-EB3A-5F1C-B349-691A2F573419','411326','淅川县','xcx','XICHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FC85F005-EB3A-5F1C-B349-691A2F573419','411327','社旗县','sqx','SHEQIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FC85F005-EB3A-5F1C-B349-691A2F573419','411328','唐河县','thx','TANGHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FC85F005-EB3A-5F1C-B349-691A2F573419','411329','新野县','xyx','XINYEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FC85F005-EB3A-5F1C-B349-691A2F573419','411330','桐柏县','tbx','TONGBOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FC85F005-EB3A-5F1C-B349-691A2F573419','411381','邓州市','dzs','DENGZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('9848A4C9-15BA-A56D-FF81-51766871A83B','65F83DD3-E3B8-3E58-C0F4-9B22D87DEE54','411400','商丘市','sqs','SHANGQIUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9848A4C9-15BA-A56D-FF81-51766871A83B','411401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9848A4C9-15BA-A56D-FF81-51766871A83B','411402','梁园区','lyq','LIANGYUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9848A4C9-15BA-A56D-FF81-51766871A83B','411403','睢阳区','syq','SUIYANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9848A4C9-15BA-A56D-FF81-51766871A83B','411421','民权县','mqx','MINQUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9848A4C9-15BA-A56D-FF81-51766871A83B','411422','睢县','sx','SUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9848A4C9-15BA-A56D-FF81-51766871A83B','411423','宁陵县','nlx','NINGLINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9848A4C9-15BA-A56D-FF81-51766871A83B','411424','柘城县','zcx','ZHECHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9848A4C9-15BA-A56D-FF81-51766871A83B','411425','虞城县','ycx','YUCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9848A4C9-15BA-A56D-FF81-51766871A83B','411426','夏邑县','xyx','XIAYIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9848A4C9-15BA-A56D-FF81-51766871A83B','411481','永城市','ycs','YONGCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E2A8FEF9-C7BC-880D-D290-9C0189F83F6B','65F83DD3-E3B8-3E58-C0F4-9B22D87DEE54','411500','信阳市','xys','XINYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E2A8FEF9-C7BC-880D-D290-9C0189F83F6B','411501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E2A8FEF9-C7BC-880D-D290-9C0189F83F6B','411502','师河区','shq','SHIHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E2A8FEF9-C7BC-880D-D290-9C0189F83F6B','411503','平桥区','pqq','PINGQIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E2A8FEF9-C7BC-880D-D290-9C0189F83F6B','411521','罗山县','lsx','LUOSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E2A8FEF9-C7BC-880D-D290-9C0189F83F6B','411522','光山县','gsx','GUANGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E2A8FEF9-C7BC-880D-D290-9C0189F83F6B','411523','新县','xx','XINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E2A8FEF9-C7BC-880D-D290-9C0189F83F6B','411524','商城县','scx','SHANGCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E2A8FEF9-C7BC-880D-D290-9C0189F83F6B','411525','固始县','gsx','GUSHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E2A8FEF9-C7BC-880D-D290-9C0189F83F6B','411526','潢川县','hcx','HUANGCHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E2A8FEF9-C7BC-880D-D290-9C0189F83F6B','411527','淮滨县','hbx','HUAIBINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E2A8FEF9-C7BC-880D-D290-9C0189F83F6B','411528','息县','xx','XIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('A6DE5533-F51C-69C4-3AB3-A79260FE286C','65F83DD3-E3B8-3E58-C0F4-9B22D87DEE54','412700','周口地区','zkdq','ZHOUKOUDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A6DE5533-F51C-69C4-3AB3-A79260FE286C','412701','周口市','zks','ZHOUKOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A6DE5533-F51C-69C4-3AB3-A79260FE286C','412702','项城市','xcs','XIANGCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A6DE5533-F51C-69C4-3AB3-A79260FE286C','412721','扶沟县','fgx','FUGOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A6DE5533-F51C-69C4-3AB3-A79260FE286C','412722','西华县','xhx','XIHUAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A6DE5533-F51C-69C4-3AB3-A79260FE286C','412723','商水县','ssx','SHANGSHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A6DE5533-F51C-69C4-3AB3-A79260FE286C','412724','太康县','tkx','TAIKANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A6DE5533-F51C-69C4-3AB3-A79260FE286C','412725','鹿邑县','lyx','LUYIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A6DE5533-F51C-69C4-3AB3-A79260FE286C','412726','郸城县','dcx','DANCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A6DE5533-F51C-69C4-3AB3-A79260FE286C','412727','淮阳县','hyx','HUAIYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A6DE5533-F51C-69C4-3AB3-A79260FE286C','412728','沈丘县','sqx','SHENQIUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('9C2A9CA3-C375-EC61-4150-82AC270E6C9D','65F83DD3-E3B8-3E58-C0F4-9B22D87DEE54','412800','驻马店地区','zmddq','ZHUMADIANDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9C2A9CA3-C375-EC61-4150-82AC270E6C9D','412801','驻马店市','zmds','ZHUMADIANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9C2A9CA3-C375-EC61-4150-82AC270E6C9D','412821','确山县','qsx','QUESHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9C2A9CA3-C375-EC61-4150-82AC270E6C9D','412822','泌阳县','myx','MIYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9C2A9CA3-C375-EC61-4150-82AC270E6C9D','412823','遂平县','spx','SUIPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9C2A9CA3-C375-EC61-4150-82AC270E6C9D','412824','西平县','xpx','XIPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9C2A9CA3-C375-EC61-4150-82AC270E6C9D','412825','上蔡县','scx','SHANGCAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9C2A9CA3-C375-EC61-4150-82AC270E6C9D','412826','汝南县','rnx','RUNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9C2A9CA3-C375-EC61-4150-82AC270E6C9D','412827','平舆县','pyx','PINGYUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9C2A9CA3-C375-EC61-4150-82AC270E6C9D','412828','新蔡县','xcx','XINCAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9C2A9CA3-C375-EC61-4150-82AC270E6C9D','412829','正阳县','zyx','ZHENGYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--湖北省
INSERT INTO t_data_dictionary_common
VALUES('5500FAD3-F635-00E1-FAD2-605A4983B4E3','9','420000','湖北省','hbs','HUBEISHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('42504A38-AA9A-DE40-F3B4-927F94192D46','5500FAD3-F635-00E1-FAD2-605A4983B4E3','420100','武汉市','whs','WUHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42504A38-AA9A-DE40-F3B4-927F94192D46','420101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42504A38-AA9A-DE40-F3B4-927F94192D46','420102','江岸区','jaq','JIANGANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42504A38-AA9A-DE40-F3B4-927F94192D46','420103','江汉区','jhq','JIANGHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42504A38-AA9A-DE40-F3B4-927F94192D46','420104','乔口区','qkq','QIAOKOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42504A38-AA9A-DE40-F3B4-927F94192D46','420105','汉阳区','hyq','HANYANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42504A38-AA9A-DE40-F3B4-927F94192D46','420106','武昌区','wcq','WUCHANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42504A38-AA9A-DE40-F3B4-927F94192D46','420107','青山区','qsq','QINGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42504A38-AA9A-DE40-F3B4-927F94192D46','420111','洪山区','hsq','HONGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42504A38-AA9A-DE40-F3B4-927F94192D46','420112','东西湖区','dxhq','DONGXIHUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42504A38-AA9A-DE40-F3B4-927F94192D46','420113','汉南区','hnq','HANNANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42504A38-AA9A-DE40-F3B4-927F94192D46','420114','蔡甸区','cdq','CAIDIANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42504A38-AA9A-DE40-F3B4-927F94192D46','420115','江夏区','jxq','JIANGXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42504A38-AA9A-DE40-F3B4-927F94192D46','420116','黄陂区','hpq','HUANGPOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42504A38-AA9A-DE40-F3B4-927F94192D46','420117','新洲区','xzq','XINZHOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('6535C765-3E4B-9810-0832-1EAAD6087734','5500FAD3-F635-00E1-FAD2-605A4983B4E3','420200','黄石市','hss','HUANGSHISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6535C765-3E4B-9810-0832-1EAAD6087734','420201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6535C765-3E4B-9810-0832-1EAAD6087734','420202','黄石港区','hsgq','HUANGSHIGANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6535C765-3E4B-9810-0832-1EAAD6087734','420203','石灰窑区','shyq','SHIHUIYAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6535C765-3E4B-9810-0832-1EAAD6087734','420204','下陆区','xlq','XIALUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6535C765-3E4B-9810-0832-1EAAD6087734','420205','铁山区','tsq','TIESHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6535C765-3E4B-9810-0832-1EAAD6087734','420222','阳新县','yxx','YANGXINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6535C765-3E4B-9810-0832-1EAAD6087734','420281','大冶市','dys','DAYESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('54FD9FBF-94C0-C9A7-9FC7-EC2B8ECBCA7A','5500FAD3-F635-00E1-FAD2-605A4983B4E3','420300','十堰市','sys','SHIYANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'54FD9FBF-94C0-C9A7-9FC7-EC2B8ECBCA7A','420301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'54FD9FBF-94C0-C9A7-9FC7-EC2B8ECBCA7A','420302','茅箭区','mjq','MAOJIANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'54FD9FBF-94C0-C9A7-9FC7-EC2B8ECBCA7A','420303','张湾区','zwq','ZHANGWANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'54FD9FBF-94C0-C9A7-9FC7-EC2B8ECBCA7A','420321','郧县','yx','YUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'54FD9FBF-94C0-C9A7-9FC7-EC2B8ECBCA7A','420322','郧西县','yxx','YUNXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'54FD9FBF-94C0-C9A7-9FC7-EC2B8ECBCA7A','420323','竹山县','zsx','ZHUSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'54FD9FBF-94C0-C9A7-9FC7-EC2B8ECBCA7A','420324','竹溪县','zxx','ZHUXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'54FD9FBF-94C0-C9A7-9FC7-EC2B8ECBCA7A','420325','房县','fx','FANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'54FD9FBF-94C0-C9A7-9FC7-EC2B8ECBCA7A','420381','丹江口市','djks','DANJIANGKOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('8D9C4F67-FD0B-211A-6ED8-A565737A60EA','5500FAD3-F635-00E1-FAD2-605A4983B4E3','420500','宜昌市','ycs','YICHANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D9C4F67-FD0B-211A-6ED8-A565737A60EA','420501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D9C4F67-FD0B-211A-6ED8-A565737A60EA','420502','西陵区','xlq','XILINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D9C4F67-FD0B-211A-6ED8-A565737A60EA','420503','伍家岗区','wjgq','WUJIAGANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D9C4F67-FD0B-211A-6ED8-A565737A60EA','420504','点军区','djq','DIANJUNQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D9C4F67-FD0B-211A-6ED8-A565737A60EA','420505','虎亭区','htq','HUTINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D9C4F67-FD0B-211A-6ED8-A565737A60EA','420521','宜昌县','ycx','YICHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D9C4F67-FD0B-211A-6ED8-A565737A60EA','420525','远安县','yax','YUANANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D9C4F67-FD0B-211A-6ED8-A565737A60EA','420526','兴山县','xsx','XINGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D9C4F67-FD0B-211A-6ED8-A565737A60EA','420527','秭归县','zgx','ZIGUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D9C4F67-FD0B-211A-6ED8-A565737A60EA','420528','长阳土家族自治县','zytjzzzx','ZHANGYANGTUJIAZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D9C4F67-FD0B-211A-6ED8-A565737A60EA','420529','五峰土家族自治县','wftjzzzx','WUFENGTUJIAZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D9C4F67-FD0B-211A-6ED8-A565737A60EA','420581','宜都市','yds','YIDOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D9C4F67-FD0B-211A-6ED8-A565737A60EA','420582','当阳市','dys','DANGYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D9C4F67-FD0B-211A-6ED8-A565737A60EA','420583','枝江市','zjs','ZHIJIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('5A42B8A3-84EB-A825-D915-46344F9E6C13','5500FAD3-F635-00E1-FAD2-605A4983B4E3','420600','襄樊市','xfs','XIANGFANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5A42B8A3-84EB-A825-D915-46344F9E6C13','420601','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5A42B8A3-84EB-A825-D915-46344F9E6C13','420602','襄城区','xcq','XIANGCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5A42B8A3-84EB-A825-D915-46344F9E6C13','420606','樊城区','fcq','FANCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5A42B8A3-84EB-A825-D915-46344F9E6C13','420621','襄阳县','xyx','XIANGYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5A42B8A3-84EB-A825-D915-46344F9E6C13','420624','南漳县','nzx','NANZHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5A42B8A3-84EB-A825-D915-46344F9E6C13','420625','谷城县','gcx','GUCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5A42B8A3-84EB-A825-D915-46344F9E6C13','420626','保康县','bkx','BAOKANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5A42B8A3-84EB-A825-D915-46344F9E6C13','420682','老河口市','lhks','LAOHEKOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5A42B8A3-84EB-A825-D915-46344F9E6C13','420683','枣阳市','zys','ZAOYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5A42B8A3-84EB-A825-D915-46344F9E6C13','420684','宜城市','ycs','YICHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('FB961C9F-519D-312B-5233-32FCE776AECB','5500FAD3-F635-00E1-FAD2-605A4983B4E3','420700','鄂州市','ezs','EZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FB961C9F-519D-312B-5233-32FCE776AECB','420701','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FB961C9F-519D-312B-5233-32FCE776AECB','420702','梁子湖区','lzhq','LIANGZIHUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FB961C9F-519D-312B-5233-32FCE776AECB','420703','华容区','hrq','HUARONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FB961C9F-519D-312B-5233-32FCE776AECB','420704','鄂城区','ecq','ECHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('768FB9D3-DFD1-D504-EEA4-FF972C78C557','5500FAD3-F635-00E1-FAD2-605A4983B4E3','420800','荆门市','jms','JINGMENSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'768FB9D3-DFD1-D504-EEA4-FF972C78C557','420801','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'768FB9D3-DFD1-D504-EEA4-FF972C78C557','420802','东宝区','dbq','DONGBAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'768FB9D3-DFD1-D504-EEA4-FF972C78C557','420821','京山县','jsx','JINGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'768FB9D3-DFD1-D504-EEA4-FF972C78C557','420822','沙洋县','syx','SHAYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'768FB9D3-DFD1-D504-EEA4-FF972C78C557','420881','钟祥市','zxs','ZHONGXIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('9FED290F-79CA-3F38-8C74-38060DAC57C1','5500FAD3-F635-00E1-FAD2-605A4983B4E3','420900','孝感市','xgs','XIAOGANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FED290F-79CA-3F38-8C74-38060DAC57C1','420901','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FED290F-79CA-3F38-8C74-38060DAC57C1','420902','孝南区','xnq','XIAONANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FED290F-79CA-3F38-8C74-38060DAC57C1','420921','孝昌县','xcx','XIAOCHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FED290F-79CA-3F38-8C74-38060DAC57C1','420922','大悟县','dwx','DAWUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FED290F-79CA-3F38-8C74-38060DAC57C1','420923','云梦县','ymx','YUNMENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FED290F-79CA-3F38-8C74-38060DAC57C1','420981','应城市','ycs','YINGCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FED290F-79CA-3F38-8C74-38060DAC57C1','420982','安陆市','als','ANLUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FED290F-79CA-3F38-8C74-38060DAC57C1','420983','广水市','gss','GUANGSHUISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9FED290F-79CA-3F38-8C74-38060DAC57C1','420984','汉川市','hcs','HANCHUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('2198B145-8420-5BD2-BE59-A55BB0E76230','5500FAD3-F635-00E1-FAD2-605A4983B4E3','421000','荆州市','jzs','JINGZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2198B145-8420-5BD2-BE59-A55BB0E76230','421001','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2198B145-8420-5BD2-BE59-A55BB0E76230','421002','沙市区','ssq','SHASHIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2198B145-8420-5BD2-BE59-A55BB0E76230','421003','荆州区','jzq','JINGZHOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2198B145-8420-5BD2-BE59-A55BB0E76230','421022','公安县','gax','GONGANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2198B145-8420-5BD2-BE59-A55BB0E76230','421023','监利县','jlx','JIANLIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2198B145-8420-5BD2-BE59-A55BB0E76230','421024','江陵县','jlx','JIANGLINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2198B145-8420-5BD2-BE59-A55BB0E76230','421081','石首市','sss','SHISHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2198B145-8420-5BD2-BE59-A55BB0E76230','421083','洪湖市','hhs','HONGHUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2198B145-8420-5BD2-BE59-A55BB0E76230','421087','松滋市','szs','SONGZISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('0E1C5352-53F9-F442-A81F-22A2365A6FCD','5500FAD3-F635-00E1-FAD2-605A4983B4E3','421100','黄冈市','hgs','HUANGGANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0E1C5352-53F9-F442-A81F-22A2365A6FCD','421101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0E1C5352-53F9-F442-A81F-22A2365A6FCD','421102','黄州区','hzq','HUANGZHOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0E1C5352-53F9-F442-A81F-22A2365A6FCD','421121','团风县','tfx','TUANFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0E1C5352-53F9-F442-A81F-22A2365A6FCD','421122','红安县','hax','HONGANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0E1C5352-53F9-F442-A81F-22A2365A6FCD','421123','罗田县','ltx','LUOTIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0E1C5352-53F9-F442-A81F-22A2365A6FCD','421124','英山县','ysx','YINGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0E1C5352-53F9-F442-A81F-22A2365A6FCD','421125','浠水县','xsx','XISHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0E1C5352-53F9-F442-A81F-22A2365A6FCD','421126','蕲春县','qcx','QICHUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0E1C5352-53F9-F442-A81F-22A2365A6FCD','421127','黄梅县','hmx','HUANGMEIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0E1C5352-53F9-F442-A81F-22A2365A6FCD','421181','麻城市','mcs','MACHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0E1C5352-53F9-F442-A81F-22A2365A6FCD','421182','武穴市','wxs','WUXUESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('D6253262-D541-F979-234D-51F1277608CC','5500FAD3-F635-00E1-FAD2-605A4983B4E3','421200','咸宁市','xns','XIANNINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6253262-D541-F979-234D-51F1277608CC','421201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6253262-D541-F979-234D-51F1277608CC','421202','咸安区','xaq','XIANANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6253262-D541-F979-234D-51F1277608CC','421221','嘉鱼县','jyx','JIAYUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6253262-D541-F979-234D-51F1277608CC','421222','通城县','tcx','TONGCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6253262-D541-F979-234D-51F1277608CC','421223','崇阳县','cyx','CHONGYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D6253262-D541-F979-234D-51F1277608CC','421224','通山县','tsx','TONGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('DEDA48E7-0A3B-6ABF-A77D-3DC82ED93278','5500FAD3-F635-00E1-FAD2-605A4983B4E3','422800','恩施土家族苗族自治州','estjzmzzzz','ENSHITUJIAZUMIAOZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DEDA48E7-0A3B-6ABF-A77D-3DC82ED93278','422801','恩施县','esx','ENSHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DEDA48E7-0A3B-6ABF-A77D-3DC82ED93278','422802','利川市','lcs','LICHUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DEDA48E7-0A3B-6ABF-A77D-3DC82ED93278','422822','建始县','jsx','JIANSHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DEDA48E7-0A3B-6ABF-A77D-3DC82ED93278','422823','巴东县','bdx','BADONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DEDA48E7-0A3B-6ABF-A77D-3DC82ED93278','422825','宣恩县','xex','XUANENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DEDA48E7-0A3B-6ABF-A77D-3DC82ED93278','422826','咸丰县','xfx','XIANFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DEDA48E7-0A3B-6ABF-A77D-3DC82ED93278','422827','来凤县','lfx','LAIFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DEDA48E7-0A3B-6ABF-A77D-3DC82ED93278','422828','鹤峰县','hfx','HEFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('85F6AFB4-A235-1E3F-E9E9-7FD1D8CDABFB','5500FAD3-F635-00E1-FAD2-605A4983B4E3','429000','湖北省省直辖县级行政单位','hbsszxxjxzdw','HUBEISHENGSHENGZHIXIAXIANJIXINGZHENGDANWEI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'85F6AFB4-A235-1E3F-E9E9-7FD1D8CDABFB','429001','随州市','szs','SUIZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'85F6AFB4-A235-1E3F-E9E9-7FD1D8CDABFB','429004','仙桃市','xts','XIANTAOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'85F6AFB4-A235-1E3F-E9E9-7FD1D8CDABFB','429005','潜江市','qjs','QIANJIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'85F6AFB4-A235-1E3F-E9E9-7FD1D8CDABFB','429006','天门市','tms','TIANMENSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'85F6AFB4-A235-1E3F-E9E9-7FD1D8CDABFB','429021','神农架林区','snjlq','SHENNONGJIALINQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--湖南省
INSERT INTO t_data_dictionary_common
VALUES('E2825AA3-39CF-D58C-CF42-FAD0963A67CF','9','430000','湖南省','hns','HUNANSHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('416EA2B2-A9DF-7304-DF35-135DB9DBC680','E2825AA3-39CF-D58C-CF42-FAD0963A67CF','430100','长沙市','zss','ZHANGSHASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'416EA2B2-A9DF-7304-DF35-135DB9DBC680','430101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'416EA2B2-A9DF-7304-DF35-135DB9DBC680','430102','芙蓉区','frq','FURONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'416EA2B2-A9DF-7304-DF35-135DB9DBC680','430103','天心区','txq','TIANXINQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'416EA2B2-A9DF-7304-DF35-135DB9DBC680','430104','岳麓区','ylq','YUELUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'416EA2B2-A9DF-7304-DF35-135DB9DBC680','430105','开福区','kfq','KAIFUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'416EA2B2-A9DF-7304-DF35-135DB9DBC680','430111','雨花区','yhq','YUHUAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'416EA2B2-A9DF-7304-DF35-135DB9DBC680','430121','长沙县','zsx','ZHANGSHAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'416EA2B2-A9DF-7304-DF35-135DB9DBC680','430122','望城县','wcx','WANGCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'416EA2B2-A9DF-7304-DF35-135DB9DBC680','430124','宁乡县','nxx','NINGXIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'416EA2B2-A9DF-7304-DF35-135DB9DBC680','430181','浏阳市','lys','LIUYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('0A770314-CB70-4C73-0841-1AEAC6C2DDA7','E2825AA3-39CF-D58C-CF42-FAD0963A67CF','430200','株洲市','zzs','ZHUZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A770314-CB70-4C73-0841-1AEAC6C2DDA7','430201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A770314-CB70-4C73-0841-1AEAC6C2DDA7','430202','荷塘区','htq','HETANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A770314-CB70-4C73-0841-1AEAC6C2DDA7','430203','芦淞区','lsq','LUSONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A770314-CB70-4C73-0841-1AEAC6C2DDA7','430204','石峰区','sfq','SHIFENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A770314-CB70-4C73-0841-1AEAC6C2DDA7','430211','天元区','tyq','TIANYUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A770314-CB70-4C73-0841-1AEAC6C2DDA7','430221','株洲县','zzx','ZHUZHOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A770314-CB70-4C73-0841-1AEAC6C2DDA7','430223','攸县','yx','YOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A770314-CB70-4C73-0841-1AEAC6C2DDA7','430224','茶陵县','clx','CHALINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A770314-CB70-4C73-0841-1AEAC6C2DDA7','430225','炎陵县','ylx','YANLINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0A770314-CB70-4C73-0841-1AEAC6C2DDA7','430281','醴陵市','lls','LILINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('F0C1DC74-1C5F-2301-5CD3-AD6C218E65C1','E2825AA3-39CF-D58C-CF42-FAD0963A67CF','430300','湘潭市','xts','XIANGTANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0C1DC74-1C5F-2301-5CD3-AD6C218E65C1','430301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0C1DC74-1C5F-2301-5CD3-AD6C218E65C1','430302','雨湖区','yhq','YUHUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0C1DC74-1C5F-2301-5CD3-AD6C218E65C1','430304','岳塘区','ytq','YUETANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0C1DC74-1C5F-2301-5CD3-AD6C218E65C1','430321','湘潭县','xtx','XIANGTANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0C1DC74-1C5F-2301-5CD3-AD6C218E65C1','430381','湘乡市','xxs','XIANGXIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0C1DC74-1C5F-2301-5CD3-AD6C218E65C1','430382','韶山市','sss','SHAOSHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('CC90CB14-8FA7-480E-62BD-FD2AF11FC606','E2825AA3-39CF-D58C-CF42-FAD0963A67CF','430400','衡阳市','hys','HENGYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'CC90CB14-8FA7-480E-62BD-FD2AF11FC606','430401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'CC90CB14-8FA7-480E-62BD-FD2AF11FC606','430402','江东区','jdq','JIANGDONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'CC90CB14-8FA7-480E-62BD-FD2AF11FC606','430403','城南区','cnq','CHENGNANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'CC90CB14-8FA7-480E-62BD-FD2AF11FC606','430404','城北区','cbq','CHENGBEIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'CC90CB14-8FA7-480E-62BD-FD2AF11FC606','430411','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'CC90CB14-8FA7-480E-62BD-FD2AF11FC606','430412','南岳区','nyq','NANYUEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'CC90CB14-8FA7-480E-62BD-FD2AF11FC606','430421','衡阳县','hyx','HENGYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'CC90CB14-8FA7-480E-62BD-FD2AF11FC606','430422','衡南县','hnx','HENGNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'CC90CB14-8FA7-480E-62BD-FD2AF11FC606','430423','衡山县','hsx','HENGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'CC90CB14-8FA7-480E-62BD-FD2AF11FC606','430424','衡东县','hdx','HENGDONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'CC90CB14-8FA7-480E-62BD-FD2AF11FC606','430426','祁东县','qdx','QIDONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'CC90CB14-8FA7-480E-62BD-FD2AF11FC606','430481','耒阳市','lys','LEIYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'CC90CB14-8FA7-480E-62BD-FD2AF11FC606','430482','常宁市','cns','CHANGNINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('A36F0219-F622-40A6-BECC-E8A22F386704','E2825AA3-39CF-D58C-CF42-FAD0963A67CF','430500','邵阳市','sys','SHAOYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A36F0219-F622-40A6-BECC-E8A22F386704','430501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A36F0219-F622-40A6-BECC-E8A22F386704','430502','双清区','sqq','SHUANGQINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A36F0219-F622-40A6-BECC-E8A22F386704','430503','大祥区','dxq','DAXIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A36F0219-F622-40A6-BECC-E8A22F386704','430511','北塔区','btq','BEITAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A36F0219-F622-40A6-BECC-E8A22F386704','430521','邵东县','sdx','SHAODONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A36F0219-F622-40A6-BECC-E8A22F386704','430522','新邵县','xsx','XINSHAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A36F0219-F622-40A6-BECC-E8A22F386704','430523','邵阳县','syx','SHAOYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A36F0219-F622-40A6-BECC-E8A22F386704','430524','隆回县','lhx','LONGHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A36F0219-F622-40A6-BECC-E8A22F386704','430525','洞口县','dkx','DONGKOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A36F0219-F622-40A6-BECC-E8A22F386704','430527','绥宁县','snx','SUININGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A36F0219-F622-40A6-BECC-E8A22F386704','430528','新宁县','xnx','XINNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A36F0219-F622-40A6-BECC-E8A22F386704','430529','城步苗族自治县','cbmzzzx','CHENGBUMIAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A36F0219-F622-40A6-BECC-E8A22F386704','430581','武冈市','wgs','WUGANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('4ECD5823-2CB0-4DEF-6C81-40A78A2A633E','E2825AA3-39CF-D58C-CF42-FAD0963A67CF','430600','岳阳市','yys','YUEYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4ECD5823-2CB0-4DEF-6C81-40A78A2A633E','430601','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4ECD5823-2CB0-4DEF-6C81-40A78A2A633E','430602','岳阳楼区','yylq','YUEYANGLOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4ECD5823-2CB0-4DEF-6C81-40A78A2A633E','430603','云溪区','yxq','YUNXIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4ECD5823-2CB0-4DEF-6C81-40A78A2A633E','430611','君山区','jsq','JUNSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4ECD5823-2CB0-4DEF-6C81-40A78A2A633E','430621','岳阳县','yyx','YUEYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4ECD5823-2CB0-4DEF-6C81-40A78A2A633E','430623','华容县','hrx','HUARONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4ECD5823-2CB0-4DEF-6C81-40A78A2A633E','430624','湘阴县','xyx','XIANGYINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4ECD5823-2CB0-4DEF-6C81-40A78A2A633E','430626','平江县','pjx','PINGJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4ECD5823-2CB0-4DEF-6C81-40A78A2A633E','430681','汨罗市','mls','MILUOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4ECD5823-2CB0-4DEF-6C81-40A78A2A633E','430682','临湘市','lxs','LINXIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('30F7DC87-6B40-B6BB-9DC5-6B73E4B0632F','E2825AA3-39CF-D58C-CF42-FAD0963A67CF','430700','常德市','cds','CHANGDESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'30F7DC87-6B40-B6BB-9DC5-6B73E4B0632F','430701','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'30F7DC87-6B40-B6BB-9DC5-6B73E4B0632F','430702','武陵区','wlq','WULINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'30F7DC87-6B40-B6BB-9DC5-6B73E4B0632F','430703','鼎城区','dcq','DINGCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'30F7DC87-6B40-B6BB-9DC5-6B73E4B0632F','430721','安乡县','axx','ANXIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'30F7DC87-6B40-B6BB-9DC5-6B73E4B0632F','430722','汉寿县','hsx','HANSHOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'30F7DC87-6B40-B6BB-9DC5-6B73E4B0632F','430723','澧县','lx','LIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'30F7DC87-6B40-B6BB-9DC5-6B73E4B0632F','430724','临澧县','llx','LINLIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'30F7DC87-6B40-B6BB-9DC5-6B73E4B0632F','430725','桃源县','tyx','TAOYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'30F7DC87-6B40-B6BB-9DC5-6B73E4B0632F','430726','石门县','smx','SHIMENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'30F7DC87-6B40-B6BB-9DC5-6B73E4B0632F','430781','津市市','jss','JINSHISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('6872822F-ED09-FA43-75A6-677794C53297','E2825AA3-39CF-D58C-CF42-FAD0963A67CF','430800','张家界市','zjjs','ZHANGJIAJIESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6872822F-ED09-FA43-75A6-677794C53297','430801','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6872822F-ED09-FA43-75A6-677794C53297','430802','永定区','ydq','YONGDINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6872822F-ED09-FA43-75A6-677794C53297','430811','武陵源区','wlyq','WULINGYUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6872822F-ED09-FA43-75A6-677794C53297','430821','慈利县','clx','CILIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6872822F-ED09-FA43-75A6-677794C53297','430822','桑植县','szx','SANGZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('280BD573-FF8A-D125-9B8C-F78DEA2DDE2E','E2825AA3-39CF-D58C-CF42-FAD0963A67CF','430900','益阳市','yys','YIYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'280BD573-FF8A-D125-9B8C-F78DEA2DDE2E','430901','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'280BD573-FF8A-D125-9B8C-F78DEA2DDE2E','430902','资阳区','zyq','ZIYANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'280BD573-FF8A-D125-9B8C-F78DEA2DDE2E','430903','赫山区','hsq','HESHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'280BD573-FF8A-D125-9B8C-F78DEA2DDE2E','430921','南县','nx','NANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'280BD573-FF8A-D125-9B8C-F78DEA2DDE2E','430922','桃江县','tjx','TAOJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'280BD573-FF8A-D125-9B8C-F78DEA2DDE2E','430923','安化县','ahx','ANHUAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'280BD573-FF8A-D125-9B8C-F78DEA2DDE2E','430981','沅江市','yjs','YUANJIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('70E0D7F9-1E3C-49C5-4001-362B27FA603A','E2825AA3-39CF-D58C-CF42-FAD0963A67CF','431000','郴州市','czs','CHENZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'70E0D7F9-1E3C-49C5-4001-362B27FA603A','431001','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'70E0D7F9-1E3C-49C5-4001-362B27FA603A','431002','北湖区','bhq','BEIHUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'70E0D7F9-1E3C-49C5-4001-362B27FA603A','431003','苏仙区','sxq','SUXIANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'70E0D7F9-1E3C-49C5-4001-362B27FA603A','431021','桂阳县','gyx','GUIYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'70E0D7F9-1E3C-49C5-4001-362B27FA603A','431022','宜章县','yzx','YIZHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'70E0D7F9-1E3C-49C5-4001-362B27FA603A','431023','永兴县','yxx','YONGXINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'70E0D7F9-1E3C-49C5-4001-362B27FA603A','431024','嘉禾县','jhx','JIAHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'70E0D7F9-1E3C-49C5-4001-362B27FA603A','431025','临武县','lwx','LINWUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'70E0D7F9-1E3C-49C5-4001-362B27FA603A','431026','汝城县','rcx','RUCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'70E0D7F9-1E3C-49C5-4001-362B27FA603A','431027','桂东县','gdx','GUIDONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'70E0D7F9-1E3C-49C5-4001-362B27FA603A','431028','安仁县','arx','ANRENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'70E0D7F9-1E3C-49C5-4001-362B27FA603A','431081','资兴市','zxs','ZIXINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('3C920A1B-E147-0A99-9689-6D6C87C5930A','E2825AA3-39CF-D58C-CF42-FAD0963A67CF','431100','永州市','yzs','YONGZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C920A1B-E147-0A99-9689-6D6C87C5930A','431101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C920A1B-E147-0A99-9689-6D6C87C5930A','431102','芝山区','zsq','ZHISHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C920A1B-E147-0A99-9689-6D6C87C5930A','431103','冷水滩区','lstq','LENGSHUITANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C920A1B-E147-0A99-9689-6D6C87C5930A','431121','祁阳县','qyx','QIYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C920A1B-E147-0A99-9689-6D6C87C5930A','431122','东安县','dax','DONGANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C920A1B-E147-0A99-9689-6D6C87C5930A','431123','双牌县','spx','SHUANGPAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C920A1B-E147-0A99-9689-6D6C87C5930A','431124','道县','dx','DAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C920A1B-E147-0A99-9689-6D6C87C5930A','431125','江永县','jyx','JIANGYONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C920A1B-E147-0A99-9689-6D6C87C5930A','431126','宁远县','nyx','NINGYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C920A1B-E147-0A99-9689-6D6C87C5930A','431127','蓝山县','lsx','LANSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C920A1B-E147-0A99-9689-6D6C87C5930A','431128','新田县','xtx','XINTIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3C920A1B-E147-0A99-9689-6D6C87C5930A','431129','江华瑶族自治县','jhyzzzx','JIANGHUAYAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('4FCF9FFC-FE5B-3346-63A1-A146C28ED06F','E2825AA3-39CF-D58C-CF42-FAD0963A67CF','431200','怀化市','hhs','HUAIHUASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4FCF9FFC-FE5B-3346-63A1-A146C28ED06F','431201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4FCF9FFC-FE5B-3346-63A1-A146C28ED06F','431202','鹤城区','hcq','HECHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4FCF9FFC-FE5B-3346-63A1-A146C28ED06F','431221','中方县','zfx','ZHONGFANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4FCF9FFC-FE5B-3346-63A1-A146C28ED06F','431222','沅陵县','ylx','YUANLINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4FCF9FFC-FE5B-3346-63A1-A146C28ED06F','431223','辰溪县','cxx','CHENXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4FCF9FFC-FE5B-3346-63A1-A146C28ED06F','431224','溆浦县','xpx','XUPUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4FCF9FFC-FE5B-3346-63A1-A146C28ED06F','431225','会同县','htx','HUITONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4FCF9FFC-FE5B-3346-63A1-A146C28ED06F','431226','麻阳苗族自治县','mymzzzx','MAYANGMIAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4FCF9FFC-FE5B-3346-63A1-A146C28ED06F','431227','新晃侗族自治县','xhdzzzx','XINHUANGDONGZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4FCF9FFC-FE5B-3346-63A1-A146C28ED06F','431228','芷江侗族自治县','zjdzzzx','ZHIJIANGDONGZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4FCF9FFC-FE5B-3346-63A1-A146C28ED06F','431229','靖州苗族侗族自治县','jzmzdzzzx','JINGZHOUMIAOZUDONGZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4FCF9FFC-FE5B-3346-63A1-A146C28ED06F','431230','通道侗族自治县','tddzzzx','TONGDAODONGZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4FCF9FFC-FE5B-3346-63A1-A146C28ED06F','431281','洪江市','hjs','HONGJIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('67900FE9-C0D9-DF30-CB8E-6D5EFBD23474','E2825AA3-39CF-D58C-CF42-FAD0963A67CF','432500','娄底地区','lddq','LOUDIDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'67900FE9-C0D9-DF30-CB8E-6D5EFBD23474','432501','娄底市','lds','LOUDISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'67900FE9-C0D9-DF30-CB8E-6D5EFBD23474','432502','冷水江市','lsjs','LENGSHUIJIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'67900FE9-C0D9-DF30-CB8E-6D5EFBD23474','432503','涟源市','lys','LIANYUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'67900FE9-C0D9-DF30-CB8E-6D5EFBD23474','432522','双峰县','sfx','SHUANGFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'67900FE9-C0D9-DF30-CB8E-6D5EFBD23474','432524','新化县','xhx','XINHUAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('C53FF3F6-364D-1CB8-AE42-1B92B2EC2B8D','E2825AA3-39CF-D58C-CF42-FAD0963A67CF','433100','湘西土家族苗族自治州','xxtjzmzzzz','XIANGXITUJIAZUMIAOZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C53FF3F6-364D-1CB8-AE42-1B92B2EC2B8D','433101','吉首市','jss','JISHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C53FF3F6-364D-1CB8-AE42-1B92B2EC2B8D','433122','泸溪县','lxx','LUXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C53FF3F6-364D-1CB8-AE42-1B92B2EC2B8D','433123','凤凰县','fhx','FENGHUANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C53FF3F6-364D-1CB8-AE42-1B92B2EC2B8D','433124','花垣县','hyx','HUAYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C53FF3F6-364D-1CB8-AE42-1B92B2EC2B8D','433125','保靖县','bjx','BAOJINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C53FF3F6-364D-1CB8-AE42-1B92B2EC2B8D','433126','古丈县','gzx','GUZHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C53FF3F6-364D-1CB8-AE42-1B92B2EC2B8D','433127','永顺县','ysx','YONGSHUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C53FF3F6-364D-1CB8-AE42-1B92B2EC2B8D','433130','龙山县','lsx','LONGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--广东省
INSERT INTO t_data_dictionary_common
VALUES('84800E6D-34DB-4E9F-5B78-66379CA94EA4','9','440000','广东省','gds','GUANGDONGSHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('669A4BBD-FDDA-8E65-FC7E-2753A89B5F6C','84800E6D-34DB-4E9F-5B78-66379CA94EA4','440100','广州市','gzs','GUANGZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'669A4BBD-FDDA-8E65-FC7E-2753A89B5F6C','440101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'669A4BBD-FDDA-8E65-FC7E-2753A89B5F6C','440102','东山区','dsq','DONGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'669A4BBD-FDDA-8E65-FC7E-2753A89B5F6C','440103','荔湾区','lwq','LIWANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'669A4BBD-FDDA-8E65-FC7E-2753A89B5F6C','440104','越秀区','yxq','YUEXIUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'669A4BBD-FDDA-8E65-FC7E-2753A89B5F6C','440105','海珠区','hzq','HAIZHUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'669A4BBD-FDDA-8E65-FC7E-2753A89B5F6C','440106','天河区','thq','TIANHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'669A4BBD-FDDA-8E65-FC7E-2753A89B5F6C','440107','芳村区','fcq','FANGCUNQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'669A4BBD-FDDA-8E65-FC7E-2753A89B5F6C','440111','白云区','byq','BAIYUNQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'669A4BBD-FDDA-8E65-FC7E-2753A89B5F6C','440112','黄埔区','hpq','HUANGPUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'669A4BBD-FDDA-8E65-FC7E-2753A89B5F6C','440181','番禺市','fys','FANYUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'669A4BBD-FDDA-8E65-FC7E-2753A89B5F6C','440182','花都市','hds','HUADOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'669A4BBD-FDDA-8E65-FC7E-2753A89B5F6C','440183','增城市','zcs','ZENGCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'669A4BBD-FDDA-8E65-FC7E-2753A89B5F6C','440184','从化市','chs','CONGHUASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('81DC1B98-EA65-E349-2516-ADEEC3D71975','84800E6D-34DB-4E9F-5B78-66379CA94EA4','440200','韶关市','sgs','SHAOGUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81DC1B98-EA65-E349-2516-ADEEC3D71975','440201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81DC1B98-EA65-E349-2516-ADEEC3D71975','440202','北江区','bjq','BEIJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81DC1B98-EA65-E349-2516-ADEEC3D71975','440203','武江区','wjq','WUJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81DC1B98-EA65-E349-2516-ADEEC3D71975','440204','浈江区','zjq','ZHENJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81DC1B98-EA65-E349-2516-ADEEC3D71975','440221','曲江县','qjx','QUJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81DC1B98-EA65-E349-2516-ADEEC3D71975','440222','始兴县','sxx','SHIXINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81DC1B98-EA65-E349-2516-ADEEC3D71975','440224','仁化县','rhx','RENHUAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81DC1B98-EA65-E349-2516-ADEEC3D71975','440229','翁源县','wyx','WENGYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81DC1B98-EA65-E349-2516-ADEEC3D71975','440232','乳源瑶族自治县','ryyzzzx','RUYUANYAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81DC1B98-EA65-E349-2516-ADEEC3D71975','440233','新丰县','xfx','XINFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81DC1B98-EA65-E349-2516-ADEEC3D71975','440281','乐昌市','lcs','LECHANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'81DC1B98-EA65-E349-2516-ADEEC3D71975','440282','南雄市','nxs','NANXIONGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('C8A8BDF9-5E41-BB52-5D15-62DEDC674098','84800E6D-34DB-4E9F-5B78-66379CA94EA4','440300','深圳市','szs','SHENZHENSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C8A8BDF9-5E41-BB52-5D15-62DEDC674098','440301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C8A8BDF9-5E41-BB52-5D15-62DEDC674098','440303','罗湖区','lhq','LUOHUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C8A8BDF9-5E41-BB52-5D15-62DEDC674098','440304','福田区','ftq','FUTIANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C8A8BDF9-5E41-BB52-5D15-62DEDC674098','440305','南山区','nsq','NANSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C8A8BDF9-5E41-BB52-5D15-62DEDC674098','440306','宝安区','baq','BAOANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C8A8BDF9-5E41-BB52-5D15-62DEDC674098','440307','龙岗区','lgq','LONGGANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C8A8BDF9-5E41-BB52-5D15-62DEDC674098','440308','盐田区','ytq','YANTIANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('565BECB4-6534-C19C-1E8A-7E10CD21AEB2','84800E6D-34DB-4E9F-5B78-66379CA94EA4','440400','珠海市','zhs','ZHUHAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'565BECB4-6534-C19C-1E8A-7E10CD21AEB2','440401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'565BECB4-6534-C19C-1E8A-7E10CD21AEB2','440402','香洲区','xzq','XIANGZHOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'565BECB4-6534-C19C-1E8A-7E10CD21AEB2','440421','斗门县','dmx','DOUMENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('0B04C58B-F67A-C33C-7918-58C409A9D689','84800E6D-34DB-4E9F-5B78-66379CA94EA4','440500','汕头市','sts','SHANTOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0B04C58B-F67A-C33C-7918-58C409A9D689','440501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0B04C58B-F67A-C33C-7918-58C409A9D689','440506','达濠区','dhq','DAHAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0B04C58B-F67A-C33C-7918-58C409A9D689','440507','龙湖区','lhq','LONGHUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0B04C58B-F67A-C33C-7918-58C409A9D689','440508','金园区','jyq','JINYUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0B04C58B-F67A-C33C-7918-58C409A9D689','440509','升平区','spq','SHENGPINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0B04C58B-F67A-C33C-7918-58C409A9D689','440510','河浦区','hpq','HEPUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0B04C58B-F67A-C33C-7918-58C409A9D689','440523','南澳县','nax','NANAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0B04C58B-F67A-C33C-7918-58C409A9D689','440582','潮阳市','cys','CHAOYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0B04C58B-F67A-C33C-7918-58C409A9D689','440583','澄海市','chs','CHENGHAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('8D3646D6-C14F-9430-14FA-6A59BCA4D512','84800E6D-34DB-4E9F-5B78-66379CA94EA4','440600','佛山市','fss','FOSHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D3646D6-C14F-9430-14FA-6A59BCA4D512','440601','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D3646D6-C14F-9430-14FA-6A59BCA4D512','440602','城区','cq','CHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D3646D6-C14F-9430-14FA-6A59BCA4D512','440603','石湾区','swq','SHIWANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D3646D6-C14F-9430-14FA-6A59BCA4D512','440681','顺德市','sds','SHUNDESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D3646D6-C14F-9430-14FA-6A59BCA4D512','440682','南海市','nhs','NANHAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D3646D6-C14F-9430-14FA-6A59BCA4D512','440683','三水市','sss','SANSHUISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8D3646D6-C14F-9430-14FA-6A59BCA4D512','440684','高明市','gms','GAOMINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E38DEE0E-7AC2-DC5C-AB08-7341982DA8B3','84800E6D-34DB-4E9F-5B78-66379CA94EA4','440700','江门市','jms','JIANGMENSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E38DEE0E-7AC2-DC5C-AB08-7341982DA8B3','440701','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E38DEE0E-7AC2-DC5C-AB08-7341982DA8B3','440703','蓬江区','pjq','PENGJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E38DEE0E-7AC2-DC5C-AB08-7341982DA8B3','440704','江海区','jhq','JIANGHAIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E38DEE0E-7AC2-DC5C-AB08-7341982DA8B3','440781','台山市','tss','TAISHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E38DEE0E-7AC2-DC5C-AB08-7341982DA8B3','440782','新会市','xhs','XINHUISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E38DEE0E-7AC2-DC5C-AB08-7341982DA8B3','440783','开平市','kps','KAIPINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E38DEE0E-7AC2-DC5C-AB08-7341982DA8B3','440784','鹤山市','hss','HESHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E38DEE0E-7AC2-DC5C-AB08-7341982DA8B3','440785','恩平市','eps','ENPINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('4B84CC51-B847-CC9D-AC3A-746D9CB16611','84800E6D-34DB-4E9F-5B78-66379CA94EA4','440800','湛江市','zjs','ZHANJIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4B84CC51-B847-CC9D-AC3A-746D9CB16611','440801','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4B84CC51-B847-CC9D-AC3A-746D9CB16611','440802','赤坎区','ckq','CHIKANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4B84CC51-B847-CC9D-AC3A-746D9CB16611','440803','霞山区','xsq','XIASHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4B84CC51-B847-CC9D-AC3A-746D9CB16611','440804','坡头区','ptq','POTOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4B84CC51-B847-CC9D-AC3A-746D9CB16611','440811','麻章区','mzq','MAZHANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4B84CC51-B847-CC9D-AC3A-746D9CB16611','440823','遂溪县','sxx','SUIXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4B84CC51-B847-CC9D-AC3A-746D9CB16611','440825','徐闻县','xwx','XUWENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4B84CC51-B847-CC9D-AC3A-746D9CB16611','440881','廉江市','ljs','LIANJIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4B84CC51-B847-CC9D-AC3A-746D9CB16611','440882','雷州市','lzs','LEIZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4B84CC51-B847-CC9D-AC3A-746D9CB16611','440883','吴川市','wcs','WUCHUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('92508A8C-478C-1D33-087F-700E51A09572','84800E6D-34DB-4E9F-5B78-66379CA94EA4','440900','茂名市','mms','MAOMINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92508A8C-478C-1D33-087F-700E51A09572','440901','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92508A8C-478C-1D33-087F-700E51A09572','440902','茂南区','mnq','MAONANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92508A8C-478C-1D33-087F-700E51A09572','440923','电白县','dbx','DIANBAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92508A8C-478C-1D33-087F-700E51A09572','440981','高州市','gzs','GAOZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92508A8C-478C-1D33-087F-700E51A09572','440982','化州市','hzs','HUAZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92508A8C-478C-1D33-087F-700E51A09572','440983','信宜市','xys','XINYISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('BBE6FB96-A5E2-49F7-86B7-B20D41FE6024','84800E6D-34DB-4E9F-5B78-66379CA94EA4','441200','肇庆市','zqs','ZHAOQINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BBE6FB96-A5E2-49F7-86B7-B20D41FE6024','441201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BBE6FB96-A5E2-49F7-86B7-B20D41FE6024','441202','端州区','dzq','DUANZHOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BBE6FB96-A5E2-49F7-86B7-B20D41FE6024','441203','鼎湖区','dhq','DINGHUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BBE6FB96-A5E2-49F7-86B7-B20D41FE6024','441223','广宁县','gnx','GUANGNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BBE6FB96-A5E2-49F7-86B7-B20D41FE6024','441224','怀集县','hjx','HUAIJIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BBE6FB96-A5E2-49F7-86B7-B20D41FE6024','441225','封开县','fkx','FENGKAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BBE6FB96-A5E2-49F7-86B7-B20D41FE6024','441226','德庆县','dqx','DEQINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BBE6FB96-A5E2-49F7-86B7-B20D41FE6024','441283','高要市','gys','GAOYAOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BBE6FB96-A5E2-49F7-86B7-B20D41FE6024','441284','四会市','shs','SIHUISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('85E5832A-E7D6-6D09-6683-1F9EEB9BB6CB','84800E6D-34DB-4E9F-5B78-66379CA94EA4','441300','惠州市','hzs','HUIZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'85E5832A-E7D6-6D09-6683-1F9EEB9BB6CB','441301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'85E5832A-E7D6-6D09-6683-1F9EEB9BB6CB','441302','惠城区','hcq','HUICHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'85E5832A-E7D6-6D09-6683-1F9EEB9BB6CB','441322','博罗县','blx','BOLUOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'85E5832A-E7D6-6D09-6683-1F9EEB9BB6CB','441323','惠东县','hdx','HUIDONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'85E5832A-E7D6-6D09-6683-1F9EEB9BB6CB','441324','龙门县','lmx','LONGMENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'85E5832A-E7D6-6D09-6683-1F9EEB9BB6CB','441381','惠阳市','hys','HUIYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('11C745EC-BE43-FB4A-5442-35AC2EF86052','84800E6D-34DB-4E9F-5B78-66379CA94EA4','441400','梅州市','mzs','MEIZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11C745EC-BE43-FB4A-5442-35AC2EF86052','441401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11C745EC-BE43-FB4A-5442-35AC2EF86052','441402','梅江区','mjq','MEIJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11C745EC-BE43-FB4A-5442-35AC2EF86052','441421','梅县','mx','MEIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11C745EC-BE43-FB4A-5442-35AC2EF86052','441422','大埔县','dpx','DAPUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11C745EC-BE43-FB4A-5442-35AC2EF86052','441423','丰顺县','fsx','FENGSHUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11C745EC-BE43-FB4A-5442-35AC2EF86052','441424','五华县','whx','WUHUAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11C745EC-BE43-FB4A-5442-35AC2EF86052','441426','平远县','pyx','PINGYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11C745EC-BE43-FB4A-5442-35AC2EF86052','441427','蕉岭县','jlx','JIAOLINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'11C745EC-BE43-FB4A-5442-35AC2EF86052','441481','兴宁市','xns','XINGNINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('A7E223D5-F300-A77F-DBAD-5B7CB55E96EF','84800E6D-34DB-4E9F-5B78-66379CA94EA4','441500','汕尾市','sws','SHANWEISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A7E223D5-F300-A77F-DBAD-5B7CB55E96EF','441501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A7E223D5-F300-A77F-DBAD-5B7CB55E96EF','441502','城区','cq','CHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A7E223D5-F300-A77F-DBAD-5B7CB55E96EF','441521','海丰县','hfx','HAIFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A7E223D5-F300-A77F-DBAD-5B7CB55E96EF','441523','陆河县','lhx','LUHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A7E223D5-F300-A77F-DBAD-5B7CB55E96EF','441581','陆丰市','lfs','LUFENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('F010B0B1-31B9-D151-D2AE-45DE094DA9B4','84800E6D-34DB-4E9F-5B78-66379CA94EA4','441600','河源市','hys','HEYUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F010B0B1-31B9-D151-D2AE-45DE094DA9B4','441601','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F010B0B1-31B9-D151-D2AE-45DE094DA9B4','441602','源城区','ycq','YUANCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F010B0B1-31B9-D151-D2AE-45DE094DA9B4','441621','紫金县','zjx','ZIJINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F010B0B1-31B9-D151-D2AE-45DE094DA9B4','441622','龙川县','lcx','LONGCHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F010B0B1-31B9-D151-D2AE-45DE094DA9B4','441623','连平县','lpx','LIANPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F010B0B1-31B9-D151-D2AE-45DE094DA9B4','441624','和平县','hpx','HEPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F010B0B1-31B9-D151-D2AE-45DE094DA9B4','441625','东源县','dyx','DONGYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('CF526177-18F8-15F1-D45C-BD96B74E7FCC','84800E6D-34DB-4E9F-5B78-66379CA94EA4','441700','阳江市','yjs','YANGJIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'CF526177-18F8-15F1-D45C-BD96B74E7FCC','441701','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'CF526177-18F8-15F1-D45C-BD96B74E7FCC','441702','江城区','jcq','JIANGCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'CF526177-18F8-15F1-D45C-BD96B74E7FCC','441721','阳西县','yxx','YANGXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'CF526177-18F8-15F1-D45C-BD96B74E7FCC','441723','阳东县','ydx','YANGDONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'CF526177-18F8-15F1-D45C-BD96B74E7FCC','441781','阳春市','ycs','YANGCHUNSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('45A351A7-2F73-3A35-E292-53AAFE4DBD2D','84800E6D-34DB-4E9F-5B78-66379CA94EA4','441800','清远市','qys','QINGYUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45A351A7-2F73-3A35-E292-53AAFE4DBD2D','441801','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45A351A7-2F73-3A35-E292-53AAFE4DBD2D','441802','清城区','qcq','QINGCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45A351A7-2F73-3A35-E292-53AAFE4DBD2D','441821','佛冈县','fgx','FOGANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45A351A7-2F73-3A35-E292-53AAFE4DBD2D','441823','阳山县','ysx','YANGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45A351A7-2F73-3A35-E292-53AAFE4DBD2D','441825','连山壮族瑶族自治县','lszzyzzzx','LIANSHANZHUANGZUYAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45A351A7-2F73-3A35-E292-53AAFE4DBD2D','441826','连南瑶族自治县','lnyzzzx','LIANNANYAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45A351A7-2F73-3A35-E292-53AAFE4DBD2D','441827','清新县','qxx','QINGXINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45A351A7-2F73-3A35-E292-53AAFE4DBD2D','441881','英德市','yds','YINGDESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'45A351A7-2F73-3A35-E292-53AAFE4DBD2D','441882','连州市','lzs','LIANZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('AD8FFA86-0E49-813F-AFB1-44045378AE90','84800E6D-34DB-4E9F-5B78-66379CA94EA4','441900 ','东莞市','dgs','DONGGUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AD8FFA86-0E49-813F-AFB1-44045378AE90','441901','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('4E1ED413-1935-DFBF-3CFA-1089B8686F6F','84800E6D-34DB-4E9F-5B78-66379CA94EA4','442000','中山市','zss','ZHONGSHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4E1ED413-1935-DFBF-3CFA-1089B8686F6F','442001','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('7D43CFF4-305A-A349-EC03-99A9F0BEA009','84800E6D-34DB-4E9F-5B78-66379CA94EA4','445100','潮州市','czs','CHAOZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7D43CFF4-305A-A349-EC03-99A9F0BEA009','445101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7D43CFF4-305A-A349-EC03-99A9F0BEA009','445102','湘桥区','xqq','XIANGQIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7D43CFF4-305A-A349-EC03-99A9F0BEA009','445121','潮安县','cax','CHAOANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7D43CFF4-305A-A349-EC03-99A9F0BEA009','445122','饶平县','rpx','RAOPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('A8CA1EF8-08D4-AF71-4D1D-5C6962156AC2','84800E6D-34DB-4E9F-5B78-66379CA94EA4','445200','揭阳市','jys','JIEYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A8CA1EF8-08D4-AF71-4D1D-5C6962156AC2','445201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A8CA1EF8-08D4-AF71-4D1D-5C6962156AC2','445202','榕城区','rcq','RONGCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A8CA1EF8-08D4-AF71-4D1D-5C6962156AC2','445221','揭东县','jdx','JIEDONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A8CA1EF8-08D4-AF71-4D1D-5C6962156AC2','445222','揭西县','jxx','JIEXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A8CA1EF8-08D4-AF71-4D1D-5C6962156AC2','445224','惠来县','hlx','HUILAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A8CA1EF8-08D4-AF71-4D1D-5C6962156AC2','445281','普宁市','pns','PUNINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('6AF1DFE6-7B49-E470-2908-463E184D8625','84800E6D-34DB-4E9F-5B78-66379CA94EA4','445300','云浮市','yfs','YUNFUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6AF1DFE6-7B49-E470-2908-463E184D8625','445301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6AF1DFE6-7B49-E470-2908-463E184D8625','445302','云城区','ycq','YUNCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6AF1DFE6-7B49-E470-2908-463E184D8625','445321','新兴县','xxx','XINXINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6AF1DFE6-7B49-E470-2908-463E184D8625','445322','郁南县','ynx','YUNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6AF1DFE6-7B49-E470-2908-463E184D8625','445323','云安县','yax','YUNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6AF1DFE6-7B49-E470-2908-463E184D8625','445381','罗定市','lds','LUODINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--广西壮族自治区
INSERT INTO t_data_dictionary_common
VALUES('2BC50B01-09B6-A597-F065-F2FFE477F2E1','9','450000','广西壮族自治区','gxzzzzq','GUANGXIZHUANGZUZIZHIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('7CD1D132-D5FB-3323-7954-D49519277155','2BC50B01-09B6-A597-F065-F2FFE477F2E1','450100','南宁市','nns','NANNINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CD1D132-D5FB-3323-7954-D49519277155','450101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CD1D132-D5FB-3323-7954-D49519277155','450102','兴宁区','xnq','XINGNINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CD1D132-D5FB-3323-7954-D49519277155','450103','新城区','xcq','XINCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CD1D132-D5FB-3323-7954-D49519277155','450104','城北区','cbq','CHENGBEIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CD1D132-D5FB-3323-7954-D49519277155','450105','江南区','jnq','JIANGNANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CD1D132-D5FB-3323-7954-D49519277155','450106','永新区','yxq','YONGXINQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CD1D132-D5FB-3323-7954-D49519277155','450111','市郊区','sjq','SHIJIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CD1D132-D5FB-3323-7954-D49519277155','450121','邕宁县','ynx','YONGNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7CD1D132-D5FB-3323-7954-D49519277155','450122','武鸣县','wmx','WUMINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('20CD0420-03E9-503E-881E-47AE047F9D4F','2BC50B01-09B6-A597-F065-F2FFE477F2E1','450200','柳州市','lzs','LIUZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'20CD0420-03E9-503E-881E-47AE047F9D4F','450201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'20CD0420-03E9-503E-881E-47AE047F9D4F','450202','城中区','czq','CHENGZHONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'20CD0420-03E9-503E-881E-47AE047F9D4F','450203','鱼峰区','yfq','YUFENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'20CD0420-03E9-503E-881E-47AE047F9D4F','450204','柳南区','lnq','LIUNANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'20CD0420-03E9-503E-881E-47AE047F9D4F','450205','柳北区','lbq','LIUBEIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'20CD0420-03E9-503E-881E-47AE047F9D4F','450211','市郊区','sjq','SHIJIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'20CD0420-03E9-503E-881E-47AE047F9D4F','450221','柳江县','ljx','LIUJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'20CD0420-03E9-503E-881E-47AE047F9D4F','450222','柳城县','lcx','LIUCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('8505EDBA-9C13-9931-57C8-38D9F08EEEEA','2BC50B01-09B6-A597-F065-F2FFE477F2E1','450300','桂林市','gls','GUILINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8505EDBA-9C13-9931-57C8-38D9F08EEEEA','450301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8505EDBA-9C13-9931-57C8-38D9F08EEEEA','450302','秀峰区','xfq','XIUFENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8505EDBA-9C13-9931-57C8-38D9F08EEEEA','450303','叠彩区','dcq','DIECAIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8505EDBA-9C13-9931-57C8-38D9F08EEEEA','450304','象山区','xsq','XIANGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8505EDBA-9C13-9931-57C8-38D9F08EEEEA','450305','七星区','qxq','QIXINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8505EDBA-9C13-9931-57C8-38D9F08EEEEA','450311','雁山区','ysq','YANSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8505EDBA-9C13-9931-57C8-38D9F08EEEEA','450321','阳朔县','ysx','YANGSHUOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8505EDBA-9C13-9931-57C8-38D9F08EEEEA','450322','临桂县','lgx','LINGUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8505EDBA-9C13-9931-57C8-38D9F08EEEEA','450323','灵川县','lcx','LINGCHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8505EDBA-9C13-9931-57C8-38D9F08EEEEA','450324','全州县','qzx','QUANZHOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8505EDBA-9C13-9931-57C8-38D9F08EEEEA','450325','兴安县','xax','XINGANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8505EDBA-9C13-9931-57C8-38D9F08EEEEA','450326','永福县','yfx','YONGFUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8505EDBA-9C13-9931-57C8-38D9F08EEEEA','450327','灌阳县','gyx','GUANYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8505EDBA-9C13-9931-57C8-38D9F08EEEEA','450328','龙胜各族自治县','lsgzzzx','LONGSHENGGEZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8505EDBA-9C13-9931-57C8-38D9F08EEEEA','450329','资源县','zyx','ZIYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8505EDBA-9C13-9931-57C8-38D9F08EEEEA','450330','平乐县','plx','PINGLEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8505EDBA-9C13-9931-57C8-38D9F08EEEEA','450331','荔浦县','lpx','LIPUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8505EDBA-9C13-9931-57C8-38D9F08EEEEA','450332','恭城瑶族自治县','gcyzzzx','GONGCHENGYAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('ED74207C-BDEA-20BD-58F7-E3C9A82AAC18','2BC50B01-09B6-A597-F065-F2FFE477F2E1','450400','梧州市','wzs','WUZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED74207C-BDEA-20BD-58F7-E3C9A82AAC18','450401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED74207C-BDEA-20BD-58F7-E3C9A82AAC18','450403','万秀区','wxq','WANXIUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED74207C-BDEA-20BD-58F7-E3C9A82AAC18','450404','蝶山区','dsq','DIESHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED74207C-BDEA-20BD-58F7-E3C9A82AAC18','450411','市郊区','sjq','SHIJIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED74207C-BDEA-20BD-58F7-E3C9A82AAC18','450421','苍梧县','cwx','CANGWUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED74207C-BDEA-20BD-58F7-E3C9A82AAC18','450422','藤县','tx','TENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED74207C-BDEA-20BD-58F7-E3C9A82AAC18','450423','蒙山县','msx','MENGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'ED74207C-BDEA-20BD-58F7-E3C9A82AAC18','450481','岑溪市','cxs','CENXISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E7F11A8D-B9EC-0362-A5EC-87E1301C446D','2BC50B01-09B6-A597-F065-F2FFE477F2E1','450500','北海市','bhs','BEIHAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E7F11A8D-B9EC-0362-A5EC-87E1301C446D','450501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E7F11A8D-B9EC-0362-A5EC-87E1301C446D','450502','海城区','hcq','HAICHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E7F11A8D-B9EC-0362-A5EC-87E1301C446D','450503','银海区','yhq','YINHAIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E7F11A8D-B9EC-0362-A5EC-87E1301C446D','450512','铁山港区','tsgq','TIESHANGANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E7F11A8D-B9EC-0362-A5EC-87E1301C446D','450521','合浦县','hpx','HEPUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('C6666B4B-A1EF-89A1-BF63-74CAD8A242BF','2BC50B01-09B6-A597-F065-F2FFE477F2E1','450600','防城港市','fcgs','FANGCHENGGANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C6666B4B-A1EF-89A1-BF63-74CAD8A242BF','450601','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C6666B4B-A1EF-89A1-BF63-74CAD8A242BF','450602','港口区','gkq','GANGKOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C6666B4B-A1EF-89A1-BF63-74CAD8A242BF','450603','防城区','fcq','FANGCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C6666B4B-A1EF-89A1-BF63-74CAD8A242BF','450621','上思县','ssx','SHANGSIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C6666B4B-A1EF-89A1-BF63-74CAD8A242BF','450681','东兴市','dxs','DONGXINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('5B10A962-E248-8F6E-C911-99D759AA5560','2BC50B01-09B6-A597-F065-F2FFE477F2E1','450700','钦州市','qzs','QINZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5B10A962-E248-8F6E-C911-99D759AA5560','450701','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5B10A962-E248-8F6E-C911-99D759AA5560','450702','钦南区','qnq','QINNANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5B10A962-E248-8F6E-C911-99D759AA5560','450703','钦北区','qbq','QINBEIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5B10A962-E248-8F6E-C911-99D759AA5560','450721','灵山县','lsx','LINGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5B10A962-E248-8F6E-C911-99D759AA5560','450722','浦北县','pbx','PUBEIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('82AC33F7-21C5-FC5F-EABC-3FE6174D5DA0','2BC50B01-09B6-A597-F065-F2FFE477F2E1','450800','贵港市','ggs','GUIGANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'82AC33F7-21C5-FC5F-EABC-3FE6174D5DA0','450801','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'82AC33F7-21C5-FC5F-EABC-3FE6174D5DA0','450802','港北区','gbq','GANGBEIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'82AC33F7-21C5-FC5F-EABC-3FE6174D5DA0','450803','港南区','gnq','GANGNANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'82AC33F7-21C5-FC5F-EABC-3FE6174D5DA0','450821','平南县','pnx','PINGNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'82AC33F7-21C5-FC5F-EABC-3FE6174D5DA0','450881','桂平市','gps','GUIPINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('04E0AD6E-3884-6FAA-51E7-FCC955A92EA3','2BC50B01-09B6-A597-F065-F2FFE477F2E1','450900','玉林市','yls','YULINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'04E0AD6E-3884-6FAA-51E7-FCC955A92EA3','450901','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'04E0AD6E-3884-6FAA-51E7-FCC955A92EA3','450902','玉州区','yzq','YUZHOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'04E0AD6E-3884-6FAA-51E7-FCC955A92EA3','450921','容县','rx','RONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'04E0AD6E-3884-6FAA-51E7-FCC955A92EA3','450922','陆川县','lcx','LUCHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'04E0AD6E-3884-6FAA-51E7-FCC955A92EA3','450923','博白县','bbx','BOBAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'04E0AD6E-3884-6FAA-51E7-FCC955A92EA3','450924','兴业县','xyx','XINGYEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'04E0AD6E-3884-6FAA-51E7-FCC955A92EA3','450981','北流市','bls','BEILIUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('318E8D45-3CE8-B917-97CB-65A394A81D18','2BC50B01-09B6-A597-F065-F2FFE477F2E1','452100','南宁地区','nndq','NANNINGDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'318E8D45-3CE8-B917-97CB-65A394A81D18','452101','凭祥市','pxs','PINGXIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'318E8D45-3CE8-B917-97CB-65A394A81D18','452122','横县','hx','HENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'318E8D45-3CE8-B917-97CB-65A394A81D18','452123','宾阳县','byx','BINYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'318E8D45-3CE8-B917-97CB-65A394A81D18','452124','上林县','slx','SHANGLINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'318E8D45-3CE8-B917-97CB-65A394A81D18','452126','隆安县','lax','LONGANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'318E8D45-3CE8-B917-97CB-65A394A81D18','452127','马山县','msx','MASHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'318E8D45-3CE8-B917-97CB-65A394A81D18','452128','扶绥县','fsx','FUSUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'318E8D45-3CE8-B917-97CB-65A394A81D18','452129','崇左县','czx','CHONGZUOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'318E8D45-3CE8-B917-97CB-65A394A81D18','452130','大新县','dxx','DAXINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'318E8D45-3CE8-B917-97CB-65A394A81D18','452131','天等县','tdx','TIANDENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'318E8D45-3CE8-B917-97CB-65A394A81D18','452132','宁明县','nmx','NINGMINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'318E8D45-3CE8-B917-97CB-65A394A81D18','452133','龙州县','lzx','LONGZHOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('629F8340-E7CC-90C4-A4C7-ADAEC93F08D1','2BC50B01-09B6-A597-F065-F2FFE477F2E1','452200','柳州地区','lzdq','LIUZHOUDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'629F8340-E7CC-90C4-A4C7-ADAEC93F08D1','452201','合山市','hss','HESHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'629F8340-E7CC-90C4-A4C7-ADAEC93F08D1','452223','鹿寨县','lzx','LUZHAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'629F8340-E7CC-90C4-A4C7-ADAEC93F08D1','452224','象州县','xzx','XIANGZHOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'629F8340-E7CC-90C4-A4C7-ADAEC93F08D1','452225','武宣县','wxx','WUXUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'629F8340-E7CC-90C4-A4C7-ADAEC93F08D1','452226','来宾县','lbx','LAIBINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'629F8340-E7CC-90C4-A4C7-ADAEC93F08D1','452227','融安县','rax','RONGANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'629F8340-E7CC-90C4-A4C7-ADAEC93F08D1','452228','三江侗族自治县','sjdzzzx','SANJIANGDONGZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'629F8340-E7CC-90C4-A4C7-ADAEC93F08D1','452229','融水苗族自治县','rsmzzzx','RONGSHUIMIAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'629F8340-E7CC-90C4-A4C7-ADAEC93F08D1','452230','金秀瑶族自治县','jxyzzzx','JINXIUYAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'629F8340-E7CC-90C4-A4C7-ADAEC93F08D1','452231','忻城县','xcx','XINCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('FA7DE63A-16D6-B4EC-29BF-B4F624CD92BB','2BC50B01-09B6-A597-F065-F2FFE477F2E1','452400','贺州地区','hzdq','HEZHOUDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FA7DE63A-16D6-B4EC-29BF-B4F624CD92BB','452402','贺州市','hzs','HEZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FA7DE63A-16D6-B4EC-29BF-B4F624CD92BB','452424','昭平县','zpx','ZHAOPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FA7DE63A-16D6-B4EC-29BF-B4F624CD92BB','452427','钟山县','zsx','ZHONGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FA7DE63A-16D6-B4EC-29BF-B4F624CD92BB','452428','富川瑶族自治县','fcyzzzx','FUCHUANYAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('44C6973E-138C-AA3A-D1CC-B065E6EFCB11','2BC50B01-09B6-A597-F065-F2FFE477F2E1','452600','百色地区','bsdq','BAISEDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44C6973E-138C-AA3A-D1CC-B065E6EFCB11','452601','百色市','bss','BAISESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44C6973E-138C-AA3A-D1CC-B065E6EFCB11','452622','田阳县','tyx','TIANYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44C6973E-138C-AA3A-D1CC-B065E6EFCB11','452623','田东县','tdx','TIANDONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44C6973E-138C-AA3A-D1CC-B065E6EFCB11','452624','平果县','pgx','PINGGUOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44C6973E-138C-AA3A-D1CC-B065E6EFCB11','452625','德保县','dbx','DEBAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44C6973E-138C-AA3A-D1CC-B065E6EFCB11','452626','靖西县','jxx','JINGXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44C6973E-138C-AA3A-D1CC-B065E6EFCB11','452627','那坡县','npx','NEIPOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44C6973E-138C-AA3A-D1CC-B065E6EFCB11','452628','凌云县','lyx','LINGYUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44C6973E-138C-AA3A-D1CC-B065E6EFCB11','452629','乐业县','lyx','LEYEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44C6973E-138C-AA3A-D1CC-B065E6EFCB11','452630','田林县','tlx','TIANLINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44C6973E-138C-AA3A-D1CC-B065E6EFCB11','452631','隆林各族自治县','llgzzzx','LONGLINGEZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44C6973E-138C-AA3A-D1CC-B065E6EFCB11','452632','西林县','xlx','XILINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('1D2BBC27-02A2-A333-0BD5-BCD58BE896BD','2BC50B01-09B6-A597-F065-F2FFE477F2E1','452700','河池地区','hcdq','HECHIDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1D2BBC27-02A2-A333-0BD5-BCD58BE896BD','452701','河池市','hcs','HECHISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1D2BBC27-02A2-A333-0BD5-BCD58BE896BD','452702','宜州市','yzs','YIZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1D2BBC27-02A2-A333-0BD5-BCD58BE896BD','452723','罗城仫佬族自治县','lcmlzzzx','LUOCHENGMULAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1D2BBC27-02A2-A333-0BD5-BCD58BE896BD','452724','环江毛南族自治县','hjmnzzzx','HUANJIANGMAONANZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1D2BBC27-02A2-A333-0BD5-BCD58BE896BD','452725','南丹县','ndx','NANDANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1D2BBC27-02A2-A333-0BD5-BCD58BE896BD','452726','天峨县','tex','TIANEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1D2BBC27-02A2-A333-0BD5-BCD58BE896BD','452727','凤山县','fsx','FENGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1D2BBC27-02A2-A333-0BD5-BCD58BE896BD','452728','东兰县','dlx','DONGLANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1D2BBC27-02A2-A333-0BD5-BCD58BE896BD','452729','巴马瑶族自治县','bmyzzzx','BAMAYAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1D2BBC27-02A2-A333-0BD5-BCD58BE896BD','452730','都安瑶族自治县','dayzzzx','DOUANYAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1D2BBC27-02A2-A333-0BD5-BCD58BE896BD','452731','大化瑶族自治县','dhyzzzx','DAHUAYAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--海南省
INSERT INTO t_data_dictionary_common
VALUES('7DB53E08-A55D-25E5-018F-0A840B209E67','9','460000','海南省','hns','HAINANSHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('23083AF5-816B-0191-65CF-35C9E1181A73','7DB53E08-A55D-25E5-018F-0A840B209E67','460200','三亚市','sys','SANYASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'23083AF5-816B-0191-65CF-35C9E1181A73','460201','三亚市市辖区','syssxq','SANYASHISHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'23083AF5-816B-0191-65CF-35C9E1181A73','460001','三亚市通什市','systss','SANYASHITONGSHENSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'23083AF5-816B-0191-65CF-35C9E1181A73','460002','三亚市琼海市','sysqhs','SANYASHIQIONGHAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'23083AF5-816B-0191-65CF-35C9E1181A73','460003','三亚市儋州市','sysdzs','SANYASHIDANZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'23083AF5-816B-0191-65CF-35C9E1181A73','460004','三亚市琼山市','sysqss','SANYASHIQIONGSHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'23083AF5-816B-0191-65CF-35C9E1181A73','460005','三亚市文昌市','syswcs','SANYASHIWENCHANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'23083AF5-816B-0191-65CF-35C9E1181A73','460006','三亚市万宁市','syswns','SANYASHIWANNINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'23083AF5-816B-0191-65CF-35C9E1181A73','460007','三亚市东方市','sysdfs','SANYASHIDONGFANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'23083AF5-816B-0191-65CF-35C9E1181A73','460025','三亚市定安县','sysdax','SANYASHIDINGANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'23083AF5-816B-0191-65CF-35C9E1181A73','460026','三亚市屯昌县','systcx','SANYASHITUNCHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'23083AF5-816B-0191-65CF-35C9E1181A73','460027','三亚市澄迈县','syscmx','SANYASHICHENGMAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'23083AF5-816B-0191-65CF-35C9E1181A73','460028','三亚市临高县','syslgx','SANYASHILINGAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'23083AF5-816B-0191-65CF-35C9E1181A73','460030','三亚市白沙黎族自治县','sysbslzzzx','SANYASHIBAISHALIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'23083AF5-816B-0191-65CF-35C9E1181A73','460031','三亚市昌江黎族自治县','syscjlzzzx','SANYASHICHANGJIANGLIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'23083AF5-816B-0191-65CF-35C9E1181A73','460033','三亚市乐东黎族自治县','sysldlzzzx','SANYASHILEDONGLIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'23083AF5-816B-0191-65CF-35C9E1181A73','460034','三亚市陵水黎族自治县','syslslzzzx','SANYASHILINGSHUILIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'23083AF5-816B-0191-65CF-35C9E1181A73','460035','三亚市保亭黎族苗族自治县','sysbtlzmzzzx','SANYASHIBAOTINGLIZUMIAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'23083AF5-816B-0191-65CF-35C9E1181A73','460036','三亚市琼中黎族苗族自治县','sysqzlzmzzzx','SANYASHIQIONGZHONGLIZUMIAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('785B151A-85F6-387C-42D1-47C3698082FF','7DB53E08-A55D-25E5-018F-0A840B209E67','460100','海口市','hks','HAIKOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'785B151A-85F6-387C-42D1-47C3698082FF','460101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'785B151A-85F6-387C-42D1-47C3698082FF','460102','振东区','zdq','ZHENDONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'785B151A-85F6-387C-42D1-47C3698082FF','460103','新华区','xhq','XINHUAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'785B151A-85F6-387C-42D1-47C3698082FF','460104','秀英区','xyq','XIUYINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--四川省
INSERT INTO t_data_dictionary_common
VALUES('63400ED8-5D0E-8C20-CC83-AD6E33440D5F','9','510000','四川省','scs','SICHUANSHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('2BF24A0D-D13E-66AD-983F-B5036A5545E8','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','510100','成都市','cds','CHENGDOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510104','锦江区','jjq','JINJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510105','青羊区','qyq','QINGYANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510106','金牛区','jnq','JINNIUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510107','武侯区','whq','WUHOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510108','成华区','chq','CHENGHUAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510112','龙泉驿区','lqyq','LONGQUANYIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510113','青白江区','qbjq','QINGBAIJIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510121','金堂县','jtx','JINTANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510122','双流县','slx','SHUANGLIUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510123','温江县','wjx','WENJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510124','郫县','px','PIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510125','新都县','xdx','XINDOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510129','大邑县','dyx','DAYIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510131','蒲江县','pjx','PUJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510132','新津县','xjx','XINJINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510181','都江堰市','djys','DOUJIANGYANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510182','彭州市','pzs','PENGZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510183','邛崃市','qls','QIONGLAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2BF24A0D-D13E-66AD-983F-B5036A5545E8','510184','崇州市','czs','CHONGZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('C57864B5-A0CB-99A8-6819-A5A271AE43DD','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','510300','自贡市','zgs','ZIGONGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C57864B5-A0CB-99A8-6819-A5A271AE43DD','510301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C57864B5-A0CB-99A8-6819-A5A271AE43DD','510302','自流井区','zljq','ZILIUJINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C57864B5-A0CB-99A8-6819-A5A271AE43DD','510303','贡井区','gjq','GONGJINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C57864B5-A0CB-99A8-6819-A5A271AE43DD','510304','大安区','daq','DAANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C57864B5-A0CB-99A8-6819-A5A271AE43DD','510311','沿滩区','ytq','YANTANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C57864B5-A0CB-99A8-6819-A5A271AE43DD','510321','荣县','rx','RONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C57864B5-A0CB-99A8-6819-A5A271AE43DD','510322','富顺县','fsx','FUSHUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E20EA83E-B942-098E-7DE2-5CD347631A65','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','510400','攀枝花市','pzhs','PANZHIHUASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E20EA83E-B942-098E-7DE2-5CD347631A65','510401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E20EA83E-B942-098E-7DE2-5CD347631A65','510402','东区','dq','DONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E20EA83E-B942-098E-7DE2-5CD347631A65','510403','西区','xq','XIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E20EA83E-B942-098E-7DE2-5CD347631A65','510411','仁和区','rhq','RENHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E20EA83E-B942-098E-7DE2-5CD347631A65','510421','米易县','myx','MIYIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E20EA83E-B942-098E-7DE2-5CD347631A65','510422','盐边县','ybx','YANBIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('B1878E3F-29A4-DB70-2AD3-491411841B1C','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','510500','泸州市','lzs','LUZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B1878E3F-29A4-DB70-2AD3-491411841B1C','510501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B1878E3F-29A4-DB70-2AD3-491411841B1C','510502','江阳区','jyq','JIANGYANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B1878E3F-29A4-DB70-2AD3-491411841B1C','510503','纳溪区','nxq','NAXIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B1878E3F-29A4-DB70-2AD3-491411841B1C','510504','龙马潭区','lmtq','LONGMATANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B1878E3F-29A4-DB70-2AD3-491411841B1C','510521','泸县','lx','LUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B1878E3F-29A4-DB70-2AD3-491411841B1C','510522','合江县','hjx','HEJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B1878E3F-29A4-DB70-2AD3-491411841B1C','510524','叙永县','xyx','XUYONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B1878E3F-29A4-DB70-2AD3-491411841B1C','510525','古蔺县','glx','GULINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('6AB818C3-4C08-E842-6B8D-C82022DD886C','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','510600','德阳市','dys','DEYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6AB818C3-4C08-E842-6B8D-C82022DD886C','510601','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6AB818C3-4C08-E842-6B8D-C82022DD886C','510603','旌阳区','jyq','JINGYANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6AB818C3-4C08-E842-6B8D-C82022DD886C','510623','中江县','zjx','ZHONGJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6AB818C3-4C08-E842-6B8D-C82022DD886C','510626','罗江县','ljx','LUOJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6AB818C3-4C08-E842-6B8D-C82022DD886C','510681','广汉市','ghs','GUANGHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6AB818C3-4C08-E842-6B8D-C82022DD886C','510682','什邡市','sfs','SHENFANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6AB818C3-4C08-E842-6B8D-C82022DD886C','510683','绵竹市','mzs','MIANZHUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('AB351BE4-6046-5FA9-1964-DDDF23F8FA93','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','510700','绵阳市','mys','MIANYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AB351BE4-6046-5FA9-1964-DDDF23F8FA93','510701','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AB351BE4-6046-5FA9-1964-DDDF23F8FA93','510703','涪城区','fcq','FUCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AB351BE4-6046-5FA9-1964-DDDF23F8FA93','510704','游仙区','yxq','YOUXIANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AB351BE4-6046-5FA9-1964-DDDF23F8FA93','510722','三台县','stx','SANTAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AB351BE4-6046-5FA9-1964-DDDF23F8FA93','510723','盐亭县','ytx','YANTINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AB351BE4-6046-5FA9-1964-DDDF23F8FA93','510724','安县','ax','ANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AB351BE4-6046-5FA9-1964-DDDF23F8FA93','510725','梓潼县','ztx','ZITONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AB351BE4-6046-5FA9-1964-DDDF23F8FA93','510726','北川县','bcx','BEICHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AB351BE4-6046-5FA9-1964-DDDF23F8FA93','510727','平武县','pwx','PINGWUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AB351BE4-6046-5FA9-1964-DDDF23F8FA93','510781','江油市','jys','JIANGYOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('3F9C72B3-9CC7-10A6-2DA5-F5F3BD4FC531','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','510800','广元市','gys','GUANGYUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3F9C72B3-9CC7-10A6-2DA5-F5F3BD4FC531','510801','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3F9C72B3-9CC7-10A6-2DA5-F5F3BD4FC531','510802','市中区','szq','SHIZHONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3F9C72B3-9CC7-10A6-2DA5-F5F3BD4FC531','510811','元坝区','ybq','YUANBAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3F9C72B3-9CC7-10A6-2DA5-F5F3BD4FC531','510812','朝天区','ctq','CHAOTIANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3F9C72B3-9CC7-10A6-2DA5-F5F3BD4FC531','510821','旺苍县','wcx','WANGCANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3F9C72B3-9CC7-10A6-2DA5-F5F3BD4FC531','510822','青川县','qcx','QINGCHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3F9C72B3-9CC7-10A6-2DA5-F5F3BD4FC531','510823','剑阁县','jgx','JIANGEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3F9C72B3-9CC7-10A6-2DA5-F5F3BD4FC531','510824','苍溪县','cxx','CANGXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E19B4245-82A2-CE00-E3BF-E797325C4D80','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','510900','遂宁市','sns','SUININGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E19B4245-82A2-CE00-E3BF-E797325C4D80','510901','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E19B4245-82A2-CE00-E3BF-E797325C4D80','510902','市中区','szq','SHIZHONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E19B4245-82A2-CE00-E3BF-E797325C4D80','510921','蓬溪县','pxx','PENGXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E19B4245-82A2-CE00-E3BF-E797325C4D80','510922','射洪县','shx','SHEHONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E19B4245-82A2-CE00-E3BF-E797325C4D80','510923','大英县','dyx','DAYINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('C6218907-6ABD-69AC-9915-63B954D2C2D9','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','511000','内江市','njs','NEIJIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C6218907-6ABD-69AC-9915-63B954D2C2D9','511001','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C6218907-6ABD-69AC-9915-63B954D2C2D9','511002','市中区','szq','SHIZHONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C6218907-6ABD-69AC-9915-63B954D2C2D9','511011','东兴区','dxq','DONGXINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C6218907-6ABD-69AC-9915-63B954D2C2D9','511024','威远县','wyx','WEIYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C6218907-6ABD-69AC-9915-63B954D2C2D9','511025','资中县','zzx','ZIZHONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C6218907-6ABD-69AC-9915-63B954D2C2D9','511028','隆昌县','lcx','LONGCHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('D1A62F92-27B9-DC70-78AE-B9989424E8D3','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','511100','乐山市','lss','LESHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A62F92-27B9-DC70-78AE-B9989424E8D3','511101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A62F92-27B9-DC70-78AE-B9989424E8D3','511102','市中区','szq','SHIZHONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A62F92-27B9-DC70-78AE-B9989424E8D3','511111','沙湾区','swq','SHAWANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A62F92-27B9-DC70-78AE-B9989424E8D3','511112','五通桥区','wtqq','WUTONGQIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A62F92-27B9-DC70-78AE-B9989424E8D3','511113','金口河区','jkhq','JINKOUHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A62F92-27B9-DC70-78AE-B9989424E8D3','511123','犍为县','jwx','JIANWEIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A62F92-27B9-DC70-78AE-B9989424E8D3','511124','井研县','jyx','JINGYANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A62F92-27B9-DC70-78AE-B9989424E8D3','511126','夹江县','jjx','JIAJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A62F92-27B9-DC70-78AE-B9989424E8D3','511129','沐川县','mcx','MUCHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A62F92-27B9-DC70-78AE-B9989424E8D3','511132','峨边彝族自治县','ebyzzzx','EBIANYIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A62F92-27B9-DC70-78AE-B9989424E8D3','511133','峨边彝族自治县','ebyzzzx','EBIANYIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D1A62F92-27B9-DC70-78AE-B9989424E8D3','511181','峨眉山市','emss','EMEISHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('1DB7891E-1844-43F1-CAFE-36DF2655A606','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','511300','南充市','ncs','NANCHONGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1DB7891E-1844-43F1-CAFE-36DF2655A606','511301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1DB7891E-1844-43F1-CAFE-36DF2655A606','511302','顺庆区','sqq','SHUNQINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1DB7891E-1844-43F1-CAFE-36DF2655A606','511303','高坪区','gpq','GAOPINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1DB7891E-1844-43F1-CAFE-36DF2655A606','511304','嘉陵区','jlq','JIALINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1DB7891E-1844-43F1-CAFE-36DF2655A606','511321','南部县','nbx','NANBUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1DB7891E-1844-43F1-CAFE-36DF2655A606','511322','营山县','ysx','YINGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1DB7891E-1844-43F1-CAFE-36DF2655A606','511323','蓬安县','pax','PENGANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1DB7891E-1844-43F1-CAFE-36DF2655A606','511324','仪陇县','ylx','YILONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1DB7891E-1844-43F1-CAFE-36DF2655A606','511325','西充县','xcx','XICHONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1DB7891E-1844-43F1-CAFE-36DF2655A606','511381','阆中市','lzs','LANGZHONGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('0FA6423B-9BC8-E9D7-50A2-E4EB3C58CF74','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','511500','宜宾市','ybs','YIBINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0FA6423B-9BC8-E9D7-50A2-E4EB3C58CF74','511501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0FA6423B-9BC8-E9D7-50A2-E4EB3C58CF74','511502','翠屏区','cpq','CUIPINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0FA6423B-9BC8-E9D7-50A2-E4EB3C58CF74','511521','宜宾县','ybx','YIBINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0FA6423B-9BC8-E9D7-50A2-E4EB3C58CF74','511522','南溪县','nxx','NANXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0FA6423B-9BC8-E9D7-50A2-E4EB3C58CF74','511523','江安县','jax','JIANGANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0FA6423B-9BC8-E9D7-50A2-E4EB3C58CF74','511524','长宁县','znx','ZHANGNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0FA6423B-9BC8-E9D7-50A2-E4EB3C58CF74','511525','高县','gx','GAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0FA6423B-9BC8-E9D7-50A2-E4EB3C58CF74','511526','珙县','gx','GONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0FA6423B-9BC8-E9D7-50A2-E4EB3C58CF74','511527','筠连县','ylx','YUNLIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0FA6423B-9BC8-E9D7-50A2-E4EB3C58CF74','511528','兴文县','xwx','XINGWENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0FA6423B-9BC8-E9D7-50A2-E4EB3C58CF74','511529','屏山县','psx','PINGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('BDC9753B-550C-2100-3684-26BE285807E0','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','511600','广安市','gas','GUANGANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BDC9753B-550C-2100-3684-26BE285807E0','511601','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BDC9753B-550C-2100-3684-26BE285807E0','511602','广安区','gaq','GUANGANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BDC9753B-550C-2100-3684-26BE285807E0','511621','岳池县','ycx','YUECHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BDC9753B-550C-2100-3684-26BE285807E0','511622','武胜县','wsx','WUSHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BDC9753B-550C-2100-3684-26BE285807E0','511623','邻水县','lsx','LINSHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BDC9753B-550C-2100-3684-26BE285807E0','511681','华蓥市','hys','HUAYINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('C31E8566-2BEF-69BA-674E-C0531A2C651A','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','513000','达川地区','dcdq','DACHUANDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C31E8566-2BEF-69BA-674E-C0531A2C651A','513001','达川市','dcs','DACHUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C31E8566-2BEF-69BA-674E-C0531A2C651A','513002','万源市','wys','WANYUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C31E8566-2BEF-69BA-674E-C0531A2C651A','513021','达县','dx','DAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C31E8566-2BEF-69BA-674E-C0531A2C651A','513022','宣汉县','xhx','XUANHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C31E8566-2BEF-69BA-674E-C0531A2C651A','513023','开江县','kjx','KAIJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C31E8566-2BEF-69BA-674E-C0531A2C651A','513029','大竹县','dzx','DAZHUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C31E8566-2BEF-69BA-674E-C0531A2C651A','513030','渠县','qx','QUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('7C5E838E-4237-66A6-0E3B-2DE13D5E4B39','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','513100','雅安地区','yadq','YAANDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7C5E838E-4237-66A6-0E3B-2DE13D5E4B39','513101','雅安市','yas','YAANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7C5E838E-4237-66A6-0E3B-2DE13D5E4B39','513122','名山县','msx','MINGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7C5E838E-4237-66A6-0E3B-2DE13D5E4B39','513123','荥经县','yjx','YINGJINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7C5E838E-4237-66A6-0E3B-2DE13D5E4B39','513124','汉源县','hyx','HANYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7C5E838E-4237-66A6-0E3B-2DE13D5E4B39','513125','石棉县','smx','SHIMIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7C5E838E-4237-66A6-0E3B-2DE13D5E4B39','513126','天全县','tqx','TIANQUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7C5E838E-4237-66A6-0E3B-2DE13D5E4B39','513127','芦山县','lsx','LUSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7C5E838E-4237-66A6-0E3B-2DE13D5E4B39','513128','宝兴县','bxx','BAOXINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('762C1427-295C-FAAA-7191-AEE499DAC0F5','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','513200','阿坝藏族羌族自治州','abzzqzzzz','ABAZANGZUQIANGZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'762C1427-295C-FAAA-7191-AEE499DAC0F5','513221','汶川县','wcx','WENCHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'762C1427-295C-FAAA-7191-AEE499DAC0F5','513222','理县','lx','LIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'762C1427-295C-FAAA-7191-AEE499DAC0F5','513223','茂县','mx','MAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'762C1427-295C-FAAA-7191-AEE499DAC0F5','513224','松潘县','spx','SONGPANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'762C1427-295C-FAAA-7191-AEE499DAC0F5','513225','九寨沟县','jzgx','JIUZHAIGOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'762C1427-295C-FAAA-7191-AEE499DAC0F5','513226','金川县','jcx','JINCHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'762C1427-295C-FAAA-7191-AEE499DAC0F5','513227','小金县','xjx','XIAOJINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'762C1427-295C-FAAA-7191-AEE499DAC0F5','513228','黑水县','hsx','HEISHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'762C1427-295C-FAAA-7191-AEE499DAC0F5','513229','马尔康县','mekx','MAERKANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'762C1427-295C-FAAA-7191-AEE499DAC0F5','513230','壤塘县','rtx','RANGTANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'762C1427-295C-FAAA-7191-AEE499DAC0F5','513231','阿坝县','abx','ABAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'762C1427-295C-FAAA-7191-AEE499DAC0F5','513232','若尔盖县','regx','RUOERGAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'762C1427-295C-FAAA-7191-AEE499DAC0F5','513233','红原县','hyx','HONGYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('1EBF1C90-86A9-9FCA-FEA6-27A700E5D2E1','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','513300','甘孜藏族自治州','gzzzzzz','GANZIZANGZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1EBF1C90-86A9-9FCA-FEA6-27A700E5D2E1','513321','康定县','kdx','KANGDINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1EBF1C90-86A9-9FCA-FEA6-27A700E5D2E1','513322','泸定县','ldx','LUDINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1EBF1C90-86A9-9FCA-FEA6-27A700E5D2E1','513323','丹巴县','dbx','DANBAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1EBF1C90-86A9-9FCA-FEA6-27A700E5D2E1','513324','九龙县','jlx','JIULONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1EBF1C90-86A9-9FCA-FEA6-27A700E5D2E1','513325','雅江县','yjx','YAJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1EBF1C90-86A9-9FCA-FEA6-27A700E5D2E1','513326','道孚县','dfx','DAOFUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1EBF1C90-86A9-9FCA-FEA6-27A700E5D2E1','513327','炉霍县','lhx','LUHUOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1EBF1C90-86A9-9FCA-FEA6-27A700E5D2E1','513328','甘孜县','gzx','GANZIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1EBF1C90-86A9-9FCA-FEA6-27A700E5D2E1','513329','新龙县','xlx','XINLONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1EBF1C90-86A9-9FCA-FEA6-27A700E5D2E1','513330','德格县','dgx','DEGEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1EBF1C90-86A9-9FCA-FEA6-27A700E5D2E1','513331','白玉县','byx','BAIYUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1EBF1C90-86A9-9FCA-FEA6-27A700E5D2E1','513332','石渠县','sqx','SHIQUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1EBF1C90-86A9-9FCA-FEA6-27A700E5D2E1','513333','色达县','sdx','SEDAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1EBF1C90-86A9-9FCA-FEA6-27A700E5D2E1','513334','理塘县','ltx','LITANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1EBF1C90-86A9-9FCA-FEA6-27A700E5D2E1','513335','巴塘县','btx','BATANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1EBF1C90-86A9-9FCA-FEA6-27A700E5D2E1','513336','乡城县','xcx','XIANGCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1EBF1C90-86A9-9FCA-FEA6-27A700E5D2E1','513337','稻城县','dcx','DAOCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1EBF1C90-86A9-9FCA-FEA6-27A700E5D2E1','513338','得荣县','drx','DERONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('F3DFD209-BF0A-0749-A4BF-63D4E499AE29','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','513400','凉山彝族自治州','lsyzzzz','LIANGSHANYIZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F3DFD209-BF0A-0749-A4BF-63D4E499AE29','513401','西昌市','xcs','XICHANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F3DFD209-BF0A-0749-A4BF-63D4E499AE29','513422','木里藏族自治县','mlzzzzx','MULIZANGZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F3DFD209-BF0A-0749-A4BF-63D4E499AE29','513423','盐源县','yyx','YANYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F3DFD209-BF0A-0749-A4BF-63D4E499AE29','513424','德昌县','dcx','DECHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F3DFD209-BF0A-0749-A4BF-63D4E499AE29','513425','会理县','hlx','HUILIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F3DFD209-BF0A-0749-A4BF-63D4E499AE29','513426','会东县','hdx','HUIDONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F3DFD209-BF0A-0749-A4BF-63D4E499AE29','513427','宁南县','nnx','NINGNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F3DFD209-BF0A-0749-A4BF-63D4E499AE29','513428','普格县','pgx','PUGEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F3DFD209-BF0A-0749-A4BF-63D4E499AE29','513429','布拖县','btx','BUTUOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F3DFD209-BF0A-0749-A4BF-63D4E499AE29','513430','金阳县','jyx','JINYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F3DFD209-BF0A-0749-A4BF-63D4E499AE29','513431','昭觉县','zjx','ZHAOJUEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F3DFD209-BF0A-0749-A4BF-63D4E499AE29','513432','喜德县','xdx','XIDEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F3DFD209-BF0A-0749-A4BF-63D4E499AE29','513433','冕宁县','mnx','MIANNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F3DFD209-BF0A-0749-A4BF-63D4E499AE29','513434','越西县','yxx','YUEXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F3DFD209-BF0A-0749-A4BF-63D4E499AE29','513435','甘洛县','glx','GANLUOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F3DFD209-BF0A-0749-A4BF-63D4E499AE29','513436','美姑县','mgx','MEIGUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F3DFD209-BF0A-0749-A4BF-63D4E499AE29','513437','雷波县','lbx','LEIBOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('5BDC7DB9-D3E0-5FE7-25F9-2BB230A91697','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','513700','巴中地区','bzdq','BAZHONGDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5BDC7DB9-D3E0-5FE7-25F9-2BB230A91697','513701','巴中市','bzs','BAZHONGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5BDC7DB9-D3E0-5FE7-25F9-2BB230A91697','513721','通江县','tjx','TONGJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5BDC7DB9-D3E0-5FE7-25F9-2BB230A91697','513722','南江县','njx','NANJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'5BDC7DB9-D3E0-5FE7-25F9-2BB230A91697','513723','平昌县','pcx','PINGCHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('BB39137B-AD32-A8D0-B356-6D0BE0F0B85C','63400ED8-5D0E-8C20-CC83-AD6E33440D5F','513800','眉山地区','msdq','MEISHANDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BB39137B-AD32-A8D0-B356-6D0BE0F0B85C','513821','眉山县','msx','MEISHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BB39137B-AD32-A8D0-B356-6D0BE0F0B85C','513822','仁寿县','rsx','RENSHOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BB39137B-AD32-A8D0-B356-6D0BE0F0B85C','513823','彭山县','psx','PENGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BB39137B-AD32-A8D0-B356-6D0BE0F0B85C','513824','洪雅县','hyx','HONGYAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BB39137B-AD32-A8D0-B356-6D0BE0F0B85C','513825','丹棱县','dlx','DANLENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BB39137B-AD32-A8D0-B356-6D0BE0F0B85C','513826','青神县','qsx','QINGSHENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BB39137B-AD32-A8D0-B356-6D0BE0F0B85C','513900','资阳地区','zydq','ZIYANGDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BB39137B-AD32-A8D0-B356-6D0BE0F0B85C','513901','资阳市','zys','ZIYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BB39137B-AD32-A8D0-B356-6D0BE0F0B85C','513902','简阳市','jys','JIANYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BB39137B-AD32-A8D0-B356-6D0BE0F0B85C','513921','安岳县','ayx','ANYUEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BB39137B-AD32-A8D0-B356-6D0BE0F0B85C','513922','乐至县','lzx','LEZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--贵州省
INSERT INTO t_data_dictionary_common
VALUES('7905E4F0-3945-965A-B691-31CDFC772EB3','9','520000','贵州省','gzs','GUIZHOUSHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('0BFDE9D4-2A6C-E9E2-298D-43EC4557D3D3','7905E4F0-3945-965A-B691-31CDFC772EB3','520100','贵阳市','gys','GUIYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0BFDE9D4-2A6C-E9E2-298D-43EC4557D3D3','520101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0BFDE9D4-2A6C-E9E2-298D-43EC4557D3D3','520102','南明区','nmq','NANMINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0BFDE9D4-2A6C-E9E2-298D-43EC4557D3D3','520103','云岩区','yyq','YUNYANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0BFDE9D4-2A6C-E9E2-298D-43EC4557D3D3','520111','花溪区','hxq','HUAXIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0BFDE9D4-2A6C-E9E2-298D-43EC4557D3D3','520112','乌当区','wdq','WUDANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0BFDE9D4-2A6C-E9E2-298D-43EC4557D3D3','520113','白云区','byq','BAIYUNQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0BFDE9D4-2A6C-E9E2-298D-43EC4557D3D3','520121','开阳县','kyx','KAIYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0BFDE9D4-2A6C-E9E2-298D-43EC4557D3D3','520122','息烽县','xfx','XIFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0BFDE9D4-2A6C-E9E2-298D-43EC4557D3D3','520123','修文县','xwx','XIUWENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0BFDE9D4-2A6C-E9E2-298D-43EC4557D3D3','520181','清镇市','qzs','QINGZHENSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('8403F1D7-A6B5-A8EF-F56B-E5A6BFEF9973','7905E4F0-3945-965A-B691-31CDFC772EB3','520200','六盘水市','lpss','LIUPANSHUISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8403F1D7-A6B5-A8EF-F56B-E5A6BFEF9973','520201','钟山区','zsq','ZHONGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8403F1D7-A6B5-A8EF-F56B-E5A6BFEF9973','520202','盘县特区','pxtq','PANXIANTEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8403F1D7-A6B5-A8EF-F56B-E5A6BFEF9973','520203','六枝特区','lztq','LIUZHITEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8403F1D7-A6B5-A8EF-F56B-E5A6BFEF9973','520221','水城县','scx','SHUICHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('B29E9BC9-F93A-C271-870F-EA96E507AD0D','7905E4F0-3945-965A-B691-31CDFC772EB3','520300','遵义市','zys','ZUNYISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B29E9BC9-F93A-C271-870F-EA96E507AD0D','520301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B29E9BC9-F93A-C271-870F-EA96E507AD0D','520302','红花岗区','hhgq','HONGHUAGANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B29E9BC9-F93A-C271-870F-EA96E507AD0D','520321','遵义县','zyx','ZUNYIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B29E9BC9-F93A-C271-870F-EA96E507AD0D','520322','桐梓县','tzx','TONGZIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B29E9BC9-F93A-C271-870F-EA96E507AD0D','520323','绥阳县','syx','SUIYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B29E9BC9-F93A-C271-870F-EA96E507AD0D','520324','正安县','zax','ZHENGANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B29E9BC9-F93A-C271-870F-EA96E507AD0D','520325','道真仡佬族苗族自治县','dzglzmzzzx','DAOZHENGELAOZUMIAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B29E9BC9-F93A-C271-870F-EA96E507AD0D','520326','务川仡佬族苗族自治县','wcglzmzzzx','WUCHUANGELAOZUMIAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B29E9BC9-F93A-C271-870F-EA96E507AD0D','520327','凤冈县','fgx','FENGGANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B29E9BC9-F93A-C271-870F-EA96E507AD0D','520328','湄潭县','mtx','MEITANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B29E9BC9-F93A-C271-870F-EA96E507AD0D','520329','余庆县','yqx','YUQINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B29E9BC9-F93A-C271-870F-EA96E507AD0D','520330','习水县','xsx','XISHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B29E9BC9-F93A-C271-870F-EA96E507AD0D','520381','赤水市','css','CHISHUISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B29E9BC9-F93A-C271-870F-EA96E507AD0D','520382','仁怀市','rhs','RENHUAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('49E971B3-3322-5B41-ABD9-3BAD0F621011','7905E4F0-3945-965A-B691-31CDFC772EB3','522200','铜仁地区','trdq','TONGRENDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49E971B3-3322-5B41-ABD9-3BAD0F621011','522201','铜仁市','trs','TONGRENSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49E971B3-3322-5B41-ABD9-3BAD0F621011','522222','江口县','jkx','JIANGKOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49E971B3-3322-5B41-ABD9-3BAD0F621011','522223','玉屏侗族自治县','ypdzzzx','YUPINGDONGZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49E971B3-3322-5B41-ABD9-3BAD0F621011','522224','石阡县','sqx','SHIQIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49E971B3-3322-5B41-ABD9-3BAD0F621011','522225','思南县','snx','SINANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49E971B3-3322-5B41-ABD9-3BAD0F621011','522226','印江土家族苗族自治县','yjtjzmzzzx','YINJIANGTUJIAZUMIAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49E971B3-3322-5B41-ABD9-3BAD0F621011','522227','德江县','djx','DEJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49E971B3-3322-5B41-ABD9-3BAD0F621011','522228','沿河土家族自治县','yhtjzzzx','YANHETUJIAZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49E971B3-3322-5B41-ABD9-3BAD0F621011','522229','松桃苗族自治县','stmzzzx','SONGTAOMIAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'49E971B3-3322-5B41-ABD9-3BAD0F621011','522230','万山特区','wstq','WANSHANTEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('DFC7DF11-1E6A-FF62-D14F-A5B8A1D510D1','7905E4F0-3945-965A-B691-31CDFC772EB3','522300','黔西南布依族苗族自治州','qxnbyzmzzzz','QIANXINANBUYIZUMIAOZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DFC7DF11-1E6A-FF62-D14F-A5B8A1D510D1','522301','兴义市','xys','XINGYISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DFC7DF11-1E6A-FF62-D14F-A5B8A1D510D1','522322','兴仁县','xrx','XINGRENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DFC7DF11-1E6A-FF62-D14F-A5B8A1D510D1','522323','普安县','pax','PUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DFC7DF11-1E6A-FF62-D14F-A5B8A1D510D1','522324','晴隆县','qlx','QINGLONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DFC7DF11-1E6A-FF62-D14F-A5B8A1D510D1','522325','贞丰县','zfx','ZHENFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DFC7DF11-1E6A-FF62-D14F-A5B8A1D510D1','522326','望谟县','wmx','WANGMOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DFC7DF11-1E6A-FF62-D14F-A5B8A1D510D1','522327','册亨县','chx','CEHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DFC7DF11-1E6A-FF62-D14F-A5B8A1D510D1','522328','安龙县','alx','ANLONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('3220A085-4A70-90EA-ABCD-8C94B3040521','7905E4F0-3945-965A-B691-31CDFC772EB3','522400','毕节地区','bjdq','BIJIEDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3220A085-4A70-90EA-ABCD-8C94B3040521','522401','毕节市','bjs','BIJIESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3220A085-4A70-90EA-ABCD-8C94B3040521','522422','大方县','dfx','DAFANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3220A085-4A70-90EA-ABCD-8C94B3040521','522423','黔西县','qxx','QIANXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3220A085-4A70-90EA-ABCD-8C94B3040521','522424','金沙县','jsx','JINSHAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3220A085-4A70-90EA-ABCD-8C94B3040521','522425','织金县','zjx','ZHIJINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3220A085-4A70-90EA-ABCD-8C94B3040521','522426','纳雍县','nyx','NAYONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3220A085-4A70-90EA-ABCD-8C94B3040521','522427','威宁彝族回族苗族自治县','wnyzhzmzzzx','WEININGYIZUHUIZUMIAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3220A085-4A70-90EA-ABCD-8C94B3040521','522428','赫章县','hzx','HEZHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('C25A8392-5F47-BF40-6A45-76F52C247B80','7905E4F0-3945-965A-B691-31CDFC772EB3','522500','安顺地区','asdq','ANSHUNDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C25A8392-5F47-BF40-6A45-76F52C247B80','522501','安顺市','ass','ANSHUNSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C25A8392-5F47-BF40-6A45-76F52C247B80','522526','平坝县','pbx','PINGBAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C25A8392-5F47-BF40-6A45-76F52C247B80','522527','普定县','pdx','PUDINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C25A8392-5F47-BF40-6A45-76F52C247B80','522528','关岭布依族苗族自治县','glbyzmzzzx','GUANLINGBUYIZUMIAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C25A8392-5F47-BF40-6A45-76F52C247B80','522529','镇宁布依族苗族自治县','znbyzmzzzx','ZHENNINGBUYIZUMIAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C25A8392-5F47-BF40-6A45-76F52C247B80','522530','紫云苗族布依族自治县','zymzbyzzzx','ZIYUNMIAOZUBUYIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('067EC4D3-EA1A-3F46-35BB-F4CA89134730','7905E4F0-3945-965A-B691-31CDFC772EB3','522600','黔东南苗族侗族自治州','qdnmzdzzzz','QIANDONGNANMIAOZUDONGZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067EC4D3-EA1A-3F46-35BB-F4CA89134730','522601','凯里市','kls','KAILISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067EC4D3-EA1A-3F46-35BB-F4CA89134730','522622','黄平县','hpx','HUANGPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067EC4D3-EA1A-3F46-35BB-F4CA89134730','522623','施秉县','sbx','SHIBINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067EC4D3-EA1A-3F46-35BB-F4CA89134730','522624','三穗县','ssx','SANSUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067EC4D3-EA1A-3F46-35BB-F4CA89134730','522625','镇远县','zyx','ZHENYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067EC4D3-EA1A-3F46-35BB-F4CA89134730','522626','岑巩县','cgx','CENGONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067EC4D3-EA1A-3F46-35BB-F4CA89134730','522627','天柱县','tzx','TIANZHUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067EC4D3-EA1A-3F46-35BB-F4CA89134730','522628','锦屏县','jpx','JINPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067EC4D3-EA1A-3F46-35BB-F4CA89134730','522629','剑河县','jhx','JIANHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067EC4D3-EA1A-3F46-35BB-F4CA89134730','522630','台江县','tjx','TAIJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067EC4D3-EA1A-3F46-35BB-F4CA89134730','522631','黎平县','lpx','LIPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067EC4D3-EA1A-3F46-35BB-F4CA89134730','522632','榕江县','rjx','RONGJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067EC4D3-EA1A-3F46-35BB-F4CA89134730','522633','从江县','cjx','CONGJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067EC4D3-EA1A-3F46-35BB-F4CA89134730','522634','雷山县','lsx','LEISHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067EC4D3-EA1A-3F46-35BB-F4CA89134730','522635','麻江县','mjx','MAJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'067EC4D3-EA1A-3F46-35BB-F4CA89134730','522636','丹寨县','dzx','DANZHAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('761EF027-3DF0-948B-D3C3-E41F1B9FBA98','7905E4F0-3945-965A-B691-31CDFC772EB3','522700','黔南布依族苗族自治州','qnbyzmzzzz','QIANNANBUYIZUMIAOZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'761EF027-3DF0-948B-D3C3-E41F1B9FBA98','522701','都匀市','dys','DOUYUNSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'761EF027-3DF0-948B-D3C3-E41F1B9FBA98','522702','福泉市','fqs','FUQUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'761EF027-3DF0-948B-D3C3-E41F1B9FBA98','522722','荔波县','lbx','LIBOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'761EF027-3DF0-948B-D3C3-E41F1B9FBA98','522723','贵定县','gdx','GUIDINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'761EF027-3DF0-948B-D3C3-E41F1B9FBA98','522725','瓮安县','wax','WENGANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'761EF027-3DF0-948B-D3C3-E41F1B9FBA98','522726','独山县','dsx','DUSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'761EF027-3DF0-948B-D3C3-E41F1B9FBA98','522727','平塘县','ptx','PINGTANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'761EF027-3DF0-948B-D3C3-E41F1B9FBA98','522728','罗甸县','ldx','LUODIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'761EF027-3DF0-948B-D3C3-E41F1B9FBA98','522729','长顺县','zsx','ZHANGSHUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'761EF027-3DF0-948B-D3C3-E41F1B9FBA98','522730','龙里县','llx','LONGLIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'761EF027-3DF0-948B-D3C3-E41F1B9FBA98','522731','惠水县','hsx','HUISHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'761EF027-3DF0-948B-D3C3-E41F1B9FBA98','522732','三都水族自治县','sdszzzx','SANDOUSHUIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--云南省
INSERT INTO t_data_dictionary_common
VALUES('EC4FB775-4F2B-7017-6D33-442FC4161D30','9','530000','云南省','yns','YUNNANSHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('EA013A28-05FF-03CB-282F-69F412F34E6A','EC4FB775-4F2B-7017-6D33-442FC4161D30','530100','昆明市','kms','KUNMINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EA013A28-05FF-03CB-282F-69F412F34E6A','530101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EA013A28-05FF-03CB-282F-69F412F34E6A','530102','五华区','whq','WUHUAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'EA013A28-05FF-03CB-282F-69F412F34E6A','530103','盘龙区','plq','PANLONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('41F49559-04A6-4AE9-3DDD-9BA29120E773','EC4FB775-4F2B-7017-6D33-442FC4161D30','530300','曲靖市','qjs','QUJINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'41F49559-04A6-4AE9-3DDD-9BA29120E773','530301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'41F49559-04A6-4AE9-3DDD-9BA29120E773','530302','麒麟区','qlq','QILINQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'41F49559-04A6-4AE9-3DDD-9BA29120E773','530321','马龙县','mlx','MALONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'41F49559-04A6-4AE9-3DDD-9BA29120E773','530322','陆良县','llx','LULIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'41F49559-04A6-4AE9-3DDD-9BA29120E773','530323','师宗县','szx','SHIZONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'41F49559-04A6-4AE9-3DDD-9BA29120E773','530324','罗平县','lpx','LUOPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'41F49559-04A6-4AE9-3DDD-9BA29120E773','530325','富源县','fyx','FUYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'41F49559-04A6-4AE9-3DDD-9BA29120E773','530326','会泽县','hzx','HUIZEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'41F49559-04A6-4AE9-3DDD-9BA29120E773','530328','沾益县','zyx','ZHANYIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'41F49559-04A6-4AE9-3DDD-9BA29120E773','530381','宣威市','xws','XUANWEISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('4EC751FD-05AB-D5BB-6DC2-41BE0DC99FAF','EC4FB775-4F2B-7017-6D33-442FC4161D30','530400','玉溪市','yxs','YUXISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4EC751FD-05AB-D5BB-6DC2-41BE0DC99FAF','530401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4EC751FD-05AB-D5BB-6DC2-41BE0DC99FAF','530402','红塔区','htq','HONGTAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4EC751FD-05AB-D5BB-6DC2-41BE0DC99FAF','530421','江川县','jcx','JIANGCHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4EC751FD-05AB-D5BB-6DC2-41BE0DC99FAF','530422','澄江县','cjx','CHENGJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4EC751FD-05AB-D5BB-6DC2-41BE0DC99FAF','530423','通海县','thx','TONGHAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4EC751FD-05AB-D5BB-6DC2-41BE0DC99FAF','530424','华宁县','hnx','HUANINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4EC751FD-05AB-D5BB-6DC2-41BE0DC99FAF','530425','易门县','ymx','YIMENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4EC751FD-05AB-D5BB-6DC2-41BE0DC99FAF','530426','峨山彝族自治县','esyzzzx','ESHANYIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4EC751FD-05AB-D5BB-6DC2-41BE0DC99FAF','530427','新平彝族傣族自治县','xpyzdzzzx','XINPINGYIZUDAIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4EC751FD-05AB-D5BB-6DC2-41BE0DC99FAF','530428','元江哈尼族彝族傣族自治县','yjhnzyzdzzzx','YUANJIANGHANIZUYIZUDAIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('1234E59A-B189-3740-EB37-D262E2DE80B6','EC4FB775-4F2B-7017-6D33-442FC4161D30','532100','昭通地区','ztdq','ZHAOTONGDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1234E59A-B189-3740-EB37-D262E2DE80B6','532101','昭通市','zts','ZHAOTONGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1234E59A-B189-3740-EB37-D262E2DE80B6','532122','鲁甸县','ldx','LUDIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1234E59A-B189-3740-EB37-D262E2DE80B6','532123','巧家县','qjx','QIAOJIAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1234E59A-B189-3740-EB37-D262E2DE80B6','532124','盐津县','yjx','YANJINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1234E59A-B189-3740-EB37-D262E2DE80B6','532125','大关县','dgx','DAGUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1234E59A-B189-3740-EB37-D262E2DE80B6','532126','永善县','ysx','YONGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1234E59A-B189-3740-EB37-D262E2DE80B6','532127','绥江县','sjx','SUIJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1234E59A-B189-3740-EB37-D262E2DE80B6','532128','镇雄县','zxx','ZHENXIONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1234E59A-B189-3740-EB37-D262E2DE80B6','532129','彝良县','ylx','YILIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1234E59A-B189-3740-EB37-D262E2DE80B6','532130','威信县','wxx','WEIXINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'1234E59A-B189-3740-EB37-D262E2DE80B6','532131','水富县','sfx','SHUIFUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E511D48D-EAB0-BDB2-8A1C-19A4CFB9D672','EC4FB775-4F2B-7017-6D33-442FC4161D30','532300','楚雄彝族自治州','cxyzzzz','CHUXIONGYIZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E511D48D-EAB0-BDB2-8A1C-19A4CFB9D672','532301','楚雄市','cxs','CHUXIONGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E511D48D-EAB0-BDB2-8A1C-19A4CFB9D672','532322','双柏县','sbx','SHUANGBOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E511D48D-EAB0-BDB2-8A1C-19A4CFB9D672','532323','牟定县','mdx','MOUDINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E511D48D-EAB0-BDB2-8A1C-19A4CFB9D672','532324','南华县','nhx','NANHUAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E511D48D-EAB0-BDB2-8A1C-19A4CFB9D672','532325','姚安县','yax','YAOANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E511D48D-EAB0-BDB2-8A1C-19A4CFB9D672','532326','大姚县','dyx','DAYAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E511D48D-EAB0-BDB2-8A1C-19A4CFB9D672','532327','永仁县','yrx','YONGRENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E511D48D-EAB0-BDB2-8A1C-19A4CFB9D672','532328','元谋县','ymx','YUANMOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E511D48D-EAB0-BDB2-8A1C-19A4CFB9D672','532329','武定县','wdx','WUDINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E511D48D-EAB0-BDB2-8A1C-19A4CFB9D672','532331','禄丰县','lfx','LUFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('A9FA47AA-E83F-A319-2400-4310818A7D05','EC4FB775-4F2B-7017-6D33-442FC4161D30','532500','红河哈尼族彝族自治州','hhhnzyzzzz','HONGHEHANIZUYIZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A9FA47AA-E83F-A319-2400-4310818A7D05','532501','个旧市','gjs','GEJIUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A9FA47AA-E83F-A319-2400-4310818A7D05','532502','开远市','kys','KAIYUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A9FA47AA-E83F-A319-2400-4310818A7D05','532522','蒙自县','mzx','MENGZIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A9FA47AA-E83F-A319-2400-4310818A7D05','532523','屏边苗族自治县','pbmzzzx','PINGBIANMIAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A9FA47AA-E83F-A319-2400-4310818A7D05','532524','建水县','jsx','JIANSHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A9FA47AA-E83F-A319-2400-4310818A7D05','532525','石屏县','spx','SHIPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A9FA47AA-E83F-A319-2400-4310818A7D05','532526','弥勒县','mlx','MILEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A9FA47AA-E83F-A319-2400-4310818A7D05','532527','泸西县','lxx','LUXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A9FA47AA-E83F-A319-2400-4310818A7D05','532528','元阳县','yyx','YUANYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A9FA47AA-E83F-A319-2400-4310818A7D05','532529','红河县','hhx','HONGHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A9FA47AA-E83F-A319-2400-4310818A7D05','532530','金平苗族瑶族傣族自治县','jpmzyzdzzzx','JINPINGMIAOZUYAOZUDAIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A9FA47AA-E83F-A319-2400-4310818A7D05','532531','绿春县','lcx','LU:CHUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A9FA47AA-E83F-A319-2400-4310818A7D05','532532','河口瑶族自治县','hkyzzzx','HEKOUYAOZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('4144CDF4-108C-DF47-9E0F-9CA90FAB58E5','EC4FB775-4F2B-7017-6D33-442FC4161D30','532600','文山壮族苗族自治州','wszzmzzzz','WENSHANZHUANGZUMIAOZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4144CDF4-108C-DF47-9E0F-9CA90FAB58E5','532621','文山县','wsx','WENSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4144CDF4-108C-DF47-9E0F-9CA90FAB58E5','532622','砚山县','ysx','YANSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4144CDF4-108C-DF47-9E0F-9CA90FAB58E5','532623','西畴县','xcx','XICHOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4144CDF4-108C-DF47-9E0F-9CA90FAB58E5','532624','麻栗坡县','mlpx','MALIPOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4144CDF4-108C-DF47-9E0F-9CA90FAB58E5','532625','马关县','mgx','MAGUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4144CDF4-108C-DF47-9E0F-9CA90FAB58E5','532626','丘北县','qbx','QIUBEIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4144CDF4-108C-DF47-9E0F-9CA90FAB58E5','532627','广南县','gnx','GUANGNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4144CDF4-108C-DF47-9E0F-9CA90FAB58E5','532628','富宁县','fnx','FUNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('132FD223-0A6A-F117-EF9E-14F147233833','EC4FB775-4F2B-7017-6D33-442FC4161D30','532700','思茅地区','smdq','SIMAODIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'132FD223-0A6A-F117-EF9E-14F147233833','532701','思茅市','sms','SIMAOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'132FD223-0A6A-F117-EF9E-14F147233833','532722','普洱哈尼族彝族自治县','pehnzyzzzx','PUERHANIZUYIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'132FD223-0A6A-F117-EF9E-14F147233833','532723','墨江哈尼族自治县','mjhnzzzx','MOJIANGHANIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'132FD223-0A6A-F117-EF9E-14F147233833','532724','景东彝族自治县','jdyzzzx','JINGDONGYIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'132FD223-0A6A-F117-EF9E-14F147233833','532725','景谷傣族彝族自治县','jgdzyzzzx','JINGGUDAIZUYIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'132FD223-0A6A-F117-EF9E-14F147233833','532726','镇沅彝族哈尼族拉祜族自治县','zyyzhnzlhzzzx','ZHENYUANYIZUHANIZULAHUZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'132FD223-0A6A-F117-EF9E-14F147233833','532727','江城哈尼族彝族自治县','jchnzyzzzx','JIANGCHENGHANIZUYIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'132FD223-0A6A-F117-EF9E-14F147233833','532728','孟连傣族拉祜族佤族自治县','mldzlhzwzzzx','MENGLIANDAIZULAHUZUWAZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'132FD223-0A6A-F117-EF9E-14F147233833','532729','澜沧拉祜族自治县','lclhzzzx','LANCANGLAHUZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'132FD223-0A6A-F117-EF9E-14F147233833','532730','西盟佤族自治县','xmwzzzx','XIMENGWAZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('36C22572-EEAB-4BB0-D787-61BB4A1480F9','EC4FB775-4F2B-7017-6D33-442FC4161D30','532800','西双版纳傣族自治州','xsbndzzzz','XISHUANGBANNADAIZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'36C22572-EEAB-4BB0-D787-61BB4A1480F9','532801','景洪市','jhs','JINGHONGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'36C22572-EEAB-4BB0-D787-61BB4A1480F9','532822','勐海县','mhx','MENGHAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'36C22572-EEAB-4BB0-D787-61BB4A1480F9','532823','勐腊县','mlx','MENGLAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('264AEE61-9EE9-A3CA-0D27-799937622551','EC4FB775-4F2B-7017-6D33-442FC4161D30','532900','大理白族自治州','dlbzzzz','DALIBAIZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'264AEE61-9EE9-A3CA-0D27-799937622551','532901','大理市','dls','DALISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'264AEE61-9EE9-A3CA-0D27-799937622551','532922','漾濞彝族自治县','ybyzzzx','YANGBIYIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'264AEE61-9EE9-A3CA-0D27-799937622551','532923','祥云县','xyx','XIANGYUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'264AEE61-9EE9-A3CA-0D27-799937622551','532924','宾川县','bcx','BINCHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'264AEE61-9EE9-A3CA-0D27-799937622551','532925','弥渡县','mdx','MIDUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'264AEE61-9EE9-A3CA-0D27-799937622551','532926','南涧彝族自治县','njyzzzx','NANJIANYIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'264AEE61-9EE9-A3CA-0D27-799937622551','532927','巍山彝族回族自治县','wsyzhzzzx','WEISHANYIZUHUIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'264AEE61-9EE9-A3CA-0D27-799937622551','532928','永平县','ypx','YONGPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'264AEE61-9EE9-A3CA-0D27-799937622551','532929','云龙县','ylx','YUNLONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'264AEE61-9EE9-A3CA-0D27-799937622551','532930','洱源县','eyx','ERYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'264AEE61-9EE9-A3CA-0D27-799937622551','532931','剑川县','jcx','JIANCHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'264AEE61-9EE9-A3CA-0D27-799937622551','532932','鹤庆县','hqx','HEQINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('136DB34D-07C4-1327-EDE4-3567B4767153','EC4FB775-4F2B-7017-6D33-442FC4161D30','533000','保山地区','bsdq','BAOSHANDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'136DB34D-07C4-1327-EDE4-3567B4767153','533001','保山市','bss','BAOSHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'136DB34D-07C4-1327-EDE4-3567B4767153','533022','施甸县','sdx','SHIDIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'136DB34D-07C4-1327-EDE4-3567B4767153','533023','腾冲县','tcx','TENGCHONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'136DB34D-07C4-1327-EDE4-3567B4767153','533024','龙陵县','llx','LONGLINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'136DB34D-07C4-1327-EDE4-3567B4767153','533025','昌宁县','cnx','CHANGNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('DDF2FC3C-631A-A854-DB5D-6358A366EB0C','EC4FB775-4F2B-7017-6D33-442FC4161D30','533100','德宏傣族景颇族自治州','dhdzjpzzzz','DEHONGDAIZUJINGPOZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDF2FC3C-631A-A854-DB5D-6358A366EB0C','533101','畹町市','wds','WANDINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDF2FC3C-631A-A854-DB5D-6358A366EB0C','533102','瑞丽市','rls','RUILISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDF2FC3C-631A-A854-DB5D-6358A366EB0C','533103','潞西市','lxs','LUXISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDF2FC3C-631A-A854-DB5D-6358A366EB0C','533122','梁河县','lhx','LIANGHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDF2FC3C-631A-A854-DB5D-6358A366EB0C','533123','盈江县','yjx','YINGJIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDF2FC3C-631A-A854-DB5D-6358A366EB0C','533124','陇川县','lcx','LONGCHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('08F32AF7-21C8-77EF-CDB7-0F51BFE0DBCF','EC4FB775-4F2B-7017-6D33-442FC4161D30','533200','丽江地区','ljdq','LIJIANGDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'08F32AF7-21C8-77EF-CDB7-0F51BFE0DBCF','533221','丽江纳西族自治县','ljnxzzzx','LIJIANGNAXIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'08F32AF7-21C8-77EF-CDB7-0F51BFE0DBCF','533222','永胜县','ysx','YONGSHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'08F32AF7-21C8-77EF-CDB7-0F51BFE0DBCF','533223','华坪县','hpx','HUAPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'08F32AF7-21C8-77EF-CDB7-0F51BFE0DBCF','533224','宁蒗彝族自治县','nlyzzzx','NINGLANGYIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('62D848F8-0EA4-1A05-F45C-B33520F3A063','EC4FB775-4F2B-7017-6D33-442FC4161D30','533300','怒江傈僳族自治州','njlszzzz','NUJIANGLISUZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'62D848F8-0EA4-1A05-F45C-B33520F3A063','533321','泸水县','lsx','LUSHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'62D848F8-0EA4-1A05-F45C-B33520F3A063','533323','福贡县','fgx','FUGONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'62D848F8-0EA4-1A05-F45C-B33520F3A063','533324','贡山独龙族怒族自治县','gsdlznzzzx','GONGSHANDULONGZUNUZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'62D848F8-0EA4-1A05-F45C-B33520F3A063','533325','兰坪白族普米族自治县','lpbzpmzzzx','LANPINGBAIZUPUMIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('DB8711DF-B12A-EEF6-EBE3-C5A34FC70088','EC4FB775-4F2B-7017-6D33-442FC4161D30','533400','迪庆藏族自治州','dqzzzzz','DIQINGZANGZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB8711DF-B12A-EEF6-EBE3-C5A34FC70088','533421','中甸县','zdx','ZHONGDIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB8711DF-B12A-EEF6-EBE3-C5A34FC70088','533422','德钦县','dqx','DEQINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB8711DF-B12A-EEF6-EBE3-C5A34FC70088','533423','维西傈僳族自治县','wxlszzzx','WEIXILISUZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('BF9C51D3-6A9E-0BFD-3804-967EF366D7C1','EC4FB775-4F2B-7017-6D33-442FC4161D30','533500','临沧地区','lcdq','LINCANGDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BF9C51D3-6A9E-0BFD-3804-967EF366D7C1','533521','临沧县','lcx','LINCANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BF9C51D3-6A9E-0BFD-3804-967EF366D7C1','533522','凤庆县','fqx','FENGQINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BF9C51D3-6A9E-0BFD-3804-967EF366D7C1','533523','云县','yx','YUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BF9C51D3-6A9E-0BFD-3804-967EF366D7C1','533524','永德县','ydx','YONGDEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BF9C51D3-6A9E-0BFD-3804-967EF366D7C1','533525','镇康县','zkx','ZHENKANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BF9C51D3-6A9E-0BFD-3804-967EF366D7C1','533526','双江拉祜族佤族布朗族傣族自治县','sjlhzwzblzdzzzx','SHUANGJIANGLAHUZUWAZUBULANGZUDAIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BF9C51D3-6A9E-0BFD-3804-967EF366D7C1','533527','耿马傣族佤族自治县','gmdzwzzzx','GENGMADAIZUWAZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BF9C51D3-6A9E-0BFD-3804-967EF366D7C1','533528','沧源佤族自治县','cywzzzx','CANGYUANWAZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--西藏自治区
INSERT INTO t_data_dictionary_common
VALUES('B58903AA-0555-7876-0846-11056D457D46','9','540000','西藏自治区','xzzzq','XIZANGZIZHIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('27FCDFF2-2CF9-E413-CE05-B828336C2DC1','B58903AA-0555-7876-0846-11056D457D46','540100','拉萨市','lss','LASASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'27FCDFF2-2CF9-E413-CE05-B828336C2DC1','540101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'27FCDFF2-2CF9-E413-CE05-B828336C2DC1','540102','城关区','cgq','CHENGGUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'27FCDFF2-2CF9-E413-CE05-B828336C2DC1','540121','林周县','lzx','LINZHOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'27FCDFF2-2CF9-E413-CE05-B828336C2DC1','540122','当雄县','dxx','DANGXIONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'27FCDFF2-2CF9-E413-CE05-B828336C2DC1','540123','尼木县','nmx','NIMUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'27FCDFF2-2CF9-E413-CE05-B828336C2DC1','540124','曲水县','qsx','QUSHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'27FCDFF2-2CF9-E413-CE05-B828336C2DC1','540125','堆龙德庆县','dldqx','DUILONGDEQINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'27FCDFF2-2CF9-E413-CE05-B828336C2DC1','540126','达孜县','dzx','DAZIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'27FCDFF2-2CF9-E413-CE05-B828336C2DC1','540127','墨竹工卡县','mzgkx','MOZHUGONGKAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('D19EA1E0-6E84-E2DF-8E69-49D26E9824ED','B58903AA-0555-7876-0846-11056D457D46','542100','昌都地区','cddq','CHANGDOUDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D19EA1E0-6E84-E2DF-8E69-49D26E9824ED','542121','昌都县','cdx','CHANGDOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D19EA1E0-6E84-E2DF-8E69-49D26E9824ED','542122','江达县','jdx','JIANGDAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D19EA1E0-6E84-E2DF-8E69-49D26E9824ED','542123','贡觉县','gjx','GONGJUEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D19EA1E0-6E84-E2DF-8E69-49D26E9824ED','542124','类乌齐县','lwqx','LEIWUQIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D19EA1E0-6E84-E2DF-8E69-49D26E9824ED','542125','丁青县','dqx','DINGQINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D19EA1E0-6E84-E2DF-8E69-49D26E9824ED','542126','察雅县','cyx','CHAYAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D19EA1E0-6E84-E2DF-8E69-49D26E9824ED','542127','八宿县','bsx','BASUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D19EA1E0-6E84-E2DF-8E69-49D26E9824ED','542128','左贡县','zgx','ZUOGONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D19EA1E0-6E84-E2DF-8E69-49D26E9824ED','542129','芒康县','mkx','MANGKANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D19EA1E0-6E84-E2DF-8E69-49D26E9824ED','542132','洛隆县','llx','LUOLONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D19EA1E0-6E84-E2DF-8E69-49D26E9824ED','542133','边坝县','bbx','BIANBAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D19EA1E0-6E84-E2DF-8E69-49D26E9824ED','542134','盐井县','yjx','YANJINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D19EA1E0-6E84-E2DF-8E69-49D26E9824ED','542135','碧土县','btx','BITUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D19EA1E0-6E84-E2DF-8E69-49D26E9824ED','542136','妥坝县','tbx','TUOBAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D19EA1E0-6E84-E2DF-8E69-49D26E9824ED','542137','生达县','sdx','SHENGDAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('DE8543AF-307D-4570-A938-267BC017A594','B58903AA-0555-7876-0846-11056D457D46','542200','山南地区','sndq','SHANNANDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE8543AF-307D-4570-A938-267BC017A594','542221','乃东县','ndx','NAIDONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE8543AF-307D-4570-A938-267BC017A594','542222','扎囊县','znx','ZHANANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE8543AF-307D-4570-A938-267BC017A594','542223','贡嘎县','ggx','GONGGAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE8543AF-307D-4570-A938-267BC017A594','542224','桑日县','srx','SANGRIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE8543AF-307D-4570-A938-267BC017A594','542225','琼结县','qjx','QIONGJIEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE8543AF-307D-4570-A938-267BC017A594','542226','曲松县','qsx','QUSONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE8543AF-307D-4570-A938-267BC017A594','542227','措美县','cmx','CUOMEIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE8543AF-307D-4570-A938-267BC017A594','542228','洛扎县','lzx','LUOZHAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE8543AF-307D-4570-A938-267BC017A594','542229','加查县','jcx','JIACHAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE8543AF-307D-4570-A938-267BC017A594','542231','隆子县','lzx','LONGZIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE8543AF-307D-4570-A938-267BC017A594','542232','错那县','cnx','CUONEIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DE8543AF-307D-4570-A938-267BC017A594','542233','浪卡子县','lkzx','LANGKAZIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('3FE0C0B3-0178-812A-6D14-03370E53C277','B58903AA-0555-7876-0846-11056D457D46','542300','日喀则地区','rkzdq','RIKAZEDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3FE0C0B3-0178-812A-6D14-03370E53C277','542301','日喀则市','rkzs','RIKAZESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3FE0C0B3-0178-812A-6D14-03370E53C277','542322','南木林县','nmlx','NANMULINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3FE0C0B3-0178-812A-6D14-03370E53C277','542323','江孜县','jzx','JIANGZIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3FE0C0B3-0178-812A-6D14-03370E53C277','542324','定日县','drx','DINGRIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3FE0C0B3-0178-812A-6D14-03370E53C277','542325','萨迦县','sjx','SAJIAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3FE0C0B3-0178-812A-6D14-03370E53C277','542326','拉孜县','lzx','LAZIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3FE0C0B3-0178-812A-6D14-03370E53C277','542327','昂仁县','arx','ANGRENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3FE0C0B3-0178-812A-6D14-03370E53C277','542328','谢通门县','xtmx','XIETONGMENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3FE0C0B3-0178-812A-6D14-03370E53C277','542329','白朗县','blx','BAILANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3FE0C0B3-0178-812A-6D14-03370E53C277','542330','仁布县','rbx','RENBUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3FE0C0B3-0178-812A-6D14-03370E53C277','542331','康马县','kmx','KANGMAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3FE0C0B3-0178-812A-6D14-03370E53C277','542332','定结县','djx','DINGJIEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3FE0C0B3-0178-812A-6D14-03370E53C277','542333','仲巴县','zbx','ZHONGBAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3FE0C0B3-0178-812A-6D14-03370E53C277','542334','亚东县','ydx','YADONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3FE0C0B3-0178-812A-6D14-03370E53C277','542335','吉隆县','jlx','JILONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3FE0C0B3-0178-812A-6D14-03370E53C277','542336','聂拉木县','nlmx','NIELAMUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3FE0C0B3-0178-812A-6D14-03370E53C277','542337','萨嘎县','sgx','SAGAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3FE0C0B3-0178-812A-6D14-03370E53C277','542338','岗巴县','gbx','GANGBAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('3F7844CE-D818-E892-4A69-4C6F8C6D9E3A','B58903AA-0555-7876-0846-11056D457D46','542400','那曲地区','nqdq','NEIQUDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3F7844CE-D818-E892-4A69-4C6F8C6D9E3A','542421','那曲县','nqx','NEIQUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3F7844CE-D818-E892-4A69-4C6F8C6D9E3A','542422','嘉黎县','jlx','JIALIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3F7844CE-D818-E892-4A69-4C6F8C6D9E3A','542423','比如县','brx','BIRUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3F7844CE-D818-E892-4A69-4C6F8C6D9E3A','542424','聂荣县','nrx','NIERONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3F7844CE-D818-E892-4A69-4C6F8C6D9E3A','542425','安多县','adx','ANDUOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3F7844CE-D818-E892-4A69-4C6F8C6D9E3A','542426','申扎县','szx','SHENZHAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3F7844CE-D818-E892-4A69-4C6F8C6D9E3A','542427','索县','sx','SUOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3F7844CE-D818-E892-4A69-4C6F8C6D9E3A','542428','班戈县','bgx','BANGEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3F7844CE-D818-E892-4A69-4C6F8C6D9E3A','542429','巴青县','bqx','BAQINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3F7844CE-D818-E892-4A69-4C6F8C6D9E3A','542430','尼玛县','nmx','NIMAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('A2E44633-C4C8-FB99-8E15-72AFEEF537FC','B58903AA-0555-7876-0846-11056D457D46','542500','阿里地区','aldq','ALIDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A2E44633-C4C8-FB99-8E15-72AFEEF537FC','542521','普兰县','plx','PULANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A2E44633-C4C8-FB99-8E15-72AFEEF537FC','542522','札达县','zdx','ZHADAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A2E44633-C4C8-FB99-8E15-72AFEEF537FC','542523','噶尔县','gex','GAERXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A2E44633-C4C8-FB99-8E15-72AFEEF537FC','542524','日土县','rtx','RITUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A2E44633-C4C8-FB99-8E15-72AFEEF537FC','542525','革吉县','gjx','GEJIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A2E44633-C4C8-FB99-8E15-72AFEEF537FC','542526','改则县','gzx','GAIZEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A2E44633-C4C8-FB99-8E15-72AFEEF537FC','542527','措勤县','cqx','CUOQINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A2E44633-C4C8-FB99-8E15-72AFEEF537FC','542528','隆格尔县','lgex','LONGGEERXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('339E3874-DCBA-86C8-449B-E70986F2CEAA','B58903AA-0555-7876-0846-11056D457D46','542600','林芝地区','lzdq','LINZHIDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'339E3874-DCBA-86C8-449B-E70986F2CEAA','542621','林芝县','lzx','LINZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'339E3874-DCBA-86C8-449B-E70986F2CEAA','542622','工布江达县','gbjdx','GONGBUJIANGDAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'339E3874-DCBA-86C8-449B-E70986F2CEAA','542623','米林县','mlx','MILINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'339E3874-DCBA-86C8-449B-E70986F2CEAA','542624','墨脱县','mtx','MOTUOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'339E3874-DCBA-86C8-449B-E70986F2CEAA','542625','波密县','bmx','BOMIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'339E3874-DCBA-86C8-449B-E70986F2CEAA','542626','察隅县','cyx','CHAYUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'339E3874-DCBA-86C8-449B-E70986F2CEAA','542627','朗县','lx','LANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--陕西省
INSERT INTO t_data_dictionary_common
VALUES('70C490F1-D983-17AA-7049-5C631C962665','9','610000','陕西省','sxs','SHANXISHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('6F3586AC-4B59-00DA-0509-C8E6D44F0C89','70C490F1-D983-17AA-7049-5C631C962665','610100','西安市','xas','XIANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F3586AC-4B59-00DA-0509-C8E6D44F0C89','610101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F3586AC-4B59-00DA-0509-C8E6D44F0C89','610102','新城区','xcq','XINCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F3586AC-4B59-00DA-0509-C8E6D44F0C89','610103','碑林区','blq','BEILINQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F3586AC-4B59-00DA-0509-C8E6D44F0C89','610104','莲湖区','lhq','LIANHUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F3586AC-4B59-00DA-0509-C8E6D44F0C89','610111','灞桥区','bqq','BAQIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F3586AC-4B59-00DA-0509-C8E6D44F0C89','610112','未央区','wyq','WEIYANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F3586AC-4B59-00DA-0509-C8E6D44F0C89','610113','雁塔区','ytq','YANTAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F3586AC-4B59-00DA-0509-C8E6D44F0C89','610114','阎良区','ylq','YANLIANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F3586AC-4B59-00DA-0509-C8E6D44F0C89','610115','临潼区','ltq','LINTONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F3586AC-4B59-00DA-0509-C8E6D44F0C89','610121','长安县','zax','ZHANGANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F3586AC-4B59-00DA-0509-C8E6D44F0C89','610122','蓝田县','ltx','LANTIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F3586AC-4B59-00DA-0509-C8E6D44F0C89','610124','周至县','zzx','ZHOUZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F3586AC-4B59-00DA-0509-C8E6D44F0C89','610125','户县','hx','HUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6F3586AC-4B59-00DA-0509-C8E6D44F0C89','610126','高陵县','glx','GAOLINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('B0FA1039-E251-D27E-EB57-CE196D89BBE7','70C490F1-D983-17AA-7049-5C631C962665','610200','铜川市','tcs','TONGCHUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B0FA1039-E251-D27E-EB57-CE196D89BBE7','610201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B0FA1039-E251-D27E-EB57-CE196D89BBE7','610202','城区','cq','CHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B0FA1039-E251-D27E-EB57-CE196D89BBE7','610203','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B0FA1039-E251-D27E-EB57-CE196D89BBE7','610221','耀县','yx','YAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B0FA1039-E251-D27E-EB57-CE196D89BBE7','610222','宜君县','yjx','YIJUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('530F8A9B-3028-A2DF-4C27-9B303A1A4E5E','70C490F1-D983-17AA-7049-5C631C962665','610300','宝鸡市','bjs','BAOJISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'530F8A9B-3028-A2DF-4C27-9B303A1A4E5E','610301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'530F8A9B-3028-A2DF-4C27-9B303A1A4E5E','610302','渭滨区','wbq','WEIBINQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'530F8A9B-3028-A2DF-4C27-9B303A1A4E5E','610303','金台区','jtq','JINTAIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'530F8A9B-3028-A2DF-4C27-9B303A1A4E5E','610321','宝鸡县','bjx','BAOJIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'530F8A9B-3028-A2DF-4C27-9B303A1A4E5E','610322','凤翔县','fxx','FENGXIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'530F8A9B-3028-A2DF-4C27-9B303A1A4E5E','610323','岐山县','qsx','QISHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'530F8A9B-3028-A2DF-4C27-9B303A1A4E5E','610324','扶风县','ffx','FUFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'530F8A9B-3028-A2DF-4C27-9B303A1A4E5E','610326','眉县','mx','MEIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'530F8A9B-3028-A2DF-4C27-9B303A1A4E5E','610327','陇县','lx','LONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'530F8A9B-3028-A2DF-4C27-9B303A1A4E5E','610328','千阳县','qyx','QIANYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'530F8A9B-3028-A2DF-4C27-9B303A1A4E5E','610329','麟游县','lyx','LINYOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'530F8A9B-3028-A2DF-4C27-9B303A1A4E5E','610330','凤县','fx','FENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'530F8A9B-3028-A2DF-4C27-9B303A1A4E5E','610331','太白县','tbx','TAIBAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('F105B4B1-4894-5213-3A90-E1AA77BFAEB9','70C490F1-D983-17AA-7049-5C631C962665','610400','咸阳市','xys','XIANYANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F105B4B1-4894-5213-3A90-E1AA77BFAEB9','610401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F105B4B1-4894-5213-3A90-E1AA77BFAEB9','610402','秦都区','qdq','QINDOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F105B4B1-4894-5213-3A90-E1AA77BFAEB9','610403','杨陵区','ylq','YANGLINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F105B4B1-4894-5213-3A90-E1AA77BFAEB9','610404','渭城区','wcq','WEICHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F105B4B1-4894-5213-3A90-E1AA77BFAEB9','610422','三原县','syx','SANYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F105B4B1-4894-5213-3A90-E1AA77BFAEB9','610423','泾阳县','jyx','JINGYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F105B4B1-4894-5213-3A90-E1AA77BFAEB9','610424','乾县','qx','QIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F105B4B1-4894-5213-3A90-E1AA77BFAEB9','610425','礼泉县','lqx','LIQUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F105B4B1-4894-5213-3A90-E1AA77BFAEB9','610426','永寿县','ysx','YONGSHOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F105B4B1-4894-5213-3A90-E1AA77BFAEB9','610427','彬县','bx','BINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F105B4B1-4894-5213-3A90-E1AA77BFAEB9','610428','长武县','zwx','ZHANGWUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F105B4B1-4894-5213-3A90-E1AA77BFAEB9','610429','旬邑县','xyx','XUNYIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F105B4B1-4894-5213-3A90-E1AA77BFAEB9','610430','淳化县','chx','CHUNHUAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F105B4B1-4894-5213-3A90-E1AA77BFAEB9','610431','武功县','wgx','WUGONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F105B4B1-4894-5213-3A90-E1AA77BFAEB9','610481','兴平市','xps','XINGPINGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('AE7E01C2-61A4-3126-0748-FFFDD2BE6EBF','70C490F1-D983-17AA-7049-5C631C962665','610500','渭南市','wns','WEINANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AE7E01C2-61A4-3126-0748-FFFDD2BE6EBF','610501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AE7E01C2-61A4-3126-0748-FFFDD2BE6EBF','610502','临渭区','lwq','LINWEIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AE7E01C2-61A4-3126-0748-FFFDD2BE6EBF','610521','华县','hx','HUAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AE7E01C2-61A4-3126-0748-FFFDD2BE6EBF','610522','潼关县','tgx','TONGGUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AE7E01C2-61A4-3126-0748-FFFDD2BE6EBF','610523','大荔县','dlx','DALIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AE7E01C2-61A4-3126-0748-FFFDD2BE6EBF','610524','合阳县','hyx','HEYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AE7E01C2-61A4-3126-0748-FFFDD2BE6EBF','610525','澄城县','ccx','CHENGCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AE7E01C2-61A4-3126-0748-FFFDD2BE6EBF','610526','蒲城县','pcx','PUCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AE7E01C2-61A4-3126-0748-FFFDD2BE6EBF','610527','白水县','bsx','BAISHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AE7E01C2-61A4-3126-0748-FFFDD2BE6EBF','610528','富平县','fpx','FUPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AE7E01C2-61A4-3126-0748-FFFDD2BE6EBF','610581','韩城市','hcs','HANCHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AE7E01C2-61A4-3126-0748-FFFDD2BE6EBF','610582','华阴市','hys','HUAYINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('08F49DFE-9953-3122-CEDE-0571B1A1BF34','70C490F1-D983-17AA-7049-5C631C962665','610600','延安市','yas','YANANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'08F49DFE-9953-3122-CEDE-0571B1A1BF34','610601','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'08F49DFE-9953-3122-CEDE-0571B1A1BF34','610602','宝塔区','btq','BAOTAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'08F49DFE-9953-3122-CEDE-0571B1A1BF34','610621','延长县','yzx','YANZHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'08F49DFE-9953-3122-CEDE-0571B1A1BF34','610622','延川县','ycx','YANCHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'08F49DFE-9953-3122-CEDE-0571B1A1BF34','610623','子长县','zzx','ZIZHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'08F49DFE-9953-3122-CEDE-0571B1A1BF34','610624','安塞县','asx','ANSAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'08F49DFE-9953-3122-CEDE-0571B1A1BF34','610625','志丹县','zdx','ZHIDANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'08F49DFE-9953-3122-CEDE-0571B1A1BF34','610626','吴旗县','wqx','WUQIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'08F49DFE-9953-3122-CEDE-0571B1A1BF34','610627','甘泉县','gqx','GANQUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'08F49DFE-9953-3122-CEDE-0571B1A1BF34','610628','富县','fx','FUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'08F49DFE-9953-3122-CEDE-0571B1A1BF34','610629','洛川县','lcx','LUOCHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'08F49DFE-9953-3122-CEDE-0571B1A1BF34','610630','宜川县','ycx','YICHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'08F49DFE-9953-3122-CEDE-0571B1A1BF34','610631','黄龙县','hlx','HUANGLONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'08F49DFE-9953-3122-CEDE-0571B1A1BF34','610632','黄陵县','hlx','HUANGLINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('26915E56-3CAD-B2F6-0D82-76A93582B430','70C490F1-D983-17AA-7049-5C631C962665','610700','汉中市','hzs','HANZHONGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'26915E56-3CAD-B2F6-0D82-76A93582B430','610701','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'26915E56-3CAD-B2F6-0D82-76A93582B430','610702','汉台区','htq','HANTAIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'26915E56-3CAD-B2F6-0D82-76A93582B430','610721','南郑县','nzx','NANZHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'26915E56-3CAD-B2F6-0D82-76A93582B430','610722','城固县','cgx','CHENGGUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'26915E56-3CAD-B2F6-0D82-76A93582B430','610723','洋县','yx','YANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'26915E56-3CAD-B2F6-0D82-76A93582B430','610724','西乡县','xxx','XIXIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'26915E56-3CAD-B2F6-0D82-76A93582B430','610725','勉县','mx','MIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'26915E56-3CAD-B2F6-0D82-76A93582B430','610726','宁强县','nqx','NINGQIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'26915E56-3CAD-B2F6-0D82-76A93582B430','610727','略阳县','lyx','LU:EYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'26915E56-3CAD-B2F6-0D82-76A93582B430','610728','镇巴县','zbx','ZHENBAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'26915E56-3CAD-B2F6-0D82-76A93582B430','610729','留坝县','lbx','LIUBAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'26915E56-3CAD-B2F6-0D82-76A93582B430','610730','佛坪县','fpx','FOPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('9178C2C5-F784-03E8-FCE0-9AC19BE75189','70C490F1-D983-17AA-7049-5C631C962665','612400','安康地区','akdq','ANKANGDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9178C2C5-F784-03E8-FCE0-9AC19BE75189','612401','安康市','aks','ANKANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9178C2C5-F784-03E8-FCE0-9AC19BE75189','612422','汉阴县','hyx','HANYINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9178C2C5-F784-03E8-FCE0-9AC19BE75189','612423','石泉县','sqx','SHIQUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9178C2C5-F784-03E8-FCE0-9AC19BE75189','612424','宁陕县','nsx','NINGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9178C2C5-F784-03E8-FCE0-9AC19BE75189','612425','紫阳县','zyx','ZIYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9178C2C5-F784-03E8-FCE0-9AC19BE75189','612426','岚皋县','lgx','LANGAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9178C2C5-F784-03E8-FCE0-9AC19BE75189','612427','平利县','plx','PINGLIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9178C2C5-F784-03E8-FCE0-9AC19BE75189','612428','镇坪县','zpx','ZHENPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9178C2C5-F784-03E8-FCE0-9AC19BE75189','612429','旬阳县','xyx','XUNYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9178C2C5-F784-03E8-FCE0-9AC19BE75189','612430','白河县','bhx','BAIHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('90A4BE4B-055A-123B-9638-BAD987EFEF55','70C490F1-D983-17AA-7049-5C631C962665','612500','商洛地区','sldq','SHANGLUODIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'90A4BE4B-055A-123B-9638-BAD987EFEF55','612501','商州市','szs','SHANGZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'90A4BE4B-055A-123B-9638-BAD987EFEF55','612522','洛南县','lnx','LUONANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'90A4BE4B-055A-123B-9638-BAD987EFEF55','612523','丹凤县','dfx','DANFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'90A4BE4B-055A-123B-9638-BAD987EFEF55','612524','商南县','snx','SHANGNANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'90A4BE4B-055A-123B-9638-BAD987EFEF55','612525','山阳县','syx','SHANYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'90A4BE4B-055A-123B-9638-BAD987EFEF55','612526','镇安县','zax','ZHENANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'90A4BE4B-055A-123B-9638-BAD987EFEF55','612527','柞水县','zsx','ZUOSHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('76DBA53E-1713-1EEA-A636-4CC727ABDB7A','70C490F1-D983-17AA-7049-5C631C962665','612700','榆林地区','yldq','YULINDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'76DBA53E-1713-1EEA-A636-4CC727ABDB7A','612701','榆林市','yls','YULINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'76DBA53E-1713-1EEA-A636-4CC727ABDB7A','612722','神木县','smx','SHENMUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'76DBA53E-1713-1EEA-A636-4CC727ABDB7A','612723','府谷县','fgx','FUGUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'76DBA53E-1713-1EEA-A636-4CC727ABDB7A','612724','横山县','hsx','HENGSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'76DBA53E-1713-1EEA-A636-4CC727ABDB7A','612725','靖边县','jbx','JINGBIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'76DBA53E-1713-1EEA-A636-4CC727ABDB7A','612726','定边县','dbx','DINGBIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'76DBA53E-1713-1EEA-A636-4CC727ABDB7A','612727','绥德县','sdx','SUIDEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'76DBA53E-1713-1EEA-A636-4CC727ABDB7A','612728','米脂县','mzx','MIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'76DBA53E-1713-1EEA-A636-4CC727ABDB7A','612729','佳县','jx','JIAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'76DBA53E-1713-1EEA-A636-4CC727ABDB7A','612730','吴堡县','wbx','WUBAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'76DBA53E-1713-1EEA-A636-4CC727ABDB7A','612731','清涧县','qjx','QINGJIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'76DBA53E-1713-1EEA-A636-4CC727ABDB7A','612732','子洲县','zzx','ZIZHOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--甘肃
INSERT INTO t_data_dictionary_common
VALUES('B4F12177-6D15-3829-8102-8D71A232D44B','9','620000','甘肃省','gss','GANSUSHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('21981644-801F-535F-C341-A712E8449CE8','B4F12177-6D15-3829-8102-8D71A232D44B','620100','兰州市','lzs','LANZHOUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'21981644-801F-535F-C341-A712E8449CE8','620101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'21981644-801F-535F-C341-A712E8449CE8','620102','城关区','cgq','CHENGGUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'21981644-801F-535F-C341-A712E8449CE8','620103','七里河区','qlhq','QILIHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'21981644-801F-535F-C341-A712E8449CE8','620104','西固区','xgq','XIGUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'21981644-801F-535F-C341-A712E8449CE8','620105','安宁区','anq','ANNINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'21981644-801F-535F-C341-A712E8449CE8','620111','红古区','hgq','HONGGUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'21981644-801F-535F-C341-A712E8449CE8','620121','永登县','ydx','YONGDENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'21981644-801F-535F-C341-A712E8449CE8','620122','皋兰县','glx','GAOLANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'21981644-801F-535F-C341-A712E8449CE8','620123','榆中县','yzx','YUZHONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('C9C31C44-5752-CD93-3A66-F8EB093E4A70','B4F12177-6D15-3829-8102-8D71A232D44B','620200','嘉峪关市','jygs','JIAYUGUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C9C31C44-5752-CD93-3A66-F8EB093E4A70','620201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C9C31C44-5752-CD93-3A66-F8EB093E4A70','620300','金昌市','jcs','JINCHANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C9C31C44-5752-CD93-3A66-F8EB093E4A70','620301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C9C31C44-5752-CD93-3A66-F8EB093E4A70','620302','金川区','jcq','JINCHUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C9C31C44-5752-CD93-3A66-F8EB093E4A70','620321','永昌县','ycx','YONGCHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('4969C2A1-2BD0-C3EA-3374-8B7879CC1B78','B4F12177-6D15-3829-8102-8D71A232D44B','620400','白银市','bys','BAIYINSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4969C2A1-2BD0-C3EA-3374-8B7879CC1B78','620401','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4969C2A1-2BD0-C3EA-3374-8B7879CC1B78','620402','白银区','byq','BAIYINQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4969C2A1-2BD0-C3EA-3374-8B7879CC1B78','620403','平川区','pcq','PINGCHUANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4969C2A1-2BD0-C3EA-3374-8B7879CC1B78','620421','靖远县','jyx','JINGYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4969C2A1-2BD0-C3EA-3374-8B7879CC1B78','620422','会宁县','hnx','HUININGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4969C2A1-2BD0-C3EA-3374-8B7879CC1B78','620423','景泰县','jtx','JINGTAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('2718CC32-48CC-0067-3B3E-1F4F794DD7E0','B4F12177-6D15-3829-8102-8D71A232D44B','620500','天水市','tss','TIANSHUISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2718CC32-48CC-0067-3B3E-1F4F794DD7E0','620501','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2718CC32-48CC-0067-3B3E-1F4F794DD7E0','620502','秦城区','qcq','QINCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2718CC32-48CC-0067-3B3E-1F4F794DD7E0','620503','北道区','bdq','BEIDAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2718CC32-48CC-0067-3B3E-1F4F794DD7E0','620521','清水县','qsx','QINGSHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2718CC32-48CC-0067-3B3E-1F4F794DD7E0','620522','秦安县','qax','QINANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2718CC32-48CC-0067-3B3E-1F4F794DD7E0','620523','甘谷县','ggx','GANGUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2718CC32-48CC-0067-3B3E-1F4F794DD7E0','620524','武山县','wsx','WUSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'2718CC32-48CC-0067-3B3E-1F4F794DD7E0','620525','张家川回族自治县','zjchzzzx','ZHANGJIACHUANHUIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('48BD6FD6-BBDC-E92A-F38D-0C83B85CF44F','B4F12177-6D15-3829-8102-8D71A232D44B','622100','酒泉地区','jqdq','JIUQUANDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'48BD6FD6-BBDC-E92A-F38D-0C83B85CF44F','622101','玉门市','yms','YUMENSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'48BD6FD6-BBDC-E92A-F38D-0C83B85CF44F','622102','酒泉市','jqs','JIUQUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'48BD6FD6-BBDC-E92A-F38D-0C83B85CF44F','622103','敦煌市','dhs','DUNHUANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'48BD6FD6-BBDC-E92A-F38D-0C83B85CF44F','622123','金塔县','jtx','JINTAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'48BD6FD6-BBDC-E92A-F38D-0C83B85CF44F','622124','肃北蒙古族自治县','sbmgzzzx','SUBEIMENGGUZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'48BD6FD6-BBDC-E92A-F38D-0C83B85CF44F','622125','阿克塞哈萨克族自治县','akshskzzzx','AKESAIHASAKEZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'48BD6FD6-BBDC-E92A-F38D-0C83B85CF44F','622126','安西县','axx','ANXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('AEE181F6-7AAE-FE0E-A49E-1A295A4A1820','B4F12177-6D15-3829-8102-8D71A232D44B','622200','张掖地区','zydq','ZHANGYEDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AEE181F6-7AAE-FE0E-A49E-1A295A4A1820','622201','张掖市','zys','ZHANGYESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AEE181F6-7AAE-FE0E-A49E-1A295A4A1820','622222','肃南裕固族自治县','snygzzzx','SUNANYUGUZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AEE181F6-7AAE-FE0E-A49E-1A295A4A1820','622223','民乐县','mlx','MINLEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AEE181F6-7AAE-FE0E-A49E-1A295A4A1820','622224','临泽县','lzx','LINZEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AEE181F6-7AAE-FE0E-A49E-1A295A4A1820','622225','高台县','gtx','GAOTAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AEE181F6-7AAE-FE0E-A49E-1A295A4A1820','622226','山丹县','sdx','SHANDANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('9563DC93-7562-B320-6F01-395AC68AB87C','B4F12177-6D15-3829-8102-8D71A232D44B','622300','武威地区','wwdq','WUWEIDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9563DC93-7562-B320-6F01-395AC68AB87C','622301','武威市','wws','WUWEISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9563DC93-7562-B320-6F01-395AC68AB87C','622322','民勤县','mqx','MINQINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9563DC93-7562-B320-6F01-395AC68AB87C','622323','古浪县','glx','GULANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9563DC93-7562-B320-6F01-395AC68AB87C','622326','天祝藏族自治县','tzzzzzx','TIANZHUZANGZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('BE8B12B5-D700-797B-AEA2-5849BF82E983','B4F12177-6D15-3829-8102-8D71A232D44B','622400','定西地区','dxdq','DINGXIDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BE8B12B5-D700-797B-AEA2-5849BF82E983','622421','定西县','dxx','DINGXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BE8B12B5-D700-797B-AEA2-5849BF82E983','622424','通渭县','twx','TONGWEIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BE8B12B5-D700-797B-AEA2-5849BF82E983','622425','陇西县','lxx','LONGXIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BE8B12B5-D700-797B-AEA2-5849BF82E983','622426','渭源县','wyx','WEIYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BE8B12B5-D700-797B-AEA2-5849BF82E983','622427','临洮县','ltx','LINTAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BE8B12B5-D700-797B-AEA2-5849BF82E983','622428','漳县','zx','ZHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BE8B12B5-D700-797B-AEA2-5849BF82E983','622429','岷县','mx','MINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('F84FCE68-D429-BC95-7196-DB23A2EAB9A9','B4F12177-6D15-3829-8102-8D71A232D44B','622600','陇南地区','lndq','LONGNANDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F84FCE68-D429-BC95-7196-DB23A2EAB9A9','622621','武都县','wdx','WUDOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F84FCE68-D429-BC95-7196-DB23A2EAB9A9','622623','宕昌县','dcx','DANGCHANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F84FCE68-D429-BC95-7196-DB23A2EAB9A9','622624','成县','cx','CHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F84FCE68-D429-BC95-7196-DB23A2EAB9A9','622625','康县','kx','KANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F84FCE68-D429-BC95-7196-DB23A2EAB9A9','622626','文县','wx','WENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F84FCE68-D429-BC95-7196-DB23A2EAB9A9','622627','西和县','xhx','XIHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F84FCE68-D429-BC95-7196-DB23A2EAB9A9','622628','礼县','lx','LIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F84FCE68-D429-BC95-7196-DB23A2EAB9A9','622629','两当县','ldx','LIANGDANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F84FCE68-D429-BC95-7196-DB23A2EAB9A9','622630','徽县','hx','HUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('3A173149-9022-3B79-A05D-92D676FB8F42','B4F12177-6D15-3829-8102-8D71A232D44B','622700','平凉地区','pldq','PINGLIANGDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3A173149-9022-3B79-A05D-92D676FB8F42','622701','平凉市','pls','PINGLIANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3A173149-9022-3B79-A05D-92D676FB8F42','622722','泾川县','jcx','JINGCHUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3A173149-9022-3B79-A05D-92D676FB8F42','622723','灵台县','ltx','LINGTAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3A173149-9022-3B79-A05D-92D676FB8F42','622724','崇信县','cxx','CHONGXINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3A173149-9022-3B79-A05D-92D676FB8F42','622725','华亭县','htx','HUATINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3A173149-9022-3B79-A05D-92D676FB8F42','622726','庄浪县','zlx','ZHUANGLANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3A173149-9022-3B79-A05D-92D676FB8F42','622727','静宁县','jnx','JINGNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('F8B2E192-7E4B-D1F5-7548-D89082FDF9C4','B4F12177-6D15-3829-8102-8D71A232D44B','622800','庆阳地区','qydq','QINGYANGDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F8B2E192-7E4B-D1F5-7548-D89082FDF9C4','622801','西峰市','xfs','XIFENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F8B2E192-7E4B-D1F5-7548-D89082FDF9C4','622821','庆阳县','qyx','QINGYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F8B2E192-7E4B-D1F5-7548-D89082FDF9C4','622822','环县','hx','HUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F8B2E192-7E4B-D1F5-7548-D89082FDF9C4','622823','华池县','hcx','HUACHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F8B2E192-7E4B-D1F5-7548-D89082FDF9C4','622824','合水县','hsx','HESHUIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F8B2E192-7E4B-D1F5-7548-D89082FDF9C4','622825','正宁县','znx','ZHENGNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F8B2E192-7E4B-D1F5-7548-D89082FDF9C4','622826','宁县','nx','NINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F8B2E192-7E4B-D1F5-7548-D89082FDF9C4','622827','镇原县','zyx','ZHENYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('6C40DDBB-F954-927E-F5B1-F97AAB54BD31','B4F12177-6D15-3829-8102-8D71A232D44B','622900','临夏回族自治州','lxhzzzz','LINXIAHUIZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6C40DDBB-F954-927E-F5B1-F97AAB54BD31','622901','临夏市','lxs','LINXIASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6C40DDBB-F954-927E-F5B1-F97AAB54BD31','622921','临夏县','lxx','LINXIAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6C40DDBB-F954-927E-F5B1-F97AAB54BD31','622922','康乐县','klx','KANGLEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6C40DDBB-F954-927E-F5B1-F97AAB54BD31','622923','永靖县','yjx','YONGJINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6C40DDBB-F954-927E-F5B1-F97AAB54BD31','622924','广河县','ghx','GUANGHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6C40DDBB-F954-927E-F5B1-F97AAB54BD31','622925','和政县','hzx','HEZHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6C40DDBB-F954-927E-F5B1-F97AAB54BD31','622926','东乡族自治县','dxzzzx','DONGXIANGZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'6C40DDBB-F954-927E-F5B1-F97AAB54BD31','622927','积石山保安族东乡族撒拉族自治县','jssbazdxzslzzzx','JISHISHANBAOANZUDONGXIANGZUSALAZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('7535456C-8268-AC15-6FE9-885EE858E81B','B4F12177-6D15-3829-8102-8D71A232D44B','623000','甘南藏族自治州','gnzzzzz','GANNANZANGZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7535456C-8268-AC15-6FE9-885EE858E81B','623001','合作市','hzs','HEZUOSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7535456C-8268-AC15-6FE9-885EE858E81B','623021','临潭县','ltx','LINTANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7535456C-8268-AC15-6FE9-885EE858E81B','623022','卓尼县','znx','ZHUONIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7535456C-8268-AC15-6FE9-885EE858E81B','623023','舟曲县','zqx','ZHOUQUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7535456C-8268-AC15-6FE9-885EE858E81B','623024','迭部县','dbx','DIEBUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7535456C-8268-AC15-6FE9-885EE858E81B','623025','玛曲县','mqx','MAQUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7535456C-8268-AC15-6FE9-885EE858E81B','623026','碌曲县','lqx','LIUQUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7535456C-8268-AC15-6FE9-885EE858E81B','623027','夏河县','xhx','XIAHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--青海
INSERT INTO t_data_dictionary_common
VALUES('1C26CF76-B084-4C55-4334-A8A76C158E29','9','630000','青海省','qhs','QINGHAISHENG',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('4CA5D979-B323-F377-3B84-AB8AEEB534F7','1C26CF76-B084-4C55-4334-A8A76C158E29','630100','西宁市','xns','XININGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4CA5D979-B323-F377-3B84-AB8AEEB534F7','630101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4CA5D979-B323-F377-3B84-AB8AEEB534F7','630102','城东区','cdq','CHENGDONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4CA5D979-B323-F377-3B84-AB8AEEB534F7','630103','城中区','czq','CHENGZHONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4CA5D979-B323-F377-3B84-AB8AEEB534F7','630104','城西区','cxq','CHENGXIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4CA5D979-B323-F377-3B84-AB8AEEB534F7','630105','城北区','cbq','CHENGBEIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4CA5D979-B323-F377-3B84-AB8AEEB534F7','630121','大通回族土族自治县','dthztzzzx','DATONGHUIZUTUZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E40BC09F-5D7C-2D28-AAF3-339D1F4C1454','1C26CF76-B084-4C55-4334-A8A76C158E29','632100','海东地区','hddq','HAIDONGDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E40BC09F-5D7C-2D28-AAF3-339D1F4C1454','632121','平安县','pax','PINGANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E40BC09F-5D7C-2D28-AAF3-339D1F4C1454','632122','民和回族土族自治县','mhhztzzzx','MINHEHUIZUTUZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E40BC09F-5D7C-2D28-AAF3-339D1F4C1454','632123','乐都县','ldx','LEDOUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E40BC09F-5D7C-2D28-AAF3-339D1F4C1454','632124','湟中县','hzx','HUANGZHONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E40BC09F-5D7C-2D28-AAF3-339D1F4C1454','632125','湟源县','hyx','HUANGYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E40BC09F-5D7C-2D28-AAF3-339D1F4C1454','632126','互助土族自治县','hztzzzx','HUZHUTUZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E40BC09F-5D7C-2D28-AAF3-339D1F4C1454','632127','化隆回族自治县','hlhzzzx','HUALONGHUIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E40BC09F-5D7C-2D28-AAF3-339D1F4C1454','632128','循化撒拉族自治县','xhslzzzx','XUNHUASALAZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('D06F0CAC-CD33-D0B4-AD9B-B7F3A772E859','1C26CF76-B084-4C55-4334-A8A76C158E29','632200','海北藏族自治州','hbzzzzz','HAIBEIZANGZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D06F0CAC-CD33-D0B4-AD9B-B7F3A772E859','632221','门源回族自治县','myhzzzx','MENYUANHUIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D06F0CAC-CD33-D0B4-AD9B-B7F3A772E859','632222','祁连县','qlx','QILIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D06F0CAC-CD33-D0B4-AD9B-B7F3A772E859','632223','海晏县','hyx','HAIYANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D06F0CAC-CD33-D0B4-AD9B-B7F3A772E859','632224','刚察县','gcx','GANGCHAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('B548C1F9-D72A-5760-93D8-4F580AC58EF0','1C26CF76-B084-4C55-4334-A8A76C158E29','632300','黄南藏族自治州','hnzzzzz','HUANGNANZANGZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B548C1F9-D72A-5760-93D8-4F580AC58EF0','632321','同仁县','trx','TONGRENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B548C1F9-D72A-5760-93D8-4F580AC58EF0','632322','尖扎县','jzx','JIANZHAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B548C1F9-D72A-5760-93D8-4F580AC58EF0','632323','泽库县','zkx','ZEKUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'B548C1F9-D72A-5760-93D8-4F580AC58EF0','632324','河南蒙古族自治县','hnmgzzzx','HENANMENGGUZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('C3558FEF-3886-9A86-2905-5F3F6F3C0FFB','1C26CF76-B084-4C55-4334-A8A76C158E29','632500','海南藏族自治州','hnzzzzz','HAINANZANGZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C3558FEF-3886-9A86-2905-5F3F6F3C0FFB','632521','共和县','ghx','GONGHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C3558FEF-3886-9A86-2905-5F3F6F3C0FFB','632522','同德县','tdx','TONGDEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C3558FEF-3886-9A86-2905-5F3F6F3C0FFB','632523','贵德县','gdx','GUIDEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C3558FEF-3886-9A86-2905-5F3F6F3C0FFB','632524','兴海县','xhx','XINGHAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C3558FEF-3886-9A86-2905-5F3F6F3C0FFB','632525','贵南县','gnx','GUINANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('F2EC27F4-06AA-2940-EA6F-E14ABDFD38A9','1C26CF76-B084-4C55-4334-A8A76C158E29','632600','果洛藏族自治州','glzzzzz','GUOLUOZANGZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F2EC27F4-06AA-2940-EA6F-E14ABDFD38A9','632621','玛沁县','mqx','MAQINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F2EC27F4-06AA-2940-EA6F-E14ABDFD38A9','632622','班玛县','bmx','BANMAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F2EC27F4-06AA-2940-EA6F-E14ABDFD38A9','632623','甘德县','gdx','GANDEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F2EC27F4-06AA-2940-EA6F-E14ABDFD38A9','632624','达日县','drx','DARIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F2EC27F4-06AA-2940-EA6F-E14ABDFD38A9','632625','久治县','jzx','JIUZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F2EC27F4-06AA-2940-EA6F-E14ABDFD38A9','632626','玛多县','mdx','MADUOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('7BE4E63E-4BD0-BDFC-8367-3266EC7D6AA5','1C26CF76-B084-4C55-4334-A8A76C158E29','632700','玉树藏族自治州','yszzzzz','YUSHUZANGZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7BE4E63E-4BD0-BDFC-8367-3266EC7D6AA5','632721','玉树县','ysx','YUSHUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7BE4E63E-4BD0-BDFC-8367-3266EC7D6AA5','632722','杂多县','zdx','ZADUOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7BE4E63E-4BD0-BDFC-8367-3266EC7D6AA5','632723','称多县','cdx','CHENGDUOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7BE4E63E-4BD0-BDFC-8367-3266EC7D6AA5','632724','治多县','zdx','ZHIDUOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7BE4E63E-4BD0-BDFC-8367-3266EC7D6AA5','632725','囊谦县','nqx','NANGQIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'7BE4E63E-4BD0-BDFC-8367-3266EC7D6AA5','632726','曲麻莱县','qmlx','QUMALAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('FF2E64BC-E656-130A-68D5-1661F4A184C2','1C26CF76-B084-4C55-4334-A8A76C158E29','632800','海西蒙古族藏族自治州','hxmgzzzzzz','HAIXIMENGGUZUZANGZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FF2E64BC-E656-130A-68D5-1661F4A184C2','632801','格尔木市','gems','GEERMUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FF2E64BC-E656-130A-68D5-1661F4A184C2','632802','德令哈市','dlhs','DELINGHASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FF2E64BC-E656-130A-68D5-1661F4A184C2','632821','乌兰县','wlx','WULANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FF2E64BC-E656-130A-68D5-1661F4A184C2','632822','都兰县','dlx','DOULANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'FF2E64BC-E656-130A-68D5-1661F4A184C2','632823','天峻县','tjx','TIANJUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--宁夏
INSERT INTO t_data_dictionary_common
VALUES('0B161B60-D17A-6CB3-A3D9-B43085A62EAB','9','640000','宁夏回族自治区','nxhzzzq','NINGXIAHUIZUZIZHIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('DB51AA13-2194-B10C-FABB-A4DBA5BCA735','0B161B60-D17A-6CB3-A3D9-B43085A62EAB','640100','银川市','ycs','YINCHUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB51AA13-2194-B10C-FABB-A4DBA5BCA735','640101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB51AA13-2194-B10C-FABB-A4DBA5BCA735','640102','城区','cq','CHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB51AA13-2194-B10C-FABB-A4DBA5BCA735','640103','新城区','xcq','XINCHENGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB51AA13-2194-B10C-FABB-A4DBA5BCA735','640111','郊区','jq','JIAOQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB51AA13-2194-B10C-FABB-A4DBA5BCA735','640121','永宁县','ynx','YONGNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DB51AA13-2194-B10C-FABB-A4DBA5BCA735','640122','贺兰县','hlx','HELANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('82F3B498-758B-CACD-3D0B-846F237A740D','0B161B60-D17A-6CB3-A3D9-B43085A62EAB','640200','石嘴山市','szss','SHIZUISHANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'82F3B498-758B-CACD-3D0B-846F237A740D','640201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'82F3B498-758B-CACD-3D0B-846F237A740D','640202','大武口区','dwkq','DAWUKOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'82F3B498-758B-CACD-3D0B-846F237A740D','640203','石嘴山区','szsq','SHIZUISHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'82F3B498-758B-CACD-3D0B-846F237A740D','640204','石炭井区','stjq','SHITANJINGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'82F3B498-758B-CACD-3D0B-846F237A740D','640221','平罗县','plx','PINGLUOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'82F3B498-758B-CACD-3D0B-846F237A740D','640222','陶乐县','tlx','TAOLEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'82F3B498-758B-CACD-3D0B-846F237A740D','640223','惠农县','hnx','HUINONGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('9E54AC98-551F-4C94-CE1B-BB9C794CF783','0B161B60-D17A-6CB3-A3D9-B43085A62EAB','640300','吴忠市','wzs','WUZHONGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E54AC98-551F-4C94-CE1B-BB9C794CF783','640301','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E54AC98-551F-4C94-CE1B-BB9C794CF783','640302','利通区','ltq','LITONGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E54AC98-551F-4C94-CE1B-BB9C794CF783','640321','中卫县','zwx','ZHONGWEIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E54AC98-551F-4C94-CE1B-BB9C794CF783','640322','中宁县','znx','ZHONGNINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E54AC98-551F-4C94-CE1B-BB9C794CF783','640323','盐池县','ycx','YANCHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E54AC98-551F-4C94-CE1B-BB9C794CF783','640324','同心县','txx','TONGXINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E54AC98-551F-4C94-CE1B-BB9C794CF783','640381','青铜峡市','qtxs','QINGTONGXIASHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'9E54AC98-551F-4C94-CE1B-BB9C794CF783','640382','灵武市','lws','LINGWUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('3917DB33-DE14-9A0C-3956-4460D8510E03','0B161B60-D17A-6CB3-A3D9-B43085A62EAB','642200','固原地区','gydq','GUYUANDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3917DB33-DE14-9A0C-3956-4460D8510E03','642221','固原县','gyx','GUYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3917DB33-DE14-9A0C-3956-4460D8510E03','642222','海原县','hyx','HAIYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3917DB33-DE14-9A0C-3956-4460D8510E03','642223','西吉县','xjx','XIJIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3917DB33-DE14-9A0C-3956-4460D8510E03','642224','隆德县','ldx','LONGDEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3917DB33-DE14-9A0C-3956-4460D8510E03','642225','泾源县','jyx','JINGYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'3917DB33-DE14-9A0C-3956-4460D8510E03','642226','彭阳县','pyx','PENGYANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--新疆
INSERT INTO t_data_dictionary_common
VALUES('BD9544E4-FBD4-25EF-4F0D-F601414A26E3','9','650000','新疆维吾尔自治区','xjwwezzq','XINJIANGWEIWUERZIZHIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('38AF7852-AA09-CEC2-7580-1C261334F258','BD9544E4-FBD4-25EF-4F0D-F601414A26E3','650100','乌鲁木齐市','wlmqs','WULUMUQISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'38AF7852-AA09-CEC2-7580-1C261334F258','650101','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'38AF7852-AA09-CEC2-7580-1C261334F258','650102','天山区','tsq','TIANSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'38AF7852-AA09-CEC2-7580-1C261334F258','650103','沙依巴克区','sybkq','SHAYIBAKEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'38AF7852-AA09-CEC2-7580-1C261334F258','650104','新市区','xsq','XINSHIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'38AF7852-AA09-CEC2-7580-1C261334F258','650105','水磨沟区','smgq','SHUIMOGOUQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'38AF7852-AA09-CEC2-7580-1C261334F258','650106','头屯河区','tthq','TOUTUNHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'38AF7852-AA09-CEC2-7580-1C261334F258','650107','南山矿区','nskq','NANSHANKUANGQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'38AF7852-AA09-CEC2-7580-1C261334F258','650108','东山区','dsq','DONGSHANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'38AF7852-AA09-CEC2-7580-1C261334F258','650121','乌鲁木齐县','wlmqx','WULUMUQIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('C8BE6867-CCBC-80B6-E0F8-B9587256B7E0','BD9544E4-FBD4-25EF-4F0D-F601414A26E3','650200','克拉玛依市','klmys','KELAMAYISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C8BE6867-CCBC-80B6-E0F8-B9587256B7E0','650201','市辖区','sxq','SHIXIAQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C8BE6867-CCBC-80B6-E0F8-B9587256B7E0','650202','独山子区','dszq','DUSHANZIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C8BE6867-CCBC-80B6-E0F8-B9587256B7E0','650203','克拉玛依区','klmyq','KELAMAYIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C8BE6867-CCBC-80B6-E0F8-B9587256B7E0','650204','白碱滩区','bjtq','BAIJIANTANQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'C8BE6867-CCBC-80B6-E0F8-B9587256B7E0','650205','乌尔禾区','wehq','WUERHEQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('06E72926-C7DC-81B8-D076-DEF2A017A092','BD9544E4-FBD4-25EF-4F0D-F601414A26E3','652100','吐鲁番地区','tlfdq','TULUFANDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'06E72926-C7DC-81B8-D076-DEF2A017A092','652101','吐鲁番市','tlfs','TULUFANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'06E72926-C7DC-81B8-D076-DEF2A017A092','652122','鄯善县','ssx','SHANSHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'06E72926-C7DC-81B8-D076-DEF2A017A092','652123','托克逊县','tkxx','TUOKEXUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('AC27D2C9-AE65-0142-B882-49187B6D5CAC','BD9544E4-FBD4-25EF-4F0D-F601414A26E3','652200','哈密地区','hmdq','HAMIDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AC27D2C9-AE65-0142-B882-49187B6D5CAC','652201','哈密市','hms','HAMISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AC27D2C9-AE65-0142-B882-49187B6D5CAC','652222','巴里坤哈萨克自治县','blkhskzzx','BALIKUNHASAKEZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'AC27D2C9-AE65-0142-B882-49187B6D5CAC','652223','伊吾县','ywx','YIWUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('92716228-3A2C-62A0-1AAE-36205BB056CE','BD9544E4-FBD4-25EF-4F0D-F601414A26E3','652300','昌吉回族自治州','cjhzzzz','CHANGJIHUIZUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92716228-3A2C-62A0-1AAE-36205BB056CE','652301','昌吉市','cjs','CHANGJISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92716228-3A2C-62A0-1AAE-36205BB056CE','652302','阜康市','fks','FUKANGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92716228-3A2C-62A0-1AAE-36205BB056CE','652303','米泉市','mqs','MIQUANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92716228-3A2C-62A0-1AAE-36205BB056CE','652323','呼图壁县','htbx','HUTUBIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92716228-3A2C-62A0-1AAE-36205BB056CE','652324','玛纳斯县','mnsx','MANASIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92716228-3A2C-62A0-1AAE-36205BB056CE','652325','奇台县','qtx','QITAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92716228-3A2C-62A0-1AAE-36205BB056CE','652327','吉木萨尔县','jmsex','JIMUSAERXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'92716228-3A2C-62A0-1AAE-36205BB056CE','652328','木垒哈萨克自治县','mlhskzzx','MULEIHASAKEZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('4E7CE9EF-B95C-2E4B-D684-60009EB619FF','BD9544E4-FBD4-25EF-4F0D-F601414A26E3','652700','博尔塔拉蒙古自治州','betlmgzzz','BOERTALAMENGGUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4E7CE9EF-B95C-2E4B-D684-60009EB619FF','652701','博乐市','bls','BOLESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4E7CE9EF-B95C-2E4B-D684-60009EB619FF','652722','精河县','jhx','JINGHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'4E7CE9EF-B95C-2E4B-D684-60009EB619FF','652723','温泉县','wqx','WENQUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('DDD78031-4BD6-D65F-41BF-CDD259D72707','BD9544E4-FBD4-25EF-4F0D-F601414A26E3','652800','巴音郭楞蒙古自治州','byglmgzzz','BAYINGUOLENGMENGGUZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDD78031-4BD6-D65F-41BF-CDD259D72707','652801','库尔勒市','kels','KUERLESHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDD78031-4BD6-D65F-41BF-CDD259D72707','652822','轮台县','ltx','LUNTAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDD78031-4BD6-D65F-41BF-CDD259D72707','652823','尉犁县','wlx','WEILIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDD78031-4BD6-D65F-41BF-CDD259D72707','652824','若羌县','rqx','RUOQIANGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDD78031-4BD6-D65F-41BF-CDD259D72707','652825','且末县','qmx','QIEMOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDD78031-4BD6-D65F-41BF-CDD259D72707','652826','焉耆回族自治县','yqhzzzx','YANQIHUIZUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDD78031-4BD6-D65F-41BF-CDD259D72707','652827','和静县','hjx','HEJINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDD78031-4BD6-D65F-41BF-CDD259D72707','652828','和硕县','hsx','HESHUOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'DDD78031-4BD6-D65F-41BF-CDD259D72707','652829','博湖县','bhx','BOHUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('F0CD5959-3609-4DBB-B789-F7643D38A745','BD9544E4-FBD4-25EF-4F0D-F601414A26E3','652900','阿克苏地区','aksdq','AKESUDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0CD5959-3609-4DBB-B789-F7643D38A745','652901','阿克苏市','akss','AKESUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0CD5959-3609-4DBB-B789-F7643D38A745','652922','温宿县','wsx','WENSUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0CD5959-3609-4DBB-B789-F7643D38A745','652923','库车县','kcx','KUCHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0CD5959-3609-4DBB-B789-F7643D38A745','652924','沙雅县','syx','SHAYAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0CD5959-3609-4DBB-B789-F7643D38A745','652925','新和县','xhx','XINHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0CD5959-3609-4DBB-B789-F7643D38A745','652926','拜城县','bcx','BAICHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0CD5959-3609-4DBB-B789-F7643D38A745','652927','乌什县','wsx','WUSHENXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0CD5959-3609-4DBB-B789-F7643D38A745','652928','阿瓦提县','awtx','AWATIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'F0CD5959-3609-4DBB-B789-F7643D38A745','652929','柯坪县','kpx','KEPINGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('A6462815-231D-6B21-6FCF-9D01A26DF95D','BD9544E4-FBD4-25EF-4F0D-F601414A26E3','653000','克孜勒苏柯尔克孜自治州','kzlskekzzzz','KEZILESUKEERKEZIZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A6462815-231D-6B21-6FCF-9D01A26DF95D','653001','阿图什市','atss','ATUSHENSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A6462815-231D-6B21-6FCF-9D01A26DF95D','653022','阿克陶县','aktx','AKETAOXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A6462815-231D-6B21-6FCF-9D01A26DF95D','653023','阿合奇县','ahqx','AHEQIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'A6462815-231D-6B21-6FCF-9D01A26DF95D','653024','乌恰县','wqx','WUQIAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('D957BD7B-F4BF-0806-0D44-AD6189F96A25','BD9544E4-FBD4-25EF-4F0D-F601414A26E3','653100','喀什地区','ksdq','KASHENDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D957BD7B-F4BF-0806-0D44-AD6189F96A25','653101','喀什市','kss','KASHENSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D957BD7B-F4BF-0806-0D44-AD6189F96A25','653121','疏附县','sfx','SHUFUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D957BD7B-F4BF-0806-0D44-AD6189F96A25','653122','疏勒县','slx','SHULEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D957BD7B-F4BF-0806-0D44-AD6189F96A25','653123','英吉沙县','yjsx','YINGJISHAXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D957BD7B-F4BF-0806-0D44-AD6189F96A25','653124','泽普县','zpx','ZEPUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D957BD7B-F4BF-0806-0D44-AD6189F96A25','653125','莎车县','scx','SHACHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D957BD7B-F4BF-0806-0D44-AD6189F96A25','653126','叶城县','ycx','YECHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D957BD7B-F4BF-0806-0D44-AD6189F96A25','653127','麦盖提县','mgtx','MAIGAITIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D957BD7B-F4BF-0806-0D44-AD6189F96A25','653128','岳普湖县','yphx','YUEPUHUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D957BD7B-F4BF-0806-0D44-AD6189F96A25','653129','伽师县','jsx','JIASHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D957BD7B-F4BF-0806-0D44-AD6189F96A25','653130','巴楚县','bcx','BACHUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'D957BD7B-F4BF-0806-0D44-AD6189F96A25','653131','塔什库尔干塔吉克自治县','tskegtjkzzx','TASHENKUERGANTAJIKEZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('8FD40F18-603F-2ACE-22C9-20D682A66108','BD9544E4-FBD4-25EF-4F0D-F601414A26E3','653200','和田地区','htdq','HETIANDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8FD40F18-603F-2ACE-22C9-20D682A66108','653201','和田市','hts','HETIANSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8FD40F18-603F-2ACE-22C9-20D682A66108','653221','和田县','htx','HETIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8FD40F18-603F-2ACE-22C9-20D682A66108','653222','墨玉县','myx','MOYUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8FD40F18-603F-2ACE-22C9-20D682A66108','653223','皮山县','psx','PISHANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8FD40F18-603F-2ACE-22C9-20D682A66108','653224','洛浦县','lpx','LUOPUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8FD40F18-603F-2ACE-22C9-20D682A66108','653225','策勒县','clx','CELEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8FD40F18-603F-2ACE-22C9-20D682A66108','653226','于田县','ytx','YUTIANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'8FD40F18-603F-2ACE-22C9-20D682A66108','653227','民丰县','mfx','MINFENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('E0103D4A-A89C-7F40-4DAC-366CE687D8B7','BD9544E4-FBD4-25EF-4F0D-F601414A26E3','654000','伊犁哈萨克自治州','ylhskzzz','YILIHASAKEZIZHIZHOU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0103D4A-A89C-7F40-4DAC-366CE687D8B7','654001','奎屯市','kts','KUITUNSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0103D4A-A89C-7F40-4DAC-366CE687D8B7','654100','伊犁地区','yldq','YILIDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0103D4A-A89C-7F40-4DAC-366CE687D8B7','654101','伊宁市','yns','YININGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0103D4A-A89C-7F40-4DAC-366CE687D8B7','654121','伊宁县','ynx','YININGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0103D4A-A89C-7F40-4DAC-366CE687D8B7','654122','察布查尔锡伯自治县','cbcexbzzx','CHABUCHAERXIBOZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0103D4A-A89C-7F40-4DAC-366CE687D8B7','654123','霍城县','hcx','HUOCHENGXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0103D4A-A89C-7F40-4DAC-366CE687D8B7','654124','巩留县','glx','GONGLIUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0103D4A-A89C-7F40-4DAC-366CE687D8B7','654125','新源县','xyx','XINYUANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0103D4A-A89C-7F40-4DAC-366CE687D8B7','654126','昭苏县','zsx','ZHAOSUXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0103D4A-A89C-7F40-4DAC-366CE687D8B7','654127','特克斯县','tksx','TEKESIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'E0103D4A-A89C-7F40-4DAC-366CE687D8B7','654128','尼勒克县','nlkx','NILEKEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('0335EC08-A5C6-2C05-12B2-A34B4298E162','BD9544E4-FBD4-25EF-4F0D-F601414A26E3','654200','塔城地区','tcdq','TACHENGDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0335EC08-A5C6-2C05-12B2-A34B4298E162','654201','塔城市','tcs','TACHENGSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0335EC08-A5C6-2C05-12B2-A34B4298E162','654202','乌苏市','wss','WUSUSHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0335EC08-A5C6-2C05-12B2-A34B4298E162','654221','额敏县','emx','EMINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0335EC08-A5C6-2C05-12B2-A34B4298E162','654223','沙湾县','swx','SHAWANXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0335EC08-A5C6-2C05-12B2-A34B4298E162','654224','托里县','tlx','TUOLIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0335EC08-A5C6-2C05-12B2-A34B4298E162','654225','裕民县','ymx','YUMINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'0335EC08-A5C6-2C05-12B2-A34B4298E162','654226','和布克赛尔蒙古自治县','hbksemgzzx','HEBUKESAIERMENGGUZIZHIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES('02B09404-3228-6E03-74E4-6F02BF5A12B6','BD9544E4-FBD4-25EF-4F0D-F601414A26E3','654300','阿勒泰地区','altdq','ALETAIDIQU',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'02B09404-3228-6E03-74E4-6F02BF5A12B6','654301','阿勒泰市','alts','ALETAISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'02B09404-3228-6E03-74E4-6F02BF5A12B6','654321','布尔津县','bejx','BUERJINXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'02B09404-3228-6E03-74E4-6F02BF5A12B6','654322','富蕴县','fyx','FUYUNXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'02B09404-3228-6E03-74E4-6F02BF5A12B6','654323','福海县','fhx','FUHAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'02B09404-3228-6E03-74E4-6F02BF5A12B6','654324','哈巴河县','hbhx','HABAHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'02B09404-3228-6E03-74E4-6F02BF5A12B6','654325','青河县','qhx','QINGHEXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'02B09404-3228-6E03-74E4-6F02BF5A12B6','654326','吉木乃县','jmnx','JIMUNAIXIAN',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'BD9544E4-FBD4-25EF-4F0D-F601414A26E3','659001','石河子市','shzs','SHIHEZISHI',9,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')

--方位
INSERT INTO t_data_dictionary_common
VALUES(newid(),'61','01','正面','zm','ZHENGMIAN',61,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'61','02','左面','zm','ZUOMIAN',61,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'61','03','右面','ym','YOUMIAN',61,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'61','04','其他','qt','QITA',61,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--刑嫌等级
INSERT INTO t_data_dictionary_common
VALUES(newid(),'62','1','高危','gw','GAOWEI',62,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'62','2','重点','zd','ZHONGDIAN',62,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'62','3','一般','yb','YIBAN',62,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--可疑情况
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','01','犯有前科','fyqk','FANYOUQIANKE',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','02','受过处罚','sgcf','SHOUGUOCHUFA',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','03','涉案可疑','saky','SHEANKEYI',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','11','图谋越境','tmyj','TUMOUYUEJING',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','12','邪教可疑','xjky','XIEJIAOKEYI',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','13','非法组织','ffzz','FEIFAZUZHI',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','14','非法出版','ffcb','FEIFACHUBAN',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','17','涉恶可疑','seky','SHEEKEYI',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','18','涉黑可疑','shky','SHEHEIKEYI',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','19','涉恐可疑','skky','SHEKONGKEYI',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','23','矛盾激化','mdjh','MAODUNJIHUA',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','24','扬言犯罪','yyfz','YANGYANFANZUI',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','25','亡命之徒','wmzt','WANGMINGZHITU',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','26','寻匿工具','xngj','XUNNIGONGJU',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','27','带械外出','dxwc','DAIXIEWAICHU',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','28','携带疑物','xdyw','XIEDAIYIWU',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','29','走私可疑','zsky','ZOUSIKEYI',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','30','制贩假品','zfjp','ZHIFANJIAPIN',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','31','涉毒可疑','sdky','SHEDUKEYI',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','32','制贩传黄','ssyw','SHOUSHOUYIWU',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','35','聚赌可疑','ssyw','SHOUSHOUYIWU',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','37','收售疑物','ssyw','SHOUSHOUYIWU',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','38','物源不清','wybq','WUYUANBUQING',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','40','经济反常','jjfc','JINGJIFANCHANG',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','41','交往复杂','jwfz','JIAOWANGFUZA',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','43','成群游荡','cqyd','CHENGQUNYOUDANG',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','44','流窜可疑','lcky','LIUCUANKEYI',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','45','诈骗可疑','zpky','ZHAPIANKEYI',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','47','留宿疑人','lsyr','LIUSUYIREN',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','48','提供场所','tgcs','TIGONGCHANGSUO',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','49','昼伏夜出','zfyc','ZHOUFUYECHU',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','50','深夜不归','sybg','SHENYEBUGUI',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','51','有家不回','yjbh','YOUJIABUHUI',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','52','有工不做','ygbz','YOUGONGBUZUO',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','53','有学不上','yxbs','YOUXUEBUSHANG',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','55','证身不符','zsbf','ZHENGSHENBUFU',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','56','身份不明','sfbm','SHENFENBUMING',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','65','卖淫可疑','myky','MAIYINKEYI',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','66','嫖娼可疑','pcky','PIAOCHANGKEYI',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','67','拐卖可疑','gmky','GUAIMAIKEYI',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'63','99','其它可疑','qtky','QITAKEYI',63,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--刑嫌属性
INSERT INTO t_data_dictionary_common
VALUES(newid(),'64','3901','涉黑','sh','SHEHEI',64,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'64','3902','涉毒','sd','SHEDU',64,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'64','3903','涉黄','sh','SHEHUANG',64,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'64','3904','涉恶','se','SHEE',64,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'64','3905','涉赌','sd','SHEDU',64,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'64','3906','劳释','ls','LAOSHI',64,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'64','3907','惯犯','gf','GUANFAN',64,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'64','3908','累犯','lf','LEIFAN',64,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'64','3909','团伙','th','TUANHUO',64,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'64','3910','命案','ma','MINGAN',64,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'64','3911','涉邪','sx','SHEXIE',64,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'64','3912','经侦','jz','JINGZHEN',64,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'64','3913','其他','qt','QITA',64,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--作案手段
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','1000','预备手段','ybsd','YUBEISHOUDUAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','1100','制造条件','zztj','ZHIZAOTIAOJIAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','1300','准备工具','zbgj','ZHUNBEIGONGJU',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','1900','其他预备手段','qtybsd','QITAYUBEISHOUDUAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','2000','侵入手段','qrsd','QINRUSHOUDUAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','2100','从门侵入','cmqr','CONGMENQINRU',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','2200','从窗侵入','ccqr','CONGCHUANGQINRU',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','2300','攀登侵入','pdqr','PANDENGQINRU',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','2400','洞口侵入','dkqr','DONGKOUQINRU',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','2900','其他侵入手段','qtqrsd','QITAQINRUSHOUDUAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','3000','暴力胁迫手段','blxpsd','BAOLIXIEPOSHOUDUAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','3100','持枪','cq','CHIQIANG',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','3200','持械','cx','CHIXIE',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','3300','引爆','yb','YINBAO',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','3400','胁迫','xp','XIEPO',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','3500','施暴','sb','SHIBAO',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','3600','劫持','jc','JIECHI',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','3900','其他暴力胁迫手段','qtblxpsd','QITABAOLIXIEPOSHOUDUAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','4000','窃取手段','qqsd','QIEQUSHOUDUAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','4100','破锁开锁','psks','POSUOKAISUO',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','4200','破盗金柜','pdjj','PODAOJINJU',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','4300','破厨、箱、桌子','pc-x-zz','POCHU-XIANG-ZHUOZI',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','4400','窃包','qb','QIEBAO',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','4500','车船作案','ccza','CHECHUANZUOAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','4600','窃车','qc','QIECHE',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','4900','其他窃取手段','qtqqsd','QITAQIEQUSHOUDUAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','5000','欺诈手段','qzsd','QIZHASHOUDUAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','5100','冒充身份','mcsf','MAOCHONGSHENFEN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','5200','冒用','my','MAOYONG',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','5300','假借名义','jjmy','JIAJIEMINGYI',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','5400','以假充真','yjcz','YIJIACHONGZHEN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','5500','引诱','yy','YINYOU',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','5600','行骗','xp','XINGPIAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','5700','伪造、变造','wz-bz','WEIZAO-BIANZAO',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','5900','其他欺诈手段','qtqzsd','QITAQIZHASHOUDUAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','6000','妨害手段','fhsd','FANGHAISHOUDUAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','6100','侮辱','wr','WURU',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','6200','寻衅滋事','xxzs','XUNXINZISHI',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','6300','淫乱','yl','YINLUAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','6400','干扰','gr','GANRAO',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','6900','其他妨害手段','qtfhsd','QITAFANGHAISHOUDUAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','7000','伪装灭迹手段','wzmjsd','WEIZHUANGMIEJISHOUDUAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','7100','伪装','wz','WEIZHUANG',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','7200','毁灭痕迹','hmhj','HUIMIEHENJI',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','7300','夹带','jd','JIADAI',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','7400','藏匿','zn','ZANGNI',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','7900','其他伪装灭迹手段','qtwzmjsd','QITAWEIZHUANGMIEJISHOUDUAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','8000','利用计算机手段','lyjsjsd','LIYONGJISUANJISHOUDUAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'65','9000','其他作案手段','qtzasd','QITAZUOANSHOUDUAN',65,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--奖励分类
INSERT INTO t_data_dictionary_common
VALUES(newid(),'51','1','奖金','jj','JIANGJIN',51,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'51','2','慰问金','wwj','WEIWENJIN',51,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'51','3','补助','bz','BUZHU',51,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--惩处分类
INSERT INTO t_data_dictionary_common
VALUES(newid(),'52','1','批评教育','ppjy','PIPINGJIAOYU',52,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'52','2','警告','jg','JINGGAO',52,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'52','3','撤销刑事特情身份','cxxstqsf','CHEXIAOXINGSHITEQINGSHENFEN',52,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--初审结果
INSERT INTO t_data_dictionary_common
VALUES(newid(),'53','01','同意','ty','TONGYI',53,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'53','02','不同意','bty','BUTONGYI',53,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--特情线索:人员类别
INSERT INTO t_data_dictionary_common
VALUES(newid(),'21','09','其他类别','qtlb','QITALEIBIE',21,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--人员属性
INSERT INTO t_data_dictionary_common
VALUES(newid(),'22','09','其他属性','qtsx','QITASHUXING',22,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--身份
INSERT INTO t_data_dictionary_common
VALUES(newid(),'23','09','其他身份','qtsf','QITASHENFEN',23,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--血型
INSERT INTO t_data_dictionary_common
VALUES(newid(),'24','1','A型','Ax','AXING',24,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'24','2','B型','Bx','BXING',24,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'24','3','AB型','ABx','ABXING',24,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'24','4','O型','Ox','OXING',24,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'24','5','其他型','qtx','QITAXING',24,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'24','9','未知','wz','WEIZHI',24,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--特情相关物品
--车型
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42','1','小型车','xxc','XIAOXINGCHE',42,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42','2','微车型','wcx','WEICHEXING',42,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42','3','紧凑车型','jccx','JINCOUCHEXING',42,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42','4','中等车型','zdcx','ZHONGDENGCHEXING',42,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42','5','高级车型','gjcx','GAOJICHEXING',42,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42','6','豪华车型','hhcx','HAOHUACHEXING',42,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42','7','三厢车型','sxcx','SANXIANGCHEXING',42,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42','8','CDV车型','CDVcx','CDVCHEXING',42,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42','9','MPV车型','MPVcx','MPVCHEXING',42,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'42','19','其他车型','qtcx','QITACHEXING',42,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--数量单位
INSERT INTO t_data_dictionary_common
VALUES(newid(),'33','1','个','g','GE',33,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'33','2','双','s','SHUANG',33,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'33','3','对','d','DUI',33,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'33','4','套','t','TAO',33,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'33','5','张','z','ZHANG',33,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'33','6','盒','h','HE',33,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'33','7','条','t','TIAO',33,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'33','8','只','z','ZHI',33,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'33','19','其他','qt','QITA',33,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--重量单位
INSERT INTO t_data_dictionary_common
VALUES(newid(),'36','1','克','k','KE',36,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'36','2','千克','qk','QIANKE',36,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'36','3','顿','d','DUN',36,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'36','9','其他','qt','QITA',36,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--号牌种类
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44','1','大型民用汽车车牌','dxmyqccp','DAXINGMINYONGQICHECHEPAI',44,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44','2','小型民用汽车车牌','xxmyqccp','XIAOXINGMINYONGQICHECHEPAI',44,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44','3','武警专用汽车车牌','wjzyqccp','WUJINGZHUANYONGQICHECHEPAI',44,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44','4','其它外籍汽车车牌','qtwjqccp','QITAWAIJIQICHECHEPAI',44,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44','5','使','s','SHI',44,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44','6','领馆外籍汽车车牌','lgwjqccp','LINGGUANWAIJIQICHECHEPAI',44,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44','7','试车牌照','scpz','SHICHEPAIZHAO',44,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44','8','临时牌照','lspz','LINSHIPAIZHAO',44,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44','9','汽车补用牌照','qcbypz','QICHEBUYONGPAIZHAO',44,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44','10','绿色民航车用牌','lsmhcyp','LU:SEMINHANGCHEYONGPAI',44,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'44','19','其他车牌种类','qtcpzl','QITACHEPAIZHONGLEI',44,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--是否保险
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43','1','是','s','SHI',43,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43','2','否','f','FOU',43,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'43','3','未知','wz','WEIZHI',43,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--类型
INSERT INTO t_data_dictionary_common
VALUES(newid(),'32','99','其他类型','qtlx','QITALEIXING',32,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'37','99','其他质地','qtzd','QITAZHIDI',37,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'38','99','其他规格','qtgg','QITAGUIGE',38,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'39','99','其他性质','qtxz','QITAXINGZHI',39,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'40','99','其他成色','qtcs','QITACHENGSE',40,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'41','9','其他保险情况','qtbxqk','QITABAOXIANQINGKUANG',41,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'35','9','其他处理状态','qtclzt','QITACHULIZHUANGTAI',35,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
--颜色
--颜色
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34','1','红色','hs','HONGSE',34,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34','2','橙色','cs','CHENGSE',34,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34','3','黄色','hs','HUANGSE',34,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34','4','绿色','ls','LU:SE',34,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34','5','青色','qs','QINGSE',34,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34','6','蓝色','ls','LANSE',34,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34','7','黑色','hs','HEISE',34,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')
INSERT INTO t_data_dictionary_common
VALUES(newid(),'34','19','其他色','qts','QITASE',34,0,'F2643E70-EF1F-63CA-3BC7-AD414767E938',convert(varchar,getdate(),120),'0')






























