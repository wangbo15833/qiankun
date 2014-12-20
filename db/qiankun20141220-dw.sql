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
  `role_id` smallint(6) unsigned NOT NULL COMMENT '角色ID',
  `node_id` smallint(6) unsigned NOT NULL COMMENT '节点ID',
  `level` tinyint(1) NOT NULL COMMENT '级别',
  `pid` smallint(6) NOT NULL COMMENT '父级ID',
  `module` varchar(50) DEFAULT NULL COMMENT '模块',
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='rbac授权表';

-- 正在导出表  qiankun.qiankun_access 的数据：46 rows
/*!40000 ALTER TABLE `qiankun_access` DISABLE KEYS */;
INSERT INTO `qiankun_access` (`role_id`, `node_id`, `level`, `pid`, `module`) VALUES
	(2, 16, 3, 8, NULL),
	(3, 19, 1, 0, NULL),
	(3, 53, 2, 19, NULL),
	(3, 48, 2, 19, NULL),
	(3, 21, 3, 20, NULL),
	(3, 22, 3, 20, NULL),
	(3, 23, 3, 20, NULL),
	(3, 24, 3, 20, NULL),
	(3, 25, 3, 20, NULL),
	(3, 26, 3, 20, NULL),
	(3, 27, 3, 20, NULL),
	(3, 28, 3, 20, NULL),
	(2, 54, 2, 7, NULL),
	(2, 52, 2, 7, NULL),
	(3, 47, 2, 19, NULL),
	(2, 15, 3, 8, NULL),
	(2, 14, 3, 8, NULL),
	(2, 13, 3, 8, NULL),
	(2, 11, 3, 8, NULL),
	(2, 12, 3, 8, NULL),
	(2, 10, 3, 8, NULL),
	(2, 7, 1, 0, NULL),
	(2, 51, 2, 7, NULL),
	(2, 50, 2, 7, NULL),
	(2, 46, 2, 7, NULL),
	(2, 9, 3, 8, NULL),
	(3, 43, 2, 19, NULL),
	(2, 37, 2, 7, NULL),
	(2, 36, 2, 7, NULL),
	(2, 39, 3, 37, NULL),
	(3, 40, 2, 19, NULL),
	(3, 42, 3, 35, NULL),
	(3, 35, 2, 19, NULL),
	(2, 44, 3, 37, NULL),
	(2, 45, 3, 36, NULL),
	(2, 33, 2, 7, NULL),
	(3, 30, 2, 19, NULL),
	(3, 29, 2, 19, NULL),
	(2, 32, 2, 7, NULL),
	(2, 18, 2, 7, NULL),
	(2, 17, 2, 7, NULL),
	(3, 20, 2, 19, NULL),
	(2, 8, 2, 7, NULL),
	(3, 55, 2, 19, NULL),
	(2, 56, 2, 7, NULL),
	(2, 57, 3, 56, NULL);
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
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(20) NOT NULL COMMENT '地名',
  `pid` int(11) NOT NULL COMMENT '父级ID',
  `type` tinyint(4) NOT NULL COMMENT '1：行政地区 2：商圈',
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


-- 导出  表 qiankun.qiankun_coupons 结构
CREATE TABLE IF NOT EXISTS `qiankun_coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `value` float DEFAULT NULL COMMENT '面值',
  `start_time` int(11) DEFAULT NULL COMMENT '有效期开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '有效期截止时间',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `shopid` int(11) DEFAULT NULL COMMENT '所属店铺',
  `status` tinyint(4) DEFAULT '1' COMMENT '优惠券状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='电子优惠券';

-- 正在导出表  qiankun.qiankun_coupons 的数据：2 rows
/*!40000 ALTER TABLE `qiankun_coupons` DISABLE KEYS */;
INSERT INTO `qiankun_coupons` (`id`, `title`, `value`, `start_time`, `end_time`, `add_time`, `shopid`, `status`) VALUES
	(3, '优惠200', 200, 1419004800, 1419091200, 1419060653, 14, 1),
	(2, '优惠101', 101, 1418918400, 1419350400, 1419046077, 14, 1);
/*!40000 ALTER TABLE `qiankun_coupons` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_coupons_map 结构
CREATE TABLE IF NOT EXISTS `qiankun_coupons_map` (
  `coupons_id` int(11) NOT NULL COMMENT '优惠券ID',
  `userid` int(11) NOT NULL COMMENT '用户ID',
  `is_used` tinyint(4) DEFAULT '0' COMMENT '是否已被使用',
  PRIMARY KEY (`coupons_id`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  qiankun.qiankun_coupons_map 的数据：1 rows
/*!40000 ALTER TABLE `qiankun_coupons_map` DISABLE KEYS */;
INSERT INTO `qiankun_coupons_map` (`coupons_id`, `userid`, `is_used`) VALUES
	(3, 2, 0);
/*!40000 ALTER TABLE `qiankun_coupons_map` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_feedback 结构
CREATE TABLE IF NOT EXISTS `qiankun_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL COMMENT '反馈内容',
  `contacts` varchar(255) NOT NULL COMMENT '联系方式',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='用户反馈表';

-- 正在导出表  qiankun.qiankun_feedback 的数据：3 rows
/*!40000 ALTER TABLE `qiankun_feedback` DISABLE KEYS */;
INSERT INTO `qiankun_feedback` (`id`, `message`, `contacts`, `add_time`) VALUES
	(2, 'hhhhhhhhhhhhhhh', 'kkkkkkkk', 1418270742),
	(26, 'lllllllllll', 'ooooooooo', 1418270806),
	(27, 'bbbbbbbbbbb', 'bbbbbbbbbbb', 1418270872);
