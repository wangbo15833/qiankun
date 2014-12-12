-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.32 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  8.3.0.4784
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  qiankun.qiankun_access 的数据：49 rows
/*!40000 ALTER TABLE `qiankun_access` DISABLE KEYS */;
INSERT INTO `qiankun_access` (`role_id`, `node_id`, `level`, `pid`, `module`) VALUES
	(2, 1, 1, 0, NULL),
	(2, 40, 2, 1, NULL),
	(2, 30, 2, 1, NULL),
	(3, 1, 1, 0, NULL),
	(2, 69, 2, 1, NULL),
	(2, 50, 3, 40, NULL),
	(3, 50, 3, 40, NULL),
	(1, 50, 3, 40, NULL),
	(3, 7, 2, 1, NULL),
	(3, 39, 3, 30, NULL),
	(2, 39, 3, 30, NULL),
	(2, 49, 3, 30, NULL),
	(4, 1, 1, 0, NULL),
	(4, 2, 2, 1, NULL),
	(4, 3, 2, 1, NULL),
	(4, 4, 2, 1, NULL),
	(4, 5, 2, 1, NULL),
	(4, 6, 2, 1, NULL),
	(4, 7, 2, 1, NULL),
	(4, 11, 2, 1, NULL),
	(5, 25, 1, 0, NULL),
	(5, 51, 2, 25, NULL),
	(1, 1, 1, 0, NULL),
	(1, 31, 3, 30, NULL),
	(1, 69, 2, 1, NULL),
	(1, 30, 2, 1, NULL),
	(1, 40, 2, 1, NULL),
	(1, 32, 3, 30, NULL),
	(3, 69, 2, 1, NULL),
	(3, 30, 2, 1, NULL),
	(3, 40, 2, 1, NULL),
	(1, 33, 3, 30, NULL),
	(1, 34, 3, 30, NULL),
	(1, 35, 3, 30, NULL),
	(1, 36, 3, 30, NULL),
	(1, 37, 3, 30, NULL),
	(1, 39, 3, 30, NULL),
	(1, 49, 3, 30, NULL),
	(2, 32, 3, 30, NULL),
	(2, 31, 3, 30, NULL),
	(7, 1, 1, 0, NULL),
	(7, 30, 2, 1, NULL),
	(7, 40, 2, 1, NULL),
	(7, 69, 2, 1, NULL),
	(7, 50, 3, 40, NULL),
	(7, 39, 3, 30, NULL),
	(7, 49, 3, 30, NULL),
	(7, 85, 3, 40, NULL),
	(7, 86, 3, 40, NULL);
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


-- 导出  表 qiankun.qiankun_form 结构
CREATE TABLE IF NOT EXISTS `qiankun_form` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- 正在导出表  qiankun.qiankun_form 的数据：2 rows
/*!40000 ALTER TABLE `qiankun_form` DISABLE KEYS */;
INSERT INTO `qiankun_form` (`id`, `title`, `content`, `create_time`, `status`) VALUES
	(3, 'bbb', 'bbb<br />', 1414743135, 1),
	(4, 'ccccc', 'ccccccc<br />', 1414743640, 1);
/*!40000 ALTER TABLE `qiankun_form` ENABLE KEYS */;


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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  qiankun.qiankun_group 的数据：2 rows
/*!40000 ALTER TABLE `qiankun_group` DISABLE KEYS */;
INSERT INTO `qiankun_group` (`id`, `name`, `title`, `create_time`, `update_time`, `status`, `sort`, `show`) VALUES
	(2, 'App', '应用中心', 1222841259, 0, 1, 0, 0);
