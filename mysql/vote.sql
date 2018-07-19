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
-- 数据库: `vote`
--

-- --------------------------------------------------------

--
-- 表的结构 `v_admin`
--

CREATE TABLE IF NOT EXISTS `v_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `pwd` varchar(48) NOT NULL DEFAULT '',
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='后台管理员' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `v_admin`
--

INSERT INTO `v_admin` (`id`, `name`, `pwd`, `role`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1');

-- --------------------------------------------------------

--
-- 表的结构 `v_article`
--

CREATE TABLE IF NOT EXISTS `v_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(255) DEFAULT NULL COMMENT '助人为乐',
  `sort` int(11) DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `pub_time` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='文章' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `v_article`
--

INSERT INTO `v_article` (`id`, `class`, `sort`, `title`, `content`, `desc`, `thumb`, `pub_time`) VALUES
(1, NULL, 0, '水电费', '<p>是梵蒂冈</p>', '', '', '1472481650');

-- --------------------------------------------------------

--
-- 表的结构 `v_article_cate`
--

CREATE TABLE IF NOT EXISTS `v_article_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sort` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `v_article_cate`
--


-- --------------------------------------------------------

--
-- 表的结构 `v_article_msg`
--

CREATE TABLE IF NOT EXISTS `v_article_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `art_id` int(11) NOT NULL DEFAULT '0' COMMENT '文章id',
  `content` varchar(255) DEFAULT NULL COMMENT '留言内容',
  `pub_time` varchar(15) DEFAULT NULL,
  `check` tinyint(1) DEFAULT '0' COMMENT '1 通过审核',
  `ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章留言' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `v_article_msg`
--


-- --------------------------------------------------------

--
-- 表的结构 `v_category`
--

CREATE TABLE IF NOT EXISTS `v_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` smallint(6) DEFAULT '0' COMMENT '0 底部  1投票结果页',
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sort` tinyint(3) DEFAULT '0',
  `newwindow` tinyint(1) DEFAULT '1' COMMENT '1新窗口打开',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目管理' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `v_category`
--


-- --------------------------------------------------------

--
-- 表的结构 `v_department`
--

CREATE TABLE IF NOT EXISTS `v_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `pid` tinyint(3) NOT NULL DEFAULT '0',
  `sort` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `v_department`
--

INSERT INTO `v_department` (`id`, `name`, `pid`, `sort`) VALUES
(1, '水利工程学院', 0, 0),
(2, '安全技术专业', 1, 0),
(3, '水利水电工程造价专业', 1, 0),
(4, '水利水电工程技术专业（水利水电工程检测技术方向）专业', 1, 0),
(5, '土木工程学院', 0, 0),
(6, '地下与隧道工程技术专业', 5, 0),
(7, '给排水工程技术专业', 5, 0),
(8, '财经系', 0, 0),
(9, '会计信息管理专业', 8, 0),
(10, '会计（注册会计师方向）专业', 8, 0),
(11, '管理系', 0, 0),
(12, '电子商务专业', 11, 0),
(13, '环境与化学系', 0, 0),
(14, '食品加工技术专业', 13, 0),
(15, '应用化工技术专业', 13, 0),
(16, '旅游系', 0, 0),
(17, '旅游管理专业', 16, 0),
(18, '信息系', 0, 0),
(19, '计算机应用技术专业', 18, 0),
(20, '软件技术专业', 18, 0),
(21, '艺术系', 0, 0),
(22, '视觉传播设计与制作专业', 21, 0),
(23, '自动化系', 0, 0),
(24, '电子信息工程技术专业', 23, 0);

-- --------------------------------------------------------

--
-- 表的结构 `v_site`
--

CREATE TABLE IF NOT EXISTS `v_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_thumb_w` varchar(255) DEFAULT NULL COMMENT '投票缩略图宽度',
  `vote_thumb_h` varchar(255) DEFAULT NULL COMMENT '投票缩略图高度',
  `top_img` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='设置' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `v_site`
--

INSERT INTO `v_site` (`id`, `vote_thumb_w`, `vote_thumb_h`, `top_img`, `url`) VALUES
(1, '200', '150', '2016-05-08/572f058e91849.jpg', 'http://122.114.158.220/');

-- --------------------------------------------------------

--
-- 表的结构 `v_voteimglist`
--

CREATE TABLE IF NOT EXISTS `v_voteimglist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `sort` tinyint(3) DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `v_voteimglist`
--


-- --------------------------------------------------------

--
-- 表的结构 `v_votes`
--

CREATE TABLE IF NOT EXISTS `v_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT '0' COMMENT '0 单选 1多选',
  `selectminunm` tinyint(3) DEFAULT NULL COMMENT '最少选择数',
  `selectunm` tinyint(3) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  `img` varchar(255) DEFAULT NULL,
  `ip_lock` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1锁定ip',
  `begin_time` varchar(15) DEFAULT NULL COMMENT '开始时间',
  `end_time` varchar(15) DEFAULT NULL COMMENT '结束时间',
  `pub_time` varchar(15) DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `v_votes`