/*!40000 ALTER TABLE `qiankun_feedback` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_form 结构
CREATE TABLE IF NOT EXISTS `qiankun_form` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='rbac示例表';

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
  `sub_title` varchar(255) NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='平台商品表';

-- 正在导出表  qiankun.qiankun_goods 的数据：22 rows
/*!40000 ALTER TABLE `qiankun_goods` DISABLE KEYS */;
INSERT INTO `qiankun_goods` (`id`, `name`, `sub_title`, `thumb_img`, `new_price`, `old_price`, `status`, `info`, `shopid`, `category_id`, `inshop_category`, `add_time`, `update_time`) VALUES
	(1, '商品1', '', '', 10.24, 10.25, 0, '商品1吸纳感情<br />', 14, 32, 0, 0, 0),
	(2, '商品2', '', '', 22.21, 22.23, 0, '商品详情2<br />', 14, 4, 0, 0, 0),
	(3, '我的第三件商品', '', '', 10.21, 10.22, 0, '商品详情介绍<br />', 14, 5, 0, 1416216439, 1416216439),
	(4, '我的第5件商品', '', '', 20, 20.03, 1, '哈哈哈哈哈哈<br />', 14, 31, 0, 1416557882, 1416557882),
	(5, '我的第6件商品', '', '546ef7814f42f.jpg', 25, 26, 1, '靠靠靠靠靠靠靠靠靠<br />', 14, 30, 0, 1416558465, 1416558465),
	(6, '就斤斤计较', '', '546ef8017c508.jpg', 25.2, 25.3, 1, '就就斤斤计较<br />', 14, 4, 0, 1416558593, 1416558593),
	(10, '茗记甜品', '仅售25.01元，价值40元代金券，不限时段通用，免费WiFi，可累积使用，全场通用！', '547aa74e8b0ea.png', 25.01, 45, 1, '<p class="listitem">杨枝甘露</p>\r\n<div class="img"><img style="height:auto;" src="http://t2.s2.dpfile.com/pc/mc/067287d93106ce66e8fd25158afad97a%28640x1024%29/thumb.jpg" data-seq="0" /></div>\r\n<p class="listitem">榴莲班戟</p>\r\n<div class="img"><img style="height:auto;" src="http://t3.s2.dpfile.com/pc/mc/e6cec8499c6bc0c958866f64ddcec333%28640x1024%29/thumb.jpg" data-seq="1" /></div>\r\n<p class="listitem">芒果班戟</p>\r\n<div class="img"><img style="height:auto;" src="http://t3.s2.dpfile.com/pc/mc/f68df4230b999254e5dcaf60b2063669%28640x1024%29/thumb.jpg" data-seq="2" /></div>\r\n<p class="listitem">芒果黑糯米</p>\r\n<div class="img"><img style="height:auto;" src="http://t2.s2.dpfile.com/pc/mc/4b3b5a838a1706c61f238259fd3380d6%28640x1024%29/thumb.jpg" data-seq="3" /></div>', 14, 1, 1, 1417324366, 1417324366),
	(11, '张香食品 ', '仅售24.81元，价值35元炸排骨1份，不限时段通用！', '547aaae737f9c.jpg', 24.81, 35, 1, '<div class="img"><img style="height:auto;" src="http://t3.s2.dpfile.com/pc/mc/073a5c15bedf76344ec2913fb034f746%28640x1024%29/thumb.jpg" data-seq="0" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s1.dpfile.com/pc/mc/0bd36410a4874609a09031a8d95e5d0b%28640x1024%29/thumb.jpg" data-seq="1" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.s2.dpfile.com/pc/mc/12f6b7324a930b10fe9f87bbef73eacc%28640x1024%29/thumb.jpg" data-seq="2" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s1.dpfile.com/pc/mc/3847af938a8f8e5bbc0d4aaa8b58d6f6%28640x1024%29/thumb.jpg" data-seq="3" /></div>', 14, 1, 1, 1417324828, 1417325287),
	(12, '杨長子 ', '仅售24.81元，价值35元炸排骨1份，不限时段通用！', '547aa9909ed99.jpg', 19.91, 22, 1, '<div class="img"><img style="height:auto;" src="http://t3.s1.dpfile.com/pc/mc/dc5fa9cc159388f40eedb917b79862fc%28640x1024%29/thumb.jpg" data-seq="0" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.s1.dpfile.com/pc/mc/4d0756edde97aaabb0512a305227b74b%28640x1024%29/thumb.jpg" data-seq="1" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s1.dpfile.com/pc/mc/f4c9703f317e6d74b75eb25a80f7628d%28640x1024%29/thumb.jpg" data-seq="2" /></div>', 14, 1, 1, 1417324944, 1417324944),
	(13, '富利来', '仅售25.01元，价值32元代金券，不限时段通用，到店自提！可累积使用！优质原料，精心烘焙，追求做出让顾客满意的美味！', '547aab68a5072.jpg', 25.01, 32, 1, '<div class="img"><img style="height:auto;" src="http://t1.s2.dpfile.com/pc/mc/d6a3d13f4fe57d20345058349c5f6685%28640x1024%29/thumb.jpg" data-seq="0" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s2.dpfile.com/pc/mc/3048f4d02784ec57057e1382775c5a07%28640x1024%29/thumb.jpg" data-seq="1" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.s1.dpfile.com/pc/mc/1c26c57b3a502684d53ec51a55177c7b%28640x1024%29/thumb.jpg" data-seq="2" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.s1.dpfile.com/pc/mc/740c54c69ed824fcc554b4a5182e3801%28640x1024%29/thumb.jpg" data-seq="3" /></div>', 14, 1, 1, 1417325416, 1417325416),
	(14, '青岛即墨温泉港中旅海泉湾温泉门票 ', '仅售148元,价值198元港中旅海泉湾温泉门票一张!', '547c2a792b4aa.jpg', 148, 198, 1, '<p class="listitem">青岛即墨温泉</p>\r\n<p class="explain">青岛金麒玉麟温泉山庄：占地1320亩，温泉距海\r\n直线距离1500米，温泉出水温度达93摄氏度，泉水无色透明无异味，是少有的优质溴盐温泉，青岛城投温泉度假酒店是世界稀有的四大海水溴温泉之一，还是\r\n一所拥有稀有金属——“硒”的天然温泉，属全球罕见的保健型高温溴泉，港中旅青岛海泉湾的海洋温泉是青岛海泉湾度假区的核心特色产品，也是目前国内最大，\r\n唯一兼具娱乐与养生功能、海洋文化为主题打造的主题公园式的海洋温泉，日月谷假日温泉旅游度假区地处夏庄 \r\n—灵山卫断裂带上。这里依山傍水，气候宜人，冬无严寒，夏无酷暑，年均温12.1℃。</p>\r\n<div class="img"><img style="height:auto;" src="http://t3.s2.dpfile.com/pc/mc/2f007443c50bff30f8b59487ab583fdb%28640x400%29/thumb.jpg" data-seq="0" /></div>', 14, 2, 1, 1417423481, 1417423481),
	(15, '奥帆博物馆5D电影成人票 ', '仅售30元,价值60元成人票门票一张!', '547c2abb705df.jpg', 30, 60, 1, '<p class="listitem">奥帆博物馆5D电影</p>\r\n<p class="explain">全国首个以宣传青岛旅游形象，推广城市帆船文化为主题的旅游科普性景点</p>\r\n<div class="img"><img style="height:auto;" src="http://t3.s1.dpfile.com/pc/mc/7edf18cea3bcf992d60cfe0f691a0d2f%28640x400%29/thumb.jpg" data-seq="0" /></div>', 14, 2, 1, 1417423547, 1417423547),
	(16, '天目湖涵田-半山温泉双人票套餐', '仅售316元，价值516元涵田-半山温泉双人票套餐，男女通用，免费WiFi！私家半岛礼遇，背山面湖的尊享，距离天目湖仅20米之遥！', '547c2b02ebb9c.jpg', 316, 516, 1, '<p class="explain">特色1：头顶是满天星空与林间清风，脚下是一望无垠的安静湖面与夜航船的灯影。山岭坡道与竹林花草是温泉与温泉间\r\n的天然屏障，视野里看不见邻居，只有片刻的模糊的欢声笑语和偶尔前来造访的过路小鸟。 \r\n特色2：这里有高科技脉冲水疗温泉，能快速驱散疲劳；这里有精盐浴室，是闻名遐迩的养颜美容享受。按摩池、肩颈减压池、纳米池，高科技设施应有尽有。 \r\n特色3：这里有包池服务，甚至你可以要求整座温泉都撒上花瓣、点上烛光，这画面美的我不敢看哦。</p>\r\n<div class="img"><img style="height:auto;" src="http://t3.s1.dpfile.com/pc/mc/4c2fd8bc6623c7c18def7c503ba0b67d%28640x1024%29/thumb.jpg" data-seq="0" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s1.dpfile.com/pc/mc/5c164bba1ffb375ee435a3e06ac63120%28640x1024%29/thumb.jpg" data-seq="1" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s1.dpfile.com/pc/mc/20de57e508cc94e8cb8df2d93c92d10b%28640x1024%29/thumb.jpg" data-seq="2" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s1.dpfile.com/pc/mc/cd4b5ae5cbe171fde663c56226999723%28640x1024%29/thumb.jpg" data-seq="3" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s1.dpfile.com/pc/mc/66cffadc808b4d653d2978d5f0899187%28640x1024%29/thumb.jpg" data-seq="4" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s2.dpfile.com/pc/mc/1c46435449c07369747a49c80e48f174%28640x1024%29/thumb.jpg" data-seq="5" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s1.dpfile.com/pc/mc/a14d17cd01e6978aef7cef8875d3261b%28640x1024%29/thumb.jpg" data-seq="6" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.s1.dpfile.com/pc/mc/5497e284199788a929abd03136666355%28640x1024%29/thumb.jpg" data-seq="7" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s1.dpfile.com/pc/mc/28e8a098cad082efff5c8bba23bf8344%28640x1024%29/thumb.jpg" data-seq="8" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s2.dpfile.com/pc/mc/f61936eeb5e78cbdfbc1f740e77503c0%28640x1024%29/thumb.jpg" data-seq="9" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s1.dpfile.com/pc/mc/97e8b9df742254a2551841281581d8db%28640x1024%29/thumb.jpg" data-seq="10" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s1.dpfile.com/pc/mc/6008888d0316087ffb6a00ba752acd84%28640x1024%29/thumb.jpg" data-seq="11" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s2.dpfile.com/pc/mc/1b12a5e36b0be5f75daac5b04f2a4f0e%28640x1024%29/thumb.jpg" data-seq="12" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s2.dpfile.com/pc/mc/7a937dd6246ea524c790b237941f701f%28640x1024%29/thumb.jpg" data-seq="13" /></div>\r\n<div>-- 幽美私密的自然环境、无微不至的关怀服务 -\r\n 天目湖涵田半山温泉坐落于山水旖旎的天目湖畔，青山妩媚，层林碧透，半山温泉“容天地于一池”，观光养生兼享。\r\n天目湖涵田半山温泉，拥有44座特色鲜明的室外温泉池以及奢华雅致的全功能温泉会所。其中，温泉会所一楼拥有全身按摩池、肩颈减压池、纳米池、纯温泉池、\r\n脉冲按摩浴五大特色池，配备四间桑拿房、近两千个更衣柜及鞋柜；二楼拥有休息大厅、儿童乐园、网吧、包间内自动麻将机等，娱乐功能一应俱全；三楼SPA客\r\n房均配有温泉池，VIP套房配备自动麻将机，奢享雅逸。 </div>', 14, 2, 1, 1417423618, 1417423618),
	(17, '天台寒山漂流电子票 ', '仅售70元，价值158元 天台寒山漂流电子票！节假日通用！', '547c2b44657db.jpg', 70, 158, 1, '<p class="explain">天台寒山漂流<br />\r\n天台寒山漂流位于天台县西部，1500多年的浙东古镇--天台街头镇，国家级重点风景名胜区\r\n4A级旅游区---寒岩、明岩景区西侧，市级农家乐特色村—后岸村。这里自然风景优美，文化底蕴深厚,“十里铁甲龙”屹立村前，奇秀磅礴，如屏如画。境内\r\n拥有寒山湖、九遮山等国家级风景名胜区，旅游资源丰富，人文积淀深厚，交通条件便利。漂流全程有3.8公里，孩子老人也能玩的漂流，具有溪道宽阔、水流清\r\n澈、山水辉映等优势。这里刺激的皮筏漂流让您享受漂流一日游的巨大乐趣。这里山水交融、空气清新，溪中游鱼可数、林间飞鸟相呼。溪谷、奇岩、寒岩山谷等众\r\n多景点，在漂流途中可慢慢欣赏。走进寒山漂流，会让您回归自然，亲近自然，放松心情，文化历史伴您游玩。物我两忘；真正领略那“荡舟清波上，人在画中游”\r\n的意境。漂流项目除外还有农家乐活动项目：游泳、钓鱼、 烧烤, \r\n我们免费为您提供烤炉，钓鱼工具。后岸村还为远道而来的客人提供便利的餐饮，住宿服务，热烈欢迎您来寒山漂流做客！</p>\r\n<div class="img"><img style="height:auto;" data-seq="0" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s1.dpfile.com/pc/mc/c686bde2cad84406c618e3f8f1bcd2aa%28640x1024%29/thumb.jpg" data-seq="1" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s1.dpfile.com/pc/mc/d0b74db9e23b26e0d86067e330d5ec1b%28640x1024%29/thumb.jpg" data-seq="2" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s1.dpfile.com/pc/mc/1467c6c5d494ecf534e22a8d3900da0d%28640x1024%29/thumb.jpg" data-seq="3" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s1.dpfile.com/pc/mc/1ec44098cbb84bdfb9851f9eaf17e5f8%28640x1024%29/thumb.jpg" data-seq="4" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s1.dpfile.com/pc/mc/0942e820d9bf81697d4dd3bab0c73653%28640x1024%29/thumb.jpg" data-seq="5" /></div>', 14, 2, 1, 1417423684, 1417423684),
	(18, '燕山大厦', '仅售268元，价值1280元燕山大厦家庭套房！免费宽带！', '547c2bb09433f.jpg', 268, 1280, 1, '<div class="img"><img style="height:auto;" src="http://t3.s1.dpfile.com/pc/mc/41069a8c2a4c4fc9048bbf6fb9dc4988%28450x1024%29/thumb.jpg" data-seq="0" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s1.dpfile.com/pc/mc/57492f5acff5cf89fababe38cf4c26dc%28450x1024%29/thumb.jpg" data-seq="1" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.s2.dpfile.com/pc/mc/7c51e9170ab310aeb7d87c1530c5d0b3%28450x1024%29/thumb.jpg" data-seq="2" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.s2.dpfile.com/pc/mc/5c7a5f2400f5c90296e9b5293a2e7768%28450x1024%29/thumb.jpg" data-seq="3" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.s2.dpfile.com/pc/mc/b93874fce23ebbcfdeb5c7914c195bf0%28450x1024%29/thumb.jpg" data-seq="4" /></div>', 14, 3, 1, 1417423792, 1417423792),
	(19, '[抚宁县中心城区] 剑南快捷宾馆 ', '标准间住宿', '547c2c02d0fea.jpg', 148, 268, 1, '<div class="img"><img style="height:auto;" src="http://t1.dpfile.com/pc/mc/7a315f469e39796848470114df4c0837%28450x1024%29/thumb.jpg" data-seq="0" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.dpfile.com/pc/mc/da6ac25895a60613be6797176d9f1c46%28450x1024%29/thumb.jpg" data-seq="1" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.dpfile.com/pc/mc/74ca6b2d25317a66e297ffcc91d1465d%28450x1024%29/thumb.jpg" data-seq="2" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.dpfile.com/pc/mc/fab85d53f641011294a4b6b8eed02042%28450x1024%29/thumb.jpg" data-seq="3" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.dpfile.com/pc/mc/c2bbb245205092634f28dd22b25f21fd%28450x1024%29/thumb.jpg" data-seq="4" /></div>', 14, 3, 1, 1417423874, 1417423874),
	(20, '[金三角] 玖玖快捷酒店', '大床房住宿', '547c2c56b0a92.jpg', 49, 299, 1, '<div class="img"><img style="height:auto;" src="http://t1.dpfile.com/pc/mc/43e73e3ed90ff08d81181aa230246c70%28450x1024%29/thumb.jpg" data-seq="0" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.dpfile.com/pc/mc/aab509110b08dae47f8533aa980685bf%28450x1024%29/thumb.jpg" data-seq="1" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.dpfile.com/pc/mc/58abbc6817e8044ed4c308c9fa94e6e7%28450x1024%29/thumb.jpg" data-seq="2" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.dpfile.com/pc/mc/3e5658fbc53e82125d5ee34a6d716a70%28450x1024%29/thumb.jpg" data-seq="3" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.dpfile.com/pc/mc/4476cea5bf8d7de88c287e176dbb0576%28450x1024%29/thumb.jpg" data-seq="4" /></div>', 14, 3, 1, 1417423958, 1417423958),
	(21, '[和平大街] 格林豪泰(和平大街店) ', '大床房4小时/标准间4小时住宿', '547c2c98dba18.jpg', 80, 178, 1, '<div class="img"><img style="height:auto;" src="http://t1.dpfile.com/pc/mc/3d1b06c45ade7b562dbe59f513d20561%28450x1024%29/thumb.jpg" data-seq="0" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.dpfile.com/pc/mc/733e396cf239fae94576fae8907934ee%28450x1024%29/thumb.jpg" data-seq="1" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.dpfile.com/pc/mc/f36471afcb4aad0c14abadf424c82631%28450x1024%29/thumb.jpg" data-seq="2" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.dpfile.com/pc/mc/35436c97fc01c82be40ba0599e2db336%28450x1024%29/thumb.jpg" data-seq="3" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.dpfile.com/pc/mc/a1d5ad2aaae4ca29a56f63d5e1e2138b%28450x1024%29/thumb.jpg" data-seq="4" /></div>', 14, 3, 1, 1417424024, 1417424024),
	(22, '[秦皇西大街] UCC国际洗衣 ', '仅售20元，价值25元短款羽绒服干洗套餐！', '547c2d0c56b6b.jpg', 20, 25, 1, '<div class="img"><img style="height:auto;" src="http://t2.s2.dpfile.com/pc/mc/b9306a0ce45da7ba62be077a2b3fac5e%28640x1024%29/thumb.jpg" data-seq="0" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s1.dpfile.com/pc/mc/03c8b969a4536a8b49bca5a5fef8d15d%28640x1024%29/thumb.jpg" data-seq="1" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s2.dpfile.com/pc/mc/2f9f3250907954b825f6f66b839b2144%28640x1024%29/thumb.jpg" data-seq="2" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s1.dpfile.com/pc/mc/4444276f35e5c3f0d70cea652e24749a%28640x1024%29/thumb.jpg" data-seq="3" /></div>', 14, 7, 1, 1417424140, 1417424140),
	(23, '沪江网校 ', '仅售10元，价值80元80学币抵用券！所有课程均可抵用！', '547c2d53bf229.jpg', 10, 80, 1, '<div class="img"><img style="height:auto;" src="http://t2.s2.dpfile.com/pc/mc/120a3862c367fac8186b30acc6cdd6a9%28640x1024%29/thumb.jpg" data-seq="0" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s2.dpfile.com/pc/mc/b14a0810b7db14f0c66e7f7dc0bcdc36%28640x1024%29/thumb.jpg" data-seq="1" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s1.dpfile.com/pc/mc/2d002be6f9a4ba1e22a8197e5e51ac52%28640x1024%29/thumb.jpg" data-seq="2" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s2.dpfile.com/pc/mc/164a8e87cc71652449c297e7a95420ec%28640x1024%29/thumb.jpg" data-seq="3" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.s2.dpfile.com/pc/mc/f94cc8192a31482e56e83cad8b4c2bdb%28640x1024%29/thumb.jpg" data-seq="4" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.s1.dpfile.com/pc/mc/cc8bf2a00a574a4d43f8e8c48858f966%28640x1024%29/thumb.jpg" data-seq="5" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s2.dpfile.com/pc/mc/9cfcbb412372ce3d26e3aa8f6760b211%28640x1024%29/thumb.jpg" data-seq="6" /></div>', 14, 7, 1, 1417424211, 1417424211),
	(24, '尊爵皇家婚纱摄影', '仅售5980元，价值9966元经典三亚套系！（另有其他套餐可选）', '547c2da5b367a.jpg', 5980, 9966, 1, '<p class="explain">【尊爵皇家·三亚·凤凰岛基地介绍】\r\n2013年，尊爵皇家婚纱摄影连锁集团独家入驻三亚湾度假区——凤凰岛\r\n★该岛总占地面积48万平，四面临海，由一座跨海观光大桥与市区相连，被誉为“东方迪拜、海上度假天堂”\r\n★驻扎在三亚凤凰岛的技术团队是尊爵皇家具有丰富经验的精英团队，十年专注拍摄海景婚纱摄影，独家研发三亚四十款婚纱照主题拍摄\r\n★超星级养生度假中心：五幢100米28层产权式度假酒店公寓，超五星酒店标准，超宽露台180°观景瞰海\r\n★国际游艇俱乐部：沿岛海面设置约300个游艇泊位及永久性游艇展示中心，游艇出海，享受海上浪漫时光\r\n★国际邮轮港：中国第一座较大较豪华的国际邮轮母港和世界十大邮轮母港之一，这里是欧、美、东南亚等地的国际高端游客的云集之地。\r\n★椰林及热带植物：配合海星型的建筑造型，高密度的植栽计划将种植各式热带植物。高大树木与低矮灌木、花卉及草坪共同形成层次丰富的宜人绿化环境。前来拍照的新人可以在这里充分的享受自然\r\n★无边泳池：设计师的奇思妙想，泳池与海相接，中间用透明挡板相隔，特殊的设计令泳池的水体看起来仿佛延伸至海洋的尽头。这里是水下婚纱与无边泳池主题婚纱照的拍摄地\r\n★凤凰岛引进瑞士高端酒店品牌，与迪拜棕榈岛、新加坡圣淘沙岛、泰国普吉岛同享品牌服务。凤凰岛为产权式酒店，均价12万/平方米，尊爵皇家提供的房间价值六百多万人民币\r\n★融汇全球奢侈品CASA的空间艺术，凤凰岛联袂FENDI、HERMES和AMARNY品牌大师，量体打造不二的奢绮套房，大到水晶、贝壳等室内装修材料，小到家庭用品都是从欧洲国家进行专业定制，这里就是奢华的代名词\r\n★凤凰岛借鉴世界前沿阿玛尼酒店智能化系统，携手PHILIPS、VANTAGE为酒店房间定制专属智能空间。超大阳台落地窗配上全自动窗帘，180°观景瞰海。当海风轻柔拂面，不是刻意安排，凤凰岛，恰好就在你眼前\r\n★每个酒店房间露台都有一个冲浪浴缸，拍照过后，您可以在露台泡上一个精油浴放松身心，望着碧海蓝天，接近自然、感悟爱情\r\n\r\n【尊爵皇家十大服务保障】\r\n10年品牌 优质保证\r\n★三亚市独立封闭海岛式婚纱摄影基地\r\n进驻高端私人领地，世间仅有，享受全程无打扰拍摄\r\n★度假式拍摄全程无忧\r\n抵达接机、度假酒店、外景专车，让你感受蜜月般的假期\r\n★拍摄不满意无条件重拍\r\n如果您对拍摄不满意，我们将为您重新策划拍摄风格，绝不让您的婚纱照留下遗憾\r\n★拍摄底片全部赠送\r\n拍摄当天，尊爵皇家为您拍摄的婚纱照底片全部属于您，无需购买\r\n★拍摄全程多对一精致服务\r\n团队式服务，专属摄影师、化妆师、灯光师、数码设计师全程策划服务到底\r\n★国内尖端技术团队长期支持\r\n始终坚持“创新为主，技术引航”的原则，不买样片、不跟随，客照=样照，所见即所得\r\n★当天选片服务更合理更专业\r\n拍摄完毕现场专人陪同选片，节省时间，免除后顾之忧\r\n★网络看版\r\n专人负责网络确定版面，省时省力，不受地域限制\r\n★集团式经营一卡多品牌优惠共享\r\n旗下品牌优惠服务共享，满足您婚纱、礼服、写真、全家福的不同需求\r\n★令您安心的产品售后服务\r\n尊爵皇家的所有产品，非人为因素导致的产品破损两年内包换、终身保修\r\n尊爵人敢于用服务和品质挑战市场！面对每对新人</p>\r\n<div class="img"><img style="height:auto;" src="http://t2.s1.dpfile.com/pc/mc/9cc8c4052681f80982bac7d177ca8505%28640x1024%29/thumb.jpg" data-seq="0" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s1.dpfile.com/pc/mc/6d37741826839b23e688576969e1c0d1%28640x1024%29/thumb.jpg" data-seq="1" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s2.dpfile.com/pc/mc/9d3ead4eed3248ec350fc56738ed5d21%28640x1024%29/thumb.jpg" data-seq="2" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.s2.dpfile.com/pc/mc/12cc007c25755226db3fb9ad498787ae%28640x1024%29/thumb.jpg" data-seq="3" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s1.dpfile.com/pc/mc/1654d474f1df12aa66e5d95c77b04f1e%28640x1024%29/thumb.jpg" data-seq="4" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s2.dpfile.com/pc/mc/7ffab3db937827420575af11349c8820%28640x1024%29/thumb.jpg" data-seq="5" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.s2.dpfile.com/pc/mc/995c44de924f7d6f2d523d62bf846633%28640x1024%29/thumb.jpg" data-seq="6" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.s1.dpfile.com/pc/mc/1915a66912580ac0584aff2628f5bdda%28640x1024%29/thumb.jpg" data-seq="7" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s2.dpfile.com/pc/mc/bf719dfd3dd114a453bafb8abb191add%28640x1024%29/thumb.jpg" data-seq="8" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.s2.dpfile.com/pc/mc/5a110b9a802ea56e5ec0a862ff904819%28640x1024%29/thumb.jpg" data-seq="9" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s1.dpfile.com/pc/mc/9131fbd0bfb9f6bca1283eba3a2de962%28640x1024%29/thumb.jpg" data-seq="10" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.s2.dpfile.com/pc/mc/188aab67dbe87671e335720ee40cf4c2%28640x1024%29/thumb.jpg" data-seq="11" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s1.dpfile.com/pc/mc/fa36e7dd684733d02d54532972c47c0c%28640x1024%29/thumb.jpg" data-seq="12" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t1.s2.dpfile.com/pc/mc/c5fcf38996aa86f64645a0581574f287%28640x1024%29/thumb.jpg" data-seq="13" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s2.dpfile.com/pc/mc/7fe2b63d41a698856361e0c1a3ac5af4%28640x1024%29/thumb.jpg" data-seq="14" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t2.s1.dpfile.com/pc/mc/4c1f2446044957a2edea64c69eb9423e%28640x1024%29/thumb.jpg" data-seq="15" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s2.dpfile.com/pc/mc/79f482890b4c9541414f04ead6fc955e%28640x1024%29/thumb.jpg" data-seq="16" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s2.dpfile.com/pc/mc/607651fba99409d9382b4d2047c210d5%28640x1024%29/thumb.jpg" data-seq="17" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s1.dpfile.com/pc/mc/d36e26dd52921fa018b6f61455d6043e%28640x1024%29/thumb.jpg" data-seq="18" /></div>', 14, 7, 1, 1417424293, 1417424293),
	(25, '港澳通行证团表(L签)澳门/香港2选1', '仅售22.8元，价值40元港澳通行证团表(L签)澳门/香港2选1，专业团队，贴心服务，顺利出行！', '547c2e051025a.jpg', 22.8, 40, 1, '<div class="img"><img style="height:auto;" src="http://t3.s1.dpfile.com/pc/mc/08145764a7a5b93c8258c9e8d4a7f59f%28640x1024%29/thumb.jpg" data-seq="0" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s1.dpfile.com/pc/mc/c828e57744464fef9fe2007d85b62211%28640x1024%29/thumb.jpg" data-seq="1" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s1.dpfile.com/pc/mc/2d7ec48d74e68a2a9d1d197c8bb36e18%28640x1024%29/thumb.jpg" data-seq="2" /></div>\r\n<div class="img"><img style="height:auto;" src="http://t3.s1.dpfile.com/pc/mc/a96ecb2716de6fb20164ed77bc0d9958%28640x1024%29/thumb.jpg" data-seq="3" /></div>', 14, 7, 1, 1417424389, 1417424389);
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
  `is_hot` tinyint(4) DEFAULT NULL COMMENT '是否在首页热门分类',
  `is_floor` tinyint(4) DEFAULT NULL COMMENT '是否在首页楼层',
  `is_in_left` tinyint(4) DEFAULT NULL COMMENT '是否在主导航',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='总站商品类目表';

