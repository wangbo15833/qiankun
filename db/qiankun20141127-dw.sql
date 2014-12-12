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

-- 正在导出表  qiankun.qiankun_access 的数据：26 rows
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
	(2, 32, 2, 7, NULL),
	(2, 33, 2, 7, NULL),
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
  `name` varchar(20) NOT NULL,
  `pid` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='省市列表';

-- 正在导出表  qiankun.qiankun_area 的数据：64 rows
/*!40000 ALTER TABLE `qiankun_area` DISABLE KEYS */;
INSERT INTO `qiankun_area` (`id`, `name`, `pid`, `type`) VALUES
	(1, '北京市', 0, 1),
	(2, '天津市', 0, 1),
	(3, '重庆市', 0, 1),
	(4, '上海市', 0, 1),
	(5, '河北省', 0, 1),
	(6, '山西省', 0, 1),
	(7, '辽宁省', 0, 1),
	(8, '吉林省', 0, 1),
	(9, '黑龙江省', 0, 1),
	(10, '江苏省', 0, 1),
	(11, '浙江省', 0, 1),
	(12, '安徽省', 0, 1),
	(13, '福建省', 0, 1),
	(14, '江西省', 0, 1),
	(15, '山东省', 0, 1),
	(16, '河南省', 0, 1),
	(17, '湖北省', 0, 1),
	(18, '湖南省', 0, 1),
	(19, '广东省', 0, 1),
	(20, '海南省', 0, 1),
	(21, '四川省', 0, 1),
	(22, '贵州省', 0, 1),
	(23, '云南省', 0, 1),
	(24, '陕西省', 0, 1),
	(25, '甘肃省', 0, 1),
	(26, '青海省', 0, 1),
	(27, '台湾省', 0, 1),
	(28, '内蒙古自治区', 0, 1),
	(29, '广西壮族自治区', 0, 1),
	(30, '宁夏回族自治区', 0, 1),
	(31, '新疆维吾尔自治区', 0, 1),
	(32, '西藏自治区', 0, 1),
	(33, '香港', 0, 1),
	(34, '澳门', 0, 1),
	(35, '石家庄市', 5, 1),
	(36, '秦皇岛市', 5, 1),
	(37, '承德市', 5, 1),
	(38, '张家口市', 5, 1),
	(39, '唐山市', 5, 1),
	(40, '廊坊市', 5, 1),
	(41, '保定市', 5, 1),
	(42, '沧州市', 5, 1),
	(43, '衡水市', 5, 1),
	(44, '邢台市', 5, 1),
	(45, '邯郸市', 5, 1),
	(46, '海港区', 36, 1),
	(47, '山海关区', 36, 1),
	(48, '北戴河区', 36, 1),
	(49, '昌黎县', 36, 1),
	(50, '抚宁县', 36, 1),
	(51, '卢龙县', 36, 1),
	(52, '开发区', 36, 1),
	(53, '青龙县', 36, 1),
	(54, '南戴河', 36, 1),
	(55, '朝阳区', 1, 1),
	(59, '测试省', 0, 2),
	(58, '商圈测试', 1, 2),
	(60, '北戴河', 36, 2),
	(61, '太阳城', 36, 2),
	(62, '河北大街西段', 36, 2),
	(63, '河北大街中段', 36, 2),
	(64, '人民广场', 36, 2),
	(65, '金三角', 36, 2),
	(66, '民族路', 36, 2);
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
  `thumb_img` varchar(255) NOT NULL,
  `new_price` float NOT NULL,
  `old_price` float NOT NULL,
  `status` tinyint(4) NOT NULL,
  `info` text NOT NULL,
  `shopid` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `inshop_category` int(11) NOT NULL,
  `add_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='平台商品表';

-- 正在导出表  qiankun.qiankun_goods 的数据：9 rows
/*!40000 ALTER TABLE `qiankun_goods` DISABLE KEYS */;
INSERT INTO `qiankun_goods` (`id`, `name`, `thumb_img`, `new_price`, `old_price`, `status`, `info`, `shopid`, `category_id`, `inshop_category`, `add_time`, `update_time`) VALUES
	(1, '商品1', '', 10.24, 10.25, 0, '商品1吸纳感情<br />', 14, 32, 0, 0, 0),
	(2, '商品2', '', 22.21, 22.23, 0, '商品详情2<br />', 14, 4, 0, 0, 0),
	(3, '我的第三件商品', '', 10.21, 10.22, 0, '商品详情介绍<br />', 14, 5, 0, 1416216439, 1416216439),
	(4, '我的第5件商品', '', 20, 20.03, 1, '哈哈哈哈哈哈<br />', 14, 31, 0, 1416557882, 1416557882),
	(5, '我的第6件商品', '546ef7814f42f.jpg', 25, 26, 1, '靠靠靠靠靠靠靠靠靠<br />', 14, 30, 0, 1416558465, 1416558465),
	(6, '就斤斤计较', '546ef8017c508.jpg', 25.2, 25.3, 1, '就就斤斤计较<br />', 14, 4, 0, 1416558593, 1416558593),
	(7, '复反反复复反反复复', '', 2, 20.3, 1, '靠靠靠靠靠靠靠靠靠靠靠<br />', 14, 5, 0, 1416560116, 1416560116),
	(8, '啊啊啊啊啊啊啊啊啊啊啊1', '546effe64b2ed.jpg', 51, 61, 1, 'iiiiiiiiiiiii就就斤斤计较11<br />', 14, 6, 0, 1416560172, 1416560850),
	(9, '5555555', '546eff7967918.jpg', 55, 55, 1, '55555555555<br />', 14, 7, 0, 1416560505, 1416560505);
/*!40000 ALTER TABLE `qiankun_goods` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_goods_category 结构
CREATE TABLE IF NOT EXISTS `qiankun_goods_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `sort` smallint(6) DEFAULT '0',
  `is_hot` tinyint(4) DEFAULT NULL,
  `is_floor` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='总站商品类目表';

