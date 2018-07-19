-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 07 月 06 日 06:03
-- 服务器版本: 5.5.27
-- PHP 版本: 5.4.26

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `hyf`
--

-- --------------------------------------------------------

--
-- 表的结构 `cms_admin_act`
--

CREATE TABLE IF NOT EXISTS `cms_admin_act` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `funkey` varchar(50) DEFAULT NULL COMMENT '功能标识',
  `funname` varchar(50) DEFAULT NULL COMMENT '功能名称',
  `parentid` int(11) DEFAULT NULL COMMENT '上级目录',
  `c` varchar(50) DEFAULT NULL COMMENT 'class模块',
  `a` varchar(50) DEFAULT NULL COMMENT 'action方法',
  `parm` varchar(100) DEFAULT NULL COMMENT '参数',
  `depth` smallint(6) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `sort_bh` int(11) DEFAULT NULL COMMENT '排序',
  `display` smallint(6) DEFAULT '1',
  `linkpage` varchar(250) DEFAULT NULL,
  `ico` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- 转存表中的数据 `cms_admin_act`
--

INSERT INTO `cms_admin_act` (`id`, `funkey`, `funname`, `parentid`, `c`, `a`, `parm`, `depth`, `path`, `sort_bh`, `display`, `linkpage`, `ico`) VALUES
(1, 'system', '系统管理', 0, NULL, NULL, NULL, 0, '1', 250, 1, NULL, 'ace-icon fa fa-cog'),
(2, 'admin_menu', '功能管理', 1, 'admin_menu', 'index', '', 1, '1,2', 4, 1, '', ''),
(3, 'admin_role', '用户组设置', 1, 'admin_role', 'index', '', 1, '1,3', 5, 0, '', ''),
(4, 'admin_user', '用户管理', 1, 'admin_user', 'index', '', 1, '1,4', 6, 0, '', ''),
(5, 'welcome', '控制台', 0, '', '', '', 0, '5', 10, 1, '', 'ace-icon fa fa-dashboard'),
(6, 'body', '首页', 5, 'system', 'index', '', 1, '5,6', 1, 1, '', ''),
(7, 'password', '修改密码', 5, 'password', 'index', '', 1, '5,7', 2, 1, '', ''),
(8, 'department', '部门设置', 0, NULL, NULL, NULL, 0, '8', 90, 0, NULL, 'ace-icon fa fa-edit'),
(9, 'laws', '产品中心', 0, NULL, NULL, NULL, 0, '9', 30, 0, NULL, 'ace-icon fa fa-briefcase'),
(10, 'download', '扫描枪采集信息', 0, NULL, NULL, NULL, 0, '10', 99, 1, NULL, 'ace-icon fa  fa-book'),
(55, 'officer_list', '人员与业务列表', 39, 'officer', 'index', NULL, 2, '8,39,55', 1, 0, NULL, NULL),
(69, 'msg', '留言管理', 0, 'msg', 'index', NULL, 0, '69', 102, 0, NULL, 'ace-icon fa fa-comment'),
(15, 'depart', '职能介绍', 8, 'single', 'department', NULL, 1, '8,15', 1, 0, NULL, NULL),
(18, 'laws_list', '产品中心列表', 9, 'laws', 'index', NULL, 1, '9,18', 1, 0, NULL, NULL),
(19, 'laws_type', '产品中心分类', 9, 'laws_type', 'index', NULL, 1, '9,19', 2, 0, NULL, NULL),
(23, 'setup', '网站设置', 1, 'setup', 'index', '', 1, '1,23', 1, 0, '', ''),
(24, 'backup', '数据备份', 1, 'backup', 'index', '', 1, '1,24', 2, 0, '', ''),
(28, 'affairs', '新闻中心', 0, NULL, NULL, NULL, 0, '28', 31, 0, NULL, 'ace-icon fa fa-pencil-square-o'),
(60, 'jobs', '艾诺', 0, NULL, NULL, NULL, 0, '60', 70, 0, NULL, 'ace-icon fa  fa-home'),
(37, 'download_list', '采集信息列表', 10, 'download', 'index', NULL, 1, '10,37', 1, 1, NULL, NULL),
(38, 'download_type', '采集信息分类', 10, 'download_type', 'index', NULL, 1, '10,38', 2, 1, NULL, NULL),
(39, 'officer', '部门人员与业务', 8, NULL, NULL, NULL, 1, '8,39', 2, 0, NULL, NULL),
(70, 'member', '会员管理', 0, 'member', 'index', NULL, 0, '70', 101, 0, NULL, 'ace-icon fa fa-user'),
(63, 'jobs_list', '艾诺列表', 60, 'jobs', 'index', NULL, 1, '60,63', 1, 0, NULL, NULL),
(47, 'hr', '常见问题', 0, NULL, NULL, NULL, 0, '47', 50, 0, NULL, 'ace-icon fa fa-info-circle'),
(48, 'hr_list', '问题列表', 47, 'hr', 'index', NULL, 1, '47,48', 1, 0, NULL, NULL),
(49, 'hr_type', '问题分类', 47, 'hr_type', 'index', NULL, 1, '47,49', 2, 0, NULL, NULL),
(57, 'affairs_list', '新闻中心列表', 28, 'affairs', 'index', NULL, 1, '28,57', 1, 0, NULL, NULL),
(58, 'affairs_type', '新闻中心分类', 28, 'affairs_type', 'index', NULL, 1, '28,58', 2, 0, NULL, NULL),
(56, 'officer_type', '人员与业务分类', 39, 'officer_type', 'index', NULL, 2, '8,39,56', 2, 0, NULL, NULL),
(64, 'jobs_type', '艾诺分类', 60, 'jobs_type', 'index', NULL, 1, '60,64', 2, 0, NULL, NULL),
(65, 'links', '友情列表', 0, 'links', 'index', NULL, 0, '65', 80, 0, NULL, 'ace-icon fa fa-folder'),
(66, 'contact', '联系我们', 0, 'contact', 'index', NULL, 0, '66', 90, 0, NULL, 'ace-icon fa fa-headphones'),
(67, 'ads', '广告管理', 0, 'ads', 'index', NULL, 0, '67', 110, 0, NULL, 'ace-icon fa fa-adjust');

