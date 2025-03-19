/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50560
Source Host           : localhost:3306
Source Database       : ssmixi30

Target Server Type    : MYSQL
Target Server Version : 50560
File Encoding         : 65001

Date: 2020-09-28 22:14:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1601295380804 DEFAULT CHARSET=utf8 COMMENT='地址';

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1601290474754', '2020-09-28 18:54:34', '1601289498710', '福建省龙岩市上杭县中都镇丰坑', '小敏', '15214121412', '是');
INSERT INTO `address` VALUES ('1601295380803', '2020-09-28 20:16:20', '1601295292035', '广东省梅州市蕉岭县华侨农场枧下山', '小乔', '15214121412', '是');

-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tablename` varchar(200) DEFAULT 'shucaixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1601296517218 DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1601290373128', '2020-09-28 18:52:52', 'shucaixinxi', '1601284951478', '1601285198999', '玉米', 'http://localhost:8080/ssmIxI30/upload/1601285176941.jpg', '1', '12', '0');
INSERT INTO `cart` VALUES ('1601290378223', '2020-09-28 18:52:57', 'shucaixinxi', '1601284951478', '1601289374519', '花菜', 'http://localhost:8080/ssmIxI30/upload/1601289328471.jpg', '1', '9', '0');
INSERT INTO `cart` VALUES ('1601290554267', '2020-09-28 18:55:53', 'shucaixinxi', '1601289498710', '1601289374519', '花菜', 'http://localhost:8080/ssmIxI30/upload/1601289328471.jpg', '1', '9', '0');
INSERT INTO `cart` VALUES ('1601296517217', '2020-09-28 20:35:16', 'shucaixinxi', '1601284951478', '1601295046966', '大白菜', 'http://localhost:8080/ssmIxI30/upload/1601295009442.jpg', '1', '10', '0');

-- ----------------------------
-- Table structure for `config`
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'picture1', 'http://localhost:8080/ssmIxI30/upload/1601285213394.jpg');
INSERT INTO `config` VALUES ('2', 'picture2', 'http://localhost:8080/ssmIxI30/upload/1601285221820.jpg');
INSERT INTO `config` VALUES ('3', 'picture3', 'http://localhost:8080/ssmIxI30/upload/1601285247294.jpg');
INSERT INTO `config` VALUES ('4', 'picture4', 'http://localhost:8080/ssmIxI30/upload/1601285235594.jpg');
INSERT INTO `config` VALUES ('5', 'picture5', 'http://localhost:8080/ssmIxI30/upload/1601285256650.jpg');
INSERT INTO `config` VALUES ('6', 'homepage', 'http://localhost:8080/ssmIxI30/upload/1601285264054.jpg');

-- ----------------------------
-- Table structure for `discussshucaixinxi`
-- ----------------------------
DROP TABLE IF EXISTS `discussshucaixinxi`;
CREATE TABLE `discussshucaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `content` varchar(200) NOT NULL COMMENT '评论内容',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1601290434156 DEFAULT CHARSET=utf8 COMMENT='蔬菜信息评论表';

-- ----------------------------
-- Records of discussshucaixinxi
-- ----------------------------
INSERT INTO `discussshucaixinxi` VALUES ('1601290434155', '2020-09-28 18:53:54', '1601285198999', '看起来很新鲜', '1601289498710');

-- ----------------------------
-- Table structure for `forum`
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '是否关闭[关闭/开放]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1601295779526 DEFAULT CHARSET=utf8 COMMENT='论坛表';

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES ('1601285976855', '2020-09-28 17:39:36', '1212', '<p>请输入内容121121</p>', '0', '1601284951478', '1', '开放');
INSERT INTO `forum` VALUES ('1601285983885', '2020-09-28 17:39:43', null, '112121', '1601285976855', '1601284951478', '1', null);
INSERT INTO `forum` VALUES ('1601289706510', '2020-09-28 18:41:46', null, '2222', '1601285976855', '1601289498710', '2', null);
INSERT INTO `forum` VALUES ('1601295747859', '2020-09-28 20:22:27', '什么蔬菜好吃', '<p>什么蔬菜对什么病有好处啊，大家都来分享下啊</p>', '0', '1601295292035', '3', '开放');
INSERT INTO `forum` VALUES ('1601295779525', '2020-09-28 20:22:59', null, '油菜，空心菜，麦菜 啊都好吃啊', '1601295747859', '1601289498710', '2', null);