-- 正在导出表  qiankun.qiankun_goods_category 的数据：31 rows
/*!40000 ALTER TABLE `qiankun_goods_category` DISABLE KEYS */;
INSERT INTO `qiankun_goods_category` (`id`, `name`, `pid`, `info`, `add_time`, `update_time`, `sort`, `is_hot`, `is_floor`) VALUES
	(1, '美食', 0, NULL, 1416983102, 1416983102, 0, NULL, NULL),
	(2, '休闲娱乐', 0, NULL, 1416983125, 1416983125, 0, NULL, NULL),
	(3, '酒店', 0, NULL, 1416983132, 1416983132, 0, NULL, NULL),
	(4, '丽人', 0, NULL, 1416983140, 1416983140, 0, NULL, NULL),
	(5, '购物', 0, NULL, 1416983147, 1416983147, 0, NULL, NULL),
	(6, '旅游', 0, NULL, 1416983154, 1416983154, 0, NULL, NULL),
	(7, '生活服务', 0, NULL, 1416983161, 1416983161, 0, NULL, NULL),
	(8, '亲子', 0, NULL, 1416983174, 1416983174, 0, NULL, NULL),
	(9, '结婚', 0, NULL, 1416983182, 1416983182, 0, NULL, NULL),
	(10, '甜品饮料', 1, NULL, 1416983662, 1416983662, 0, 1, NULL),
	(11, '自助餐', 1, NULL, 1416983674, 1416983674, 0, 1, NULL),
	(12, '火锅', 1, NULL, 1416983684, 1416983700, 0, 1, NULL),
	(13, '午市套餐', 1, NULL, 1416983725, 1416983725, 0, 1, NULL),
	(15, '下午茶', 1, NULL, 1416984526, 1416984526, 0, 1, NULL),
	(16, '日韩料理', 1, NULL, 1416984550, 1416984550, 0, 1, NULL),
	(17, '西餐', 1, NULL, 1416984559, 1416984559, 0, 1, NULL),
	(18, '小吃快餐', 1, NULL, 1416984571, 1416984571, 0, 1, NULL),
	(19, '烧烤烤鱼', 1, NULL, 1416984579, 1416984579, 0, 1, NULL),
	(20, '粤菜/茶餐厅', 1, NULL, 1416984596, 1416984596, 0, 1, NULL),
	(21, '江浙菜', 1, NULL, 1416984605, 1416984605, 0, 0, 1),
	(22, '川湘菜', 1, NULL, 1416984616, 1416984616, 0, NULL, 1),
	(23, '咖啡茶馆/酒吧', 1, NULL, 1416984892, 1416984892, 0, NULL, 1),
	(24, '海鲜', 1, NULL, 1416984900, 1416984900, 0, NULL, NULL),
	(25, '东南亚菜', 1, NULL, 1416984911, 1416984911, 0, NULL, NULL),
	(26, '新疆/清真', 1, NULL, 1416984921, 1416984921, 0, NULL, NULL),
	(27, '西北/东北菜', 1, NULL, 1416984932, 1416984932, 0, NULL, NULL),
	(28, '京菜/鲁菜', 1, NULL, 1416984945, 1416984945, 0, NULL, NULL),
	(29, '汤/粥/炖菜', 1, NULL, 1416984959, 1416984959, 0, NULL, NULL),
	(30, '聚餐宴请', 1, NULL, 1416984970, 1416984970, 0, NULL, NULL),
	(31, '蟹宴', 1, NULL, 1416984995, 1416984995, 0, NULL, NULL),
	(32, '其他美食', 1, NULL, 1416985004, 1416985004, 0, NULL, NULL);