-- --------------------------------------------------------

--
-- 表的结构 `cms_admin_role`
--

CREATE TABLE IF NOT EXISTS `cms_admin_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `rolename` varchar(50) DEFAULT NULL COMMENT '组名称',
  `body` varchar(100) DEFAULT NULL COMMENT '备注',
  `sort_bh` int(11) DEFAULT NULL COMMENT '排序',
  `mids` text COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `cms_admin_role`
--

INSERT INTO `cms_admin_role` (`id`, `rolename`, `body`, `sort_bh`, `mids`) VALUES
(1, '管理员用户组', NULL, 1, 'a:34:{i:0;s:1:"5";i:1;s:1:"6";i:2;s:1:"7";i:3;s:1:"8";i:4;s:2:"15";i:5;s:2:"39";i:6;s:2:"55";i:7;s:2:"56";i:8;s:1:"9";i:9;s:2:"18";i:10;s:2:"19";i:11;s:2:"28";i:12;s:2:"57";i:13;s:2:"58";i:14;s:2:"10";i:15;s:2:"37";i:16;s:2:"38";i:17;s:2:"47";i:18;s:2:"48";i:19;s:2:"49";i:20;s:2:"60";i:21;s:2:"63";i:22;s:2:"64";i:23;s:2:"65";i:24;s:2:"69";i:25;s:2:"66";i:26;s:2:"67";i:27;s:1:"1";i:28;s:2:"23";i:29;s:2:"24";i:30;s:1:"2";i:31;s:1:"3";i:32;s:1:"4";i:33;s:2:"70";}');

-- --------------------------------------------------------

--
-- 表的结构 `cms_admin_sessions`
--

CREATE TABLE IF NOT EXISTS `cms_admin_sessions` (
  `session_id` varchar(40) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `user_agent` varchar(120) DEFAULT NULL,
  `last_activity` bigint(20) DEFAULT NULL,
  `user_data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cms_admin_sessions`
--

INSERT INTO `cms_admin_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('gc4hqnr9abvrsjt4rqvbgve8g5', '42.228.225.55', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', 1524063549, '');

-- --------------------------------------------------------

--
-- 表的结构 `cms_admin_user`
--

CREATE TABLE IF NOT EXISTS `cms_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `userid` varchar(30) DEFAULT NULL COMMENT '用户账号',
  `uname` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `pws` varchar(32) DEFAULT NULL COMMENT '账户密码',
  `rid` int(11) DEFAULT NULL COMMENT '用户组',
  `sort_bh` int(4) DEFAULT '100',
  `reg_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `login_ip` varchar(20) DEFAULT NULL COMMENT '登录IP',
  `login_time` int(11) DEFAULT NULL COMMENT '登录时间',
  `login_count` int(11) DEFAULT NULL COMMENT '登录次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `cms_admin_user`
--

INSERT INTO `cms_admin_user` (`id`, `userid`, `uname`, `pws`, `rid`, `sort_bh`, `reg_time`, `login_ip`, `login_time`, `login_count`) VALUES
(1, 'admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 1408066304, '42.228.225.198', 1514959182, 545);

-- --------------------------------------------------------

--
-- 表的结构 `cms_ads`
--

CREATE TABLE IF NOT EXISTS `cms_ads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `title2` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `content` mediumtext,
  `url` varchar(255) DEFAULT NULL,
  `show` tinyint(3) DEFAULT '1',
  `recommend` tinyint(3) DEFAULT '0',
  `addtime` int(11) DEFAULT NULL,
  `sort_bh` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  KEY `show` (`show`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `cms_ads`
--

INSERT INTO `cms_ads` (`id`, `type_id`, `title`, `title2`, `photo`, `thumb`, `content`, `url`, `show`, `recommend`, `addtime`, `sort_bh`) VALUES
(1, 1, 'banner1', NULL, '/rsk/upload/201711/9c9bb2b64fd2832ae573faff45e3ff94.jpg', '/rsk/upload/201711/9c9bb2b64fd2832ae573faff45e3ff94_thumb.jpg', NULL, 'http://haoyifu.onways.cn/rsk/', 1, 0, 1511080836, 1);

-- --------------------------------------------------------

--
-- 表的结构 `cms_article`
--

CREATE TABLE IF NOT EXISTS `cms_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `type_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL COMMENT '用户id',
  `user_type` varchar(20) DEFAULT NULL COMMENT '患者类别',
  `user_mobile` varchar(16) DEFAULT NULL COMMENT '用户电话',
  `user_name` varchar(20) DEFAULT NULL COMMENT '患者姓名',
  `sex` varchar(20) NOT NULL COMMENT '性别',
  `user_age` varchar(20) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `user_number` varchar(30) DEFAULT NULL COMMENT '条码号',
  `docu_num` varchar(20) DEFAULT NULL COMMENT '门诊/住院号',
  `document` varchar(20) DEFAULT NULL COMMENT '科室',
  `docutor` varchar(20) DEFAULT NULL COMMENT '送检医生',
  `baogao_time` varchar(30) DEFAULT NULL COMMENT '报告时间',
  `jiance_time` varchar(30) DEFAULT NULL COMMENT '检测时间',
  `print_time` varchar(30) DEFAULT NULL COMMENT '打印时间',
  `docu_state` varchar(20) DEFAULT '送检中' COMMENT '检验状态',
  `post` varchar(100) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `network` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `function` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `content` mediumtext,
  `click` int(11) DEFAULT '1',
  `show` tinyint(3) DEFAULT '1',
  `recommend` tinyint(3) DEFAULT '0',
  `seo_keywords` varchar(100) DEFAULT NULL,
  `seo_description` varchar(200) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `sort_bh` int(11) DEFAULT NULL,
  `chusheng_time` varchar(30) DEFAULT NULL COMMENT '出生时间',
  `addre` varchar(30) DEFAULT NULL COMMENT '联系地址',
  `xiangmu` varchar(100) DEFAULT NULL COMMENT '检查项目',
  `jieshou_time` varchar(30) DEFAULT NULL COMMENT '样本接收时间',
  `shenhe` varchar(10) DEFAULT NULL COMMENT '审核人',
  `wheres` varchar(255) DEFAULT NULL COMMENT '报告来自？？',
  `youji_time` varchar(30) DEFAULT NULL COMMENT '报告邮寄时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `cms_article`
--

INSERT INTO `cms_article` (`id`, `cid`, `type_id`, `user_id`, `user_type`, `user_mobile`, `user_name`, `sex`, `user_age`, `title`, `user_number`, `docu_num`, `document`, `docutor`, `baogao_time`, `jiance_time`, `print_time`, `docu_state`, `post`, `tel`, `network`, `email`, `function`, `photo`, `thumb`, `file`, `content`, `click`, `show`, `recommend`, `seo_keywords`, `seo_description`, `addtime`, `sort_bh`, `chusheng_time`, `addre`, `xiangmu`, `jieshou_time`, `shenhe`, `wheres`, `youji_time`) VALUES
(1, 4, 60, NULL, NULL, '15874775547', '张三', '', '25', '魂牵梦萦魂牵梦萦', '234532432s', NULL, '魂牵梦萦', '魂牵梦萦', '921600', '1511193600', NULL, '送检中', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, NULL, 1513094400, 250, '1262016000', '魂牵梦萦魂牵梦萦s', '魂牵梦萦', '1512095760', '魂牵梦萦', '魂牵梦萦', '1512182176');

-- --------------------------------------------------------

--
-- 表的结构 `cms_article_type`
--

CREATE TABLE IF NOT EXISTS `cms_article_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(250) NOT NULL,
  `photos` varchar(250) NOT NULL COMMENT '图片2',
  `intro` varchar(1000) DEFAULT NULL,
  `sort_bh` int(11) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_id` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- 转存表中的数据 `cms_article_type`
--

INSERT INTO `cms_article_type` (`id`, `cid`, `title`, `photo`, `photos`, `intro`, `sort_bh`, `addtime`) VALUES
(60, 4, '采集信息', '', '', NULL, 250, NULL),
(52, 2, '成人和儿童个性化用药基因检测', '/rsk/upload/201711/a82f6bd1aedbd25bf4d35d1b6130fc81.jpg', '/rsk/upload/201711/c7b1ed9bc5b45268d0caa517d7a0d0cc.jpg', '药物治疗的效果因人而异，某些药物仅对部分患者有效，对另一部分患者无效；有的患者仅使用少量药物就可能发生严重的不良反应，甚至导致死亡......', 250, NULL),
(53, 2, '遗传性肿瘤基因检测', '/rsk/upload/201711/5a2bd3aa6cb7a197102beb1dda483b6e.jpg', '/rsk/upload/201711/e93eb2daba484846151b4fd3996fafba.jpg', '遗传性肿瘤是指人体因特定基因生殖系突变导致罹患肿瘤，这些突变会随生殖细胞遗传，极大增加后代罹患相应肿瘤的风险。', 250, NULL),
(54, 2, '疾病易感基因检测', '/rsk/upload/201711/0a5e6b8909916b5fb74b0641a17f2900.jpg', '/rsk/upload/201711/625afe84f2ab741bb3c71953941c6e0a.jpg', '现代医学研究证明，人类疾病都直接或间接的与基因有关。高血压、糖尿病、肿瘤等，疾病涉及多个基因的变异。', 250, NULL),
(55, 2, '单基因病PGD检测', '/rsk/upload/201711/3e5fba9a1b254f76e9184bba632a00a2.jpg', '/rsk/upload/201711/621b5a1efe3da904081a6bec23e2558e.jpg', 'PGD(PREIMPLANTION GENETIC DIAGNOSIS,PGD）即植入前遗传学诊断，通过从体外受精（IN-VITRO FERTILIZATION,IVF）的胚胎中取部分.......', 250, NULL),
(56, 2, '遗传病三项检测', '/rsk/upload/201711/f846a590e2de5f38a90194e31aeebbcf.jpg', '/rsk/upload/201711/58a73e84538e39d3348a99c8c3f993c7.jpg', '动态突变类遗传病、生殖生育相关项目、线粒体全基因突变检测', 250, NULL),
(57, 2, '遗传病基因检测', '/rsk/upload/201711/d0357a617e1cee1e8b6b34c74bfdde59.jpg', '/rsk/upload/201711/69346a4db7a723d534f8b46efc68a5fd.jpg', '单基因病-骨骼肌肉神经系统、皮肤系统、消化-内分泌-泌尿-血液-免疫系统、心律失常、遗传代谢病系统、眼科系统等', 250, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `cms_config`
--

CREATE TABLE IF NOT EXISTS `cms_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT '' COMMENT '配置分类，方便批量读取',
  `config` varchar(100) DEFAULT '',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `config_index` (`config`,`category`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `cms_config`
--

INSERT INTO `cms_config` (`id`, `category`, `config`, `value`) VALUES
(1, 'admin', 'backup', '1500276622'),
(2, 'site', 'title', '扫描枪采集信息'),
(3, 'site', 'keywords', '扫描枪采集信息'),
(4, 'site', 'description', '扫描枪采集信息');

-- --------------------------------------------------------

--
-- 表的结构 `cms_links`
--

CREATE TABLE IF NOT EXISTS `cms_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` tinyint(3) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `content` text,
  `show` tinyint(3) DEFAULT '1',
  `sort_bh` smallint(5) unsigned DEFAULT '0',
  `addtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `cms_links`
--


-- --------------------------------------------------------

--
-- 表的结构 `cms_msg`
--

CREATE TABLE IF NOT EXISTS `cms_msg` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `phone` varchar(11) NOT NULL COMMENT '手机号',
  `email` varchar(50) DEFAULT NULL,
  `content` text NOT NULL,
  `add_time` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `cms_msg`
--


-- --------------------------------------------------------

--
-- 表的结构 `cms_single`
--

CREATE TABLE IF NOT EXISTS `cms_single` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `type_code` varchar(20) DEFAULT NULL COMMENT '类型',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `title_en` varchar(255) DEFAULT NULL,
  `intro` varchar(1000) DEFAULT NULL COMMENT '简介',
  `content` mediumtext COMMENT '内容',
  `content2` mediumtext COMMENT '内容2',
  `content3` mediumtext COMMENT '内容3',
  `content4` mediumtext COMMENT '内容4',
  `content5` mediumtext COMMENT '内容5',
  `content6` mediumtext COMMENT '内容6',
  `content7` mediumtext,
  `content8` mediumtext,
  `content9` mediumtext,
  `content10` mediumtext,
  `content11` mediumtext,
  `content12` mediumtext,
  `content13` mediumtext,
  `content14` mediumtext,
  `content15` mediumtext,
  `content16` mediumtext,
  `content17` mediumtext,
  `content18` mediumtext,
  `photo` varchar(255) DEFAULT NULL,
  `photo2` varchar(255) DEFAULT NULL,
  `photo3` varchar(255) DEFAULT NULL,
  `photo4` varchar(255) DEFAULT NULL,
  `photo5` varchar(255) DEFAULT NULL,
  `photo6` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `cms_single`
--


-- --------------------------------------------------------

--
-- 表的结构 `cms_users`
--

CREATE TABLE IF NOT EXISTS `cms_users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(40) NOT NULL,
  `reg_time` varchar(15) NOT NULL,
  `last_login_time` varchar(15) DEFAULT NULL,
  `state` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1正常 2删除 3冻结',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `cms_users`
--


-- --------------------------------------------------------

--
-- 表的结构 `site_url`
--

CREATE TABLE IF NOT EXISTS `site_url` (
  `site_url` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `site_url`
--

