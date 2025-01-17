/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50636
Source Host           : localhost:3306
Source Database       : springboot7y37k

Target Server Type    : MYSQL
Target Server Version : 50636
File Encoding         : 65001

Date: 2020-11-26 16:05:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606377632870 DEFAULT CHARSET=utf8 COMMENT='地址';

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '2020-11-26 15:13:32', '1', '地址1', '收货人1', '电话1', '是否默认地址[是/否]1');
INSERT INTO `address` VALUES ('2', '2020-11-26 15:13:32', '2', '地址2', '收货人2', '电话2', '是否默认地址[是/否]2');
INSERT INTO `address` VALUES ('3', '2020-11-26 15:13:32', '3', '地址3', '收货人3', '电话3', '是否默认地址[是/否]3');
INSERT INTO `address` VALUES ('1606375244174', '2020-11-26 15:20:43', '1606374995312', '广西壮族自治区河池市环江毛南族自治县下南乡独峒', '小叶', '16987898788', '是');
INSERT INTO `address` VALUES ('1606377632869', '2020-11-26 16:00:32', '1606377572303', '北京市海淀区甘家口街道中塔羽动羽毛球俱乐部', '小刘', '16987898788', '是');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'jingqushangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606377806327 DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1', '2020-11-26 15:13:32', '商品表名1', '1', '1', '商品名称1', 'http://localhost:8080/springboot7y37k/upload/cart_picture1.jpg', '1', '1', '1');
INSERT INTO `cart` VALUES ('2', '2020-11-26 15:13:32', '商品表名2', '2', '2', '商品名称2', 'http://localhost:8080/springboot7y37k/upload/cart_picture2.jpg', '2', '2', '2');
INSERT INTO `cart` VALUES ('3', '2020-11-26 15:13:32', '商品表名3', '3', '3', '商品名称3', 'http://localhost:8080/springboot7y37k/upload/cart_picture3.jpg', '3', '3', '3');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606377657489 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('1', '2020-11-26 15:13:32', '1', '1', '提问1', '回复1', '0');
INSERT INTO `chat` VALUES ('2', '2020-11-26 15:13:32', '2', '2', '提问2', '回复2', '2');
INSERT INTO `chat` VALUES ('3', '2020-11-26 15:13:32', '3', '3', '提问3', '回复3', '3');
INSERT INTO `chat` VALUES ('1606377531887', '2020-11-26 15:58:51', '1', '1', null, '管理员这里回复用户咨询', null);
INSERT INTO `chat` VALUES ('1606377657488', '2020-11-26 16:00:56', '1606377572303', null, '这里向管理员咨询', null, '1');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/springboot7y37k/upload/picture1.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/springboot7y37k/upload/picture2.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/springboot7y37k/upload/1606377328533.png');
INSERT INTO `config` VALUES ('4', 'picture4', 'http://localhost:8080/springboot7y37k/upload/picture4.jpg');
INSERT INTO `config` VALUES ('5', 'picture5', 'http://localhost:8080/springboot7y37k/upload/picture5.jpg');
INSERT INTO `config` VALUES ('6', 'homepage', null);