--

INSERT INTO `v_votes` (`id`, `type`, `selectminunm`, `selectunm`, `title`, `content`, `img`, `ip_lock`, `begin_time`, `end_time`, `pub_time`) VALUES
(5, '1', 3, 10, '黄河水利职业技术学院2016年十大新闻评选', '<p>黄河水利职业技术学院2016年度十大新闻评选活动正式启动，在此我们列出了25条候选新闻，希望您在百忙之中抽出时间参加网上投票，评选您心目中的2016年度校园十大新闻。<br/></p><p>评选具体要求：</p><p>（1）请您在备选项前的方框内打勾，最多不得超过10项。</p><p>（2）每个IP地址每天只能投票一次。</p><p>（3）投票时间：2017.01.05 12:00--2017.01.12 23:55</p><p><span style="color: rgb(70, 70, 70); font-family: 宋体, 微软雅黑, Arial, Helvetica, sans-serif; font-size: 12px; line-height: 10px; widows: 1; background-color: rgb(255, 255, 255);"></span></p>', NULL, 1, '2018-01-05', '2018-01-12', '1514215657'),
(7, '1', 3, 10, '最感兴趣的时事新闻评选', '<p><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 13px; line-height: 20.02px; background-color: rgb(255, 255, 255);">关注最新时政要闻热点报道,客观、理性的</span><span style="color: rgb(204, 0, 0); font-family: arial; font-size: 13px; line-height: 20.02px; background-color: rgb(255, 255, 255);">时事新闻</span><span style="color: rgb(51, 51, 51); font-family: arial; font-size: 13px; line-height: 20.02px; background-color: rgb(255, 255, 255);">评论。</span></p>', NULL, 1, '2017-04-06', '2017-07-06', '1496563400');

-- --------------------------------------------------------

--
-- 表的结构 `v_votes_ip`
--

CREATE TABLE IF NOT EXISTS `v_votes_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vote_id` int(11) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `time` varchar(15) DEFAULT NULL COMMENT '时间',
  `end_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='ip状况' AUTO_INCREMENT=296 ;

--
-- 转存表中的数据 `v_votes_ip`
--


-- --------------------------------------------------------

--
-- 表的结构 `v_votes_option`
--

CREATE TABLE IF NOT EXISTS `v_votes_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(255) DEFAULT NULL COMMENT '分类ID',
  `count` int(11) DEFAULT '0' COMMENT '得票数',
  `vote_id` int(11) NOT NULL DEFAULT '0' COMMENT '投票Id',
  `options` varchar(255) DEFAULT NULL COMMENT '选项名称',
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `optiondesc` varchar(255) DEFAULT NULL COMMENT '投票描述',
  `content` text COMMENT '内容',
  `pubtime` varchar(10) DEFAULT NULL COMMENT '添加时间',
  `url` varchar(255) DEFAULT NULL,
  `urltitle` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='投票选项' AUTO_INCREMENT=100 ;

--
-- 转存表中的数据 `v_votes_option`
--

