-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 07 月 06 日 06:02
-- 服务器版本: 5.5.27
-- PHP 版本: 5.4.26

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `chair`
--

-- --------------------------------------------------------

--
-- 表的结构 `dk_admin_nav`
--

CREATE TABLE IF NOT EXISTS `dk_admin_nav` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `icon` varchar(50) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `pid` int(10) NOT NULL DEFAULT '0',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `sorts` int(5) NOT NULL DEFAULT '0',
  `c` varchar(20) DEFAULT NULL COMMENT '控制器',
  `a` varchar(20) DEFAULT NULL COMMENT '方法',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='后台菜单' AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `dk_admin_nav`
--

INSERT INTO `dk_admin_nav` (`id`, `icon`, `name`, `pid`, `display`, `sorts`, `c`, `a`) VALUES
(1, 'fa-cogs', '设备', 0, 1, 0, 'device', NULL),
(2, NULL, '设备列表', 1, 1, 0, 'device', NULL),
(3, 'fa-user', '用户', 0, 1, 0, 'user', NULL),
(4, NULL, '用户列表', 3, 1, 0, 'user', NULL),
(5, 'fa-credit-card', '支付', 0, 1, 0, 'payment', NULL),
(6, NULL, '支付记录', 5, 1, 0, 'payment', NULL),
(7, 'fa-users', '代理商', 0, 1, 0, 'agent', NULL),
(8, NULL, '代理商列表', 7, 1, 0, 'agent', NULL),
(9, NULL, '添加代理商', 7, 1, 0, 'agent', 'add'),
(10, 'fa-th-list', '商户', 0, 1, 0, 'store', NULL),
(11, NULL, '商户列表', 10, 1, 0, 'store', NULL),
(12, '', '添加商户', 10, 1, 0, 'store', 'add'),
(13, 'fa-wrench', '管理员', 0, 1, 0, 'manager', NULL),
(14, NULL, '管理员列表', 13, 1, 0, 'manager', NULL),
(15, NULL, '添加管理员', 13, 1, 0, 'manager', 'add'),
(16, NULL, '权限', 13, 0, 0, 'manager', 'role'),
(18, 'fa-hdd-o', '支付套餐', 0, 1, 0, 'package', NULL),
(19, NULL, '套餐列表', 18, 1, 0, 'package', 'index');

-- --------------------------------------------------------

--
-- 表的结构 `dk_admin_role`
--

CREATE TABLE IF NOT EXISTS `dk_admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='角色' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `dk_admin_role`
--

INSERT INTO `dk_admin_role` (`id`, `name`) VALUES
(1, '超级管理员'),
(2, '管理员'),
(3, '代理商'),
(4, '商户');

-- --------------------------------------------------------

--
-- 表的结构 `dk_admin_role_nav`
--

CREATE TABLE IF NOT EXISTS `dk_admin_role_nav` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `role_id` int(10) NOT NULL,
  `nav` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `dk_admin_role_nav`
--

INSERT INTO `dk_admin_role_nav` (`id`, `role_id`, `nav`) VALUES
(1, 1, '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,18,19'),
(2, 2, '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,18,19'),
(3, 3, '1,2,5,6,10,11,12'),
(4, 4, '1,2,5,6');

-- --------------------------------------------------------

--
-- 表的结构 `dk_agent`
--

CREATE TABLE IF NOT EXISTS `dk_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `salt` varchar(10) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `province` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `link_man` varchar(20) DEFAULT NULL,
  `add_time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='代理商' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dk_agent`
--

INSERT INTO `dk_agent` (`id`, `nickname`, `name`, `pwd`, `salt`, `tel`, `province`, `city`, `area`, `address`, `link_man`, `add_time`) VALUES
(1, NULL, 'admin', '015e20bdd093034e97363ef1439a72dc', 'qwer', '', '广东', '深圳市', '南山区', '', '', '1520160081'),
(2, NULL, 'test', '015e20bdd093034e97363ef1439a72dc', 'qwer', '', '广东', '深圳市', '南山区', '', '', '1520160081');

-- --------------------------------------------------------

--
-- 表的结构 `dk_device`
--

CREATE TABLE IF NOT EXISTS `dk_device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(10) DEFAULT '0' COMMENT '代理商id',
  `shop_id` int(10) DEFAULT '0',
  `device_online` tinyint(1) NOT NULL DEFAULT '0' COMMENT '在线状态1在线，0离线',
  `device_share` tinyint(1) NOT NULL DEFAULT '0' COMMENT '共享模式 1开启共享，0关闭共享',
  `device_id` varchar(30) NOT NULL COMMENT '设备id',
  `device_mac` varchar(50) NOT NULL COMMENT '设备编码（mac地址）',
  `device_model` varchar(20) NOT NULL COMMENT '设备型号',
  `device_alias` varchar(20) NOT NULL COMMENT '设备别名',
  `long` varchar(20) DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) DEFAULT NULL COMMENT '维度',
  `device_province` varchar(20) DEFAULT NULL COMMENT '省份',
  `device_city` varchar(20) DEFAULT NULL COMMENT '城市',
  `device_area` varchar(20) DEFAULT NULL COMMENT '地区',
  `device_addr` varchar(20) DEFAULT NULL COMMENT '地址',
  `add_time` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dk_device`
--

