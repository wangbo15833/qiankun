-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.32 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.0.0.4865
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 qiankun 的数据库结构
CREATE DATABASE IF NOT EXISTS `qiankun` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `qiankun`;


-- 导出  表 qiankun.qiankun_access 结构
CREATE TABLE IF NOT EXISTS `qiankun_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `pid` smallint(6) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='rbac授权表';

-- 正在导出表  qiankun.qiankun_access 的数据：24 rows
/*!40000 ALTER TABLE `qiankun_access` DISABLE KEYS */;
INSERT INTO `qiankun_access` (`role_id`, `node_id`, `level`, `pid`, `module`) VALUES
	(2, 16, 3, 8, NULL),
	(3, 19, 1, 0, NULL),
	(3, 29, 2, 19, NULL),
	(3, 20, 2, 19, NULL),
	(3, 21, 3, 20, NULL),
	(3, 22, 3, 20, NULL),
	(3, 23, 3, 20, NULL),
	(3, 24, 3, 20, NULL),
	(3, 25, 3, 20, NULL),
	(3, 26, 3, 20, NULL),
	(3, 27, 3, 20, NULL),
	(3, 28, 3, 20, NULL),
	(3, 30, 2, 19, NULL),
	(2, 15, 3, 8, NULL),
	(2, 14, 3, 8, NULL),
	(2, 13, 3, 8, NULL),
	(2, 11, 3, 8, NULL),
	(2, 12, 3, 8, NULL),
	(2, 10, 3, 8, NULL),
	(2, 7, 1, 0, NULL),
	(2, 18, 2, 7, NULL),
	(2, 17, 2, 7, NULL),
	(2, 8, 2, 7, NULL),
	(2, 9, 3, 8, NULL);
/*!40000 ALTER TABLE `qiankun_access` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_admin 结构
CREATE TABLE IF NOT EXISTS `qiankun_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `add_time` varchar(255) DEFAULT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `state` tinyint(4) DEFAULT '1',
  `last_loginip` varchar(255) DEFAULT NULL,
  `loast_logintime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  qiankun.qiankun_admin 的数据：0 rows
/*!40000 ALTER TABLE `qiankun_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `qiankun_admin` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_area 结构
CREATE TABLE IF NOT EXISTS `qiankun_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(20) NOT NULL,
  `did` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='省市列表';

-- 正在导出表  qiankun.qiankun_area 的数据：55 rows
/*!40000 ALTER TABLE `qiankun_area` DISABLE KEYS */;
INSERT INTO `qiankun_area` (`id`, `dname`, `did`, `parentid`) VALUES
	(1, '北京市', 11, 0),
	(2, '天津市', 12, 0),
	(3, '重庆市', 13, 0),
	(4, '上海市', 14, 0),
	(5, '河北省', 15, 0),
	(6, '山西省', 16, 0),
	(7, '辽宁省', 17, 0),
	(8, '吉林省', 18, 0),
	(9, '黑龙江省', 19, 0),
	(10, '江苏省', 20, 0),
	(11, '浙江省', 21, 0),
	(12, '安徽省', 22, 0),
	(13, '福建省', 23, 0),
	(14, '江西省', 24, 0),
	(15, '山东省', 25, 0),
	(16, '河南省', 26, 0),
	(17, '湖北省', 27, 0),
	(18, '湖南省', 28, 0),
	(19, '广东省', 29, 0),
	(20, '海南省', 30, 0),
	(21, '四川省', 31, 0),
	(22, '贵州省', 32, 0),
	(23, '云南省', 33, 0),
	(24, '陕西省', 34, 0),
	(25, '甘肃省', 35, 0),
	(26, '青海省', 36, 0),
	(27, '台湾省', 37, 0),
	(28, '内蒙古自治区', 38, 0),
	(29, '广西壮族自治区', 39, 0),
	(30, '宁夏回族自治区', 40, 0),
	(31, '新疆维吾尔自治区', 41, 0),
	(32, '西藏自治区', 42, 0),
	(33, '香港', 43, 0),
	(34, '澳门', 44, 0),
	(35, '石家庄市', 1501, 15),
	(36, '秦皇岛市', 1502, 15),
	(37, '承德市', 1503, 15),
	(38, '张家口市', 1504, 15),
	(39, '唐山市', 1505, 15),
	(40, '廊坊市', 1506, 15),
	(41, '保定市', 1507, 15),
	(42, '沧州市', 1508, 15),
	(43, '衡水市', 1509, 15),
	(44, '邢台市', 1510, 15),
	(45, '邯郸市', 1511, 15),
	(46, '海港区', 150201, 1502),
	(47, '山海关区', 150202, 1502),
	(48, '北戴河区', 150203, 1502),
	(49, '昌黎县', 150204, 1502),
	(50, '抚宁县', 150205, 1502),
	(51, '卢龙县', 150206, 1502),
	(52, '开发区', 150207, 1502),
	(53, '青龙县', 150208, 1502),
	(54, '南戴河', 150209, 1502),
	(55, '朝阳区', 1101, 11);
/*!40000 ALTER TABLE `qiankun_area` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_channel 结构
CREATE TABLE IF NOT EXISTS `qiankun_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='平台频道表';