-- 正在导出表  qiankun.qiankun_goods_category 的数据：43 rows
/*!40000 ALTER TABLE `qiankun_goods_category` DISABLE KEYS */;
INSERT INTO `qiankun_goods_category` (`id`, `name`, `pid`, `info`, `add_time`, `update_time`, `sort`, `is_hot`, `is_floor`, `is_in_left`) VALUES
	(1, '美食', 0, NULL, 1416983102, 1416983102, 0, NULL, NULL, NULL),
	(2, '休闲娱乐', 0, NULL, 1416983125, 1416983125, 0, NULL, NULL, NULL),
	(3, '酒店', 0, NULL, 1416983132, 1416983132, 0, NULL, NULL, NULL),
	(4, '丽人', 0, NULL, 1416983140, 1416983140, 0, NULL, NULL, NULL),
	(5, '购物', 0, NULL, 1416983147, 1416983147, 0, NULL, NULL, NULL),
	(6, '旅游', 0, NULL, 1416983154, 1416983154, 0, NULL, NULL, NULL),
	(7, '生活服务', 0, NULL, 1416983161, 1416983161, 0, NULL, NULL, NULL),
	(8, '亲子', 0, NULL, 1416983174, 1416983174, 0, NULL, NULL, NULL),
	(9, '结婚', 0, NULL, 1416983182, 1416983182, 0, NULL, NULL, NULL),
	(10, '甜品饮料', 1, NULL, 1416983662, 1416983662, 0, 1, NULL, 1),
	(11, '自助餐', 1, NULL, 1416983674, 1416983674, 0, 1, NULL, 1),
	(12, '火锅', 1, NULL, 1416983684, 1416983700, 0, 1, NULL, 1),
	(13, '午市套餐', 1, NULL, 1416983725, 1416983725, 0, 1, NULL, NULL),
	(15, '下午茶', 1, NULL, 1416984526, 1416984526, 0, 1, NULL, NULL),
	(16, '日韩料理', 1, NULL, 1416984550, 1416984550, 0, 1, NULL, NULL),
	(17, '西餐', 1, NULL, 1416984559, 1416984559, 0, 1, NULL, NULL),
	(18, '小吃快餐', 1, NULL, 1416984571, 1416984571, 0, 1, NULL, NULL),
	(19, '烧烤烤鱼', 1, NULL, 1416984579, 1416984579, 0, 1, NULL, NULL),
	(20, '粤菜/茶餐厅', 1, NULL, 1416984596, 1416984596, 0, 1, NULL, NULL),
	(21, '江浙菜', 1, NULL, 1416984605, 1416984605, 0, 0, 1, NULL),
	(22, '川湘菜', 1, NULL, 1416984616, 1416984616, 0, NULL, 1, NULL),
	(23, '咖啡茶馆/酒吧', 1, NULL, 1416984892, 1416984892, 0, NULL, 1, NULL),
	(24, '海鲜', 1, NULL, 1416984900, 1416984900, 0, NULL, NULL, NULL),
	(25, '东南亚菜', 1, NULL, 1416984911, 1416984911, 0, NULL, NULL, NULL),
	(26, '新疆/清真', 1, NULL, 1416984921, 1416984921, 0, NULL, NULL, NULL),
	(27, '西北/东北菜', 1, NULL, 1416984932, 1416984932, 0, NULL, NULL, NULL),
	(28, '京菜/鲁菜', 1, NULL, 1416984945, 1416984945, 0, NULL, NULL, NULL),
	(29, '汤/粥/炖菜', 1, NULL, 1416984959, 1416984959, 0, NULL, NULL, NULL),
	(30, '聚餐宴请', 1, NULL, 1416984970, 1416984970, 0, NULL, NULL, NULL),
	(31, '蟹宴', 1, NULL, 1416984995, 1416984995, 0, NULL, NULL, NULL),
	(32, '其他美食', 1, NULL, 1416985004, 1416985004, 0, NULL, NULL, NULL),
	(33, 'KTV', 2, NULL, NULL, NULL, 0, NULL, NULL, 1),
	(34, '温泉', 2, NULL, NULL, NULL, 0, NULL, NULL, 1),
	(35, '滑雪', 2, NULL, NULL, NULL, 0, NULL, NULL, 1),
	(36, '经济/客栈', 3, NULL, NULL, NULL, 0, NULL, NULL, 1),
	(37, '五星/豪华', 3, NULL, NULL, NULL, 0, NULL, NULL, 1),
	(38, '美发', 4, NULL, NULL, NULL, 0, NULL, NULL, 1),
	(39, '服饰鞋包', 5, NULL, NULL, NULL, 0, NULL, NULL, 1),
	(40, '生活家居', 5, NULL, NULL, NULL, 0, NULL, NULL, 1),
	(41, '食品饮料', 5, NULL, NULL, NULL, 0, NULL, NULL, 1),
	(42, '汽车服务', 7, NULL, NULL, NULL, 0, NULL, NULL, 1),
	(43, '体验保健', 7, NULL, NULL, NULL, 0, NULL, NULL, 1),
	(44, '培训课程', 7, NULL, NULL, NULL, 0, NULL, NULL, 1);