/*!40000 ALTER TABLE `qiankun_goods_category` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_goods_inshop_category 结构
CREATE TABLE IF NOT EXISTS `qiankun_goods_inshop_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `shopid` int(11) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `sort` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='店内商品类目表';

-- 正在导出表  qiankun.qiankun_goods_inshop_category 的数据：6 rows
/*!40000 ALTER TABLE `qiankun_goods_inshop_category` DISABLE KEYS */;
INSERT INTO `qiankun_goods_inshop_category` (`id`, `name`, `pid`, `shopid`, `info`, `add_time`, `update_time`, `sort`) VALUES
	(1, '商品分类1', 0, 14, NULL, 1416203080, 1416203080, 0),
	(2, '商品分类2', 0, 13, NULL, 1416203080, 1416203080, 0),
	(3, '商品分类3', 0, 14, NULL, 1416203080, 1416203080, 0),
	(4, 'abc', 1, 14, NULL, 1416203325, 1416203325, 0),
	(5, 'vvvv', 4, 14, NULL, 1416204824, 1416204971, 0),
	(8, '1125类目11', 0, 14, NULL, 1416878553, 1416878563, 0);
/*!40000 ALTER TABLE `qiankun_goods_inshop_category` ENABLE KEYS */;


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
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='rbac节点表';

-- 正在导出表  qiankun.qiankun_node 的数据：34 rows
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
	(31, 'GoodsCategory', '商品类目', 1, '', NULL, 1, 2, 0, 2),
	(32, 'GoodsInshopCategory', '商品类目管理', 1, '', NULL, 7, 2, 0, 0),
	(33, 'Goods', '商品管理', 1, '', NULL, 7, 2, 0, 0),
	(34, 'Area', '区县管理', 1, '', NULL, 1, 2, 0, 2);
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

-- 正在导出表  qiankun.qiankun_role_user 的数据：6 rows
/*!40000 ALTER TABLE `qiankun_role_user` DISABLE KEYS */;
INSERT INTO `qiankun_role_user` (`role_id`, `user_id`) VALUES
	(3, '39'),
	(3, '40'),
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
  `owner` int(11) NOT NULL COMMENT '所有者',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='店铺表';