-- 正在导出表  qiankun.qiankun_channel 的数据：3 rows
/*!40000 ALTER TABLE `qiankun_channel` DISABLE KEYS */;
INSERT INTO `qiankun_channel` (`id`, `name`, `sort`) VALUES
	(1, '店铺', 0),
	(2, '资讯', 0),
	(3, '服务', 0);
/*!40000 ALTER TABLE `qiankun_channel` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_form 结构
CREATE TABLE IF NOT EXISTS `qiankun_form` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='rbac示例';

-- 正在导出表  qiankun.qiankun_form 的数据：8 rows
/*!40000 ALTER TABLE `qiankun_form` DISABLE KEYS */;
INSERT INTO `qiankun_form` (`id`, `title`, `content`, `create_time`, `status`) VALUES
	(5, 'dddddd', 'ddddddd<br />', 1414805191, 1),
	(3, 'bbb', 'bbb<br />', 1414743135, 1),
	(4, 'ccccc', 'ccccccc<br />', 1414743640, 1),
	(6, 'eeeeeee', 'eeeeeeeeeee<br />', 1414805198, 1),
	(7, 'ffffffff', 'ffffffffffffff<br />', 1414805205, 1),
	(8, 'ggggggggg', 'ggggggggggggg<br />', 1414805212, 1),
	(9, 'hhhhhhhh', 'hhhhhhhhhhh<br />', 1414805219, 1),
	(10, 'bbbbbbb', 'nnnnnnnnnnnnn<br />', 1415755119, 1);
/*!40000 ALTER TABLE `qiankun_form` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_goods 结构
CREATE TABLE IF NOT EXISTS `qiankun_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `new_price` float NOT NULL,
  `old_price` float NOT NULL,
  `status` tinyint(4) NOT NULL,
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='平台商品表';

-- 正在导出表  qiankun.qiankun_goods 的数据：0 rows
/*!40000 ALTER TABLE `qiankun_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `qiankun_goods` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_goods_category 结构
CREATE TABLE IF NOT EXISTS `qiankun_goods_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `shopid` int(11) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `sort` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品类目表';

-- 正在导出表  qiankun.qiankun_goods_category 的数据：0 rows
/*!40000 ALTER TABLE `qiankun_goods_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `qiankun_goods_category` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_group 结构
CREATE TABLE IF NOT EXISTS `qiankun_group` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `title` varchar(50) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='rbac分组表';

-- 正在导出表  qiankun.qiankun_group 的数据：1 rows
/*!40000 ALTER TABLE `qiankun_group` DISABLE KEYS */;
INSERT INTO `qiankun_group` (`id`, `name`, `title`, `create_time`, `update_time`, `status`, `sort`, `show`) VALUES
	(2, 'App', '应用中心', 1222841259, 0, 1, 0, 0);