-- ----------------------------
-- Table structure for discussjingqushangcheng
-- ----------------------------
DROP TABLE IF EXISTS `discussjingqushangcheng`;
CREATE TABLE `discussjingqushangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='景区商城评论表';

-- ----------------------------
-- Records of discussjingqushangcheng
-- ----------------------------
INSERT INTO `discussjingqushangcheng` VALUES ('1', '2020-11-26 15:13:32', '1', '评论内容1', '1');
INSERT INTO `discussjingqushangcheng` VALUES ('2', '2020-11-26 15:13:32', '2', '评论内容2', '2');
INSERT INTO `discussjingqushangcheng` VALUES ('3', '2020-11-26 15:13:32', '3', '评论内容3', '3');

-- ----------------------------
-- Table structure for discussjingquxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussjingquxinxi`;
CREATE TABLE `discussjingquxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606377798210 DEFAULT CHARSET=utf8 COMMENT='景区信息评论表';

-- ----------------------------
-- Records of discussjingquxinxi
-- ----------------------------
INSERT INTO `discussjingquxinxi` VALUES ('1', '2020-11-26 15:13:32', '1', '评论内容1', '1');
INSERT INTO `discussjingquxinxi` VALUES ('2', '2020-11-26 15:13:32', '2', '评论内容2', '2');
INSERT INTO `discussjingquxinxi` VALUES ('3', '2020-11-26 15:13:32', '3', '评论内容3', '3');
INSERT INTO `discussjingquxinxi` VALUES ('1606377798209', '2020-11-26 16:03:17', '1606375096883', '登录后用户可进行评价跟嗯收藏', '1606374995312');

-- ----------------------------
-- Table structure for discussyonghufenxiang
-- ----------------------------
DROP TABLE IF EXISTS `discussyonghufenxiang`;
CREATE TABLE `discussyonghufenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户分享评论表';

-- ----------------------------
-- Records of discussyonghufenxiang
-- ----------------------------
INSERT INTO `discussyonghufenxiang` VALUES ('1', '2020-11-26 15:13:32', '1', '评论内容1', '1');
INSERT INTO `discussyonghufenxiang` VALUES ('2', '2020-11-26 15:13:32', '2', '评论内容2', '2');
INSERT INTO `discussyonghufenxiang` VALUES ('3', '2020-11-26 15:13:32', '3', '评论内容3', '3');

-- ----------------------------
-- Table structure for jingqufenlei
-- ----------------------------
DROP TABLE IF EXISTS `jingqufenlei`;
CREATE TABLE `jingqufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1606375048497 DEFAULT CHARSET=utf8 COMMENT='景区分类';

-- ----------------------------
-- Records of jingqufenlei
-- ----------------------------
INSERT INTO `jingqufenlei` VALUES ('1', '2020-11-26 15:13:32', '湖泊风景区');
INSERT INTO `jingqufenlei` VALUES ('2', '2020-11-26 15:13:32', '山岳风景区');
INSERT INTO `jingqufenlei` VALUES ('3', '2020-11-26 15:13:32', '森林风景区');
INSERT INTO `jingqufenlei` VALUES ('1606375033616', '2020-11-26 15:17:13', '山水风景区');
INSERT INTO `jingqufenlei` VALUES ('1606375037638', '2020-11-26 15:17:17', '海滨风景区');
INSERT INTO `jingqufenlei` VALUES ('1606375043556', '2020-11-26 15:17:22', '休闲疗养避暑胜地');
INSERT INTO `jingqufenlei` VALUES ('1606375048496', '2020-11-26 15:17:27', '宗教寺庙名胜区');

-- ----------------------------
-- Table structure for jingqushangcheng
-- ----------------------------
DROP TABLE IF EXISTS `jingqushangcheng`;
CREATE TABLE `jingqushangcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `fenlei` varchar(200) DEFAULT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `xiangqing` longtext COMMENT '详情',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606375162167 DEFAULT CHARSET=utf8 COMMENT='景区商城';

-- ----------------------------
-- Records of jingqushangcheng
-- ----------------------------
INSERT INTO `jingqushangcheng` VALUES ('1', '2020-11-26 15:13:32', '商品名称1', '分类1', 'http://localhost:8080/springboot7y37k/upload/jingqushangcheng_tupian1.jpg', '规格1', '品牌1', '详情1', '1');
INSERT INTO `jingqushangcheng` VALUES ('2', '2020-11-26 15:13:32', '商品名称2', '分类2', 'http://localhost:8080/springboot7y37k/upload/jingqushangcheng_tupian2.jpg', '规格2', '品牌2', '详情2', '2');
INSERT INTO `jingqushangcheng` VALUES ('3', '2020-11-26 15:13:32', '商品名称3', '分类3', 'http://localhost:8080/springboot7y37k/upload/jingqushangcheng_tupian3.jpg', '规格3', '品牌3', '详情3', '3');
INSERT INTO `jingqushangcheng` VALUES ('1606375162166', '2020-11-26 15:19:21', '薯片', '分类2', 'http://localhost:8080/springboot7y37k/upload/1606375146925.jpg', '1', '1', '<p>111</p>', '10');

