DROP DATABASE IF EXISTS springboot7y37k;

CREATE DATABASE springboot7y37k default character set utf8mb4 collate utf8mb4_general_ci;

USE springboot7y37k;

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`yonghuming` varchar(200) NOT NULL UNIQUE   COMMENT '用户名',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xingming` varchar(200) NOT NULL   COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`touxiang` varchar(200)    COMMENT '头像',
	`shouji` varchar(200)    COMMENT '手机',
	`youxiang` varchar(200)    COMMENT '邮箱',
	`shenfenzheng` varchar(200)    COMMENT '身份证',
	`money` float   default '0' COMMENT '余额',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,touxiang,shouji,youxiang,shenfenzheng,money) VALUES('用户1','123456','姓名1','男','http://localhost:8080/springboot7y37k/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com','440300199101010001',1);
INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,touxiang,shouji,youxiang,shenfenzheng,money) VALUES('用户2','123456','姓名2','男','http://localhost:8080/springboot7y37k/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com','440300199202020002',2);
INSERT INTO yonghu(yonghuming,mima,xingming,xingbie,touxiang,shouji,youxiang,shenfenzheng,money) VALUES('用户3','123456','姓名3','男','http://localhost:8080/springboot7y37k/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com','440300199303030003',3);

DROP TABLE IF EXISTS `jingqufenlei`;

CREATE TABLE `jingqufenlei` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`fenlei` varchar(200) NOT NULL UNIQUE   COMMENT '分类',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='景区分类';

INSERT INTO jingqufenlei(fenlei) VALUES('分类1');
INSERT INTO jingqufenlei(fenlei) VALUES('分类2');
INSERT INTO jingqufenlei(fenlei) VALUES('分类3');

DROP TABLE IF EXISTS `jingquxinxi`;

CREATE TABLE `jingquxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jingqumingcheng` varchar(200) NOT NULL   COMMENT '景区名称',
	`fenlei` varchar(200) NOT NULL   COMMENT '分类',
	`jingquxingji` varchar(200)    COMMENT '景区星级',
	`tupian` varchar(200)    COMMENT '图片',
	`menpiaojiage` int NOT NULL   COMMENT '门票价格',
	`jingqudizhi` varchar(200)    COMMENT '景区地址',
	`zixunrexian` varchar(200)    COMMENT '咨询热线',
	`jingqujieshao` longtext    COMMENT '景区介绍',
	`clicktime` datetime    COMMENT '最近点击时间',
	`clicknum` int   default '0' COMMENT '点击次数',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='景区信息';

INSERT INTO jingquxinxi(jingqumingcheng,fenlei,jingquxingji,tupian,menpiaojiage,jingqudizhi,zixunrexian,jingqujieshao,clicktime,clicknum) VALUES('景区名称1','分类1','A','http://localhost:8080/springboot7y37k/upload/jingquxinxi_tupian1.jpg',1,'景区地址1','020-89819991','景区介绍1',CURRENT_TIMESTAMP,1);
INSERT INTO jingquxinxi(jingqumingcheng,fenlei,jingquxingji,tupian,menpiaojiage,jingqudizhi,zixunrexian,jingqujieshao,clicktime,clicknum) VALUES('景区名称2','分类2','A','http://localhost:8080/springboot7y37k/upload/jingquxinxi_tupian2.jpg',2,'景区地址2','020-89819992','景区介绍2',CURRENT_TIMESTAMP,2);
INSERT INTO jingquxinxi(jingqumingcheng,fenlei,jingquxingji,tupian,menpiaojiage,jingqudizhi,zixunrexian,jingqujieshao,clicktime,clicknum) VALUES('景区名称3','分类3','A','http://localhost:8080/springboot7y37k/upload/jingquxinxi_tupian3.jpg',3,'景区地址3','020-89819993','景区介绍3',CURRENT_TIMESTAMP,3);

DROP TABLE IF EXISTS `jingqushangcheng`;

CREATE TABLE `jingqushangcheng` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`shangpinmingcheng` varchar(200) NOT NULL   COMMENT '商品名称',
	`fenlei` varchar(200)    COMMENT '分类',
	`tupian` varchar(200)    COMMENT '图片',
	`guige` varchar(200)    COMMENT '规格',
	`pinpai` varchar(200)    COMMENT '品牌',
	`xiangqing` longtext    COMMENT '详情',
	`price` float NOT NULL   COMMENT '价格',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='景区商城';

INSERT INTO jingqushangcheng(shangpinmingcheng,fenlei,tupian,guige,pinpai,xiangqing,price) VALUES('商品名称1','分类1','http://localhost:8080/springboot7y37k/upload/jingqushangcheng_tupian1.jpg','规格1','品牌1','详情1',1);
INSERT INTO jingqushangcheng(shangpinmingcheng,fenlei,tupian,guige,pinpai,xiangqing,price) VALUES('商品名称2','分类2','http://localhost:8080/springboot7y37k/upload/jingqushangcheng_tupian2.jpg','规格2','品牌2','详情2',2);
INSERT INTO jingqushangcheng(shangpinmingcheng,fenlei,tupian,guige,pinpai,xiangqing,price) VALUES('商品名称3','分类3','http://localhost:8080/springboot7y37k/upload/jingqushangcheng_tupian3.jpg','规格3','品牌3','详情3',3);

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`fenlei` varchar(200) NOT NULL UNIQUE   COMMENT '分类',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品分类';

INSERT INTO shangpinfenlei(fenlei) VALUES('分类1');
INSERT INTO shangpinfenlei(fenlei) VALUES('分类2');
INSERT INTO shangpinfenlei(fenlei) VALUES('分类3');

DROP TABLE IF EXISTS `yonghufenxiang`;

CREATE TABLE `yonghufenxiang` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`biaotimingcheng` varchar(200) NOT NULL   COMMENT '标题名称',
	`leixing` varchar(200) NOT NULL   COMMENT '类型',
	`tupian` varchar(200)    COMMENT '图片',
	`xiangqing` longtext    COMMENT '详情',
	`fenxiangriqi` date    COMMENT '分享日期',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`youxiang` varchar(200)    COMMENT '邮箱',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户分享';

INSERT INTO yonghufenxiang(biaotimingcheng,leixing,tupian,xiangqing,fenxiangriqi,yonghuming,xingming,youxiang) VALUES('标题名称1','类型1','http://localhost:8080/springboot7y37k/upload/yonghufenxiang_tupian1.jpg','详情1',CURRENT_TIMESTAMP,'用户名1','姓名1','邮箱1');
INSERT INTO yonghufenxiang(biaotimingcheng,leixing,tupian,xiangqing,fenxiangriqi,yonghuming,xingming,youxiang) VALUES('标题名称2','类型2','http://localhost:8080/springboot7y37k/upload/yonghufenxiang_tupian2.jpg','详情2',CURRENT_TIMESTAMP,'用户名2','姓名2','邮箱2');
INSERT INTO yonghufenxiang(biaotimingcheng,leixing,tupian,xiangqing,fenxiangriqi,yonghuming,xingming,youxiang) VALUES('标题名称3','类型3','http://localhost:8080/springboot7y37k/upload/yonghufenxiang_tupian3.jpg','详情3',CURRENT_TIMESTAMP,'用户名3','姓名3','邮箱3');

DROP TABLE IF EXISTS `tousujianyi`;

CREATE TABLE `tousujianyi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`biaoti` varchar(200) NOT NULL   COMMENT '标题',
	`tousujianyi` longtext    COMMENT '投诉建议',
	`riqi` date    COMMENT '日期',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`shouji` varchar(200)    COMMENT '手机',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投诉建议';