/*!40000 ALTER TABLE `qiankun_group` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_news 结构
CREATE TABLE IF NOT EXISTS `qiankun_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `info` text,
  `channel_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `add_time` varchar(20) DEFAULT NULL,
  `update_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='平台资讯表';

-- 正在导出表  qiankun.qiankun_news 的数据：0 rows
/*!40000 ALTER TABLE `qiankun_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `qiankun_news` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_node 结构
CREATE TABLE IF NOT EXISTS `qiankun_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='rbac节点表';

-- 正在导出表  qiankun.qiankun_node 的数据：31 rows
/*!40000 ALTER TABLE `qiankun_node` DISABLE KEYS */;
INSERT INTO `qiankun_node` (`id`, `name`, `title`, `status`, `remark`, `sort`, `pid`, `level`, `type`, `group_id`) VALUES
	(1, 'Admin', '系统管理员后台', 1, NULL, NULL, 0, 1, 0, 0),
	(2, 'Node', '节点管理', 1, NULL, NULL, 1, 2, 0, 2),
	(3, 'Role', '角色管理', 1, NULL, NULL, 1, 2, 0, 2),
	(4, 'User', '后台用户', 1, NULL, NULL, 1, 2, 0, 2),
	(5, 'Group', '组别管理', 1, NULL, NULL, 1, 2, 0, 2),
	(6, 'Form', '数据管理', 1, NULL, NULL, 1, 2, 0, 2),
	(7, 'Seller', '商家管理后台', 1, '', NULL, 0, 1, 0, 0),
	(8, 'Public', '公共模块', 1, '', NULL, 7, 2, 0, 0),
	(9, 'add', '新增', 1, '', NULL, 8, 3, 0, 0),
	(10, 'insert', '写入', 1, '', NULL, 8, 3, 0, 0),
	(11, 'edit', '编辑', 1, '', NULL, 8, 3, 0, 0),
	(12, 'update', '更新', 1, '', NULL, 8, 3, 0, 0),
	(13, 'foreverdelete', '删除', 1, '', NULL, 8, 3, 0, 0),
	(14, 'forbid', '禁用', 1, '', NULL, 8, 3, 0, 0),
	(15, 'resume', '恢复', 1, '', NULL, 8, 3, 0, 0),
	(16, 'index', '列表', 1, '', NULL, 8, 3, 0, 0),
	(17, 'Index', '默认模块', 1, '', NULL, 7, 2, 0, 0),
	(18, 'Shop', '店铺管理', 1, '', NULL, 7, 2, 0, 0),
	(19, 'User', '用户中心', 1, '', NULL, 0, 1, 0, 0),
	(20, 'Public', '公共模块', 1, '', NULL, 19, 2, 0, 0),
	(21, 'add', '新增', 1, '', NULL, 20, 3, 0, 0),
	(22, 'insert', '写入', 1, '', NULL, 20, 3, 0, 0),
	(23, 'edit', '编辑', 1, '', NULL, 20, 3, 0, 0),
	(24, 'update', '更新', 1, '', NULL, 20, 3, 0, 0),
	(25, 'foreverdelete', '删除', 1, '', NULL, 20, 3, 0, 0),
	(26, 'forbid', '禁用', 1, '', NULL, 20, 3, 0, 0),
	(27, 'resume', '恢复', 1, '', NULL, 20, 3, 0, 0),
	(28, 'index', '列表', 1, '', NULL, 20, 3, 0, 0),
	(29, 'Index', '默认模块', 1, '', NULL, 19, 2, 0, 0),
	(30, 'Welcome', '欢迎页', 1, '', NULL, 19, 2, 0, 0),
	(31, 'ShopCategory', '店铺分类', 1, '', NULL, 1, 2, 0, 2);