/*!40000 ALTER TABLE `qiankun_goods_category` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_goods_favorite 结构
CREATE TABLE IF NOT EXISTS `qiankun_goods_favorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `goodsid` int(11) NOT NULL,
  `add_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品收藏表';

-- 正在导出表  qiankun.qiankun_goods_favorite 的数据：1 rows
/*!40000 ALTER TABLE `qiankun_goods_favorite` DISABLE KEYS */;
INSERT INTO `qiankun_goods_favorite` (`id`, `uid`, `goodsid`, `add_time`) VALUES
	(3, 40, 24, 1418264969);
/*!40000 ALTER TABLE `qiankun_goods_favorite` ENABLE KEYS */;


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


-- 导出  表 qiankun.qiankun_lottery 结构
CREATE TABLE IF NOT EXISTS `qiankun_lottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL COMMENT '标题',
  `sub_title` varchar(255) NOT NULL COMMENT '子标题',
  `thumb_img` varchar(255) NOT NULL COMMENT '主图片',
  `status` tinyint(4) NOT NULL COMMENT '抽奖状态',
  `info` text NOT NULL COMMENT '详细信息',
  `start_time` int(11) NOT NULL COMMENT '活动开始时间',
  `end_time` int(11) NOT NULL COMMENT '活动结束时间',
  `add_time` int(11) NOT NULL COMMENT '活动发布时间',
  `number` varchar(50) NOT NULL COMMENT '中奖号码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='抽奖项目表';

-- 正在导出表  qiankun.qiankun_lottery 的数据：2 rows
/*!40000 ALTER TABLE `qiankun_lottery` DISABLE KEYS */;
INSERT INTO `qiankun_lottery` (`id`, `title`, `sub_title`, `thumb_img`, `status`, `info`, `start_time`, `end_time`, `add_time`, `number`) VALUES
	(6, '抽奖测试1', '抽奖测试1', '', 1, '抽奖测试1抽奖测试1抽奖测试1抽奖测试1抽奖测试1抽奖测试1抽奖测试1抽奖测试1抽奖测试1抽奖测试1抽奖测试1', 1418832000, 1419004800, 1418885159, ''),
	(7, '抽奖测试2', '抽奖测试2', '', 1, '抽奖测试2抽奖测试2抽奖测试2抽奖测试2抽奖测试2抽奖测试2抽奖测试2抽奖测试2抽奖测试2抽奖测试2抽奖测试2抽奖测试2抽奖测试2抽奖测试2抽奖测试2', 1418918400, 1419523200, 1418885184, '2456');
/*!40000 ALTER TABLE `qiankun_lottery` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_lottery_map 结构
CREATE TABLE IF NOT EXISTS `qiankun_lottery_map` (
  `lotteryid` int(11) NOT NULL COMMENT '抽奖项目',
  `userid` int(11) NOT NULL COMMENT '用户ID',
  `add_time` int(11) DEFAULT NULL COMMENT '抽奖时间',
  `number` int(11) DEFAULT NULL COMMENT '奖券号码',
  PRIMARY KEY (`lotteryid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  qiankun.qiankun_lottery_map 的数据：2 rows