/*!40000 ALTER TABLE `qiankun_group` ENABLE KEYS */;


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
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- 正在导出表  qiankun.qiankun_node 的数据：19 rows
/*!40000 ALTER TABLE `qiankun_node` DISABLE KEYS */;
INSERT INTO `qiankun_node` (`id`, `name`, `title`, `status`, `remark`, `sort`, `pid`, `level`, `type`, `group_id`) VALUES
	(49, 'read', '查看', 1, '', NULL, 30, 3, 0, 0),
	(40, 'Index', '默认模块', 1, '', 1, 1, 2, 0, 0),
	(39, 'index', '列表', 1, '', NULL, 30, 3, 0, 0),
	(37, 'resume', '恢复', 1, '', NULL, 30, 3, 0, 0),
	(36, 'forbid', '禁用', 1, '', NULL, 30, 3, 0, 0),
	(35, 'foreverdelete', '删除', 1, '', NULL, 30, 3, 0, 0),
	(34, 'update', '更新', 1, '', NULL, 30, 3, 0, 0),
	(33, 'edit', '编辑', 1, '', NULL, 30, 3, 0, 0),
	(32, 'insert', '写入', 1, '', NULL, 30, 3, 0, 0),
	(31, 'add', '新增', 1, '', NULL, 30, 3, 0, 0),
	(30, 'Public', '公共模块', 1, '', 2, 1, 2, 0, 0),
	(69, 'Form', '数据管理', 1, '', 1, 1, 2, 0, 2),
	(7, 'User', '后台用户', 1, '', 4, 1, 2, 0, 2),
	(6, 'Role', '角色管理', 1, '', 3, 1, 2, 0, 2),
	(2, 'Node', '节点管理', 1, '', 2, 1, 2, 0, 2),
	(1, '', 'Rbac后台管理', 1, '', NULL, 0, 1, 0, 0),
	(50, 'main', '空白首页', 1, '', NULL, 40, 3, 0, 0),
	(88, 'Group', '分组管理', 1, NULL, 5, 1, 2, 0, 2);
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- 正在导出表  qiankun.qiankun_role 的数据：5 rows
/*!40000 ALTER TABLE `qiankun_role` DISABLE KEYS */;
INSERT INTO `qiankun_role` (`id`, `name`, `pid`, `status`, `remark`, `ename`, `create_time`, `update_time`) VALUES
	(1, '领导组', 0, 1, '', '', 1208784792, 1254325558),
	(2, '员工组', 0, 1, '', '', 1215496283, 1254325566),
	(7, '演示组', 0, 1, '', NULL, 1254325787, 0),
	(8, 'bbb', NULL, 1, 'bbb', NULL, 1414723674, 0),
	(9, 'ccc', NULL, 1, 'ccc', NULL, 1414723710, 0);
/*!40000 ALTER TABLE `qiankun_role` ENABLE KEYS */;


-- 导出  表 qiankun.qiankun_role_user 结构
CREATE TABLE IF NOT EXISTS `qiankun_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 正在导出表  qiankun.qiankun_role_user 的数据：9 rows
/*!40000 ALTER TABLE `qiankun_role_user` DISABLE KEYS */;
INSERT INTO `qiankun_role_user` (`role_id`, `user_id`) VALUES
	(4, '27'),
	(4, '26'),
	(4, '30'),
	(5, '31'),
	(3, '22'),
	(3, '1'),
	(1, '4'),
	(2, '3'),
	(7, '2');
/*!40000 ALTER TABLE `qiankun_role_user` ENABLE KEYS */;


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
  `remark` varchar(255) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `type_id` tinyint(2) unsigned DEFAULT '0',
  `info` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- 正在导出表  qiankun.qiankun_user 的数据：4 rows
/*!40000 ALTER TABLE `qiankun_user` DISABLE KEYS */;
INSERT INTO `qiankun_user` (`id`, `account`, `nickname`, `password`, `bind_account`, `last_login_time`, `last_login_ip`, `login_count`, `verify`, `email`, `remark`, `create_time`, `update_time`, `status`, `type_id`, `info`) VALUES
	(1, 'admin', '管理员1', '21232f297a57a5a743894a0e4a801fc3', '', 1414747540, '127.0.0.1', 941, '8888', 'liu21st@gmail.com', '备注信息1', 1222907803, 1414741091, 1, 0, ''),
	(2, 'demo', '演示', 'fe01ce2a7fbac8fafaed7c982a04e229', '', 1414742853, '127.0.0.1', 125, '8888', '', '', 1239783735, 1254325770, 1, 0, ''),
	(3, 'member', '员工', 'aa08769cdcb26674c6706093503ff0a3', '', 1326266720, '127.0.0.1', 17, '', '', '', 1253514375, 1254325728, 1, 0, ''),
	(4, 'leader', '领导', 'c444858e0aaeb727da73d2eae62321ad', '', 1414743623, '127.0.0.1', 20, '', '', '领导', 1253514575, 1254325705, 1, 0, '');
/*!40000 ALTER TABLE `qiankun_user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