-- ----------------------------
-- Table structure for jingquxinxi
-- ----------------------------
DROP TABLE IF EXISTS `jingquxinxi`;
CREATE TABLE `jingquxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingqumingcheng` varchar(200) NOT NULL COMMENT '景区名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `jingquxingji` varchar(200) DEFAULT NULL COMMENT '景区星级',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `menpiaojiage` int(11) NOT NULL COMMENT '门票价格',
  `jingqudizhi` varchar(200) DEFAULT NULL COMMENT '景区地址',
  `zixunrexian` varchar(200) DEFAULT NULL COMMENT '咨询热线',
  `jingqujieshao` longtext COMMENT '景区介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606375096884 DEFAULT CHARSET=utf8 COMMENT='景区信息';

-- ----------------------------
-- Records of jingquxinxi
-- ----------------------------
INSERT INTO `jingquxinxi` VALUES ('1', '2020-11-26 15:13:32', '景区名称1', '分类1', 'A', 'http://localhost:8080/springboot7y37k/upload/jingquxinxi_tupian1.jpg', '1', '景区地址1', '020-89819991', '景区介绍1', '2020-11-26 15:13:32', '1');
INSERT INTO `jingquxinxi` VALUES ('2', '2020-11-26 15:13:32', '景区名称2', '分类2', 'A', 'http://localhost:8080/springboot7y37k/upload/jingquxinxi_tupian2.jpg', '2', '景区地址2', '020-89819992', '景区介绍2', '2020-11-26 15:13:32', '2');
INSERT INTO `jingquxinxi` VALUES ('3', '2020-11-26 15:13:32', '景区名称3', '分类3', 'A', 'http://localhost:8080/springboot7y37k/upload/jingquxinxi_tupian3.jpg', '3', '景区地址3', '020-89819993', '景区介绍3', '2020-11-26 15:13:32', '3');
INSERT INTO `jingquxinxi` VALUES ('1606375096883', '2020-11-26 15:18:16', '景区1', '宗教寺庙名胜区', 'AAAAA', 'http://localhost:8080/springboot7y37k/upload/1606375068042.jpg', '60', '地址1', '020-1645988', '<p><img src=\"http://localhost:8080/springboot7y37k/upload/1606375095582.jpg\"></p>', '2020-11-26 08:03:20', '4');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'jingqushangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1606377829747 DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1606375267241', '2020-11-26 15:21:06', '2020112615181879573821', 'jingqushangcheng', '1606374995312', '1606375162166', '薯片', 'http://localhost:8080/springboot7y37k/upload/1606375146925.jpg', '1', '10', '10', '10', '10', '1', '已支付', '广西壮族自治区河池市环江毛南族自治县下南乡独峒');
INSERT INTO `orders` VALUES ('1606375306262', '2020-11-26 15:21:45', '2020112615185781986382', 'jingqushangcheng', '1606374995312', '1606375162166', '薯片', 'http://localhost:8080/springboot7y37k/upload/1606375146925.jpg', '1', '10', '10', '10', '10', '1', '已完成', '广西壮族自治区河池市环江毛南族自治县下南乡独峒');
INSERT INTO `orders` VALUES ('1606375325005', '2020-11-26 15:22:04', '202011261519172706155', 'jingqushangcheng', '1606374995312', '3', '商品名称3', 'http://localhost:8080/springboot7y37k/upload/jingqushangcheng_tupian3.jpg', '1', '3', '3', '3', '3', '1', '已发货', '广西壮族自治区河池市环江毛南族自治县下南乡独峒');
INSERT INTO `orders` VALUES ('1606377817833', '2020-11-26 16:03:37', '202011261633735511086', 'jingqushangcheng', '1606374995312', '1606375162166', '薯片', 'http://localhost:8080/springboot7y37k/upload/1606375146925.jpg', '6', '10', '10', '60', '60', '1', '已支付', '广西壮族自治区河池市环江毛南族自治县下南乡独峒');
INSERT INTO `orders` VALUES ('1606377829746', '2020-11-26 16:03:49', '202011261634915640333', 'jingqushangcheng', '1606374995312', '2', '商品名称2', 'http://localhost:8080/springboot7y37k/upload/jingqushangcheng_tupian2.jpg', '1', '2', '2', '2', '2', '1', '已支付', '广西壮族自治区河池市环江毛南族自治县下南乡独峒');