/*!40000 ALTER TABLE `qiankun_lottery_map` DISABLE KEYS */;
INSERT INTO `qiankun_lottery_map` (`lotteryid`, `userid`, `add_time`, `number`) VALUES
	(7, 5, 1418892512, 2456),
	(6, 1, 1418892577, 9194);
/*!40000 ALTER TABLE `qiankun_lottery_map` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_mcard 结构
CREATE TABLE IF NOT EXISTS `qiankun_mcard` (
  `tel` varchar(50) NOT NULL COMMENT '会员电话',
  `shopid` int(11) NOT NULL COMMENT '所属店铺ID',
  `qrurl` varchar(50) DEFAULT NULL COMMENT '二维码',
  `add_time` varchar(50) DEFAULT NULL COMMENT '注册时间',
  `jf` int(11) DEFAULT '0' COMMENT '积分',
  PRIMARY KEY (`tel`,`shopid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员卡表';

-- 正在导出表  qiankun.qiankun_mcard 的数据：2 rows
/*!40000 ALTER TABLE `qiankun_mcard` DISABLE KEYS */;
INSERT INTO `qiankun_mcard` (`tel`, `shopid`, `qrurl`, `add_time`, `jf`) VALUES
	('13191813605', 14, 'Qrcode/a9f6e52b6ffee9062356d5b1f1425d53.png', '1418971020', 47),
	('15833110413', 14, 'Qrcode/a9f6e52b6ffee9062356d5b1f1425d53.png', '1418973202', 0);
