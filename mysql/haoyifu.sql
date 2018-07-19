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
-- 数据库: `haoyifu`
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
(3, 'admin_role', '用户组设置', 1, 'admin_role', 'index', '', 1, '1,3', 5, 1, '', ''),
(4, 'admin_user', '用户管理', 1, 'admin_user', 'index', '', 1, '1,4', 6, 1, '', ''),
(5, 'welcome', '控制台', 0, '', '', '', 0, '5', 10, 1, '', 'ace-icon fa fa-dashboard'),
(6, 'body', '首页', 5, 'system', 'index', '', 1, '5,6', 1, 1, '', ''),
(7, 'password', '修改密码', 5, 'password', 'index', '', 1, '5,7', 2, 1, '', ''),
(8, 'department', '部门设置', 0, NULL, NULL, NULL, 0, '8', 90, 0, NULL, 'ace-icon fa fa-edit'),
(9, 'laws', '产品中心', 0, NULL, NULL, NULL, 0, '9', 30, 1, NULL, 'ace-icon fa fa-briefcase'),
(10, 'download', '客户报告', 0, NULL, NULL, NULL, 0, '10', 99, 1, NULL, 'ace-icon fa  fa-book'),
(55, 'officer_list', '人员与业务列表', 39, 'officer', 'index', NULL, 2, '8,39,55', 1, 1, NULL, NULL),
(69, 'msg', '留言管理', 0, 'msg', 'index', NULL, 0, '69', 102, 1, NULL, 'ace-icon fa fa-comment'),
(15, 'depart', '职能介绍', 8, 'single', 'department', NULL, 1, '8,15', 1, 1, NULL, NULL),
(18, 'laws_list', '产品中心列表', 9, 'laws', 'index', NULL, 1, '9,18', 1, 1, NULL, NULL),
(19, 'laws_type', '产品中心分类', 9, 'laws_type', 'index', NULL, 1, '9,19', 2, 1, NULL, NULL),
(23, 'setup', '网站设置', 1, 'setup', 'index', '', 1, '1,23', 1, 1, '', ''),
(24, 'backup', '数据备份', 1, 'backup', 'index', '', 1, '1,24', 2, 1, '', ''),
(28, 'affairs', '文章管理', 0, NULL, NULL, NULL, 0, '28', 31, 1, NULL, 'ace-icon fa fa-pencil-square-o'),
(60, 'jobs', '新闻动态', 0, NULL, NULL, NULL, 0, '60', 70, 1, NULL, 'ace-icon fa  fa-home'),
(37, 'download_list', '报告列表', 10, 'download', 'index', NULL, 1, '10,37', 1, 1, NULL, NULL),
(38, 'download_type', '报告分类', 10, 'download_type', 'index', NULL, 1, '10,38', 2, 1, NULL, NULL),
(39, 'officer', '部门人员与业务', 8, NULL, NULL, NULL, 1, '8,39', 2, 1, NULL, NULL),
(70, 'member', '会员管理', 0, 'member', 'index', NULL, 0, '70', 101, 1, NULL, 'ace-icon fa fa-user'),
(63, 'jobs_list', '新闻列表', 60, 'jobs', 'index', NULL, 1, '60,63', 1, 1, NULL, NULL),
(47, 'hr', '学院概况', 0, NULL, NULL, NULL, 0, '47', 50, 1, NULL, 'ace-icon fa fa-info-circle'),
(48, 'hr_list', '列表', 47, 'hr', 'index', NULL, 1, '47,48', 1, 1, NULL, NULL),
(49, 'hr_type', '分类管理', 47, 'hr_type', 'index', NULL, 1, '47,49', 2, 1, NULL, NULL),
(57, 'affairs_list', '文章列表', 28, 'affairs', 'index', NULL, 1, '28,57', 1, 1, NULL, NULL),
(58, 'affairs_type', '文章分类', 28, 'affairs_type', 'index', NULL, 1, '28,58', 2, 1, NULL, NULL),
(56, 'officer_type', '人员与业务分类', 39, 'officer_type', 'index', NULL, 2, '8,39,56', 2, 1, NULL, NULL),
(64, 'jobs_type', '新闻分类', 60, 'jobs_type', 'index', NULL, 1, '60,64', 2, 1, NULL, NULL),
(65, 'links', '友情列表', 0, 'links', 'index', NULL, 0, '65', 80, 1, NULL, 'ace-icon fa fa-folder'),
(66, 'contact', '联系我们', 0, 'contact', 'index', NULL, 0, '66', 90, 1, NULL, 'ace-icon fa fa-headphones'),
(67, 'ads', '广告管理', 0, 'ads', 'index', NULL, 0, '67', 110, 1, NULL, 'ace-icon fa fa-adjust');

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
(1, '管理员用户组', NULL, 1, 'a:15:{i:0;s:1:"5";i:1;s:1:"6";i:2;s:1:"7";i:3;s:2:"28";i:4;s:2:"57";i:5;s:2:"58";i:6;s:2:"65";i:7;s:2:"66";i:8;s:2:"67";i:9;s:1:"1";i:10;s:2:"23";i:11;s:2:"24";i:12;s:1:"2";i:13;s:1:"3";i:14;s:1:"4";}');

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
('nl7570utj3oqrf2m1mh35i8ld4', '140.207.54.187', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.', 1524063615, ''),
('8s73tbpqsjblmd1ce22t7jfb96', '42.228.225.55', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', 1524063555, '');

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
(1, 'admin', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, 1408066304, '222.46.26.124', 1521436772, 560);

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `cms_ads`
--

INSERT INTO `cms_ads` (`id`, `type_id`, `title`, `title2`, `photo`, `thumb`, `content`, `url`, `show`, `recommend`, `addtime`, `sort_bh`) VALUES
(1, 0, '首页banner1', NULL, '/upload/201803/87f6cb731efbef728ebc747059f0c65c.jpg', '/upload/201803/87f6cb731efbef728ebc747059f0c65c_thumb.jpg', NULL, 'http://haoyifu.onways.cn/', 1, 0, 1521277278, 1),
(7, 1, '新闻轮播1', NULL, '/upload/201803/a9336aac574f0fa1fef5d5bc9bf66136.jpg', '/upload/201803/a9336aac574f0fa1fef5d5bc9bf66136_thumb.jpg', NULL, 'http://haoyifu.onways.cn/show/13.html', 1, 0, 1521277393, 3),
(8, 1, '新闻轮播2', NULL, '/upload/201803/fde9c640fec973f18ac662bf03c4447d.jpg', '/upload/201803/fde9c640fec973f18ac662bf03c4447d_thumb.jpg', NULL, 'http://haoyifu.onways.cn/show/12.html', 1, 0, 1521277444, 4),
(6, 0, '首页banner2', NULL, '/upload/201803/ebafeb148aa6ec88d5def369766edd6f.jpg', '/upload/201803/ebafeb148aa6ec88d5def369766edd6f_thumb.jpg', NULL, 'http://haoyifu.onways.cn/', 1, 0, 1521277321, 2),
(9, 103, '学院概况banner', NULL, '/upload/201803/94a85e2c75df2fe7ccc04c5b050e888f.jpg', '/upload/201803/94a85e2c75df2fe7ccc04c5b050e888f_thumb.jpg', NULL, 'http://', 1, 0, 1521376662, 250),
(10, 107, '新闻动态banner', NULL, '/upload/201803/00baa34afcee1e5fee134f5da1a2e997.jpg', '/upload/201803/00baa34afcee1e5fee134f5da1a2e997_thumb.jpg', NULL, 'http://', 1, 0, 1521376840, 250);

-- --------------------------------------------------------

--
-- 表的结构 `cms_article`
--

CREATE TABLE IF NOT EXISTS `cms_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `type_id` int(10) unsigned DEFAULT NULL,
  `pid` int(5) NOT NULL COMMENT '父id',
  `user_id` int(10) DEFAULT NULL COMMENT '用户id',
  `user_type` varchar(20) DEFAULT NULL COMMENT '患者类别',
  `user_mobile` varchar(16) DEFAULT NULL COMMENT '用户电话',
  `user_name` varchar(20) DEFAULT NULL COMMENT '患者姓名',
  `sex` varchar(20) NOT NULL COMMENT '性别',
  `user_age` varchar(20) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `cms_article`
--

INSERT INTO `cms_article` (`id`, `cid`, `type_id`, `pid`, `user_id`, `user_type`, `user_mobile`, `user_name`, `sex`, `user_age`, `title`, `tel`, `network`, `email`, `function`, `photo`, `thumb`, `file`, `content`, `click`, `show`, `recommend`, `seo_keywords`, `seo_description`, `addtime`, `sort_bh`) VALUES
(22, 3, 108, 107, NULL, NULL, NULL, NULL, '', NULL, '市委马晓晖副书记来院慰问医疗保健专家', NULL, NULL, NULL, NULL, NULL, '', NULL, '<p>&nbsp;1月26日上午，市委副书记、市保健委主任马晓晖，市委副秘书长马杭军，市委老干部局副部长应敏扬，市卫计委书记、主任滕建荣，市卫计委副书记方健国及市保健办有关同志一行来到我院，向集团全体医疗保健专家及医务人员表示亲切慰问和感谢。我院集团领导及医疗保健专家代表出席会议。</p><p>会上，马晓晖副书记畅谈了2017年杭州在经济发展水平、经济结构调整、公共事业投入及最具幸福感城市建设、最美现象涌现和弘扬等方方面面工作取得的斐然成绩，他深情地说，这些成绩的取得离不开广大医务人员的辛勤努力。长期以来，市一医院始终在全市各种急难危重任务中奋勇争先，无论G20峰会、学运会的保障还是干部保健工作都勇挑重担，为广大干部和老百姓提供了优质的医疗服务和救治保障。新的一年杭州将重点打造最安全城市，希望市一广大医务人员继续保持和发扬铁军排头兵作风，抓重点、补短板、强弱项，为建设更加美好的杭州共同努力。</p><p>马胜林院长向马书记一行的到来表示衷心感谢。他说，省保健工作大会指出医疗保障工作是干部队伍建设的重要内容，今天市委、市政府领导又亲切慰问，这些举动让我们医务人员感到由衷的温暖和鼓舞。干部医疗保障、群众医疗服务是我们义不容辞的职责和责任，市一集团全体必将竭智尽力，为杭州经济发展、为公立医院改革目标的实现作出自己最大贡献。</p><p>滕建荣主任也代表市卫计委班子向医院各条战线上的医务人员表示了亲切慰问，同时他表示，马书记的慰问是市委、市政府对系统所有医务人员的关怀，全市卫计工作者将全力以赴遵照上级指示，在新的一年里，全面系统规划医疗国际化、智慧医疗、院前急救、医疗质量提升工程等各项工作，为老百姓提供更加优质、便捷、安全的医疗服务。<br/> &nbsp; &nbsp; &nbsp; &nbsp;最后，马书记向医务人员代表发放慰问信并致以节日祝福。</p><p style="text-align: center;"><img style="width: 800px; height: 532px;" alt="" src="/upload/editor/20180319/1521428396893208.jpg"/></p><p><br/></p>', 2, 1, 0, NULL, NULL, 1521428331, 250),
(12, 3, 109, 107, NULL, NULL, NULL, NULL, '', NULL, '通知——通知通知通知通知通知通知通知', NULL, NULL, NULL, NULL, NULL, '', NULL, '<p>通知通知通知通知通知通知通知</p>', 8, 1, 0, '书记', NULL, 1521264536, 250),
(14, 3, 76, 64, NULL, NULL, NULL, NULL, '', NULL, '建党园地——附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣', NULL, NULL, NULL, NULL, '/upload/201803/0070715947557df5981c556240ead748.jpg', '/upload/201803/0070715947557df5981c556240ead748_thumb.jpg', NULL, '<p>12月6日晚上，附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣讲报告会，报告会由附属第一医院第四临床医学院党委副书记裘生梁主讲，各党支部书记12月6日晚上，附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣讲报告会，报告会由附属第一医院第四临床医学院党委副书记裘生梁主讲，各党支部书记12月6日晚上，附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣讲报告会，报告会由附属第一医院第四临床医学院党委副书记裘生梁主讲，各党支部书记</p><p><br/></p><p>12月6日晚上，附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣讲报告会，报告会由附属第一医院第四临床医学院党委副书记裘生梁主讲，各党支部书记</p>', 3, 1, 0, NULL, NULL, 1521268286, 250),
(15, 3, 15, 15, NULL, NULL, NULL, NULL, '', NULL, '教务工作——附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣', NULL, NULL, NULL, NULL, '/upload/201803/0dd4b5ca6636e9a76b2ed6e68fd82c65.jpg', '/upload/201803/0dd4b5ca6636e9a76b2ed6e68fd82c65_thumb.jpg', NULL, '<p>附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣附属第一医院第四临床医学院学生党总支在滨文校区17206教室举行了党的十九大精神宣</p>', 1, 1, 0, NULL, NULL, 1521269937, 250),
(16, 3, 84, 65, NULL, NULL, NULL, NULL, '', NULL, '学生组织——_壹家人壹文化—学院第二届班团文化节圆满闭幕', NULL, NULL, NULL, NULL, '/upload/201803/7858ae6e768ffe060f5fd0f7ba601e6f.jpg', '/upload/201803/7858ae6e768ffe060f5fd0f7ba601e6f_thumb.jpg', NULL, '<p>壹家人壹文化—学院第二届班团文化节圆满闭幕壹家人壹文化—学院第二届班团文化节圆满闭幕壹家人壹文化—学院第二届班团文化节圆满闭幕壹家人壹文化—学院第二届班团文化节圆满闭幕壹家人壹文化—学院第二届班团文化节圆满闭幕壹家人壹文化—学院第二届班团文化节圆满闭幕壹家人壹文化—学院第二届班团文化节圆满闭幕壹家人壹文化—学院第二届班团文化节圆满闭幕壹家人壹文化—学院第二届班团文化节圆满闭幕</p>', 1, 1, 0, '壹家人壹', NULL, 1521270859, 250),
(21, 3, 108, 107, NULL, NULL, NULL, NULL, '', NULL, '精心准备赴“两会”，参政议政献良策', NULL, NULL, NULL, NULL, NULL, '', NULL, '<p>&nbsp;新时代勾勒发展新愿景，新征程激发奋斗新力量。日前，省第十三届人大一次会议和省政协第十二届一次会议在杭召开，我院门诊办公室主任盛文彬作为新当选省政协委员，于2月22日至29日参加浙江省第十二届一次会议，并列席浙江省第十三届人民代表大会。连日来，盛主任积极参政议政，在小组讨论、联组汇报中，充分发挥自身专业特长，并结合学科实际建言献策。</p><div 360chrome_form_autofill="2">与会期间，盛主任还先后接受了浙江日报、浙江经视、钱江晚报、杭州电视台及省政协联谊报等多家媒体的采访，就我院在智慧医疗、医联体建设等方面取得的成就进行了详细的介绍，同时针对儿科发展的重要性和紧迫性、医疗资源的匮乏性进行了分析并提出合理化建议，引发广泛关注。<br/> &nbsp; &nbsp; &nbsp; &nbsp; “省政协委员的身份对我来说不仅是一种荣誉，更是一种责任与担当。”盛主任说，“我将更加努力提高政治意识与业务能力，积极建言献策，贡献力量。”</div><div 360chrome_form_autofill="2"></div><div style="text-align: center;" 360chrome_form_autofill="2"><img style="width: 422px; height: 314px;" alt="" src="http://www.hz-hospital.com/upload/images/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20180130172446(2)_%E5%89%AF%E6%9C%AC.jpg"/></div><div style="text-align: center;" 360chrome_form_autofill="2">	</div><div style="text-align: center;" 360chrome_form_autofill="2"><img style="width: 422px; height: 673px;" alt="" src="http://www.hz-hospital.com/upload/images/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20180130170450_%E5%89%AF%E6%9C%AC(2)_%E5%89%AF%E6%9C%AC.jpg"/></div><p><br/></p>', 1, 1, 0, NULL, NULL, 1521428040, 250),
(17, 3, 89, 62, NULL, NULL, NULL, NULL, '', NULL, '学生工作——手术部位标识管理制度学生', NULL, NULL, NULL, NULL, '/upload/201803/30b23be26e4d8f739d4d88c613eb4995.jpg', '/upload/201803/30b23be26e4d8f739d4d88c613eb4995_thumb.jpg', NULL, '<p>学生工作——手术部位标识管理制度学生学生工作——手术部位标识管理制度学生学生工作——手术部位标识管理制度学生学生工作——手术部位标识管理制度学生学生工作——手术部位标识管理制度学生学生工作——手术部位标识管理制度学生学生工作——手术部位标识管理制度学生学生工作——手术部位标识管理制度学生</p>', 1, 1, 0, '学生工作', NULL, 1521271931, 250),
(18, 3, 111, 111, NULL, NULL, NULL, NULL, '', NULL, '新闻图片_壹家人壹文化—学院第二届班团文化节圆满闭幕第二届班团文化节圆满闭幕幕', NULL, NULL, NULL, NULL, '/upload/201803/d9e719c89aed92b8bfa14810bcd11c87.jpg', '/upload/201803/d9e719c89aed92b8bfa14810bcd11c87_thumb.jpg', NULL, '<p>壹家人壹文化—学院第二届班团文化节圆满闭幕第二届班团文化节圆满闭幕幕壹家人壹文化—学院第二届班团文化节圆满闭幕第二届班团文化节圆满闭幕幕壹家人壹文化—学院第二届班团文化节圆满闭幕第二届班团文化节圆满闭幕幕壹家人壹文化—学院第二届班团文化节圆满闭幕第二届班团文化节圆满闭幕幕壹家人壹文化—学院第二届班团文化节圆满闭幕第二届班团文化节圆满闭幕幕壹家人壹文化—学院第二届班团文化节圆满闭幕第二届班团文化节圆满闭幕幕壹家人壹文化—学院第二届班团文化节圆满闭幕第二届班团文化节圆满闭幕幕</p>', 3, 1, 0, '壹家人壹', NULL, 1521272005, 250);

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
  `sort_bh` int(11) DEFAULT '250',
  `addtime` int(11) DEFAULT NULL,
  `menu` varchar(30) NOT NULL DEFAULT '0' COMMENT '菜单标识',
  `nav` tinyint(1) DEFAULT '0' COMMENT '1导航栏显示',
  `pid` tinyint(3) DEFAULT '0',
  `nav_sort` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type_id` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=113 ;

--
-- 转存表中的数据 `cms_article_type`
--

INSERT INTO `cms_article_type` (`id`, `cid`, `title`, `photo`, `photos`, `intro`, `sort_bh`, `addtime`, `menu`, `nav`, `pid`, `nav_sort`) VALUES
(15, 3, '教务工作', '', '', NULL, 250, NULL, 'affairs', 1, 0, 4),
(16, 3, '教学工作', '', '', NULL, 250, NULL, 'affairs', 1, 0, 5),
(17, 3, '学术科研', '', '', NULL, 250, NULL, 'affairs', 1, 0, 6),
(110, 3, '学院重点通知', '', '', NULL, 250, NULL, 'affairs', 0, 0, 0),
(62, 3, '学生工作', '', '', NULL, 250, NULL, 'affairs', 1, 0, 7),
(63, 3, '招生就业', '', '', NULL, 250, NULL, 'affairs', 1, 0, 8),
(64, 3, '党建园地', '', '', NULL, 250, NULL, 'affairs', 1, 0, 9),
(65, 3, '学生组织', '', '', NULL, 250, NULL, 'affairs', 1, 0, 10),
(66, 3, '资源下载', '', '', NULL, 250, NULL, 'affairs', 1, 0, 11),
(109, 3, '通知公告', '', '', NULL, 250, NULL, 'affairs', 0, 107, 0),
(108, 3, '学院新闻', '', '', NULL, 250, NULL, 'affairs', 0, 107, 0),
(107, 3, '新闻动态', '', '', NULL, 250, NULL, 'affairs', 1, 0, 2),
(111, 3, '新闻图片', '', '', NULL, 250, NULL, 'affairs', 0, 0, 0),
(76, 3, '学生党建', '', '', NULL, 250, NULL, 'affairs', 0, 64, 0),
(75, 3, '党委工作', '', '', NULL, 250, NULL, 'affairs', 0, 64, 0),
(77, 3, '党员培训', '', '', NULL, 250, NULL, 'affairs', 0, 64, 0),
(78, 3, '党员之家', '', '', NULL, 250, NULL, 'affairs', 0, 64, 0),
(79, 3, '教育专题', '', '', NULL, 250, NULL, 'affairs', 0, 64, 0),
(80, 3, '院团委', '', '', NULL, 250, NULL, 'affairs', 0, 65, 0),
(81, 3, '院学生会', '', '', NULL, 250, NULL, 'affairs', 0, 65, 0),
(82, 3, '院社管中心', '', '', NULL, 250, NULL, 'affairs', 0, 65, 0),
(83, 3, '院模拟医院', '', '', NULL, 250, NULL, 'affairs', 0, 65, 0),
(84, 3, '学生科技杂志', '', '', NULL, 250, NULL, 'affairs', 0, 65, 0),
(85, 3, '院研究生会', '', '', NULL, 250, NULL, 'affairs', 0, 65, 0),
(86, 3, '团委在线', '', '', NULL, 250, NULL, 'affairs', 0, 62, 0),
(87, 3, '文明规范管理', '', '', NULL, 250, NULL, 'affairs', 0, 62, 0),
(88, 3, '勤特贷资助', '', '', NULL, 250, NULL, 'affairs', 0, 62, 0),
(89, 3, '心理健康', '', '', NULL, 250, NULL, 'affairs', 0, 62, 0),
(90, 3, '学生事务', '', '', NULL, 250, NULL, 'affairs', 0, 62, 0),
(91, 3, '研究生管理', '', '', NULL, 250, NULL, 'affairs', 0, 62, 0),
(92, 3, '教改课题', '', '', NULL, 250, NULL, 'affairs', 0, 17, 0),
(93, 3, '教改论文', '', '', NULL, 250, NULL, 'affairs', 0, 17, 0),
(94, 3, '著作与教材', '', '', NULL, 250, NULL, 'affairs', 0, 17, 0),
(95, 3, '本科生教学', '', '', NULL, 250, NULL, 'affairs', 0, 16, 0),
(96, 3, '研究生教学', '', '', NULL, 250, NULL, 'affairs', 0, 16, 0),
(97, 3, '师资队伍', '', '', NULL, 250, NULL, 'affairs', 0, 16, 0),
(98, 3, '课程设置', '', '', NULL, 250, NULL, 'affairs', 0, 16, 0),
(99, 3, '实践及实习', '', '', NULL, 250, NULL, 'affairs', 0, 16, 0),
(100, 3, '学位培养', '', '', NULL, 250, NULL, 'affairs', 0, 16, 0),
(101, 3, '导师队伍', '', '', NULL, 250, NULL, 'affairs', 0, 16, 0),
(102, 3, '学业指导', '', '', NULL, 250, NULL, 'affairs', 0, 16, 0),
(103, 3, '学院概况', '', '', NULL, 250, NULL, 'affairs', 1, 0, 1),
(104, 3, '学院简介', '', '', NULL, 250, NULL, 'affairs', 0, 103, 0),
(105, 3, '现任领导', '', '', NULL, 250, NULL, 'affairs', 0, 103, 0),
(106, 3, '办学理念', '', '', NULL, 250, NULL, 'affairs', 0, 103, 0);

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
(2, 'site', 'title', '浙江省中医药大学第四临床医学院'),
(3, 'site', 'keywords', '浙江省中医药大学第四临床医学院'),
(4, 'site', 'description', '浙江省中医药大学第四临床医学院');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `cms_links`
--

INSERT INTO `cms_links` (`id`, `type_id`, `title`, `photo`, `thumb`, `url`, `content`, `show`, `sort_bh`, `addtime`) VALUES
(1, NULL, '测试图片', '/upload/201803/ad0997926551e1ed52756bed110ce5c4.jpg', '/upload/201803/ad0997926551e1ed52756bed110ce5c4_thumb.jpg', 'http://www.baidu.com', NULL, 1, 250, 1521436789),
(2, NULL, '浙江省中医院', '/upload/201803/a84976b8df38a767f8e08041be58ca70.jpg', '/upload/201803/a84976b8df38a767f8e08041be58ca70_thumb.jpg', 'http://www.baidu.com', NULL, 1, 250, 1521436887),
(3, NULL, '浙江中医药网', '/upload/201803/725b5bc2966d6f7b685e0557d9abda55.jpg', '/upload/201803/725b5bc2966d6f7b685e0557d9abda55_thumb.jpg', 'http://www.baidu.com', NULL, 1, 250, 1521436947),
(4, NULL, '中国医药报', '/upload/201803/e64fe338bfaa6a8ce53a70bd4a3c62c0.jpg', '/upload/201803/e64fe338bfaa6a8ce53a70bd4a3c62c0_thumb.jpg', 'http://www.baidu.com', NULL, 1, 250, 1521436997);

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