-- 正在导出表  qiankun.qiankun_shop 的数据：5 rows
/*!40000 ALTER TABLE `qiankun_shop` DISABLE KEYS */;
INSERT INTO `qiankun_shop` (`id`, `shopname`, `phone`, `address`, `info`, `point_x`, `point_y`, `add_time`, `update_time`, `province`, `city`, `area`, `owner`) VALUES
	(1, 'aaa', '6546', 'aaaa', 'gfdfgdfghd<br />', '', '', '', '', '', '', '', 0),
	(2, '我的第一家店铺', '1111', '我的详细地址', '我的店铺详情介绍<br />', '', '', '', '', '15', '1502', '46', 0),
	(3, '第二家店铺', '2222', '山海关区', '店铺详情<br />', '', '', '', '', '15', '1502', '46', 0),
	(15, 'seller3的店铺', '123456', '哈哈', '', '119.538253', '39.928644', '1415951360', '1415951360', '15', '1502', '47', 38),
	(14, '第三家店铺', '777777', '秦皇岛', '斤斤计较斤斤计较斤斤计较斤斤计较经济<br />', '119.604512', '39.945296', '1415678973', '1415778042', '15', '1502', '47', 3);
/*!40000 ALTER TABLE `qiankun_shop` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_shop_category 结构
CREATE TABLE IF NOT EXISTS `qiankun_shop_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `pid` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='店铺类目表(废弃不用)';

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
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='平台用户表';

-- 正在导出表  qiankun.qiankun_user 的数据：10 rows
/*!40000 ALTER TABLE `qiankun_user` DISABLE KEYS */;
INSERT INTO `qiankun_user` (`id`, `account`, `nickname`, `password`, `bind_account`, `last_login_time`, `last_login_ip`, `login_count`, `verify`, `email`, `phone`, `remark`, `create_time`, `update_time`, `status`, `type_id`, `info`) VALUES
	(1, 'admin', '管理员1', '21232f297a57a5a743894a0e4a801fc3', '', 1417056673, '127.0.0.1', 987, '8888', 'liu21st@gmail.com', '', '备注信息1', 1222907803, 1414741091, 1, 0, ''),
	(2, 'user', '会员用户', 'e10adc3949ba59abbe56e057f20f883e', '', 1415849831, '127.0.0.1', 139, '8888', '', '', '', 1239783735, 1415839587, 1, 0, ''),
	(3, 'shop', '店主', 'e10adc3949ba59abbe56e057f20f883e', '', 1417050041, '127.0.0.1', 87, '', 'shop@abc.com', '', '哈哈哈', 1253514375, 1415758413, 1, 0, ''),
	(4, 'agent', '代理商', 'e10adc3949ba59abbe56e057f20f883e', '', 1415781719, '127.0.0.1', 39, '', '', '', '领导', 1253514575, 1415778129, 1, 0, ''),
	(35, 'seller', '我是商家', '123456', '', 0, NULL, 0, '8602', 'abc@bcd.com', '13191813605', '', 0, 0, 0, 0, ''),
	(36, 'seller1', '我是商家1', 'e10adc3949ba59abbe56e057f20f883e', '', 1416555943, '127.0.0.1', 4, '8602', 'abc@bcd.com', '13191813605', '', 1415863630, 1415863630, 1, 0, ''),
	(37, 'seller2', '我是商家2', 'e10adc3949ba59abbe56e057f20f883e', '', 0, NULL, 0, '5332', 'abc@bcd.com', '13191813605', '', 1415864629, 1415864629, 0, 0, ''),
	(38, 'seller3', '我是商家3', 'e10adc3949ba59abbe56e057f20f883e', '', 1415951274, '127.0.0.1', 4, '7051', 'abc@bcd.com', '13191813605', '', 1415864953, 1415864953, 1, 0, ''),
	(39, 'SH_201411211529105183', '', '123456', '', 0, NULL, 0, '4082', '', '13191813605', '', 0, 0, 0, 0, ''),
	(40, 'SH_201411211531424950', '', 'e10adc3949ba59abbe56e057f20f883e', '', 1416556109, '127.0.0.1', 2, '8066', '', '13191813605', '', 1416555112, 1416555112, 1, 0, '');
/*!40000 ALTER TABLE `qiankun_user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