/*!40000 ALTER TABLE `qiankun_mcard` ENABLE KEYS */;


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
  `no_show` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='rbac节点表';

-- 正在导出表  qiankun.qiankun_node 的数据：57 rows
/*!40000 ALTER TABLE `qiankun_node` DISABLE KEYS */;
INSERT INTO `qiankun_node` (`id`, `name`, `title`, `status`, `remark`, `sort`, `pid`, `level`, `type`, `group_id`, `no_show`) VALUES
	(1, 'Admin', '系统管理员后台', 1, NULL, NULL, 0, 1, 0, 0, 0),
	(2, 'Node', '节点管理', 1, NULL, NULL, 1, 2, 0, 2, 0),
	(3, 'Role', '角色管理', 1, NULL, NULL, 1, 2, 0, 2, 0),
	(4, 'User', '后台用户', 1, NULL, NULL, 1, 2, 0, 2, 0),
	(5, 'Group', '组别管理', 1, NULL, NULL, 1, 2, 0, 2, 0),
	(6, 'Form', '数据管理', 1, NULL, NULL, 1, 2, 0, 2, 0),
	(7, 'Seller', '商家管理后台', 1, '', NULL, 0, 1, 0, 0, 0),
	(8, 'Public', '公共模块', 1, '', NULL, 7, 2, 0, 0, 0),
	(9, 'add', '新增', 1, '', NULL, 8, 3, 0, 0, 0),
	(10, 'insert', '写入', 1, '', NULL, 8, 3, 0, 0, 0),
	(11, 'edit', '编辑', 1, '', NULL, 8, 3, 0, 0, 0),
	(12, 'update', '更新', 1, '', NULL, 8, 3, 0, 0, 0),
	(13, 'foreverdelete', '删除', 1, '', NULL, 8, 3, 0, 0, 0),
	(14, 'forbid', '禁用', 1, '', NULL, 8, 3, 0, 0, 0),
	(15, 'resume', '恢复', 1, '', NULL, 8, 3, 0, 0, 0),
	(16, 'index', '列表', 1, '', NULL, 8, 3, 0, 0, 0),
	(17, 'Index', '默认模块', 1, '', NULL, 7, 2, 0, 0, 0),
	(18, 'Shop', '店铺管理', 1, '', NULL, 7, 2, 0, 0, 0),
	(19, 'User', '用户中心', 1, '', NULL, 0, 1, 0, 0, 0),
	(20, 'Public', '公共模块', 1, '', NULL, 19, 2, 0, 0, 0),
	(21, 'add', '新增', 1, '', NULL, 20, 3, 0, 0, 0),
	(22, 'insert', '写入', 1, '', NULL, 20, 3, 0, 0, 0),
	(23, 'edit', '编辑', 1, '', NULL, 20, 3, 0, 0, 0),
	(24, 'update', '更新', 1, '', NULL, 20, 3, 0, 0, 0),
	(25, 'foreverdelete', '删除', 1, '', NULL, 20, 3, 0, 0, 0),
	(26, 'forbid', '禁用', 1, '', NULL, 20, 3, 0, 0, 0),
	(27, 'resume', '恢复', 1, '', NULL, 20, 3, 0, 0, 0),
	(28, 'index', '列表', 1, '', NULL, 20, 3, 0, 0, 0),
	(29, 'Index', '默认模块', 1, '', NULL, 19, 2, 0, 0, 0),
	(30, 'Welcome', '欢迎页', 1, '', NULL, 19, 2, 0, 0, 0),
	(31, 'GoodsCategory', '商品类目', 1, '', NULL, 1, 2, 0, 2, 0),
	(32, 'GoodsInshopCategory', '商品类目管理', 1, '', NULL, 7, 2, 0, 0, 0),
	(33, 'Goods', '商品管理', 1, '', NULL, 7, 2, 0, 0, 0),
	(34, 'Area', '区县管理', 1, '', NULL, 1, 2, 0, 2, 0),
	(35, 'Orders', '我的订单', 1, '', NULL, 19, 2, 0, 0, 0),
	(36, 'Orders', '订单管理', 1, '', NULL, 7, 2, 0, 0, 0),
	(37, 'OrdersAged', '老年订单', 1, '', NULL, 7, 2, 0, 0, 0),
	(38, 'ShopCategory', '店铺类目', 1, '', NULL, 1, 2, 0, 2, 0),
	(39, 'grab', '抢单', 1, '', NULL, 37, 3, 0, 0, 0),
	(40, 'GoodsFavorite', '商品收藏', 1, '', NULL, 19, 2, 0, 0, 0),
	(41, 'Feedback', '意见反馈', 1, '', NULL, 1, 2, 0, 2, 0),
	(42, 'confirm_goods', '订单确认', 1, '', NULL, 35, 3, 0, 0, 0),
	(43, 'OrdersRate', '评价管理', 1, '', NULL, 19, 2, 0, 0, 0),
	(44, 'deliver', '发货操作', 1, '', NULL, 37, 3, 0, 0, 0),
	(45, 'deliver', '发货操作', 1, '', NULL, 36, 3, 0, 0, 0),
	(46, 'OrdersRate', '订单评价', 1, '', NULL, 7, 2, 0, 0, 0),
	(47, 'OrdersRateS2c', '来自店铺的评价', 1, '', NULL, 19, 2, 0, 0, 1),
	(48, 'OrdersRateC2s', '对店铺的评价', 1, '', NULL, 19, 2, 0, 0, 1),
	(49, 'Lottery', '抽奖管理', 1, '', NULL, 1, 2, 0, 2, 0),
	(50, 'Mcard', '会员卡管理', 1, '', NULL, 7, 2, 0, 0, 0),
	(51, 'OrdersRateC2s', '来自买家的评价', 1, '', NULL, 7, 2, 0, 0, 1),
	(52, 'OrdersRateS2c', '对买家的评价', 1, '', NULL, 7, 2, 0, 0, 1),
	(53, 'Mcard', '我的会员卡', 1, '', NULL, 19, 2, 0, 0, 0),
	(54, 'Coupons', '优惠券管理', 1, '', NULL, 7, 2, 0, 0, 0),
	(55, 'CouponsMap', '我的优惠券', 1, '', NULL, 19, 2, 0, 0, 0),
	(56, 'CouponsMap', '发放优惠券', 1, '', NULL, 7, 2, 0, 0, 0),
	(57, 'index2', '选择优惠券', 1, '', NULL, 56, 3, 0, 0, 0);