/*!40000 ALTER TABLE `qiankun_node` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_role 结构
CREATE TABLE IF NOT EXISTS `qiankun_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `ename` varchar(5) DEFAULT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `ename` (`ename`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='rbac角色表';

-- 正在导出表  qiankun.qiankun_role 的数据：3 rows
/*!40000 ALTER TABLE `qiankun_role` DISABLE KEYS */;
INSERT INTO `qiankun_role` (`id`, `name`, `pid`, `status`, `remark`, `ename`, `create_time`, `update_time`) VALUES
	(1, '代理商组', 0, 1, '', '', 1208784792, 1254325558),
	(2, '商家组', 0, 1, '', '', 1215496283, 1415604930),
	(3, '会员组', 0, 1, '', NULL, 1254325787, 1415756253);
/*!40000 ALTER TABLE `qiankun_role` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_role_user 结构
CREATE TABLE IF NOT EXISTS `qiankun_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='rbac角色用户映射表';

-- 正在导出表  qiankun.qiankun_role_user 的数据：4 rows
/*!40000 ALTER TABLE `qiankun_role_user` DISABLE KEYS */;
INSERT INTO `qiankun_role_user` (`role_id`, `user_id`) VALUES
	(2, '38'),
	(1, '4'),
	(2, '3'),
	(3, '2');
/*!40000 ALTER TABLE `qiankun_role_user` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_shop 结构
CREATE TABLE IF NOT EXISTS `qiankun_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopname` varchar(255) NOT NULL COMMENT '店铺名称',
  `phone` varchar(255) NOT NULL COMMENT '电话',
  `address` varchar(255) NOT NULL COMMENT '地址',
  `info` text NOT NULL COMMENT '店铺详情',
  `point_x` varchar(255) NOT NULL COMMENT '地图横坐标',
  `point_y` varchar(255) NOT NULL COMMENT '地图纵坐标',
  `add_time` varchar(255) NOT NULL COMMENT '添加时间',
  `update_time` varchar(255) NOT NULL COMMENT '更新时间',
  `province` varchar(255) NOT NULL COMMENT '所在省',
  `city` varchar(255) NOT NULL COMMENT '所在市',
  `area` varchar(255) NOT NULL COMMENT '所在区县',
  `category_id` int(11) NOT NULL COMMENT '所属类别',
  `owner` int(11) NOT NULL COMMENT '所有者',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='店铺表';

-- 正在导出表  qiankun.qiankun_shop 的数据：5 rows
/*!40000 ALTER TABLE `qiankun_shop` DISABLE KEYS */;
INSERT INTO `qiankun_shop` (`id`, `shopname`, `phone`, `address`, `info`, `point_x`, `point_y`, `add_time`, `update_time`, `province`, `city`, `area`, `category_id`, `owner`) VALUES
	(1, 'aaa', '6546', 'aaaa', 'gfdfgdfghd<br />', '', '', '', '', '', '', '', 0, 0),
	(2, '我的第一家店铺', '1111', '我的详细地址', '我的店铺详情介绍<br />', '', '', '', '', '15', '1502', '150201', 0, 0),
	(3, '第二家店铺', '2222', '山海关区', '店铺详情<br />', '', '', '', '', '15', '1502', '150202', 0, 0),
	(15, 'seller3的店铺', '123456', '哈哈', '', '119.538253', '39.928644', '1415951360', '1415951360', '15', '1502', '150206', 30, 38),
	(14, '第三家店铺', '777777', '秦皇岛', '斤斤计较斤斤计较斤斤计较斤斤计较经济<br />', '119.604512', '39.945296', '1415678973', '1415778042', '15', '1502', '150204', 24, 3);