INSERT INTO `v_votes_option` (`id`, `class`, `count`, `vote_id`, `options`, `image`, `optiondesc`, `content`, `pubtime`, `url`, `urltitle`) VALUES
(58, '23', 59, 5, '我校当选河南省国家示范骨干高职院校教改研究协作会主任单位', '2017-01-06/586eeb48057dd_200_150.jpg', '', '<p><span style="margin: 0px; padding: 0px; max-width: 100%; color: rgb(51, 51, 51); font-family: &#39;Hiragino Sans GB&#39;, &#39;Microsoft YaHei&#39;, Arial, sans-serif; text-align: justify; widows: auto; line-height: 2em; font-size: 14px; box-sizing: border-box !important; word-wrap: break-word !important; background-color: rgb(255, 255, 255);"></span></p><p style="text-indent: 32px;line-height: 150%"><span style="line-height: 150%; font-family: 宋体; font-size: 12px;">由我校发起成立的河南省国家级示范骨干高职院校教改研究协作会，坚持“交流、研讨、协作、共进”的发展理念，旨在推动省内国家级示范骨干高职院校实现优势互补，共创河南高职特色品牌，共同推进我省高职教育教学改革与发展。协作会第二次工作会议上，我校被推举为河南省国家示范骨干高职院校教改研究协作会主任单位。</span></p><p style="text-indent: 32px;line-height: 150%"><span style="line-height: 150%; font-family: 宋体; font-size: 12px;">相关新闻链接：</span></p><p style="text-indent: 32px; line-height: 150%;"><a href="http://hhts.yrcti.edu.cn/newshhts_news/show-6372.html" target="_blank"><span style="line-height: 150%; font-family: 宋体; font-size: 12px;">我校当选河南省国家示范骨干高职院校教改研究协作会主任单位</span></a></p>', '1514215685', '', ''),
(59, '23', 38, 5, '我校党委中心组创新“四个一”模式，提升学习效果', '2017-01-06/586eeb8295e1a_200_150.jpg', '', '<p style="text-indent: 32px;line-height: 10px"><span style="line-height: 150%; font-family: 宋体; font-size: 12px;">2016年，校党委中心组创新“四个一”（学习一个主题，研究一个问题，达成一个共识，推动一项工作）学习模式，不断提升学习实效。校党委中心组围绕“两学一做”学习教育，就毛泽东同志《党委会的工作方法》、习近平总书记“七一”重要讲话精神、十八届六中全会精神等内容，先后组织8次专题（扩大）学习活动。</span></p><p style="text-indent: 32px;line-height: 10px"><span style="line-height: 150%; font-family: 宋体; font-size: 12px;">相关新闻链接：</span></p><p style="text-indent: 32px; line-height: 10px;"><a href="http://www.yrcti.edu.cn/hhts/newshhts_news/show-13266.html" target="_blank"><span style="line-height: 150%; font-family: 宋体; font-size: 12px;">校党委中心组（扩大）专题学习毛泽东同志《党委会的工作方法》</span><span style="line-height: 150%; font-family: 宋体; font-size: 12px;">&nbsp;&nbsp;&nbsp;</span></a><span style="line-height: 150%; font-family: 宋体; font-size: 12px;">&nbsp;&nbsp;</span></p><p style="text-indent: 32px; line-height: 10px;"><a href="http://www.yrcti.edu.cn/hhts/newshhts_news/show-16184.html" target="_blank"><span style="line-height: 150%; font-family: 宋体; font-size: 12px;">校党委中心组专题学习习近平总书记“七一”重要讲话精神</span></a></p><p style="text-indent: 32px; line-height: 10px;"><a href="http://www.yrcti.edu.cn/hhts/newshhts_news/show-18727.html" target="_blank"><span style="font-family: 宋体; font-size: 12px;">党委中心组召开学习贯彻十八届六中全会精神（扩大）专题会</span></a></p>', '1514215710', '', '我校党委中心组创新“四个一”模式，提升学习效果'),
(60, '23', 16, 5, '我校获评“全省普通大中专毕业生就业创业工作先进单位”', '2017-01-06/586eebb623e72_200_150.jpg', '', '<p style="line-height: normal; text-indent: 2em;"><span style="font-size: 12px;">在河南省2016年高校毕业生就业创业工作会议上，我校获评“全省普通大中专毕业生就业创业工作先进单位”。会上，我校党委副书记、校长刘国际以《精细指导、精准服务，提高毕业生就业竞争力》为题做典型发言。</span></p><p style="line-height: normal; text-indent: 2em;"><span style="font-size: 12px;">相关新闻链接：</span></p><p style="line-height: normal; text-indent: 2em;"><a href="http://www.yrcti.edu.cn/hhts/newshhts_news/show-13222.html" target="_blank"><span style="font-size: 12px;">我校获评“全省普通大中专毕业生就业创业工作先进单位”</span></a></p>', '1514215728', '', '我校获评“全省普通大中专毕业生就业创业工作先进单位”'),
(61, '23', 16, 5, '我校&quot;学做并重&quot; 扎实推进&quot;两学一做&quot;学习教育', '2017-01-06/586eed72cf835_200_150.png', '', '<p style="line-height: normal; text-indent: 2em;">5月19日，我校召开“两学一做”学习教育动员会。校党委书记许琰以专题党课形式，就开展好我校“两学一做”学习教育做深入动员部署。6月21日，省委高校工委“两学一做”学习教育第四督查组到我校就“两学一做”学习教育开展情况进行督查。我校扎实开展“两学一做”学习教育活动，取得良好成效。</p><p style="line-height: normal; text-indent: 2em;">相关新闻链接：</p><p style="line-height: normal; text-indent: 2em;"><a href="http://www.yrcti.edu.cn/hhts/newshhts_news/show-14170.html" target="_blank">我校召开“两学一做”学习教育动员会</a></p><p><br/></p><p><br/></p><p><br/></p>', '1514215720', '', ''),
(95, '18', 101, 7, '4艘渔船偷捕14万公斤鱼 船老大狡辩', '2017-06-04/5933bf49d5ba5_200_150.jpg', '4艘渔船偷捕14万公斤鱼 船老大狡辩', '<p><span style="font-family: simSun, &quot;Arial Narrow&quot;, HELVETICA; font-size: 14px; line-height: 26px; background-color: rgba(245, 245, 245, 0.6);">6月2日晚，连云港海监维权执法基地里灯火通明，江苏省渔政监督总队直属支队执法人员正在连夜清点被查扣的外省籍渔船非法捕捞渔获物，总数6800箱、14万公斤的鳀鱼和方氏云鳚、皮条鱼（又称海泥鳅）等非法捕捞渔获物在码头上堆积如山，现场触目惊心。被查扣的4艘各100多吨位的非法捕捞船已转押至连云港海监渔政执法基地，4艘大船系泊码头，一字排开，而船舷被人为涂掉的船号，更让此次违法捕捞涉刑案的性质更加恶劣！</span></p>', '1496563529', 'http://society.qq.com/a/20170603/019118.htm#p=1', '4艘渔船偷捕14万公斤鱼 船老大狡辩'),
(96, '18', 100, 7, '特朗普甩卖房产 2亿豪宅内景曝光', '2017-06-04/5933bf78b1560_200_150.jpg', '美国总统特朗普正悄然将其位于加勒比岛上的房产Le Chateau des Palmiers挂在市场上销售，售价是2800万美元（约合人民币1.9亿元）。近日，国外网站曝光了这一豪宅的内外风景。​', '<p><span style="font-family: &quot;Microsoft Yahei&quot;, Helvetica, sans-serif; line-height: 28px; background-color: rgb(255, 255, 255);">腾讯财经讯&nbsp;据CNBC文章，美国总统特朗普正悄然将其位于加勒比岛上的房产Le&nbsp;Chateau&nbsp;des&nbsp;Palmiers挂在市场上销售，售价是2800万美元（约合人民币1.9亿元）。近日，国外网站曝光了这一豪宅的内外风景。</span></p>', '1496563576', 'http://finance.qq.com/a/20170603/021581.htm#p=1', '特朗普甩卖房产 2亿豪宅内景曝光'),
(97, '18', 22, 7, '广场舞大妈抢占篮球场之后', '2017-06-04/5933c03f8bb1b_200_150.jpg', '广场舞大妈抢占篮球场之后', '<p><span style="color: rgb(102, 102, 102); font-family: &quot;Microsoft Yahei&quot;, 微软雅黑, SimSun, 宋体, &quot;Arial Narrow&quot;, serif; font-size: 14px; line-height: 28px; background-color: rgb(255, 255, 255);">2017年6月3日报道，近日，篮球少年与广场舞大妈抢球场事件引发关注。6月2日，洛阳王城公园管理方暂时关闭了篮球场，贴出公告：“为保障游客人身安全，防止突发事件发生，按公安部门要求，篮球场暂停使用。”王城公园一负责人表示，园方进行了协调，但双方都没有让步。</span></p>', '1496564392', '', '广场舞大妈抢占篮球场之后'),
(98, '18', 40, 7, '普京自曝这些年经历5起暗杀:躲过暗杀 全靠保镖', '2017-06-04/5933c08da280a_200_150.jpg', '普京自曝这些年经历5起暗杀:躲过暗杀 全靠保镖', '<p style="margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;">俄罗斯总统普京即将出现在美国一档为他量身定做的访谈节目上。普京接受美国著名导演奥利弗·斯通采访时自曝，自己在三届总统任期内发生过大约5起暗杀事件。</p><p style="margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;"><br/></p><p style="margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;">　</p>', '1496564389', 'http://news.sina.com.cn/w/zx/2017-06-04/doc-ifyfuzym7851946.shtml', '普京自曝这些年经历5起暗杀:躲过暗杀 全靠保镖'),
(99, '18', 50, 7, '下半年这几件大事要发生:全国可异地办理身份证', '2017-06-04/5933c152ecc8d_200_150.jpg', '下半年这几件大事要发生:全国可异地办理身份证', '<p style="margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;"><strong>申领、换领二代身份证需20元</strong></p><p style="margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;">　　根据相关规定，公安机关对申领、换领第二代居民身份证的居民收取工本费每证20元，对丢失补领或损坏换领第二代居民身份证的居民收取工本费每证40元。公安机关为居民办理临时第二代居民身份证收费标准为每证10元。</p><p><br/></p>', '1496564385', 'http://news.sina.com.cn/c/nd/2017-06-04/doc-ifyfuzny2934933.shtml', '下半年这几件大事要发生:全国可异地办理身份证');