-- ----------------------------
-- Table structure for shangpinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1606377485854 DEFAULT CHARSET=utf8 COMMENT='商品分类';

-- ----------------------------
-- Records of shangpinfenlei
-- ----------------------------
INSERT INTO `shangpinfenlei` VALUES ('1', '2020-11-26 15:13:32', '零食');
INSERT INTO `shangpinfenlei` VALUES ('2', '2020-11-26 15:13:32', '纪念品');
INSERT INTO `shangpinfenlei` VALUES ('3', '2020-11-26 15:13:32', '衣服');
INSERT INTO `shangpinfenlei` VALUES ('1606377485853', '2020-11-26 15:58:05', '工艺品');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606377782299 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES ('1', '2020-11-26 15:13:32', '1', '1', '表名1', '收藏名称1', 'http://localhost:8080/springboot7y37k/upload/storeup_picture1.jpg');
INSERT INTO `storeup` VALUES ('2', '2020-11-26 15:13:32', '2', '2', '表名2', '收藏名称2', 'http://localhost:8080/springboot7y37k/upload/storeup_picture2.jpg');
INSERT INTO `storeup` VALUES ('3', '2020-11-26 15:13:32', '3', '3', '表名3', '收藏名称3', 'http://localhost:8080/springboot7y37k/upload/storeup_picture3.jpg');
INSERT INTO `storeup` VALUES ('1606377782298', '2020-11-26 16:03:02', '1606374995312', '1606375096883', 'jingquxinxi', '景区1', 'http://localhost:8080/springboot7y37k/upload/1606375068042.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'abo', 'users', '管理员', '5g73qf3g23sxkpnvq2s6oqclo5p0qpwi', '2020-11-26 15:16:00', '2020-11-26 08:59:07');
INSERT INTO `token` VALUES ('2', '1606374995312', '001', 'yonghu', '用户', 'iwuvwfm63cfayjkkgtg76w2ca0vqun5v', '2020-11-26 15:20:16', '2020-11-26 09:03:00');
INSERT INTO `token` VALUES ('3', '1606377572303', '111', 'yonghu', '用户', '7gntnov3pkvtffbrjyapzwu80eh6bb89', '2020-11-26 15:59:36', '2020-11-26 09:01:28');

-- ----------------------------
-- Table structure for tousujianyi
-- ----------------------------
DROP TABLE IF EXISTS `tousujianyi`;
CREATE TABLE `tousujianyi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tousujianyi` longtext COMMENT '投诉建议',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606377744137 DEFAULT CHARSET=utf8 COMMENT='投诉建议';

-- ----------------------------
-- Records of tousujianyi
-- ----------------------------
INSERT INTO `tousujianyi` VALUES ('1', '2020-11-26 15:13:32', '标题1', '投诉建议1', '2020-11-26', '用户名1', '手机1', '否', '');
INSERT INTO `tousujianyi` VALUES ('2', '2020-11-26 15:13:32', '标题2', '投诉建议2', '2020-11-26', '用户名2', '手机2', '否', '');
INSERT INTO `tousujianyi` VALUES ('3', '2020-11-26 15:13:32', '标题3', '投诉建议3', '2020-11-25', '用户名3', '手机3', '是', '在这里处理用户的投诉意见');
INSERT INTO `tousujianyi` VALUES ('1606377744136', '2020-11-26 16:02:23', '这里可以添加投诉建议', '<p>111</p>', null, '001', '16549878989', '否', null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2020-11-26 15:13:32');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1606377572304 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', '2020-11-26 15:13:32', '用户1', '123456', '姓名1', '男', 'http://localhost:8080/springboot7y37k/upload/yonghu_touxiang1.jpg', '13823888881', '773890001@qq.com', '440300199101010001', '1');
INSERT INTO `yonghu` VALUES ('2', '2020-11-26 15:13:32', '用户2', '123456', '姓名2', '男', 'http://localhost:8080/springboot7y37k/upload/yonghu_touxiang2.jpg', '13823888882', '773890002@qq.com', '440300199202020002', '2');
INSERT INTO `yonghu` VALUES ('3', '2020-11-26 15:13:32', '用户3', '123456', '姓名3', '男', 'http://localhost:8080/springboot7y37k/upload/yonghu_touxiang3.jpg', '13823888883', '773890003@qq.com', '440300199303030003', '3');
INSERT INTO `yonghu` VALUES ('1606374995312', '2020-11-26 15:16:35', '001', '001', '小叶', '女', 'http://localhost:8080/springboot7y37k/upload/1606374979041.jpg', '16549878989', '89465@1523.com', '984598816549878989', '225');
INSERT INTO `yonghu` VALUES ('1606377572303', '2020-11-26 15:59:32', '111', '111', '小刘', '女', 'http://localhost:8080/springboot7y37k/upload/1606377589157.jpg', '16549878988', '1532@1563.com', '954598789865456512', '300');

-- ----------------------------
-- Table structure for yonghufenxiang
-- ----------------------------
DROP TABLE IF EXISTS `yonghufenxiang`;
CREATE TABLE `yonghufenxiang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaotimingcheng` varchar(200) NOT NULL COMMENT '标题名称',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiangqing` longtext COMMENT '详情',
  `fenxiangriqi` date DEFAULT NULL COMMENT '分享日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1606375391492 DEFAULT CHARSET=utf8 COMMENT='用户分享';

-- ----------------------------
-- Records of yonghufenxiang
-- ----------------------------
INSERT INTO `yonghufenxiang` VALUES ('1', '2020-11-26 15:13:32', '标题名称1', '类型1', 'http://localhost:8080/springboot7y37k/upload/yonghufenxiang_tupian1.jpg', '详情1', '2020-11-26', '用户名1', '姓名1', '邮箱1');
INSERT INTO `yonghufenxiang` VALUES ('2', '2020-11-26 15:13:32', '标题名称2', '类型2', 'http://localhost:8080/springboot7y37k/upload/yonghufenxiang_tupian2.jpg', '详情2', '2020-11-26', '用户名2', '姓名2', '邮箱2');
INSERT INTO `yonghufenxiang` VALUES ('3', '2020-11-26 15:13:32', '标题名称3', '类型3', 'http://localhost:8080/springboot7y37k/upload/yonghufenxiang_tupian3.jpg', '详情3', '2020-11-26', '用户名3', '姓名3', '邮箱3');
INSERT INTO `yonghufenxiang` VALUES ('1606375391491', '2020-11-26 15:23:10', '分享', '1', 'http://localhost:8080/springboot7y37k/upload/1606375369803.jpg', '<p><img src=\"../../..//upload/1606375380244.jpg\" /></p>\n<p><img src=\"../../..//upload/1606375388408.jpg\" /></p>', '2020-12-01', '001', '小叶', '89465@1523.com');