-- ----------------------------
-- Table structure for `gongyingshang`
-- ----------------------------
DROP TABLE IF EXISTS `gongyingshang`;
CREATE TABLE `gongyingshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `gongsidizhi` varchar(200) DEFAULT NULL COMMENT '公司地址',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1601295325642 DEFAULT CHARSET=utf8 COMMENT='供应商';

-- ----------------------------
-- Records of gongyingshang
-- ----------------------------
INSERT INTO `gongyingshang` VALUES ('1601289523692', '2020-09-28 18:38:43', '1', '1', '蔬菜鲜果园', '李总', '15214121412', '上海市人名路', '0');
INSERT INTO `gongyingshang` VALUES ('1601295135363', '2020-09-28 20:12:15', '2', '2', '疏乐园', '王明', '15214121412', '上海市环市路', '0');
INSERT INTO `gongyingshang` VALUES ('1601295161634', '2020-09-28 20:12:41', '3', '3', '果果蔬', '王芳', '15214121412', '上海市环市路', '0');
INSERT INTO `gongyingshang` VALUES ('1601295325641', '2020-09-28 20:15:25', '4', '1', '仙乐园', '晓明', '15214121412', '上海市环城路', '0');

-- ----------------------------
-- Table structure for `liaotianhuifu`
-- ----------------------------
DROP TABLE IF EXISTS `liaotianhuifu`;
CREATE TABLE `liaotianhuifu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `liaotianhuifu` varchar(200) DEFAULT NULL COMMENT '聊天回复',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1601295687013 DEFAULT CHARSET=utf8 COMMENT='聊天回复';

-- ----------------------------
-- Records of liaotianhuifu
-- ----------------------------
INSERT INTO `liaotianhuifu` VALUES ('1601295687012', '2020-09-28 20:21:26', '蔬菜新鲜吗', '3', '', '没有的，都是无公害的', '2020-09-30 00:00:00', '003', '李铭');

-- ----------------------------
-- Table structure for `liaotianxinxi`
-- ----------------------------
DROP TABLE IF EXISTS `liaotianxinxi`;
CREATE TABLE `liaotianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `zixunneirong` longtext COMMENT '咨询内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1601299429921 DEFAULT CHARSET=utf8 COMMENT='聊天信息';

-- ----------------------------
-- Records of liaotianxinxi
-- ----------------------------
INSERT INTO `liaotianxinxi` VALUES ('1601299429920', '2020-09-28 21:23:49', '111', '1', '111', '蔬菜鲜果园', '121212', '2020-09-28 21:23:47', '1');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1601289449252 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1601285507832', '2020-09-28 17:31:47', '蔬菜公告', 'http://localhost:8080/ssmIxI30/upload/1601285450535.jpg', '<p>所有销售的蔬菜都是经过刚刚采摘，全部都是无公害种植的，没有农药，全部都是经过尽心种植出来的，保证先甜可口</p>');
INSERT INTO `news` VALUES ('1601289449251', '2020-09-28 18:37:28', '蔬菜公告信息', 'http://localhost:8080/ssmIxI30/upload/1601289461084.jpg', '<p>由于受到台风天影响，最近收成比较不好，所以最近这段时间来，所有蔬菜都将提价10%。</p>');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `tablename` varchar(200) DEFAULT 'shucaixinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT NULL COMMENT '支付类型（1：现金 2：积分）',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1601295437467 DEFAULT CHARSET=utf8 COMMENT='订单';

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1601290490068', '2020-09-28 18:54:49', '20209281854497432851', 'shucaixinxi', '1601289498710', '1601285198999', '玉米', 'http://localhost:8080/ssmIxI30/upload/1601285176941.jpg', '8', '12', '12', '126', '96', '1', '已发货', '福建省龙岩市上杭县中都镇丰坑');
INSERT INTO `orders` VALUES ('1601290530725', '2020-09-28 18:55:30', '20209281855309909998', 'shucaixinxi', '1601289498710', '1601285052486', '卷芯白', 'http://localhost:8080/ssmIxI30/upload/1601284967283.jpg', '6', '5', '5', '30', '30', '1', '已支付', '福建省龙岩市上杭县中都镇丰坑');
INSERT INTO `orders` VALUES ('1601290570944', '2020-09-28 18:56:10', '20209281856998778789', 'shucaixinxi', '1601289498710', '1601285170137', '胡萝卜', 'http://localhost:8080/ssmIxI30/upload/1601285058280.jpg', '1', '8', '8', '17', '8', '1', '已退款', '福建省龙岩市上杭县中都镇丰坑');
INSERT INTO `orders` VALUES ('1601295423854', '2020-09-28 20:17:03', '20209282017354191849', 'shucaixinxi', '1601295292035', '1601294971001', '长豆角', 'http://localhost:8080/ssmIxI30/upload/1601294838118.jpg', '2', '10', '10', '40', '20', '1', '已完成', '广东省梅州市蕉岭县华侨农场枧下山');
INSERT INTO `orders` VALUES ('1601295437466', '2020-09-28 20:17:16', '202092820171690676452', 'shucaixinxi', '1601295292035', '1601295087190', '胡萝卜', 'http://localhost:8080/ssmIxI30/upload/1601295058901.jpg', '1', '20', '20', '20', '20', '1', '已完成', '广东省梅州市蕉岭县华侨农场枧下山');

-- ----------------------------
-- Table structure for `shucaixinxi`
-- ----------------------------
DROP TABLE IF EXISTS `shucaixinxi`;
CREATE TABLE `shucaixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shucaimingcheng` varchar(200) NOT NULL COMMENT '蔬菜名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shucaijianjie` longtext COMMENT '蔬菜简介',
  `shangjiariqi` date DEFAULT NULL COMMENT '上架日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1601295509856 DEFAULT CHARSET=utf8 COMMENT='蔬菜信息';