INSERT INTO tousujianyi(biaoti,tousujianyi,riqi,yonghuming,shouji,sfsh,shhf) VALUES('标题1','投诉建议1',CURRENT_TIMESTAMP,'用户名1','手机1','否','');
INSERT INTO tousujianyi(biaoti,tousujianyi,riqi,yonghuming,shouji,sfsh,shhf) VALUES('标题2','投诉建议2',CURRENT_TIMESTAMP,'用户名2','手机2','否','');
INSERT INTO tousujianyi(biaoti,tousujianyi,riqi,yonghuming,shouji,sfsh,shhf) VALUES('标题3','投诉建议3',CURRENT_TIMESTAMP,'用户名3','手机3','否','');

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`adminid` bigint    COMMENT '管理员id',
	`ask` longtext    COMMENT '提问',
	`reply` longtext    COMMENT '回复',
	`isreply` int    COMMENT '是否回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(1,1,'提问1','回复1',1);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(2,2,'提问2','回复2',2);
INSERT INTO chat(userid,adminid,ask,reply,isreply) VALUES(3,3,'提问3','回复3',3);

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`tablename` varchar(200)   default 'jingqushangcheng' COMMENT '商品表名',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`goodid` bigint NOT NULL   COMMENT '商品id',
	`goodname` varchar(200)    COMMENT '商品名称',
	`picture` varchar(200)    COMMENT '图片',
	`buynumber` int NOT NULL   COMMENT '购买数量',
	`price` float    COMMENT '单价',
	`discountprice` float    COMMENT '会员价',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名1',1,1,'商品名称1','http://localhost:8080/springboot7y37k/upload/cart_picture1.jpg',1,1,1);
INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名2',2,2,'商品名称2','http://localhost:8080/springboot7y37k/upload/cart_picture2.jpg',2,2,2);
INSERT INTO cart(tablename,userid,goodid,goodname,picture,buynumber,price,discountprice) VALUES('商品表名3',3,3,'商品名称3','http://localhost:8080/springboot7y37k/upload/cart_picture3.jpg',3,3,3);

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`orderid` varchar(200) NOT NULL UNIQUE   COMMENT '订单编号',
	`tablename` varchar(200)   default 'jingqushangcheng' COMMENT '商品表名',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`goodid` bigint NOT NULL   COMMENT '商品id',
	`goodname` varchar(200)    COMMENT '商品名称',
	`picture` varchar(200)    COMMENT '商品图片',
	`buynumber` int NOT NULL   COMMENT '购买数量',
	`price` float NOT NULL  default '0' COMMENT '价格/积分',
	`discountprice` float   default '0' COMMENT '折扣价格',
	`total` float NOT NULL  default '0' COMMENT '总价格/总积分',
	`discounttotal` float   default '0' COMMENT '折扣总价格',
	`type` int   default '1' COMMENT '支付类型',
	`status` varchar(200)    COMMENT '状态',
	`address` varchar(200)    COMMENT '地址',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';


DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`address` varchar(200) NOT NULL   COMMENT '地址',
	`name` varchar(200) NOT NULL   COMMENT '收货人',
	`phone` varchar(200) NOT NULL   COMMENT '电话',
	`isdefault` varchar(200) NOT NULL   COMMENT '是否默认地址[是/否]',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地址';

INSERT INTO address(userid,address,name,phone,isdefault) VALUES(1,'地址1','收货人1','电话1','是否默认地址[是/否]1');
INSERT INTO address(userid,address,name,phone,isdefault) VALUES(2,'地址2','收货人2','电话2','是否默认地址[是/否]2');
INSERT INTO address(userid,address,name,phone,isdefault) VALUES(3,'地址3','收货人3','电话3','是否默认地址[是/否]3');

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(1,1,'表名1','收藏名称1','http://localhost:8080/springboot7y37k/upload/storeup_picture1.jpg');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(2,2,'表名2','收藏名称2','http://localhost:8080/springboot7y37k/upload/storeup_picture2.jpg');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(3,3,'表名3','收藏名称3','http://localhost:8080/springboot7y37k/upload/storeup_picture3.jpg');

DROP TABLE IF EXISTS `discussjingquxinxi`;

CREATE TABLE `discussjingquxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='景区信息评论表';

INSERT INTO discussjingquxinxi(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussjingquxinxi(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussjingquxinxi(refid,content,userid) VALUES(3,'评论内容3',3);

DROP TABLE IF EXISTS `discussjingqushangcheng`;

CREATE TABLE `discussjingqushangcheng` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='景区商城评论表';

INSERT INTO discussjingqushangcheng(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussjingqushangcheng(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussjingqushangcheng(refid,content,userid) VALUES(3,'评论内容3',3);

DROP TABLE IF EXISTS `discussyonghufenxiang`;

CREATE TABLE `discussyonghufenxiang` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户分享评论表';

INSERT INTO discussyonghufenxiang(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discussyonghufenxiang(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discussyonghufenxiang(refid,content,userid) VALUES(3,'评论内容3',3);


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/springboot7y37k/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/springboot7y37k/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/springboot7y37k/upload/picture3.jpg');
insert into config(id,name,value) values(4,'picture4','http://localhost:8080/springboot7y37k/upload/picture4.jpg');
insert into config(id,name,value) values(5,'picture5','http://localhost:8080/springboot7y37k/upload/picture5.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