/*!40000 ALTER TABLE `qiankun_node` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_orders 结构
CREATE TABLE IF NOT EXISTS `qiankun_orders` (
  `orderid` varchar(50) NOT NULL,
  `info` varchar(255) NOT NULL COMMENT '老年订单订单内容',
  `userid` int(11) DEFAULT NULL,
  `user_rate_id` int(11) DEFAULT NULL COMMENT '买家对订单的评价',
  `phone` varchar(50) DEFAULT NULL,
  `shopid` int(11) DEFAULT NULL,
  `shop_rate_id` int(11) DEFAULT NULL COMMENT '卖家对订单的评价',
  `goodsid` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '订单状态 1：已下订单；2：已付款；3：已发货；4：已收货；5：订单结束 ',
  `address` varchar(255) DEFAULT NULL,
  `point_x` varchar(50) DEFAULT NULL COMMENT '下订单经度',
  `point_y` varchar(50) DEFAULT NULL COMMENT '下订单纬度',
  `paytype` varchar(50) DEFAULT NULL,
  `is_grab` int(11) DEFAULT NULL COMMENT '被哪个店铺抢单',
  PRIMARY KEY (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单表';

-- 正在导出表  qiankun.qiankun_orders 的数据：10 rows
/*!40000 ALTER TABLE `qiankun_orders` DISABLE KEYS */;
INSERT INTO `qiankun_orders` (`orderid`, `info`, `userid`, `user_rate_id`, `phone`, `shopid`, `shop_rate_id`, `goodsid`, `price`, `num`, `amount`, `create_time`, `status`, `address`, `point_x`, `point_y`, `paytype`, `is_grab`) VALUES
	('14175910588783', '', 40, 9, '13191813605', 14, 10, 2, 22.21, 1, 22.21, 1417591060, 4, '一个地方', NULL, NULL, 'hdfk', NULL),
	('14175911477499', '', 40, 15, '13191813605', 14, 16, 5, 25, 1, 25, 1417591150, 4, '一个地方', NULL, NULL, 'hdfk', NULL),
	('14177472632529', '', 40, NULL, '13191813605', 14, NULL, 13, 25.01, 1, 25.01, 1417747269, 1, '一个地方', NULL, NULL, 'hdfk', NULL),
	('14182158203892', '一瓶醋', 40, 8, '13191813605', 14, 11, NULL, NULL, NULL, NULL, 1418215820, 4, '黄土高坡', '111', '222', 'aged', 14),
	('14182159227618', '一瓶酱油', 40, NULL, '13191813605', 14, NULL, NULL, NULL, NULL, NULL, 1418215922, 4, '黄土高坡', '111', '222', 'aged', 14),
	('14187036797071', '一瓶醋', 3, NULL, '13191813605', NULL, NULL, NULL, NULL, NULL, NULL, 1418703679, 1, '', '111', '222', 'aged', 14),
	('14189759449032', '', 40, NULL, NULL, 14, NULL, 13, 25.01, 1, 25.01, 1418975955, 1, '一个地方', NULL, NULL, 'hdfk', -1),
	('14189763241699', '', 3, NULL, '', 14, NULL, 10, 25.01, 1, 25.01, 1418976327, 1, '一个地方', NULL, NULL, 'hdfk', -1),
	('14189763751449', '', 40, NULL, '13191813605', 14, NULL, 12, 19.91, 1, 19.91, 1418976377, 1, '一个地方', NULL, NULL, 'hdfk', -1),
	('14189768909834', '', 40, NULL, '13191813605', 14, NULL, 11, 24.81, 1, 24.81, 1418976900, 1, '黄土高坡', NULL, NULL, 'hdfk', -1);