-- ----------------------------
-- Records of shucaixinxi
-- ----------------------------
INSERT INTO `shucaixinxi` VALUES ('1601294971001', '2020-09-28 20:09:30', '长豆角', 'http://localhost:8080/ssmIxI30/upload/1601294838118.jpg', '<p><img src=\"http://localhost:8080/ssmIxI30/upload/1601294873940.jpg\"></p><p>无公害蔬菜，都是现摘先卖，保证新鲜爽口</p>', '2020-09-30', '001', '鲜果蔬', '10', '1000', '9998');
INSERT INTO `shucaixinxi` VALUES ('1601295046966', '2020-09-28 20:10:46', '大白菜', 'http://localhost:8080/ssmIxI30/upload/1601295009442.jpg', '<p><img src=\"http://localhost:8080/ssmIxI30/upload/1601295043438.jpg\"></p><p>无公害蔬菜，都是现摘先卖，保证新鲜爽口</p>', '2020-09-30', '002', '疏乐园', '10', '10000', '2000');
INSERT INTO `shucaixinxi` VALUES ('1601295087190', '2020-09-28 20:11:27', '胡萝卜', 'http://localhost:8080/ssmIxI30/upload/1601295058901.jpg', '<p><img src=\"http://localhost:8080/ssmIxI30/upload/1601295084401.jpg\"></p><p>无公害蔬菜，都是现摘先卖，保证新鲜爽口</p>', '2020-09-30', '003', '果果蔬', '20', '10000', '998');
INSERT INTO `shucaixinxi` VALUES ('1601295509855', '2020-09-28 20:18:29', '鲜甜玉米', 'http://localhost:8080/ssmIxI30/upload/1601295476698.jpg', '<p><img src=\"http://localhost:8080/ssmIxI30/upload/1601295499484.jpg\"></p><p>无公害蔬菜，都是现摘先卖，保证新鲜爽口</p>', '2020-09-29', '3', '果果蔬', '15', '1000', '2500');

-- ----------------------------
-- Table structure for `storeup`
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1601295401975 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES ('1601289824140', '2020-09-28 18:43:43', '1601284951478', '1601285198999', 'shucaixinxi', '玉米', 'http://localhost:8080/ssmIxI30/upload/1601285176941.jpg');
INSERT INTO `storeup` VALUES ('1601290426484', '2020-09-28 18:53:46', '1601289498710', '1601285198999', 'shucaixinxi', '玉米', 'http://localhost:8080/ssmIxI30/upload/1601285176941.jpg');
INSERT INTO `storeup` VALUES ('1601295401974', '2020-09-28 20:16:41', '1601295292035', '1601294971001', 'shucaixinxi', '长豆角', 'http://localhost:8080/ssmIxI30/upload/1601294838118.jpg');

-- ----------------------------
-- Table structure for `token`
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'abo', 'users', '管理员', '6lppdldr0xirb8nde4s305gim7pjc948', '2020-09-28 17:22:25', '2020-09-28 21:42:58');
INSERT INTO `token` VALUES ('2', '1601284951478', '1', 'yonghu', '用户', 'ph1ycmnfnwyd4wyyv5n58j5bcwv8ookw', '2020-09-28 17:29:48', '2020-09-28 22:37:15');
INSERT INTO `token` VALUES ('3', '1601289498710', '2', 'yonghu', '用户', 'oj5t2dbvtrpyuconpqm4kzcysbxwff3z', '2020-09-28 18:41:33', '2020-09-28 21:22:39');
INSERT INTO `token` VALUES ('4', '1601289523692', '1', 'gongyingshang', '供应商', 'aa394cj29kpu7xlc0bpr9599eol42aqr', '2020-09-28 20:00:31', '2020-09-28 22:24:10');
INSERT INTO `token` VALUES ('5', '1601295292035', '3', 'yonghu', '用户', 'cdq857dpz4k273ipf8r1wgsvfx6s1is3', '2020-09-28 20:15:37', '2020-09-28 21:21:56');
INSERT INTO `token` VALUES ('6', '1601295161634', '3', 'gongyingshang', '供应商', 's3ocrhyaknv0eerldbfdu98bdv3wj9il', '2020-09-28 20:17:37', '2020-09-28 21:20:22');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2020-09-28 17:22:10');

-- ----------------------------
-- Table structure for `yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1601295292036 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1601284951478', '2020-09-28 17:22:31', '1', '1', '李铭', '男', 'http://localhost:8080/ssmIxI30/upload/1601285538783.png', '4412141214121412141', '1521141214', '2000');
INSERT INTO `yonghu` VALUES ('1601289498710', '2020-09-28 18:38:18', '2', '2', '小敏', '女', 'http://localhost:8080/ssmIxI30/upload/1601290396956.png', '441214121412141214', '15214121412', '24827');
INSERT INTO `yonghu` VALUES ('1601295292035', '2020-09-28 20:14:52', '3', '3', '小乔', '女', 'http://localhost:8080/ssmIxI30/upload/1601295348990.png', '441214121412141214', '15214121412', '249940');