/*!40000 ALTER TABLE `qiankun_shop` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_shop_category 结构
CREATE TABLE IF NOT EXISTS `qiankun_shop_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `pid` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='店铺类目表';

-- 正在导出表  qiankun.qiankun_shop_category 的数据：12 rows
/*!40000 ALTER TABLE `qiankun_shop_category` DISABLE KEYS */;
INSERT INTO `qiankun_shop_category` (`id`, `name`, `pid`, `channel_id`) VALUES
	(1, '新闻', 0, 2),
	(2, '北京新闻', 1, 2),
	(3, '体育', 0, 2),
	(4, '上地新闻', 1, 2),
	(5, '七街新闻', 3, 2),
	(6, '圣达菲', 0, 2),
	(7, '圣达菲个', 5, 2),
	(8, '江西新闻', 1, 2),
	(9, '广州新闻', 1, 2),
	(29, '分类1', 0, 1),
	(28, 'Shop', 0, 1),
	(30, '分类2', 29, 1);
/*!40000 ALTER TABLE `qiankun_shop_category` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_user 结构
CREATE TABLE IF NOT EXISTS `qiankun_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(64) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `bind_account` varchar(50) NOT NULL,
  `last_login_time` int(11) unsigned DEFAULT '0',
  `last_login_ip` varchar(40) DEFAULT NULL,
  `login_count` mediumint(8) unsigned DEFAULT '0',
  `verify` varchar(32) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `type_id` tinyint(2) unsigned DEFAULT '0',
  `info` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='平台用户表';

-- 正在导出表  qiankun.qiankun_user 的数据：8 rows
/*!40000 ALTER TABLE `qiankun_user` DISABLE KEYS */;
INSERT INTO `qiankun_user` (`id`, `account`, `nickname`, `password`, `bind_account`, `last_login_time`, `last_login_ip`, `login_count`, `verify`, `email`, `phone`, `remark`, `create_time`, `update_time`, `status`, `type_id`, `info`) VALUES
	(1, 'admin', '管理员1', '21232f297a57a5a743894a0e4a801fc3', '', 1415931581, '127.0.0.1', 980, '8888', 'liu21st@gmail.com', '', '备注信息1', 1222907803, 1414741091, 1, 0, ''),
	(2, 'user', '会员用户', 'e10adc3949ba59abbe56e057f20f883e', '', 1415849831, '127.0.0.1', 139, '8888', '', '', '', 1239783735, 1415839587, 1, 0, ''),
	(3, 'shop', '店主', 'e10adc3949ba59abbe56e057f20f883e', '', 1415950947, '127.0.0.1', 56, '', 'shop@abc.com', '', '哈哈哈', 1253514375, 1415758413, 1, 0, ''),
	(4, 'agent', '代理商', 'e10adc3949ba59abbe56e057f20f883e', '', 1415781719, '127.0.0.1', 39, '', '', '', '领导', 1253514575, 1415778129, 1, 0, ''),
	(35, 'seller', '我是商家', '123456', '', 0, NULL, 0, '8602', 'abc@bcd.com', '13191813605', '', 0, 0, 0, 0, ''),
	(36, 'seller1', '我是商家1', 'e10adc3949ba59abbe56e057f20f883e', '', 1415864302, '127.0.0.1', 2, '8602', 'abc@bcd.com', '13191813605', '', 1415863630, 1415863630, 1, 0, ''),
	(37, 'seller2', '我是商家2', 'e10adc3949ba59abbe56e057f20f883e', '', 0, NULL, 0, '5332', 'abc@bcd.com', '13191813605', '', 1415864629, 1415864629, 0, 0, ''),
	(38, 'seller3', '我是商家3', 'e10adc3949ba59abbe56e057f20f883e', '', 1415951274, '127.0.0.1', 4, '7051', 'abc@bcd.com', '13191813605', '', 1415864953, 1415864953, 1, 0, '');
/*!40000 ALTER TABLE `qiankun_user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