/*!40000 ALTER TABLE `qiankun_orders` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_orders_aged 结构
CREATE TABLE IF NOT EXISTS `qiankun_orders_aged` (
  `orderid` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `point_x` int(11) DEFAULT NULL,
  `point_y` int(11) DEFAULT NULL,
  `is_grab` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='老年人订单，已和orders表合并，暂时废弃';

-- 正在导出表  qiankun.qiankun_orders_aged 的数据：40 rows
/*!40000 ALTER TABLE `qiankun_orders_aged` DISABLE KEYS */;
INSERT INTO `qiankun_orders_aged` (`orderid`, `userid`, `phone`, `content`, `address`, `create_time`, `point_x`, `point_y`, `is_grab`) VALUES
	('14177901207495', 40, '13191813605', 'dddddd', '黄土高坡', 1417790120, 111, 222, 14),
	('14180052136243', 40, '13191813605', 'dasfadsf', '黄土高坡', 1418005213, 111, 222, 0),
	('14180958835593', 40, '13191813605', 'jjjjj', '黄土高坡', 1418095883, 111, 222, 0),
	('14180960998271', 40, '13191813605', 'kkkkk', '黄土高坡', 1418096099, 111, 222, 0),
	('14180961821306', 40, '13191813605', 'kkkkk', '黄土高坡', 1418096182, 111, 222, 0),
	('14180961995849', 40, '13191813605', 'kkkkk', '黄土高坡', 1418096199, 111, 222, 0),
	('14180965173096', 40, '13191813605', 'kkkkk', '黄土高坡', 1418096517, 111, 222, 0),
	('14180965482139', 40, '13191813605', 'kkkkk', '黄土高坡', 1418096548, 111, 222, 0),
	('14180965661788', 40, '13191813605', 'kkkkk', '黄土高坡', 1418096566, 111, 222, 0),
	('14180966124982', 40, '13191813605', 'bbbbbb', '黄土高坡', 1418096612, 111, 222, 0),
	('14180966655925', 40, '13191813605', 'bbbbbb', '黄土高坡', 1418096665, 111, 222, 0),
	('14180967299561', 40, '13191813605', 'kkkkk', '黄土高坡', 1418096729, 111, 222, 0),
	('14180967673518', 40, '13191813605', 'kkkkk', '黄土高坡', 1418096767, 111, 222, 0),
	('14180968145152', 40, '13191813605', 'kkkkk', '黄土高坡', 1418096814, 111, 222, 0),
	('14180968581079', 40, '13191813605', 'kkkkkk', '黄土高坡', 1418096858, 111, 222, 0),
	('14180969561541', 40, '13191813605', 'iiiii', '黄土高坡', 1418096956, 111, 222, 0),
	('14180969701101', 40, '13191813605', 'iiiii', '黄土高坡', 1418096970, 111, 222, 0),
	('14180969938657', 40, '13191813605', '9999999999', '黄土高坡', 1418096993, 111, 222, 0),
	('14180970061944', 40, '13191813605', 'ooooooo', '黄土高坡', 1418097006, 111, 222, 0),
	('14180972038597', 40, '13191813605', '[[[[[[[[[[[[[[[[[[[[', '黄土高坡', 1418097203, 111, 222, 0),
	('14180972165824', 40, '13191813605', ']]]]]]]]]]]]]]]]]]]]]]]]]]', '黄土高坡', 1418097216, 111, 222, 0),
	('14180972318779', 40, '13191813605', 'mmmmmmmmmmmmmmm', '黄土高坡', 1418097231, 111, 222, 0),
	('14180972452299', 40, '13191813605', 'nnnnnnnnnnn', '黄土高坡', 1418097245, 111, 222, 0),
	('14180973615089', 40, '13191813605', 'llllllllll', '黄土高坡', 1418097361, 111, 222, 0),
	('14180973742021', 40, '13191813605', 'mmmmmmmmmmm', '黄土高坡', 1418097374, 111, 222, 0),
	('14180975346634', 40, '13191813605', '\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\', '黄土高坡', 1418097534, 111, 222, 0),
	('14180975467487', 40, '13191813605', '\\\\\\\\\\\\\\', '黄土高坡', 1418097546, 111, 222, 0),
	('14180975546486', 40, '13191813605', '\\\\\\\\\\\\\\', '黄土高坡', 1418097554, 111, 222, 0),
	('14180975841787', 40, '13191813605', '\\\\\\\\\\\\\\', '黄土高坡', 1418097584, 111, 222, 0),
	('14180976436439', 40, '13191813605', 'vvvvvvvvvvvv', '黄土高坡', 1418097643, 111, 222, 0),
	('14180977609354', 40, '13191813605', 'vvvvvvvvvvvv', '黄土高坡', 1418097760, 111, 222, 0),
	('14180977755755', 40, '13191813605', 'ccccccccccccc', '黄土高坡', 1418097775, 111, 222, 0),
	('14180977883715', 40, '13191813605', 'iiiiiiiiiiiiiii', '黄土高坡', 1418097788, 111, 222, 0),
	('14180977977915', 40, '13191813605', 'qqqqqqqqqqqq', '黄土高坡', 1418097797, 111, 222, 0),
	('14180978054242', 40, '13191813605', 'yyyyyyyy', '黄土高坡', 1418097805, 111, 222, 0),
	('14180978939366', 40, '13191813605', 'yyyyyyyy', '黄土高坡', 1418097893, 111, 222, 0),
	('14180979041899', 40, '13191813605', 'yyyyyyyy', '黄土高坡', 1418097904, 111, 222, 0),
	('14180980012223', 40, '13191813605', 'ooooooooooo', '黄土高坡', 1418098001, 111, 222, 0),
	('14180980106168', 40, '13191813605', 'ooooooooooo', '黄土高坡', 1418098010, 111, 222, 0),
	('14180980196213', 40, '13191813605', 'ooooooooooo', '黄土高坡', 1418098019, 111, 222, 0);
/*!40000 ALTER TABLE `qiankun_orders_aged` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_orders_rate 结构
CREATE TABLE IF NOT EXISTS `qiankun_orders_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(50) DEFAULT NULL COMMENT '订单ID',
  `starlevel` tinyint(4) DEFAULT NULL COMMENT '星级',
  `shopid` int(11) DEFAULT NULL COMMENT '店铺ID',
  `goodsid` int(11) DEFAULT NULL COMMENT '商品ID',
  `uid` int(11) DEFAULT NULL COMMENT '买家ID',
  `info` varchar(255) DEFAULT NULL COMMENT '评价内容',
  `add_time` int(11) DEFAULT NULL COMMENT '评价时间',
  `type` varchar(5) DEFAULT NULL COMMENT 'c2s:买家对店铺的评价；s2c：店铺对买家的评价',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='订单评价表';

-- 正在导出表  qiankun.qiankun_orders_rate 的数据：9 rows
/*!40000 ALTER TABLE `qiankun_orders_rate` DISABLE KEYS */;
INSERT INTO `qiankun_orders_rate` (`id`, `orderid`, `starlevel`, `shopid`, `goodsid`, `uid`, `info`, `add_time`, `type`) VALUES
	(8, '14182158203892', 3, 14, NULL, 40, '我的评价', 1418633927, 'c2s'),
	(9, '14175910588783', 3, 14, NULL, 3, '哈哈评价', 1418634342, 's2c'),
	(10, '14175910588783', 4, 14, NULL, 40, '乐乐评价', 1418634460, 's2c'),
	(11, '14182158203892', 4, 14, NULL, 40, '老年订单评价', 1418634600, 's2c'),
	(12, '14175911477499', 2, 14, NULL, 40, '还不错哦', 1418691086, 's2c'),
	(13, '14175911477499', 4, 14, NULL, 40, '还不错哦', 1418691247, 'c2s'),
	(14, '14175911477499', 5, 14, NULL, 40, '还可以哦', 1418691268, 's2c'),
	(15, '14175911477499', 4, 14, 5, 40, '哎呀，这个商品不错哦', 1418695165, 'c2s'),
	(16, '14175911477499', 3, 14, 5, 40, '哈哈哈哈哈哈', 1418695700, 's2c');
/*!40000 ALTER TABLE `qiankun_orders_rate` ENABLE KEYS */;


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
  `category_id` int(11) NOT NULL COMMENT '店铺类目',
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
INSERT INTO `qiankun_shop` (`id`, `shopname`, `category_id`, `phone`, `address`, `info`, `point_x`, `point_y`, `add_time`, `update_time`, `province`, `city`, `area`, `owner`) VALUES
	(1, 'aaa', 0, '6546', 'aaaa', 'gfdfgdfghd<br />', '', '', '', '', '', '', '', 0),
	(2, '我的第一家店铺', 0, '1111', '我的详细地址', '我的店铺详情介绍<br />', '', '', '', '', '15', '1502', '46', 0),
	(3, '第二家店铺', 0, '2222', '山海关区', '店铺详情<br />', '', '', '', '', '15', '1502', '46', 0),
	(15, 'seller3的店铺', 0, '123456', '哈哈', '', '119.538253', '39.928644', '1415951360', '1415951360', '15', '1502', '47', 38),
	(14, '第三家店铺', 3, '777777', '秦皇岛', '斤斤计较斤斤计较斤斤计较斤斤计较经济111111111<br />', '119.604512', '39.945296', '1415678973', '1418199293', '5', '36', '46', 3);
/*!40000 ALTER TABLE `qiankun_shop` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_shop_category 结构
CREATE TABLE IF NOT EXISTS `qiankun_shop_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `pid` int(11) NOT NULL,
  `add_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='店铺类目表';

-- 正在导出表  qiankun.qiankun_shop_category 的数据：5 rows
/*!40000 ALTER TABLE `qiankun_shop_category` DISABLE KEYS */;
INSERT INTO `qiankun_shop_category` (`id`, `name`, `pid`, `add_time`, `update_time`) VALUES
	(1, '服装店', 0, 1418200905, 1418200905),
	(2, '超市', 0, 1418200905, 1418200905),
	(3, '商店', 0, 1418200920, 1418200920),
	(4, '餐馆', 0, 1418200933, 1418200933),
	(5, '五金日杂', 0, 1418200963, 1418200963);
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

-- 正在导出表  qiankun.qiankun_user 的数据：5 rows
/*!40000 ALTER TABLE `qiankun_user` DISABLE KEYS */;
INSERT INTO `qiankun_user` (`id`, `account`, `nickname`, `password`, `bind_account`, `last_login_time`, `last_login_ip`, `login_count`, `verify`, `email`, `phone`, `remark`, `create_time`, `update_time`, `status`, `type_id`, `info`) VALUES
	(1, 'admin', '管理员1', '21232f297a57a5a743894a0e4a801fc3', '', 1419058764, '192.168.1.119', 1012, '8888', 'liu21st@gmail.com', '', '备注信息1', 1222907803, 1414741091, 1, 0, ''),
	(2, 'user', '会员用户', 'e10adc3949ba59abbe56e057f20f883e', '', 1415849831, '127.0.0.1', 139, '8888', '', '', '', 1239783735, 1415839587, 1, 0, ''),
	(3, 'shop', '店主', 'e10adc3949ba59abbe56e057f20f883e', '', 1419058867, '127.0.0.1', 126, '', 'shop@abc.com', '', '哈哈哈', 1253514375, 1415758413, 1, 0, ''),
	(4, 'agent', '代理商', 'e10adc3949ba59abbe56e057f20f883e', '', 1415781719, '127.0.0.1', 39, '', '', '', '领导', 1253514575, 1415778129, 1, 0, ''),
	(40, 'SH_201411211531424950', '111', 'e10adc3949ba59abbe56e057f20f883e', '', 1419061387, '127.0.0.1', 50, '8066', '', '13191813605', '', 1416555112, 1416555112, 1, 0, '');
/*!40000 ALTER TABLE `qiankun_user` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_user_expand 结构
CREATE TABLE IF NOT EXISTS `qiankun_user_expand` (
  `userid` int(11) NOT NULL,
  `address` char(255) NOT NULL,
  `province` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户资料扩展表';

-- 正在导出表  qiankun.qiankun_user_expand 的数据：1 rows
/*!40000 ALTER TABLE `qiankun_user_expand` DISABLE KEYS */;
INSERT INTO `qiankun_user_expand` (`userid`, `address`, `province`, `city`, `area`) VALUES
	(40, '黄土高坡', 5, 36, 54);
/*!40000 ALTER TABLE `qiankun_user_expand` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