INSERT INTO `dk_device` (`id`, `agent_id`, `shop_id`, `device_online`, `device_share`, `device_id`, `device_mac`, `device_model`, `device_alias`, `long`, `lat`, `device_province`, `device_city`, `device_area`, `device_addr`, `add_time`) VALUES
(1, 1, 0, 1, 1, '1234356', 'AE23SI89JMSOS3', 'model', '测试哦', '23.232323', '123.2345', '河南', '洛阳', '洛龙', '开元湖', '1575768576'),
(2, 0, 0, 1, 0, '1234353', 'AE23SI89JMSOS4', 'model', '测试设备2', '23.232323', '123.2345', '河南', '洛阳', '洛龙', '开元湖', '1575768570');

-- --------------------------------------------------------

--
-- 表的结构 `dk_device_user`
--

CREATE TABLE IF NOT EXISTS `dk_device_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `dike_id` int(10) DEFAULT NULL,
  `nike_name` varchar(50) DEFAULT NULL,
  `logo` varchar(255) NOT NULL,
  `device_mac` varchar(30) NOT NULL,
  `add_time` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dk_device_user`
--

INSERT INTO `dk_device_user` (`id`, `dike_id`, `nike_name`, `logo`, `device_mac`, `add_time`) VALUES
(1, 111, '测试用户', 'http://www.xxx.xxx', 'AE23SI89JMSOS3', '1519741652'),
(2, 111, '测试用户', 'http://www.xxx.xxx', 'AE23SI89JMSOS4', '1519741652');

-- --------------------------------------------------------

--
-- 表的结构 `dk_payment`
--

CREATE TABLE IF NOT EXISTS `dk_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_mac` varchar(30) NOT NULL,
  `order_sn` varchar(30) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1已支付 0待支付',
  `use_hour` tinyint(3) DEFAULT NULL COMMENT '使用小时',
  `create_time` varchar(10) NOT NULL,
  `pay_time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `device_mac` (`device_mac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付记录' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `dk_payment`
--


-- --------------------------------------------------------

--
-- 表的结构 `dk_pay_package`
--

CREATE TABLE IF NOT EXISTS `dk_pay_package` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hour` int(10) NOT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.01',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='支付套餐' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `dk_pay_package`
--

INSERT INTO `dk_pay_package` (`id`, `hour`, `money`) VALUES
(1, 1, 5.00),
(2, 3, 10.00),
(3, 6, 30.00),
(4, 8, 0.01);

-- --------------------------------------------------------

--
-- 表的结构 `dk_shop`
--

CREATE TABLE IF NOT EXISTS `dk_shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(20) DEFAULT NULL,
  `agent_id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `province` varchar(30) DEFAULT NULL,
  `ciry` varchar(30) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `link_man` varchar(20) DEFAULT NULL,
  `add_time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='商户' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dk_shop`
--

INSERT INTO `dk_shop` (`id`, `nickname`, `agent_id`, `name`, `pwd`, `salt`, `tel`, `province`, `ciry`, `area`, `address`, `link_man`, `add_time`) VALUES
(1, NULL, 1, 'admin_商户', '', '', '', '广东', NULL, '南山区', '', '', '1520169695'),
(2, NULL, 2, 'tests', '', '', '', '广东', NULL, '南山区', '', '', '1520169695');

-- --------------------------------------------------------

--
-- 表的结构 `dk_system_user`
--

CREATE TABLE IF NOT EXISTS `dk_system_user` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `role_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pwd` varchar(48) NOT NULL,
  `salt` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='后台管理员' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dk_system_user`
--

INSERT INTO `dk_system_user` (`id`, `role_id`, `name`, `pwd`, `salt`) VALUES
(1, 1, 'admin', '015e20bdd093034e97363ef1439a72dc', 'qwer'),
(2, 2, 'guanli', '503ab182781f2227ebb7e9a2756a77c9', 'GZxR');

-- --------------------------------------------------------

--
-- 表的结构 `dk_wx_user`
--

CREATE TABLE IF NOT EXISTS `dk_wx_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agreement` tinyint(1) NOT NULL DEFAULT '0',
  `openid` varchar(50) NOT NULL,
  `subscribe` tinyint(1) DEFAULT NULL COMMENT '1已关注',
  `nickname` varchar(255) DEFAULT NULL,
  `headimgurl` varchar(255) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL COMMENT '1男 2女 3未知',
  `country` varchar(30) DEFAULT NULL,
  `province` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `subscribe_time` int(10) DEFAULT NULL COMMENT '关注时间',
  `remark` varchar(255) DEFAULT NULL,
  `groupid` int(3) DEFAULT NULL,
  `add_time` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `dk_wx_user`
--

INSERT INTO `dk_wx_user` (`id`, `agreement`, `openid`, `subscribe`, `nickname`, `headimgurl`, `sex`, `country`, `province`, `city`, `subscribe_time`, `remark`, `groupid`, `add_time`) VALUES
(1, 1, 'ojQasjusFd_OtIWkfng5_muS-rKo', 1, '明天你好', 'http://thirdwx.qlogo.cn/mmopen/1BZmG3CB8CicnMuic3v1o3kKzOfpwhSwHRGDVqjRRiaZRLFwic0Lia1IICKiciaebQYmQEyVC6ic3xYOTV47MvBLCT5gPQ/132', 1, '中国', '河南', '洛阳', 1517561706, '', 0, NULL),
(2, 0, 'ojQasjr4A6BE1edIj2OnwnynHfm8', 1, '大鼻子', 'http://thirdwx.qlogo.cn/mmopen/1BZmG3CB8CibzXnkZ98ZOyTq8vvcFqt52spicoiajXxkuPVpuib8symake7K0siagrNXiajoKib43u5L91RPMUicNKReQvM0jNZBnawT/132', 1, '中国', '广东', '深圳', 1435112923, '', 0, NULL),
(3, 0, 'ojQasjul5-DX6vYVBBgfDG5V6irc', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
