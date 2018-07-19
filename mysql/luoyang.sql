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
-- 数据库: `luoyang`
--

-- --------------------------------------------------------

--
-- 表的结构 `f_ad`
--

CREATE TABLE IF NOT EXISTS `f_ad` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sort` tinyint(4) DEFAULT NULL COMMENT '排序',
  `cate_id` tinyint(4) DEFAULT NULL COMMENT '分类',
  `title` varchar(150) NOT NULL COMMENT '标题',
  `link` varchar(100) NOT NULL COMMENT '链接',
  `desc` varchar(500) NOT NULL COMMENT '描述',
  `content` text NOT NULL COMMENT '内容',
  `pub_time` int(10) DEFAULT NULL COMMENT '创建时间',
  `thumb` char(250) DEFAULT NULL COMMENT '缩略图片',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `f_ad`
--

INSERT INTO `f_ad` (`id`, `sort`, `cate_id`, `title`, `link`, `desc`, `content`, `pub_time`, `thumb`) VALUES
(6, 0, 3, '首页督查督办图', 'http://xs.gongyimei.com/Article-show-id-16.html', '', '', 1487473261, '2017-03-20/58cf3ec169d73.png'),
(7, 0, 2, '首页通栏广告图', 'http://xs.gongyimei.com/Article-show-id-16.html', '', '', 1487732681, '2017-03-20/58cf3e7cc8412.png'),
(10, 0, 1, '首页小轮播图一', 'http://xs.gongyimei.com/Article-show-id-16.html', '', '', 1489976823, '2017-03-20/58cf3df82344c.png'),
(11, 0, 1, '首页小轮播图二', 'http://xs.gongyimei.com/Article-show-id-16.html', '', '', 1489976851, '2017-03-20/58cf3e1366bdc.png'),
(12, 0, 1, '首页小轮播图三', 'http://xs.gongyimei.com/Article-show-id-16.html', '', '', 1489976877, '2017-03-20/58cf3e2d1dc90.png'),
(13, 0, 4, '学习、服务、效率、创新、和谐、节约', '', '', '', 1492151623, '2017-04-14/58f06d472756c.png');

-- --------------------------------------------------------

--
-- 表的结构 `f_admin`
--

CREATE TABLE IF NOT EXISTS `f_admin` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `pwd` varchar(60) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='后台管理员' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `f_admin`
--

INSERT INTO `f_admin` (`id`, `uname`, `pwd`, `role`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- 表的结构 `f_arrears_reason`
--

CREATE TABLE IF NOT EXISTS `f_arrears_reason` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `reson` varchar(50) NOT NULL COMMENT '欠款原因',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='欠款原因' AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `f_arrears_reason`
--

INSERT INTO `f_arrears_reason` (`id`, `reson`) VALUES
(1, '保险相关'),
(2, '借贷违约'),
(3, '担保违约'),
(4, '买卖欠款'),
(5, '服务欠款'),
(6, '租赁欠款'),
(7, '劳动关系'),
(8, '侵权伤害'),
(9, '税务拖欠'),
(10, '公共事业欠费');

-- --------------------------------------------------------

--
-- 表的结构 `f_article`
--

CREATE TABLE IF NOT EXISTS `f_article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sort` tinyint(3) DEFAULT '0',
  `cate_id` int(10) NOT NULL COMMENT '栏目id',
  `title` varchar(150) NOT NULL COMMENT '标题',
  `click` int(10) NOT NULL DEFAULT '1' COMMENT '点记录',
  `desc` varchar(200) DEFAULT NULL COMMENT '描述',
  `content` text NOT NULL COMMENT '内容',
  `pub_time` varchar(15) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `attach` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `title_2` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='文章' AUTO_INCREMENT=139 ;

--
-- 转存表中的数据 `f_article`
--

INSERT INTO `f_article` (`id`, `sort`, `cate_id`, `title`, `click`, `desc`, `content`, `pub_time`, `thumb`, `attach`) VALUES
(6, 0, 8, '信息公开', 2, '信息公开信息公开信息公开', '<p>信息公开信息公开信息公开</p>', '1489913412', NULL, NULL),
(124, 0, 13, '洛阳理工学院发文处理流程', 6, '', '<p><br/></p><p><br/></p><p style="text-align: center;"><img src="/Uploads/image/2017-06-27/1498552492304988.png" title="1498552492304988.png" alt="02.png"/></p>', '1498552500', NULL, NULL),
(10, 0, 14, '下载中心', 1, '下载中心下载中心', '<p>下载中心下载中心</p>', '1489916792', NULL, NULL),
(12, 0, 8, '洛阳理工学院2017届毕业生春季就业双选', 2, '洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选', '<p>洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选</p>', '1489929764', NULL, NULL),
(13, 0, 8, '洛阳理工学院2017届毕业生春季就业双选', 2, '洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选', '<p>洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选</p>', '1489929777', NULL, NULL),
(14, 0, 8, '洛阳理工学院2017届毕业生春季就业双选', 2, '洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选', '<p>洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选</p>', '1489929789', NULL, NULL),
(15, 0, 8, '洛阳理工学院2017届毕业生春季就业双选', 2, '洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选', '<p>洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选</p>', '1489929803', NULL, NULL),
(16, 0, 8, '洛阳理工学院2017届毕业生春季就业双选', 3, '洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选', '<p>洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选</p>', '1489929816', NULL, NULL),
(17, 0, 15, '洛阳理工学院2017届毕业生春季就业双选', 4, '洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选', '<p>洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选</p>', '1489929852', NULL, NULL),
(18, 0, 15, '洛阳理工学院2017届毕业生春季就业双选', 2, '洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选', '<p>洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选</p>', '1489929864', NULL, NULL),
(19, 0, 15, '洛阳理工学院2017届毕业生春季就业双选', 7, '洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选', '<p>洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选</p>', '1489929875', NULL, NULL),
(20, 0, 15, '洛阳理工学院2017届毕业生春季就业双选', 13, '洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选', '<p>洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选</p>', '1489929887', NULL, NULL),
(21, 0, 15, '洛阳理工学院2017届毕业生春季就业双选', 4, '洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选', '<p>洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选</p>', '1489929916', NULL, NULL),
(66, 0, 28, '中共河南省委高校工委关于第六届高校辅导员职业能力大赛情况的通报', 3, '中共河南省委高校工委关于第六届高校辅导员职业能力大赛情况的通报.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498476419702469.doc" title="中共河南省委高校工委关于第六届高校辅导员职业能力大赛情况的通报.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">中共河南省委高校工委关于第六届高校辅导员职业能力大赛情况的通报.doc</span></a></p><p><br/></p>', '1498447587', NULL, '2017-06-26/59507ee3d250b.doc'),
(67, 0, 28, '中共河南省委高校工委 河南省教育厅关于公布全省高校心理健康教育示范单位的通知', 7, '中共河南省委高校工委 河南省教育厅关于公布全省高校心理健康教育示范单位的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498476528420054.doc" title="中共河南省委高校工委 河南省教育厅关于公布全省高校心理健康教育示范单位的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">中共河南省委高校工委 河南省教育厅关于公布全省高校心理健康教育示范单位的通知.doc</span></a></p><p><br/></p>', '1498447608', NULL, NULL),
(122, 0, 28, '中共河南省委高校工委 河南省教育厅关于公布全省高校心理健康教育示范单位的通知', 9, '中共河南省委高校工委 河南省教育厅关于公布全省高校心理健康教育示范单位的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498476635810443.doc" title="中共河南省委高校工委 河南省教育厅关于公布全省高校心理健康教育示范单位的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">中共河南省委高校工委 河南省教育厅关于公布全省高校心理健康教育示范单位的通知.doc</span></a></p><p><br/></p>', '1498476644', NULL, NULL),
(123, 0, 13, '党委印章管理工作流', 10, '（适用于党委公章、党委（副）书记私章，党委办公室印章参照执行）', '<p style="text-align:center"><span style="font-family: 宋体, SimSun; font-size: 20px;">（适用于党委公章、党委（副）书记私章，党委办公室印章参照执行）</span></p><p><span style="font-family: 宋体, SimSun; font-size: 20px;"><br/></span></p><p style="text-align: center;"><span style="font-family: 宋体, SimSun; font-size: 20px;"><br/></span></p><p style="text-align: center;"><img src="/Uploads/image/2017-06-27/1498553451855185.png" title="1498553451855185.png" alt="1.png"/></p>', '1498552348', NULL, NULL),
(31, 0, 15, '洛阳理工学院2017届毕业生春季就业双选', 6, '洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选', '<p>洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选</p>', '1489930207', NULL, NULL),
(32, 0, 16, '洛阳理工学院2017届毕业生春季就业双选', 18, '洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选', '<p>洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选</p>', '1489930219', NULL, NULL),
(33, 0, 17, '洛阳理工学院2017届毕业生春季就业双选', 17, '洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选', '<p>洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选洛阳理工学院2017届毕业生春季就业双选</p>', '1489930232', NULL, NULL),
(34, 0, 14, '米亚', 1, '米亚米亚米亚', '<p>米亚米亚米亚</p>', '1489978464', NULL, '2017-03-20/58cf446062732.docx'),
(35, 0, 19, '我校党群分会开展“三八”妇女节志愿服务活动', 7, '春暖花开，微风和煦。3月17日下午，我校党群分会组织女教师到洛阳龙门站开展“三八”妇女节志愿服务活动，机关二十余名女教师参加了此次活动。活动人员到达洛阳龙门站后，机关党委书记田丽霞首先与车站党委书记张志江交流了此次志愿服务活动的计划和目的，张书记对机关女教师们的到来表示欢迎和感谢，双方还就即将到来的牡丹花会期间我校志愿者们前往车站进行志愿服务活动等事宜进行商谈。洛阳龙门站讲解员带领大家参观车站的基', '<p>春暖花开，微风和煦。3月17日下午，我校党群分会组织女教师到洛阳龙门站开展“三八”妇女节志愿服务活动，机关二十余名女教师参加了此次活动。</p><p>活动人员到达洛阳龙门站后，机关党委书记田丽霞首先与车站党委书记张志江交流了此次志愿服务活动的计划和目的，张书记对机关女教师们的到来表示欢迎和感谢，双方还就即将到来的牡丹花会期间我校志愿者们前往车站进行志愿服务活动等事宜进行商谈。</p><p>洛阳龙门站讲解员带领大家参观车站的基础设施，并热情细致地讲解了车站各种服务机器的使用技巧以及乘客们在遇到一些特殊问题时的应对措施。讲解结束后，机关女教师们头戴小红帽、身穿红马甲，分为四组配合车站工作人员，分别在售票厅、进站口、出战口和贵宾休息室帮助乘客购票、取票、进出站。热情地协助乘客们使用自动售票机购买车票，引导手持蓝色车票的乘客们通过轧机验道口检票出站等。志愿服务活动结束后。机关女教师们还与讲解员在车站前合影留念。</p><p>参与志愿服务的机关女教师们纷纷表示，此次志愿服务活动非常新奇有趣，以前来到车站都是作为一名乘客，而这次是作为志愿者帮助乘客乘车，能够为他人服务，感到很有意义。机关女教师们还对车站进一步完善服务设施提出了自己的想法和建议。&nbsp; <span style="font-size:16px"><span style="color:#000000">&nbsp;</span></span></p><p><br/></p>', '1492152893', NULL, NULL),
(36, 0, 19, '精神文明建设分工负责制度', 9, '一、建立精神文明建设责任制和分工负责制，明确分工、明确任务、明确责任、明确奖惩。二、主要负责人总揽精神文明建设的全局工作，搞好总体决策、组织、指挥、落实工作；领导小组成员负责职责范围内的精神文明建设工作，并对主要的活动任务挂靠包干，负责落实。三、领导小组是精神文明建设领导组织的办事机构，主要负责组织、指导、协调、监督、检查精神文明建设工作，并抓好具体任务的贯彻落实。', '<p>一、建立精神文明建设责任制和分工负责制，明确分工、明确任务、明确责任、明确奖惩。</p><p>二、主要负责人总揽精神文明建设的全局工作，搞好总体决策、组织、指挥、落实工作；领导小组成员负责职责范围内的精神文明建设工作，并对主要的活动任务挂靠包干，负责落实。</p><p>三、领导小组是精神文明建设领导组织的办事机构，主要负责组织、指导、协调、监督、检查精神文明建设工作，并抓好具体任务的贯彻落实。</p><p><br/></p>', '1492153018', NULL, NULL),
(37, 0, 20, '我校召开党委中心组（扩大）学习会 ', 6, '&nbsp;4月13日上午，我校2016年党风廉政建设工作会议在王城校区办公楼报告厅召开。学校领导苟义伦、屈凌波、陈岩、葛玻、董延寿、韩振英、曹国杰、姜涛、王晓峰、丁梧秀、张文选、曾涛、庞彩霞出席会议。全校中层干部、纪委委员、二级党组织纪检委员参加了会议。会议由校党委副书记、校长屈凌波主持。&nbsp; &nbsp; 纪委书记曹国杰总结回顾了2016年学校党风廉政建设工作；对省高校纪工委、驻省教育', '<p>&nbsp;4月13日上午，我校2016年党风廉政建设工作会议在王城校区办公楼报告厅召开。学校领导苟义伦、屈凌波、陈岩、葛玻、董延寿、韩振英、曹国杰、姜涛、王晓峰、丁梧秀、张文选、曾涛、庞彩霞出席会议。全校中层干部、纪委委员、二级党组织纪检委员参加了会议。会议由校党委副书记、校长屈凌波主持。<br/>&nbsp; &nbsp; 纪委书记曹国杰总结回顾了2016年学校党风廉政建设工作；对省高校纪工委、驻省教育厅纪检组印发的《党的十八大以来全省教育系统违规违纪违法典型案例汇编》中的典型案例进行了通报；按照省纪委十届二次全会和全省教育系统党风廉政建设工作会议精神，结合我校实际，安排部署了2017年的党风廉政建设工作任务。<br/>&nbsp; &nbsp; 党委书记苟义伦对去年我校党风廉政建设取得成效给予了充分肯定，并对贯彻落实好今年的党风廉政建设各项工作提出三点要求：一要把握精神实质，提高政治站位。充分认识党的十八大以来党中央推进全面从严治党新形势，准确把握中央和省委继续把党风廉政建设和反腐败斗争引向深入的部署要求，增强做好我校党风廉政建设和反腐败斗争的责任感和使命感，以永远在路上的恒心和韧劲，拿出得力措施，把各项工作做深做细做实。二要突出工作重点，坚定不移推进党风廉政建设。重点抓好党的十八届六中全会精神贯彻落实；紧盯腐败易发多发的重点领域、重要岗位、关键环节，切实提高反腐败工作的针对性和实效性；严格执纪审查，严肃查处群众身边的不正之风；加强领导和支持纪检监察工作，实践用好监督执纪“四种形态”，推动问责制度落地生根。三要强化责任担当，推动全面从严治党向纵深发展。严格落实管党治党责任，严明党的政治纪律和政治规矩，严肃党内政治生活，强化党内监督，不断提高管党治党水平。重点推进明晰责任清单工作，压实领导班子的集体责任、党组织书记的第一责任人责任和班子成员的“一岗双责”；驰而不息纠正“四风”，持续深化作风建设；坚持问题导向，对照省委巡视反馈意见，进一步落实好问题整改，防止问题纠而复发。<br/>&nbsp; &nbsp; 党委副书记、校长屈凌波主持会议时指出：今天的会议是经过校党委研究召开的一次非常重要的会议。会后，纪委还要专门组织校领导与分管各单位、各部门的党政负责人进行廉政谈话，签订《党风廉政建设目标责任书》，希望同志们结合工作实际，切实抓好贯彻落实。他强调，2017年学校党委把全面从严治党、深入开展“两学一做”学习教育、全力推进示范校建设和工作落实列入全局性重点工作，全校党员干部，特别是领导干部要全面贯彻中央、省委和学校党委决策部署，牢固树立政治意识、大局意识、核心意识、看齐意识，坚定不移地把党风廉政建设作为重大政治任务，切实履行好“一岗双责”和职责范围内的主体责任，为学校的建设和发展做出新的贡献，以更加优异的成绩迎接十九大胜利召开。</p>', '1492153505', NULL, NULL),
(38, 0, 20, '我校召开2017年领导干部个人有关事项报告工作部署培训会 ', 5, '4月13日上午，我校在王城校区办公楼二楼报告厅召开2017年领导干部个人有关事项报告工作部署培训会。校领导苟义伦、屈凌波、陈岩、葛玻、董延寿、韩振英、曹国杰、姜涛、王晓峰、丁梧秀、张文选、曾涛、庞彩霞出席会议，副处级以上干部参加会议。会议由校党委书记苟义伦主持。&nbsp; &nbsp; 校党委副书记陈岩对2017年领导干部个人有关事项报告工作进行了安排部署。他以“学习贯彻‘两项法规’，做好201', '<p>4月13日上午，我校在王城校区办公楼二楼报告厅召开2017年领导干部个人有关事项报告工作部署培训会。校领导苟义伦、屈凌波、陈岩、葛玻、董延寿、韩振英、曹国杰、姜涛、王晓峰、丁梧秀、张文选、曾涛、庞彩霞出席会议，副处级以上干部参加会议。会议由校党委书记苟义伦主持。<br/>&nbsp; &nbsp; 校党委副书记陈岩对2017年领导干部个人有关事项报告工作进行了安排部署。他以“学习贯彻‘两项法规’，做好2017年领导干部个人有关事项报告工作”为切入点，围绕准确把握两项法规的主要精神和内容进行了解读，就如何填报《领导干部个人有关事项报告表》进行了说明。他指出：一要准确把握报告对象范围；二要准确把握报告事项内容；三要准确把握抽查核实要求；四要准确把握查核结果处理政策。同时，对认真做好两项法规的贯彻执行提出了明确要求：一要抓好责任落实，这是贯彻执行两项法规的重要保证；二要抓好学习培训，通过层层开展学习培训，进一步提高认识、形成共识，打牢贯彻执行两项法规的思想基础；三要抓好组织实施，认真做好集中填报工作，加强抽查核实，强化查核结果运用，抓好监督检查。<br/>&nbsp; &nbsp; 最后，陈岩指出：贯彻执行好两项法规，做好领导干部个人有关事项报告工作，责任重大、意义重大。我们要认真贯彻中央坚定推进全面从严治党的部署要求，牢记职责使命，践行忠诚干净担当，贯彻执行好两项法规，做好领导干部个人有关事项报告工作。</p><p><br/></p>', '1492153535', NULL, NULL),
(39, 0, 20, '我校召开2017年党风廉政建设工作会议 ', 4, '4月13日上午，我校2016年党风廉政建设工作会议在王城校区办公楼报告厅召开。学校领导苟义伦、屈凌波、陈岩、葛玻、董延寿、韩振英、曹国杰、姜涛、王晓峰、丁梧秀、张文选、曾涛、庞彩霞出席会议。全校中层干部、纪委委员、二级党组织纪检委员参加了会议。会议由校党委副书记、校长屈凌波主持。&nbsp; &nbsp; 纪委书记曹国杰总结回顾了2016年学校党风廉政建设工作；对省高校纪工委、驻省教育厅纪检组印发', '<p>4月13日上午，我校2016年党风廉政建设工作会议在王城校区办公楼报告厅召开。学校领导苟义伦、屈凌波、陈岩、葛玻、董延寿、韩振英、曹国杰、姜涛、王晓峰、丁梧秀、张文选、曾涛、庞彩霞出席会议。全校中层干部、纪委委员、二级党组织纪检委员参加了会议。会议由校党委副书记、校长屈凌波主持。<br/>&nbsp; &nbsp; 纪委书记曹国杰总结回顾了2016年学校党风廉政建设工作；对省高校纪工委、驻省教育厅纪检组印发的《党的十八大以来全省教育系统违规违纪违法典型案例汇编》中的典型案例进行了通报；按照省纪委十届二次全会和全省教育系统党风廉政建设工作会议精神，结合我校实际，安排部署了2017年的党风廉政建设工作任务。<br/>&nbsp; &nbsp; 党委书记苟义伦对去年我校党风廉政建设取得成效给予了充分肯定，并对贯彻落实好今年的党风廉政建设各项工作提出三点要求：一要把握精神实质，提高政治站位。充分认识党的十八大以来党中央推进全面从严治党新形势，准确把握中央和省委继续把党风廉政建设和反腐败斗争引向深入的部署要求，增强做好我校党风廉政建设和反腐败斗争的责任感和使命感，以永远在路上的恒心和韧劲，拿出得力措施，把各项工作做深做细做实。二要突出工作重点，坚定不移推进党风廉政建设。重点抓好党的十八届六中全会精神贯彻落实；紧盯腐败易发多发的重点领域、重要岗位、关键环节，切实提高反腐败工作的针对性和实效性；严格执纪审查，严肃查处群众身边的不正之风；加强领导和支持纪检监察工作，实践用好监督执纪“四种形态”，推动问责制度落地生根。三要强化责任担当，推动全面从严治党向纵深发展。严格落实管党治党责任，严明党的政治纪律和政治规矩，严肃党内政治生活，强化党内监督，不断提高管党治党水平。重点推进明晰责任清单工作，压实领导班子的集体责任、党组织书记的第一责任人责任和班子成员的“一岗双责”；驰而不息纠正“四风”，持续深化作风建设；坚持问题导向，对照省委巡视反馈意见，进一步落实好问题整改，防止问题纠而复发。<br/>&nbsp; &nbsp; 党委副书记、校长屈凌波主持会议时指出：今天的会议是经过校党委研究召开的一次非常重要的会议。会后，纪委还要专门组织校领导与分管各单位、各部门的党政负责人进行廉政谈话，签订《党风廉政建设目标责任书》，希望同志们结合工作实际，切实抓好贯彻落实。他强调，2017年学校党委把全面从严治党、深入开展“两学一做”学习教育、全力推进示范校建设和工作落实列入全局性重点工作，全校党员干部，特别是领导干部要全面贯彻中央、省委和学校党委决策部署，牢固树立政治意识、大局意识、核心意识、看齐意识，坚定不移地把党风廉政建设作为重大政治任务，切实履行好“一岗双责”和职责范围内的主体责任，为学校的建设和发展做出新的贡献，以更加优异的成绩迎接十九大胜利召开。</p>', '1492153560', NULL, NULL),
(65, 0, 1, '两办工作职责', 65, '党委办公室工作职责1、组织安排学校党委各类会议，负责会议记录，编发会议纪要、决定、批复和通报，督促、协调会议重要决策的贯彻落实。2、负责校领导重要讲话和重要文稿的起草；负责学校重要文件的起草、校核和印发工作。3、负责上级机关来文的收发、登记、拟办、传阅工作；负责上级公文，学校发文及文书的归档工作。&nbsp;4、组织开展政策研究和工作调研，为党委决策提供参考。5、督办学校有关规划、决定、政策的贯彻', '<p style="line-height:27px"><span style="font-size: 18px; color: rgb(0, 0, 0);"><strong><span style="font-size: 18px; font-family: 仿宋_GB2312;"><br/></span></strong></span></p><p style="line-height:27px"><span style="font-size: 18px; color: rgb(0, 0, 0);"><strong><span style="font-size: 18px; font-family: 仿宋_GB2312;">党委办公室工作职责</span></strong></span></p><p style="line-height:27px"><span style="font-size: 18px;"><strong><span style="font-family: 仿宋_GB2312; color: red;"><br/></span></strong></span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">1、组织安排学校党委各类会议，负责会议记录，编发会议纪要、决定、批复和通报，督促、协调会议重要决策的贯彻落实。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">2、负责校领导重要讲话和重要文稿的起草；负责学校重要文件的起草、校核和印发工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 18px;"><span style="font-size: 16px; font-family: 仿宋_GB2312;">3、负责上级机关来文的收发、登记、拟办、传阅工作；负责上级公文，学校发文及文书的归档工作。</span><span style="font-size: 18px; font-family: SimSun, serif;">&nbsp;</span></span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">4、组织开展政策研究和工作调研，为党委决策提供参考。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">5、督办学校有关规划、决定、政策的贯彻实施，并及时向党委报告。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">6、负责机要文件的收发、登记、传阅及保密工作。协助学校保密委员会做好保密工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 18px;"><span style="font-size: 16px; font-family: 仿宋_GB2312;">7、负责学校维稳工作，协调处理突发和重大事件。落实学校维稳工作办公室日常事务工作。</span><span style="font-size: 10px; font-family: Arial, sans-serif; color: rgb(51, 51, 51);">.</span></span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">8、负责学校信息收集、整理和报送工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">9、负责学校党委印章、信笺的管理与使用。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">10、组织协调校党委各部门共同办理的综合性工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">11、协助学校党委领导做好外联工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">12、办理学校党委领导交办的其他事项。</span></p><p style="text-indent:32px;line-height:27px"><br/></p><p style="text-indent:32px;line-height:27px"><br/></p><p><span style="color: rgb(0, 0, 0); font-size: 18px;"><strong><span style="color: rgb(0, 0, 0); font-size: 18px; font-family: 仿宋_GB2312;">校长办公室工作职责</span></strong></span></p><p><span style="color: rgb(0, 0, 0); font-size: 18px;"><strong><span style="color: rgb(0, 0, 0); font-size: 18px; font-family: 仿宋_GB2312;"><br/></span></strong></span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">1、负责起草全校性的行政重点工作计划，并督促实施和检查执行情况。负责协助学校领导调查研究及信息收集工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">2、负责起草学校综合行政报告、总结和决议等文件，组织拟订全校性的规章制度，以学校的名义发布有关行政事项的布告、通告和通知。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">3、负责校长办公会议和行政工作重要会议的组织安排及服务保障工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">4、负责学校重大活动的组织协调工作。负责学校日常综合性事务和行政事务的协调工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">5、负责学校安全工作，组织协调学校综合治理及校园安全、安全生产等工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">6、负责全校性校务公开工作，做好落实学校党委决议和行政部署工作的督促检查。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">7、负责学校综合档案室管理工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">8、负责学校印章、校长印章及合同印章以及法人证、组织机构代码等重要印信的使用，审定校内各部门的印章的刻制，出具院级行政介绍信。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">9、负责校领导接待日的安排工作。处理群众来信，接待群众来访，协调并督办各职能部门的信访落实工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">10、负责接待上级领导机关的检查工作和兄弟院校、合作企业单位领导的来访接待工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">11、负责协调上级来宾、学校领导及学校重大活动的用车服务。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">12、负责学校法律事务的日常管理工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 16px; font-family: 仿宋_GB2312;">13、负责校友办的日常管理工作。</span></p><p style="text-indent: 32px; line-height: 27px;"><span style="font-size: 16px; font-family: 仿宋_GB2312;">14、完成学校领导交办的其他工作。</span></p><p style="text-indent: 32px; line-height: 27px;"><span style="font-size: 16px; font-family: 仿宋_GB2312; color: rgb(0, 0, 0);"><br/></span></p><p style="text-indent: 32px; line-height: 27px;"><span style="font-size: 16px; font-family: 仿宋_GB2312; color: rgb(0, 0, 0);"></span></p><table><tbody><tr class="firstRow"><td width="274" valign="top" style="word-break: break-all;"><span style="font-family: 宋体; font-size: 16px;">岗&nbsp; 位</span></td><td width="274" valign="top" style="word-break: break-all;"><span style="font-family: 宋体; font-size: 16px;">姓&nbsp; 名</span></td><td width="274" valign="top" style="word-break: break-all;"><span style="font-family: 宋体; font-size: 16px;">办公地点</span></td><td width="274" valign="top" style="word-break: break-all;"><span style="font-family: 宋体; font-size: 16px;">办公电话</span></td></tr><tr><td width="274" valign="top" style="word-break: break-all;"><span style="font-size:16px;font-family:宋体">党委办公室主任</span></td><td width="274" valign="top" style="word-break: break-all;"><span style="font-size:16px;font-family:宋体">韩洪涛</span></td><td width="274" valign="top" style="word-break: break-all;"><span style="font-size:16px;font-family:宋体">行政办公楼205室</span></td><td width="274" valign="top" style="word-break: break-all;"><span style="font-size:16px;font-family: 宋体">0379-65928008</span></td></tr><tr><td width="274" valign="top" style="word-break: break-all;"><span style="font-size:16px;font-family:宋体">校长办公室主任</span></td><td width="274" valign="top" style="word-break: break-all;"><span style="font-size:16px;font-family:宋体">王&nbsp; 洛</span></td><td width="274" valign="top" style="word-break: break-all;"><span style="font-size:16px;font-family:宋体">行政办公楼105室</span></td><td width="274" valign="top" style="word-break: break-all;"><span style="font-size:16px;font-family: 宋体">0379-65928009</span></td></tr><tr><td width="274" valign="top" style="word-break: break-all;"><span style="font-size:16px;font-family:宋体">党委办公室副主任</span></td><td width="274" valign="top" style="word-break: break-all;"><span style="font-size:16px;font-family:宋体">徐光秀</span></td><td width="274" valign="top" style="word-break: break-all;"><span style="font-size:16px;font-family:宋体">行政办公楼103室</span></td><td width="274" valign="top" style="word-break: break-all;"><span style="font-size:16px;font-family: 宋体">0379-65928010</span></td></tr><tr><td width="274" valign="top" style="word-break: break-all;"><p><span style="font-size: 16px;">校长办公室副主任</span></p><p><span style="font-size: 16px;">兼校友工作办公室主任</span></p></td><td width="274" valign="top" style="word-break: break-all;"><p style="line-height: 2em;"><span style="font-family: 宋体; line-height: 2em; font-size: 16px;">杜&nbsp; 旻</span><br/></p></td><td width="274" valign="top" style="word-break: break-all;"><p style="line-height: 2em;"><span style="font-family: 宋体; font-size: 16px;">行政办公楼107室</span></p></td><td width="274" valign="top" style="word-break: break-all;"><p style="line-height: 2em;"><span style="font-family: 宋体; font-size: 16px;">0379-659288006</span></p></td></tr><tr><td width="274" valign="top" style="word-break: break-all;"><span style="font-size:16px;font-family:宋体">校长办公室副主任</span></td><td width="274" valign="top" style="word-break: break-all;"><span style="font-size:16px;font-family:宋体">王进平</span></td><td width="274" valign="top" style="word-break: break-all;"><span style="font-size:16px;font-family:宋体">行政办公楼103室</span></td><td width="274" valign="top" style="word-break: break-all;"><span style="font-size:16px;font-family: 宋体">0379-65928019</span></td></tr></tbody></table><p style="text-indent: 32px; line-height: 27px;"><span style="color: rgb(0, 0, 0); font-size: 16px; font-family: 仿宋_GB2312;"><br/></span></p><p style="text-indent: 32px; line-height: 27px;"><span style="font-size: 16px; font-family: 仿宋_GB2312;"><br/></span></p>', '1498447057', NULL, NULL),
(59, 0, 22, '校友工作办公室工作职责 ', 26, '副 科 长：付俊强办公地点：行政办公楼107室办公电话：0379-65928006工作职责：1、负责学校校友工作，负责制定落实全年校友工作计划。2、负责建立和健全校友会工作制度，建立校友工作机制，逐步完善校友会工作网络。3、负责校友会组织建设，协助各地校友建立校友分会并指导其开展工作。4、加强与地方校友会的联系，搭建平台，密切校友与母校的关系，促进校友与母校、校友与校友之间的交流与合作，促进共同发', '<p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;"><br/></span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">副 科 长：付俊强</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">办公地点：行政办公楼107室</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">办公电话：0379-65928006</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">工作职责：</span></p><p style="text-indent:32px;line-height:27px"><span style="font-size: 18px; font-family: 仿宋_GB2312;">1、负责学校校友工作，负责制定落实全年校友工作计划。<br/></span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">2、负责建立和健全校友会工作制度，建立校友工作机制，逐步完善校友会工作网络。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">3、负责校友会组织建设，协助各地校友建立校友分会并指导其开展工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">4、加强与地方校友会的联系，搭建平台，密切校友与母校的关系，促进校友与母校、校友与校友之间的交流与合作，促进共同发展。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">5、做好校友接待工作，协助联系校友企业与学校相关部门业务对接工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">6、负责校友信息数据库的建立和维护工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">7、负责校友及校友企业资料的收集和宣传工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">8、负责校友网站和其他校友信息交流平台的建设和维护工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">9、负责收集、整理校友对学校发展等工作的建议和意见，向学校汇报。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">10、负责向校友通报学校建设、校友会活动及校友发展情况。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">11、协助校友捐赠的接收和管理工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">12、完成领导交办的其他工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">&nbsp;</span></p><p><br/></p>', '1498446694', NULL, NULL),
(60, 0, 21, '两办档案室工作职责', 39, '主 &nbsp; &nbsp;任：王喜凤档 案 员：白茹花办公地点：西校区图书馆楼304室办公电话：0379-65929005工作职责：1、负责制订学校档案工作的各项规章制度、工作细则、岗位责任和档案业务建设规范工作。 2、负责建立健全全校档案工作网络体系，开展专（兼）职档案工作人员的业务培训工作。3、负责指导和监督科技、财务、学籍档案执行部门立卷归档制度，督促学校各部门做好其他各类文件材料的收集', '<p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;"><br/></span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">主 &nbsp; &nbsp;任：王喜凤</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">档 案 员：白茹花</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">办公地点：西校区图书馆楼304室</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">办公电话：0379-65929005</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">工作职责：</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">1、负责制订学校档案工作的各项规章制度、工作细则、岗位责任和档案业务建设规范工作。 </span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">2、负责建立健全全校档案工作网络体系，开展专（兼）职档案工作人员的业务培训工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">3、负责指导和监督科技、财务、学籍档案执行部门立卷归档制度，督促学校各部门做好其他各类文件材料的收集归档工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">4、负责收集、整理、保管、统计全校各门类档案，搞好标准化、规范化、科学化管理。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">5、负责编制各类档案检索工具和参考资料，做好档案信息资源的开发利用。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">6、负责档案室的安全和保密工作，确保档案完整与安全。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">7、组织档案学术研究和交流活动。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">8、完成领导交办的其他工作。</span></p><p><br/></p>', '1498446812', NULL, NULL),
(61, 0, 6, '两办行政科工作职责', 35, '科 &nbsp; &nbsp;长：王 &nbsp;浩办公地点：行政办公楼231室办公电话：0379-65928018工作职责：1、负责学校校级公务接待工作。2、负责学校全校性重要会议和重要活动的会务和服务工作。 3、负责学校两办公务车辆调度使用及管理工作。4、做好校领导和党办、校办的事务性服务工作。5、负责学校日常法律事务服务工作。6、负责联络学校聘请的法律顾问，参与协调解决学校有关的法律事务。7', '<p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;"><br/></span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">科 &nbsp; &nbsp;长：王 &nbsp;浩</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">办公地点：行政办公楼231室</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">办公电话：0379-65928018</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">工作职责：</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">1、负责学校校级公务接待工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">2、负责学校全校性重要会议和重要活动的会务和服务工作。 </span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">3、负责学校两办公务车辆调度使用及管理工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">4、做好校领导和党办、校办的事务性服务工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">5、负责学校日常法律事务服务工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">6、负责联络学校聘请的法律顾问，参与协调解决学校有关的法律事务。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">7、负责学校各类法律文书、合同等文件的初审、备案、归档和管理工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">8、协调法律顾问审核学校拟出台的政策性文件和相关规章制度以及学校各单位拟定的各类合同、协议等法律文书，并提供法律意见。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">9、协调法律顾问为学校所属单位提供政策性意见、法律咨询、法律培训等服务。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">10、完成领导交办的其他工作。</span></p><p><br/></p>', '1498446847', NULL, NULL);
INSERT INTO `f_article` (`id`, `sort`, `cate_id`, `title`, `click`, `desc`, `content`, `pub_time`, `thumb`, `attach`) VALUES
(62, 0, 5, ' 综合科工作职责', 60, '科 &nbsp; &nbsp;长：张正川副 科 长：张丽昕办公地点：行政办公楼110室办公电话：0379-65928000工作职责：1、负责学校各部门的综合协调工作。2、负责督查督办工作。3、负责校长办公会议题的征集、会议记录，以及会议通知、会议纪要的起草等工作。4、负责受理各部门向校领导的请示、报告并落实校领导的批示工作。5、负责学校印章和介绍信的管理工作，负责学校及各部门公章刻制工作。6、负责', '<p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;"><br/></span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">科 &nbsp; &nbsp;长：张正川</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">副 科 长：张丽昕</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">办公地点：行政办公楼110室</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">办公电话：0379-65928000</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">工作职责：</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">1、负责学校各部门的综合协调工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">2、负责督查督办工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">3、负责校长办公会议题的征集、会议记录，以及会议通知、会议纪要的起草等工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">4、负责受理各部门向校领导的请示、报告并落实校领导的批示工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">5、负责学校印章和介绍信的管理工作，负责学校及各部门公章刻制工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">6、负责有关资料的归档工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">7、负责制定作息制度、安排节假日和寒暑假的值班工作。 </span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">8、负责各部门公用电话的配制、电话补贴的核发工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">9、负责学校法人证书、组织机构代码证的管理及使用工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">10、负责校领导和党委办公室、校长办公室报刊、杂志的订阅和收发工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">11、负责制定校领导每周会议安排。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">12、负责洛阳市公文的接收、传阅、处理和校领导批示的落实工作以及公文的归档工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">13、负责校领导和党委办公室、校长办公室的内务工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">14、负责文印室的管理工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">15、负责会议室、接待室的管理工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">16、负责以洛阳理工学院名义接受礼品的登记管理。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">17、完成领导交办的其他工作。</span></p><p><br/></p>', '1498446871', NULL, NULL),
(63, 0, 3, '两办机要信访科工作职责', 34, '科 &nbsp; &nbsp;长：吴相锋办公地点：行政办公楼109室办公电话：0379-65928005工作职责：1、负责机要保密工作。做好机要文电的登记、处理、清退和缴毁工作，做好机要档案的查询服务工作，做好保密工作计划制定和组织实施工作。2、负责信访稳定工作。做好群众来信来访、校领导接待日和校领导信箱等事项的处理和督办工作，做好信访工作计划制定和组织实施工作。3、负责收文处理工作。做好上级来文', '<p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;"><br/></span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">科 &nbsp; &nbsp;长：吴相锋</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">办公地点：行政办公楼109室</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">办公电话：0379-65928005</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">工作职责：</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">1、负责机要保密工作。做好机要文电的登记、处理、清退和缴毁工作，做好机要档案的查询服务工作，做好保密工作计划制定和组织实施工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">2、负责信访稳定工作。做好群众来信来访、校领导接待日和校领导信箱等事项的处理和督办工作，做好信访工作计划制定和组织实施工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">3、负责收文处理工作。做好上级来文的登记处理、领导批示落实和文件归档工作。 </span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">4、负责传真通信工作。做好传真文件的收发处理和领导批示的督办落实工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">5、负责OA系统管理工作。做好OA系统运行的相关联络、协调、日常管理与培训工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">6、完成领导交办的其他工作。&nbsp;</span></p><p><br/></p>', '1498446908', NULL, NULL),
(64, 0, 2, '秘书科工作职责', 38, '副 科 长：王 艳办公地点：行政办公楼109室办公电话：0379-65928001工作职责：1、负责学校年度工作计划、工作总结以及以学校名义发送的贺信、致辞、唁电等文字材料起草工作。2、负责学校党政公文审核、规范、编号、立卷、归档等工作。3、负责学院党政公文的OA流转。4、负责学校党委及校领导个人印章的管理工作。5、负责学院主要领导在重要会议上讲话的记录及整理工作。6、负责各类会议的记录工作，负责', '<p style="text-indent:32px;line-height:27px"><br/></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">副 科 长：王 艳</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">办公地点：行政办公楼109室</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">办公电话：0379-65928001</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 仿宋_GB2312; font-size: 18px;">工作职责：<br/></span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">1、负责学校年度工作计划、工作总结以及以学校名义发送的贺信、致辞、唁电等文字材料起草工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">2、负责学校党政公文审核、规范、编号、立卷、归档等工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">3、负责学院党政公文的OA流转。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">4、负责学校党委及校领导个人印章的管理工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">5、负责学院主要领导在重要会议上讲话的记录及整理工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">6、负责各类会议的记录工作，负责办公室例会的记录工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">7、负责党委办公室校长办公室网页的建设、管理、维护工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">8、负责学院大事记的编写工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">9、负责信息工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">10、负责全校办公室系统文秘业务的指导、培训、服务工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">11、负责学院网页公告通知的审核工作。</span></p><p style="text-indent:32px;line-height:27px"><span style="font-family: 宋体, SimSun; font-size: 18px;">12、完成领导交办的其他工作。</span></p><p><br/></p>', '1498446944', NULL, NULL),
(74, 0, 10, '党发〔2017〕2号  关于2016年度贯彻落实党风廉政建设责任制工作检查考核的通知', 4, '党发〔2017〕2 号 中共洛阳理工学院委员会关于2016年度贯彻落实党风廉政建设责任制工作检查考核的通知.doc', '<p style="line-height: 16px;"><br/></p><p style="line-height: 16px;"><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498472165660380.doc" title="党发〔2017〕2 号 中共洛阳理工学院委员会关于2016年度贯彻落实党风廉政建设责任制工作检查考核的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">党发〔2017〕2 号 中共洛阳理工学院委员会关于2016年度贯彻落实党风廉政建设责任制工作检查考核的通知.doc</span></a></p><p><br/></p>', '1498472178', NULL, NULL),
(73, 0, 10, '党发〔2017〕1号  关于做好2016年度处级班子和处级干部考核工作的通知 ', 7, '党发〔2017〕1号 中共洛阳理工学院委员会关于做好2016年度处级班子和处级干部考核工作的通知 .doc', '<p><br/></p><p><br/></p><p><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a href="/Uploads/file/2017-06-26/1498472066240258.doc" title="党发〔2017〕1号 中共洛阳理工学院委员会关于做好2016年度处级班子和处级干部考核工作的通知 .doc" style="line-height: 16px; color: rgb(0, 102, 204); font-family: 宋体, SimSun; font-size: 18px;">党发〔2017〕1号 中共洛阳理工学院委员会关于做好2016年度处级班子和处级干部考核工作的通知 .doc</a><br/></p><p><span style="font-family: 宋体, SimSun; font-size: 18px;"></span><br/></p>', '1498472082', NULL, NULL),
(80, 0, 10, '党发〔2017〕8号  关于印发落实“三重一大”制度实施办法的通知', 2, '党发〔2017〕8号 中共洛阳理工学院委员会关于印发落实“三重一大”制度实施办法的通知.doc', '<p style="line-height: 16px;"><br/></p><p style="line-height: 16px;"><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-size: 18px; font-family: 宋体, SimSun;" href="/Uploads/file/2017-06-26/1498472636929568.doc" title="党发〔2017〕8号 中共洛阳理工学院委员会关于印发落实“三重一大”制度实施办法的通知.doc"><span style="font-size: 18px; font-family: 宋体, SimSun;">党发〔2017〕8号 中共洛阳理工学院委员会关于印发落实“三重一大”制度实施办法的通知.doc</span></a></p><p><br/></p>', '1498472650', NULL, NULL),
(75, 0, 10, '党发〔2017〕3号  关于印发2017年工作计划的通知', 3, '党发〔2017〕3号 中共洛阳理工学院委员会关于印发2017年工作计划的通知.doc', '<p style="line-height: 16px;"><br/></p><p style="line-height: 16px;"><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-size: 18px; font-family: 宋体, SimSun;" href="/Uploads/file/2017-06-26/1498472225517504.doc" title="党发〔2017〕3号 中共洛阳理工学院委员会关于印发2017年工作计划的通知.doc"><span style="font-size: 18px; font-family: 宋体, SimSun;">党发〔2017〕3号 中共洛阳理工学院委员会关于印发2017年工作计划的通知.doc</span></a></p><p><br/></p>', '1498472239', NULL, NULL),
(76, 0, 10, '党发〔2017〕4号  洛阳理工学院2017年两级中心组学习安排意见', 3, '党发〔2017〕4号洛阳理工学院2017年两级中心组学习安排意见.doc', '<p style="line-height: 16px;"><br/></p><p style="line-height: 16px;"><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-size: 18px; font-family: 宋体, SimSun;" href="/Uploads/file/2017-06-26/1498472270636622.doc" title="党发〔2017〕4号洛阳理工学院2017年两级中心组学习安排意见.doc"><span style="font-size: 18px; font-family: 宋体, SimSun;">党发〔2017〕4号洛阳理工学院2017年两级中心组学习安排意见.doc</span></a></p><p><br/></p>', '1498472282', NULL, NULL),
(77, 0, 10, '党发〔2017〕5号  关于印发2017年党风廉政建设责任目标及任务分解的通知', 2, '党发〔2017〕5号中共洛阳理工学院委员会关于印发2017年党风廉政建设责任目标及任务分解的通知.doc', '<p style="line-height: 16px;"><br/></p><p style="line-height: 16px;"><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-size: 18px; font-family: 宋体, SimSun;" href="/Uploads/file/2017-06-26/1498472472207883.doc" title="党发〔2017〕5号中共洛阳理工学院委员会关于印发2017年党风廉政建设责任目标及任务分解的通知.doc"><span style="font-size: 18px; font-family: 宋体, SimSun;">党发〔2017〕5号中共洛阳理工学院委员会关于印发2017年党风廉政建设责任目标及任务分解的通知.doc</span></a></p><p><br/></p>', '1498472485', NULL, NULL),
(78, 0, 10, '党发〔2017〕6号  关于公布2016年度处级单位和处级干部考核结果的通知', 2, '党发〔2017〕6号 中共洛阳理工学院委员会关于公布2016年度处级单位和处级干部考核结果的通知.doc', '<p style="line-height: 16px;"><br/></p><p style="line-height: 16px;"><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498472514487155.doc" title="党发〔2017〕6号 中共洛阳理工学院委员会关于公布2016年度处级单位和处级干部考核结果的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">党发〔2017〕6号 中共洛阳理工学院委员会关于公布2016年度处级单位和处级干部考核结果的通知.doc</span></a></p><p><br/></p>', '1498472528', NULL, NULL),
(79, 0, 10, '党发〔2017〕7号   关于加强新形势下统一战线工作的意见', 3, '党发〔2017〕7号 中共洛阳理工学院委员会关于加强新形势下统一战线工作的意见.doc', '<p style="line-height: 16px;"><br/></p><p style="line-height: 16px;"><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498472555521450.doc" title="党发〔2017〕7号 中共洛阳理工学院委员会关于加强新形势下统一战线工作的意见.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">党发〔2017〕7号 中共洛阳理工学院委员会关于加强新形势下统一战线工作的意见.doc</span></a></p><p><br/></p>', '1498472570', NULL, NULL),
(81, 0, 10, '党发〔2017〕9号   关于印发履行全面从严治党主体责任清单的通知', 2, '党发〔2017〕9号中共洛阳理工学院委员会关于印发履行全面从严治党主体责任清单的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498472676406927.doc" title="党发〔2017〕9号中共洛阳理工学院委员会关于印发履行全面从严治党主体责任清单的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">党发〔2017〕9号中共洛阳理工学院委员会关于印发履行全面从严治党主体责任清单的通知.doc</span></a></p><p><br/></p>', '1498472687', NULL, NULL),
(82, 0, 10, '党发〔2017〕10号   关于思想政治理论课教学部更名为马克思主义学院的通知', 2, '党发〔2017〕10号 中共洛阳理工学院委员会关于思想政治理论课教学部更名为马克思主义学院的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498472708724889.doc" title="党发〔2017〕10号 中共洛阳理工学院委员会关于思想政治理论课教学部更名为马克思主义学院的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">党发〔2017〕10号 中共洛阳理工学院委员会关于思想政治理论课教学部更名为马克思主义学院的通知.doc</span></a></p><p><br/></p>', '1498472716', NULL, NULL),
(83, 0, 10, '党发〔2017〕11号  关于做好20162017学年党内评先评优工作的通知', 2, '党发〔2017〕11号 中共洛阳理工学院委员会关于做好20162017学年党内评先评优工作的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498472785769756.doc" title="党发〔2017〕11号 中共洛阳理工学院委员会关于做好20162017学年党内评先评优工作的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">党发〔2017〕11号 中共洛阳理工学院委员会关于做好20162017学年党内评先评优工作的通知.doc</span></a></p><p><br/></p>', '1498472796', NULL, NULL),
(84, 0, 10, '党发〔2017〕12号   关于召开中共洛阳理工学院第二次代表大会的通知', 3, '党发〔2017〕12号 中共洛阳理工学院委员会关于召开中共洛阳理工学院第二次代表大会的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498472822392004.doc" title="党发〔2017〕12号 中共洛阳理工学院委员会关于召开中共洛阳理工学院第二次代表大会的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">党发〔2017〕12号 中共洛阳理工学院委员会关于召开中共洛阳理工学院第二次代表大会的通知.doc</span></a></p><p><br/></p>', '1498472834', NULL, NULL),
(85, 0, 10, '党发〔2017〕13号   关于成立中共洛阳理工学院第二次代表大会筹备工作领导小组的通知', 2, '党发〔2017〕13号 中共洛阳理工学院委员会关于成立中共洛阳理工学院第二次代表大会筹备工作领导小组的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498472879647508.doc" title="党发〔2017〕13号 中共洛阳理工学院委员会关于成立中共洛阳理工学院第二次代表大会筹备工作领导小组的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">党发〔2017〕13号 中共洛阳理工学院委员会关于成立中共洛阳理工学院第二次代表大会筹备工作领导小组的通知.doc</span></a></p><p><br/></p>', '1498472894', NULL, NULL),
(86, 0, 10, '党发〔2017〕14号   关于成立第二次代表大会资格审查小组的通知', 2, '党发〔2017〕14号 中共洛阳理工学院关于成立第二次代表大会资格审查小组的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498472917135502.doc" title="党发〔2017〕14号 中共洛阳理工学院关于成立第二次代表大会资格审查小组的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">党发〔2017〕14号 中共洛阳理工学院关于成立第二次代表大会资格审查小组的通知.doc</span></a></p><p><br/></p>', '1498472926', NULL, NULL),
(87, 0, 10, '党发〔2017〕15号   关于推荐中共洛阳理工学院第二届委员会委员和第二届纪律检查委员会委员候选人初步人选的通知', 2, '党发〔2017〕15号 中共洛阳理工学院委员会关于推荐中共洛阳理工学院第二届委员会委员和第二届纪律检查委员会委员候选人初步人选的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498472951358185.doc" title="党发〔2017〕15号 中共洛阳理工学院委员会关于推荐中共洛阳理工学院第二届委员会委员和第二届纪律检查委员会委员候选人初步人选的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">党发〔2017〕15号 中共洛阳理工学院委员会关于推荐中共洛阳理工学院第二届委员会委员和第二届纪律检查委员会委员候选人初步人选的通知.doc</span></a></p><p><br/></p>', '1498472958', NULL, NULL),
(88, 0, 10, '党发〔2017〕16号   关于表彰2015-2016年文明集体、文明个人的决定', 2, '党发〔2017〕16号 中共洛阳理工学院委员会关于表彰2015-2016年文明集体、文明个人的决定.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498472983475167.doc" title="党发〔2017〕16号 中共洛阳理工学院委员会关于表彰2015-2016年文明集体、文明个人的决定.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">党发〔2017〕16号 中共洛阳理工学院委员会关于表彰2015-2016年文明集体、文明个人的决定.doc</span></a></p><p><br/></p>', '1498472993', NULL, NULL),
(89, 0, 10, '党发〔2017〕17号   关于成立推进“两学一做”学习教育常态化制度化工作组的通知', 4, '党发〔2017〕17号 中共洛阳理工学院委员会关于成立推进“两学一做”学习教育常态化制度化工作组的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473018964132.doc" title="党发〔2017〕17号 中共洛阳理工学院委员会关于成立推进“两学一做”学习教育常态化制度化工作组的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">党发〔2017〕17号 中共洛阳理工学院委员会关于成立推进“两学一做”学习教育常态化制度化工作组的通知.doc</span></a></p><p><br/></p>', '1498473027', NULL, NULL),
(90, 0, 10, '党发〔2017〕18号   关于印发推进“两学一做”学习教育常态化制度化实施方案的通知', 2, '党发〔2017〕18号 中共洛阳理工学院委员会关于印发推进“两学一做”学习教育常态化制度化实施方案的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473051542421.doc" title="党发〔2017〕18号 中共洛阳理工学院委员会关于印发推进“两学一做”学习教育常态化制度化实施方案的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">党发〔2017〕18号 中共洛阳理工学院委员会关于印发推进“两学一做”学习教育常态化制度化实施方案的通知.doc</span></a></p><p><br/></p>', '1498473059', NULL, NULL),
(91, 0, 10, '党发〔2017〕19号   关于同意召开第二届教职工暨工会会员代表大会第一次会议的批复', 5, '党发〔2017〕19号 中共洛阳理工学院委员会关于同意召开第二届教职工暨工会会员代表大会第一次会议的批复.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473081641055.doc" title="党发〔2017〕19号 中共洛阳理工学院委员会关于同意召开第二届教职工暨工会会员代表大会第一次会议的批复.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">党发〔2017〕19号 中共洛阳理工学院委员会关于同意召开第二届教职工暨工会会员代表大会第一次会议的批复.doc</span></a></p><p><br/></p>', '1498473090', NULL, NULL),
(92, 0, 10, '党发〔2017〕20号   关于表彰20162017学年先进基层党组织、优秀共产党员、优秀党务工作者的决定', 2, '党发〔2017〕20号 中共洛阳理工学校委员会关于表彰20162017学年先进基层党组织、优秀共产党员、优秀党务工作者的决定.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473110593041.doc" title="党发〔2017〕20号 中共洛阳理工学校委员会关于表彰20162017学年先进基层党组织、优秀共产党员、优秀党务工作者的决定.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">党发〔2017〕20号 中共洛阳理工学校委员会关于表彰20162017学年先进基层党组织、优秀共产党员、优秀党务工作者的决定.doc</span></a></p><p><br/></p>', '1498473121', NULL, NULL),
(93, 0, 10, '党发〔2017〕21号   关于机构调整和设置的通知', 5, '党发〔2017〕21号 中共洛阳理工学院委员会关于机构调整和设置的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473168381848.doc" title="党发〔2017〕21号 中共洛阳理工学院委员会关于机构调整和设置的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">党发〔2017〕21号 中共洛阳理工学院委员会关于机构调整和设置的通知.doc</span></a></p><p><br/></p>', '1498473178', NULL, NULL),
(94, 0, 10, '党发〔2017〕22号   关于宋建新等3名同志职务任免的通知', 8, '党发〔2017〕22号 中共洛阳理工学院委员会关于宋建新等3名同志职务任免的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473201433518.doc" title="党发〔2017〕22号 中共洛阳理工学院委员会关于宋建新等3名同志职务任免的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">党发〔2017〕22号 中共洛阳理工学院委员会关于宋建新等3名同志职务任免的通知.doc</span></a></p><p><br/></p>', '1498473210', NULL, NULL),
(95, 0, 11, '校发〔2017〕1号   关于公布2016年度校内科研基金审批结果的通知', 2, '校发〔2017〕1 号 洛阳理工学院关于公布2016年度校内科研基金审批结果的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473279419142.doc" title="校发〔2017〕1 号 洛阳理工学院关于公布2016年度校内科研基金审批结果的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕1 号 洛阳理工学院关于公布2016年度校内科研基金审批结果的通知.doc</span></a></p><p><br/></p>', '1498473286', NULL, NULL),
(96, 0, 11, '校发〔2017〕2号   《关于修订2016版本科专业人才培养方案的指导意见》的通知', 2, '校发〔2017〕2号 &nbsp;洛阳理工学院印发《关于修订2016版本科专业人才培养方案的指导意见》的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473315666889.doc" title="校发〔2017〕2号  洛阳理工学院印发《关于修订2016版本科专业人才培养方案的指导意见》的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕2号 &nbsp;洛阳理工学院印发《关于修订2016版本科专业人才培养方案的指导意见》的通知.doc</span></a></p><p><br/></p>', '1498473324', NULL, NULL),
(97, 0, 11, '校发〔2017〕3号   关于成立网络安全与信息化领导小组的通知', 2, '校发〔2017〕3号洛阳理工学院关于成立网络安全与信息化领导小组的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473423398272.doc" title="校发〔2017〕3号洛阳理工学院关于成立网络安全与信息化领导小组的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕3号洛阳理工学院关于成立网络安全与信息化领导小组的通知.doc</span></a></p><p><br/></p>', '1498473430', NULL, NULL),
(98, 0, 11, '校发〔2017〕4号   关于对代鹏等3名同学的处分决定 ', 2, '校发〔2017〕4号洛阳理工学院关于对代鹏等3名同学的处分决定 .doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473450407143.doc" title="校发〔2017〕4号洛阳理工学院关于对代鹏等3名同学的处分决定 .doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕4号洛阳理工学院关于对代鹏等3名同学的处分决定 .doc</span></a></p><p><br/></p>', '1498473458', NULL, NULL),
(99, 0, 11, '校发〔2017〕5号    关于2016级学生转专业申请审议结果的通知', 3, '校发〔2017〕5号 &nbsp;洛阳理工学院关于2016级学生转专业申请审议结果的通知.doc校发〔2017〕5号 附件：2016级转专业汇总（会议审核通过）.xls', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473486642099.doc" title="校发〔2017〕5号  洛阳理工学院关于2016级学生转专业申请审议结果的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕5号 &nbsp;洛阳理工学院关于2016级学生转专业申请审议结果的通知.doc</span></a></p><p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_xls.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473565974781.xls" title="校发〔2017〕5号 附件：2016级转专业汇总（会议审核通过）.xls"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕5号 附件：2016级转专业汇总（会议审核通过）.xls</span></a></p><p><br/></p>', '1498473495', NULL, NULL),
(100, 0, 11, '校发〔2017〕6号   关于对崔保国等7名同学的处分决定', 2, '校发〔2017〕6号洛阳理工学院关于对崔保国等7名同学的处分决定.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473541462745.doc" title="校发〔2017〕6号洛阳理工学院关于对崔保国等7名同学的处分决定.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕6号洛阳理工学院关于对崔保国等7名同学的处分决定.doc</span></a></p><p><br/></p>', '1498473553', NULL, NULL),
(101, 0, 11, '校发〔2017〕7号   关于卓越工程师教育培养计划调整部分学生专业的通知', 2, '校发〔2017〕7号 洛阳理工学院关于卓越工程师教育培养计划调整部分学生专业的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473599995154.doc" title="校发〔2017〕7号 洛阳理工学院关于卓越工程师教育培养计划调整部分学生专业的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕7号 洛阳理工学院关于卓越工程师教育培养计划调整部分学生专业的通知.doc</span></a></p><p><br/></p>', '1498473609', NULL, NULL),
(102, 0, 11, '校发〔2017〕8号   关于表彰第九届“挑战杯”大学生课外学术科技作品竞赛获奖名单等6个奖项的通知', 2, '校发〔2017〕8号 洛阳理工学院关于表彰第九届“挑战杯”大学生课外学术科技作品竞赛获奖名单等6个奖项的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473668935157.doc" title="校发〔2017〕8号 洛阳理工学院关于表彰第九届“挑战杯”大学生课外学术科技作品竞赛获奖名单等6个奖项的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕8号 洛阳理工学院关于表彰第九届“挑战杯”大学生课外学术科技作品竞赛获奖名单等6个奖项的通知.doc</span></a></p><p><br/></p>', '1498473675', NULL, NULL),
(103, 0, 11, '校发〔2017〕9号   关于2017年度国家留学基金委河南省地方项目推荐人员报告 ', 2, '校发〔2017〕9号 洛阳理工学院关于2017年度国家留学基金委河南省地方项目推荐人员报告 .doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473697128300.doc" title="校发〔2017〕9号 洛阳理工学院关于2017年度国家留学基金委河南省地方项目推荐人员报告 .doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕9号 洛阳理工学院关于2017年度国家留学基金委河南省地方项目推荐人员报告 .doc</span></a></p><p><br/></p>', '1498473704', NULL, NULL),
(104, 0, 11, '校发〔2017〕10号   关于印发《“十三五”事业发展规划暨“示范校“建设规划“半月谈”主题活动方案》的通知', 2, '校发〔2017〕10号 洛阳理工学院关于印发《“十三五”事业发展规划暨“示范校“建设规划“半月谈”主题活动方案》的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473727674344.doc" title="校发〔2017〕10 号洛阳理工学院关于印发《“十三五”事业发展规划暨“示范校“建设规划“半月谈”主题活动方案》的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕10号 洛阳理工学院关于印发《“十三五”事业发展规划暨“示范校“建设规划“半月谈”主题活动方案》的通知.doc</span></a></p><p><br/></p>', '1498473737', NULL, NULL),
(105, 0, 11, '校发〔2017〕11号   关于公布2016-2017学年第二学期学籍处理结果的通知', 2, '校发〔2017〕11号 洛阳理工学院关于公布2016-2017学年第二学期学籍处理结果的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473758848506.doc" title="校发〔2017〕11 号 洛阳理工学院关于公布2016-2017学年第二学期学籍处理结果的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕11号 洛阳理工学院关于公布2016-2017学年第二学期学籍处理结果的通知.doc</span></a></p><p><br/></p>', '1498473774', NULL, NULL),
(106, 0, 11, '校发〔2017〕12号   关于成立2017年招生委员会的通知 ', 2, '校发〔2017〕12 号洛阳理工学院关于成立2017年招生委员会的通知 .doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473845673879.doc" title="校发〔2017〕12 号洛阳理工学院关于成立2017年招生委员会的通知 .doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕12 号洛阳理工学院关于成立2017年招生委员会的通知 .doc</span></a></p><p><br/></p>', '1498473852', NULL, NULL),
(107, 0, 11, '校发〔2017〕13号   关于印发经济活动立项管理办法等文件的通知', 2, '校发〔2017〕13号 洛阳理工学院关于印发经济活动立项管理办法等文件的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473876453011.doc" title="校发〔2017〕13号 洛阳理工学院关于印发经济活动立项管理办法等文件的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕13号 洛阳理工学院关于印发经济活动立项管理办法等文件的通知.doc</span></a></p><p><br/></p>', '1498473883', NULL, NULL),
(108, 0, 11, '校发〔2017〕14号   关于印发合同（协议）管理办法的通知', 2, '校发〔2017〕14号 洛阳理工学院关于印发合同（协议）管理办法的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473957970419.doc" title="校发〔2017〕14号 洛阳理工学院关于印发合同（协议）管理办法的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕14号 洛阳理工学院关于印发合同（协议）管理办法的通知.doc</span></a></p><p><br/></p>', '1498473966', NULL, NULL),
(109, 0, 11, '校发〔2017〕15号   关于成立中外合作办学评估工作领导小组的通知', 2, '校发〔2017〕15号 洛阳理工学院关于成立中外合作办学评估工作领导小组的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498473993665074.doc" title="校发〔2017〕15号 洛阳理工学院关于成立中外合作办学评估工作领导小组的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕15号 洛阳理工学院关于成立中外合作办学评估工作领导小组的通知.doc</span></a></p><p><br/></p>', '1498474001', NULL, NULL),
(110, 0, 11, '校发〔2017〕16号   关于印发中外合作办学项目管理办法（试行）的通知', 2, '校发〔2017〕16号 洛阳理工学院关于印发中外合作办学项目管理办法（试行）的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498474026591121.doc" title="校发〔2017〕16号 洛阳理工学院关于印发中外合作办学项目管理办法（试行）的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕16号 洛阳理工学院关于印发中外合作办学项目管理办法（试行）的通知.doc</span></a></p><p><br/></p>', '1498474034', NULL, NULL),
(111, 0, 11, '校发〔2017〕17号   关于印发中爱合作办学项目联合管理委员会人员调整的通知', 2, '校发〔2017〕17号 洛阳理工学院关于印发中爱合作办学项目联合管理委员会人员调整的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498474058422224.doc" title="校发〔2017〕17号 洛阳理工学院关于印发中爱合作办学项目联合管理委员会人员调整的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕17号 洛阳理工学院关于印发中爱合作办学项目联合管理委员会人员调整的通知.doc</span></a></p><p><br/></p>', '1498474065', NULL, NULL),
(112, 0, 11, '校发〔2017〕18号   关于印发2017年中外合作办学项目自评工作方案的通知', 2, '校发〔2017〕18 号 洛阳理工学院关于印发2017年中外合作办学项目自评工作方案的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498474086541620.doc" title="校发〔2017〕18 号 洛阳理工学院关于印发2017年中外合作办学项目自评工作方案的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕18 号 洛阳理工学院关于印发2017年中外合作办学项目自评工作方案的通知.doc</span></a></p><p><br/></p>', '1498474096', NULL, NULL),
(113, 0, 11, '校发〔2017〕19号  关于做好大学生应征入伍的工作的实施意见', 2, '校发〔2017〕19号 洛阳理工学院关于做好大学生应征入伍的工作的实施意见.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498474117125043.doc" title="校发〔2017〕19号 洛阳理工学院关于做好大学生应征入伍的工作的实施意见.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕19号 洛阳理工学院关于做好大学生应征入伍的工作的实施意见.doc</span></a></p><p><br/></p>', '1498474126', NULL, NULL);
INSERT INTO `f_article` (`id`, `sort`, `cate_id`, `title`, `click`, `desc`, `content`, `pub_time`, `thumb`, `attach`) VALUES
(114, 0, 11, '校发〔2017〕20号   关于印发学业导师管理暂行办法的通知', 3, '校发〔2017〕20号 洛阳理工学院关于印发学业导师管理暂行办法的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498474169579334.doc" title="校发〔2017〕20号 洛阳理工学院关于印发学业导师管理暂行办法的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕20号 洛阳理工学院关于印发学业导师管理暂行办法的通知.doc</span></a></p><p><br/></p>', '1498474176', NULL, NULL),
(115, 0, 11, '校发〔2017〕21号   关于印发教材建设管理规定的通知', 2, '校发〔2017〕21号 洛阳理工学院关于印发教材建设管理规定的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498474197660786.doc" title="校发〔2017〕21号 洛阳理工学院关于印发教材建设管理规定的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕21号 洛阳理工学院关于印发教材建设管理规定的通知.doc</span></a></p><p><br/></p>', '1498474204', NULL, NULL),
(116, 0, 11, '关于 印发加强基层教学组织建设实施意见的通知', 4, '校发〔2017〕22号 洛阳理工学院关于印发加强基层教学组织建设实施意见的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498474226399609.doc" title="校发〔2017〕22号 洛阳理工学院关于印发加强基层教学组织建设实施意见的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕22号 洛阳理工学院关于印发加强基层教学组织建设实施意见的通知.doc</span></a></p><p><br/></p>', '1498474240', NULL, NULL),
(117, 0, 11, '关于表彰2017年优秀应届毕业生的决定', 7, '校发〔2017〕23 号 洛阳理工学院关于表彰2017年优秀应届毕业生的决定.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498474261628610.doc" title="校发〔2017〕23 号 洛阳理工学院关于表彰2017年优秀应届毕业生的决定.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕23 号 洛阳理工学院关于表彰2017年优秀应届毕业生的决定.doc</span></a></p><p><br/></p>', '1498474269', NULL, NULL),
(118, 0, 11, '关于罗先斌同志任职的通知', 5, '校发〔2017〕24号洛阳理工学院关于罗先斌同志任职的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498474293349228.doc" title="校发〔2017〕24号洛阳理工学院关于罗先斌同志任职的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕24号洛阳理工学院关于罗先斌同志任职的通知.doc</span></a></p><p><br/></p>', '1498474303', NULL, NULL),
(119, 0, 11, '关于公布我校2017年度教学改革研究项目立项计划的通知', 6, '校发〔2017〕25号 洛阳理工学院关于公布我校2017年度教学改革研究项目立项计划的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498474455183894.doc" title="校发〔2017〕25号 洛阳理工学院关于公布我校2017年度教学改革研究项目立项计划的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕25号 洛阳理工学院关于公布我校2017年度教学改革研究项目立项计划的通知.doc</span></a></p><p><br/></p>', '1498474463', NULL, NULL),
(120, 0, 11, '关于印发国有资产管理办法的通知', 5, '校发〔2017〕26号 洛阳理工学院关于印发国有资产管理办法的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498474489590172.doc" title="校发〔2017〕26号 洛阳理工学院关于印发国有资产管理办法的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕26号 洛阳理工学院关于印发国有资产管理办法的通知.doc</span></a></p><p><br/></p>', '1498474497', NULL, NULL),
(121, 0, 11, '关于印发固定资产处置暂行办法的通知', 25, '校发〔2017〕27号 洛阳理工学院关于印发固定资产处置暂行办法的通知.doc', '<p><br/></p><p><br/></p><p style="line-height: 16px;"><img src="http://edu.onways.cn/Myadmin/Home/vendor/ueditor/dialogs/attachment/fileTypeImages/icon_doc.gif"/><a style="color: rgb(0, 102, 204); text-decoration: underline; font-family: 宋体, SimSun; font-size: 18px;" href="/Uploads/file/2017-06-26/1498474524768350.doc" title="校发〔2017〕27号 洛阳理工学院关于印发固定资产处置暂行办法的通知.doc"><span style="font-family: 宋体, SimSun; font-size: 18px;">校发〔2017〕27号 洛阳理工学院关于印发固定资产处置暂行办法的通知.doc</span></a></p><p><br/></p>', '1498474533', NULL, NULL),
(125, 0, 13, '两办收文处理流程', 7, '（适用于机要文件、密码电报、OA公文等）', '<p style="text-align:center"><span style="font-size: 20px; font-family: 宋体, SimSun;">（适用于机要文件、密码电报、OA公文等）</span></p><p><span style="font-size: 20px; font-family: 宋体, SimSun;"><br/></span></p><p><span style="font-size: 20px; font-family: 宋体, SimSun;"><br/></span></p><p style="text-align: center;"><img src="/Uploads/image/2017-06-27/1498552877293397.png" title="1498552877293397.png" alt="003.png"/></p>', '1498552610', NULL, NULL),
(126, 0, 13, '洛阳理工学院信访工作流程', 6, '（适用于校领导接待日、校长信箱、来信来访来电等事项）', '<p style="text-align:center;line-height:51px"><span style="font-size: 20px; font-family: 宋体, SimSun;">（适用于校领导接待日、校长信箱、来信来访来电等事项）</span></p><p style="line-height: 51px;"><span style="font-size: 20px; font-family: 宋体, SimSun;"><br/></span></p><p style="line-height: 51px; text-align: center;"><img src="/Uploads/image/2017-06-27/1498552748649349.png" title="1498552748649349.png" alt="004.png"/></p><p><br/></p>', '1498552751', NULL, NULL),
(127, 0, 13, '洛阳理工学院行政印章使用流程				', 4, '', '<p><br/></p><p><br/></p><p style="text-align: center;"><img src="/Uploads/image/2017-06-27/1498554119735612.png" title="1498554119735612.png" alt="05.png"/></p>', '1498554125', NULL, NULL),
(128, 0, 13, '印章刻制流程图', 3, '', '<p><br/></p><p><br/></p><p style="text-align: center;"><img src="/Uploads/image/2017-06-27/1498554500219932.png" title="1498554500219932.png" alt="06.png"/></p>', '1498554505', NULL, NULL),
(129, 0, 13, '督察督办流程图', 3, '', '<p><br/></p><p><br/></p><p style="text-align: center;"><img src="/Uploads/image/2017-06-27/1498554609671519.png" title="1498554609671519.png" alt="07.png"/></p>', '1498554613', NULL, NULL),
(130, 0, 13, '校长办公会流程图', 3, '', '<p><br/></p><p><br/></p><p style="text-align: center;"><img src="/Uploads/image/2017-06-27/1498554673738197.png" title="1498554673738197.png" alt="08.png"/></p>', '1498554684', NULL, NULL),
(131, 0, 13, '洛阳理工学院合同盖章使用流程', 2, '', '<p><br/></p><p><br/></p><p style="text-align: center;"><img src="/Uploads/image/2017-06-27/1498554803300906.png" title="1498554803300906.png" alt="9.png"/></p><p><br/></p>', '1498554809', NULL, NULL),
(132, 0, 13, '公务接待审批及报销流程', 8, '', '<p><br/></p><p><br/></p><p style="text-align: center;"><img src="/Uploads/image/2017-06-27/1498554871787799.png" title="1498554871787799.png" alt="10.png"/></p><p><br/></p>', '1498554876', NULL, NULL),
(133, 0, 13, '洛阳理工学院法律事务咨询工作流程', 2, '', '<p><br/></p><p><br/></p><p style="text-align: center;"><img src="/Uploads/image/2017-06-27/1498554960143288.png" title="1498554960143288.png" alt="12.png"/></p><p><br/></p>', '1498554969', NULL, NULL),
(134, 0, 13, '洛阳理工学院文件（含合同）合法性审查流程', 2, '', '<p><br/></p><p><br/></p><p style="text-align: center;"><img src="/Uploads/image/2017-06-27/1498555128696302.png" title="1498555128696302.png" alt="11.png"/></p><p><br/></p>', '1498555137', NULL, NULL),
(135, 0, 13, '档案查（借）阅利用办理流程', 3, '', '<p><br/></p><p><br/></p><p style="text-align: center;"><img src="/Uploads/image/2017-06-27/1498555222297894.png" title="1498555222297894.png" alt="13.png"/></p><p><br/></p><p><br/></p>', '1498555228', NULL, NULL),
(136, 0, 13, '文书档案（归档文件）整理流程图', 3, '', '<p><br/></p><p><br/></p><p style="text-align: center;"><img src="/Uploads/image/2017-06-27/1498555409695474.png" title="1498555409695474.png" alt="14.png"/></p><p><br/></p><p><br/></p>', '1498555422', NULL, NULL),
(137, 0, 13, '财会、学籍、科技档案归档流程图', 8, '', '<p><br/></p><p><br/></p><p style="text-align: center;"><img src="/Uploads/image/2017-06-27/1498555478557256.png" title="1498555478557256.png" alt="15.png"/></p><p><br/></p>', '1498555484', NULL, NULL),
(138, 0, 13, '两办校友联络科流程', 14, '', '<p><br/></p><p><br/></p><p style="text-align: center;"><img src="/Uploads/image/2017-06-27/1498555610893293.png" title="1498555610893293.png" alt="16.png"/></p><p><br/></p><p><br/></p>', '1498555615', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `f_category`
--

CREATE TABLE IF NOT EXISTS `f_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pid` int(10) NOT NULL,
  `display` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0不显示 1显示',
  `model` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1文章 2单网页 3商品',
  `sort` tinyint(3) DEFAULT '0',
  `model_name` varchar(20) DEFAULT 'category' COMMENT 'category 文章 page 单网页 product产品 download下载',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- 转存表中的数据 `f_category`
--

INSERT INTO `f_category` (`id`, `name`, `pid`, `display`, `model`, `sort`, `model_name`) VALUES
(1, '部门职责', 4, 0, 1, 0, 'Article'),
(2, '秘书科', 4, 0, 1, 0, 'Article'),
(3, '机要信访科', 4, 0, 1, 0, 'Article'),
(4, '机构设置', 0, 1, 1, 0, 'Article'),
(5, '综合科', 4, 0, 1, 0, 'Article'),
(6, '行政科', 4, 0, 1, 0, 'Article'),
(7, '规章制度', 0, 1, 1, 0, 'Article'),
(8, '政务公开', 0, 1, 1, 0, 'Article'),
(9, '公文发布', 0, 1, 1, 0, 'Article'),
(10, '党委文件', 9, 0, 1, 0, 'Article'),
(11, '行政文件', 9, 0, 1, 0, 'Article'),
(37, '法律事务', 14, 0, 1, 0, 'Article'),
(13, '服务指南', 0, 1, 1, 3, 'Article'),
(14, '下载中心', 0, 1, 1, 1, 'download'),
(28, '政策理论', 0, 0, 1, 0, 'Article'),
(19, '工作动态', 0, 0, 1, 0, 'Article'),
(15, '学校章程', 7, 0, 1, 0, 'Article'),
(16, '校规校纪', 7, 0, 1, 0, 'Article'),
(17, '校风校训', 7, 0, 1, 0, 'Article'),
(21, '档案室', 4, 0, 1, 0, 'Article'),
(22, '校友联络科', 4, 0, 1, 0, 'Article'),
(23, '上级文件', 8, 0, 1, 0, 'Article'),
(24, '学校文件', 8, 0, 1, 0, 'Article'),
(25, '督查督办', 8, 0, 1, 0, 'Article'),
(26, '其他公示', 8, 0, 1, 0, 'Article'),
(36, '公文处理', 14, 0, 1, 0, 'Article'),
(35, '公务接待', 14, 0, 1, 0, 'Article'),
(34, '综合协调', 14, 0, 1, 0, 'Article'),
(38, '其他', 14, 0, 1, 0, 'Article');

-- --------------------------------------------------------

--
-- 表的结构 `f_commission`
--

CREATE TABLE IF NOT EXISTS `f_commission` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mem_name` varchar(50) NOT NULL COMMENT '用户名',
  `mem_id` int(10) NOT NULL COMMENT '用户id',
  `time` varchar(13) DEFAULT NULL COMMENT '时间',
  `money` decimal(10,2) NOT NULL COMMENT '佣金',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='佣金发放' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `f_commission`
--

INSERT INTO `f_commission` (`id`, `mem_name`, `mem_id`, `time`, `money`) VALUES
(1, 'maodou', 1, '1487151005', 10000.00),
(2, 'maodou', 1, '1487402152', 10000.00),
(3, 'maodou', 1, '1487406325', 10000.00),
(4, 'maodou', 1, '1487406803', 10000.00),
(5, 'maodou', 1, '1487732364', 20000.00);

-- --------------------------------------------------------

--
-- 表的结构 `f_creditor`
--

CREATE TABLE IF NOT EXISTS `f_creditor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `number` varchar(100) DEFAULT NULL COMMENT '催收编号',
  `reson` varchar(255) DEFAULT NULL COMMENT '欠款原因',
  `r_type` tinyint(1) DEFAULT '1' COMMENT '债权人类型1个人 2企业',
  `r_name` varchar(100) DEFAULT NULL COMMENT '债权人名称',
  `r_cardno` varchar(50) DEFAULT NULL COMMENT '债权人证件号',
  `r_tel` varchar(100) DEFAULT NULL COMMENT '债权人手机号',
  `was_r_type` tinyint(1) DEFAULT '1' COMMENT '被催收人类型1个人 2企业',
  `was_r_name` varchar(100) DEFAULT NULL COMMENT '被催收人名称',
  `was_r_cardno` varchar(50) DEFAULT NULL COMMENT '被催收人证件号',
  `was_r_tel` varchar(100) DEFAULT NULL COMMENT '被催收人手机号',
  `was_r_province` varchar(30) DEFAULT NULL,
  `was_r_city` varchar(30) DEFAULT NULL COMMENT '催收城市',
  `r_liquidate` int(10) DEFAULT '0' COMMENT '清收时间 天数',
  `r_overdue_date` int(10) DEFAULT '0' COMMENT '逾期时间 天数',
  `r_total_money` decimal(10,2) DEFAULT '0.00' COMMENT '债务金额',
  `r_difficulty` tinyint(1) NOT NULL COMMENT '催收难度1,2,3,4,5 难度系数',
  `commission` decimal(10,2) NOT NULL COMMENT '佣金',
  `r_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '催收状态0未接单  1催收中（已接单） 2已完成  3暂停中',
  `content` text COMMENT '内容',
  `lawyer_letter` varchar(255) DEFAULT NULL COMMENT '律师函',
  `pub_time` varchar(13) NOT NULL COMMENT '发布时间',
  `mem_id` int(10) DEFAULT '0' COMMENT '接单人ID',
  `mem_name` varchar(50) DEFAULT NULL COMMENT '接单人姓名',
  `r_liquidate_end` varchar(13) DEFAULT NULL COMMENT '接单到期时间',
  `finish_time` varchar(13) DEFAULT NULL COMMENT '催收完成时间',
  `audit` tinyint(1) DEFAULT '0' COMMENT '审核1用户提交完成 2催收完成',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='债权' AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `f_creditor`
--

INSERT INTO `f_creditor` (`id`, `number`, `reson`, `r_type`, `r_name`, `r_cardno`, `r_tel`, `was_r_type`, `was_r_name`, `was_r_cardno`, `was_r_tel`, `was_r_province`, `was_r_city`, `r_liquidate`, `r_overdue_date`, `r_total_money`, `r_difficulty`, `commission`, `r_status`, `content`, `lawyer_letter`, `pub_time`, `mem_id`, `mem_name`, `r_liquidate_end`, `finish_time`, `audit`) VALUES
(8, '1702198580', '公共事业欠费', 1, '白客', '211151198905125263', '15478547451', 1, '毛克利', '210112197806285842', '15487547451', '河南', '周口市', 90, 254, 156000.00, 4, 13000.00, 1, '<p>此人很狡猾</p>', NULL, '1487468682', 1, 'maodou', '1495337497', NULL, 0),
(6, '1702056240', '借贷违约', 1, '测试', '411245199101122562', '15256587452', 1, '张汉', '411254199202145874', '18785874587', '北京', '北京', 60, 56, 128600.00, 5, 11200.00, 2, '<p>已催款5次</p>', NULL, '1486286306', 1, 'maodou', '1492503188', NULL, 2),
(7, '1702056240', '服务欠款', 1, '测试', '411245199101122562', '15256587452', 1, '张汉', '411254199202145874', '18785874587', '北京', '北京', 60, 56, 112000.00, 3, 8000.00, 2, '<p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; color: rgb(51, 51, 51); word-wrap: break-word; font-family: 微软雅黑, 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　<strong style="border: 0px; margin: 0px; padding: 0px;"><span style="border: 0px; margin: 0px; padding: 0px;">电话催收：</span></strong><span style="border: 0px; margin: 0px; padding: 0px;">催收人员利用电话进行沟通，避免人情压力与尴尬，减少直接冲突，但效果因人而异。&nbsp;</span><span style="border: 0px; margin: 0px; padding: 0px;"></span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; color: rgb(51, 51, 51); word-wrap: break-word; font-family: 微软雅黑, 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　<strong style="border: 0px; margin: 0px; padding: 0px;"><span style="border: 0px; margin: 0px; padding: 0px;">外访催收：</span></strong><span style="border: 0px; margin: 0px; padding: 0px;">在电话催收未果之时，以合情合法的现场外访予以辅助。外访催收是一种非常直接有效的催收方式，很多银行及小额信贷机构都在用。&nbsp;</span><span style="border: 0px; margin: 0px; padding: 0px;"></span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; color: rgb(51, 51, 51); word-wrap: break-word; font-family: 微软雅黑, 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　<strong style="border: 0px; margin: 0px; padding: 0px;"><span style="border: 0px; margin: 0px; padding: 0px;">委外催收：</span></strong><span style="border: 0px; margin: 0px; padding: 0px;">将不良贷款项目委托给有相应资质的第三方催收公司进行催收。能够节省委托单位的人力物力，凭借专业的第三方机构更好地回收欠款，但成本较高。&nbsp;</span><span style="border: 0px; margin: 0px; padding: 0px;"></span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; color: rgb(51, 51, 51); word-wrap: break-word; font-family: 微软雅黑, 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　<strong style="border: 0px; margin: 0px; padding: 0px;"><span style="border: 0px; margin: 0px; padding: 0px;">网络拍卖：</span></strong><span style="border: 0px; margin: 0px; padding: 0px;">在法律法规许可的条件下，将债务人的资产如房子、车子、债权等，做成适合散户投资的产品，在互联网上予以拍卖，能以较快速度归还逾期款项。&nbsp;</span><span style="border: 0px; margin: 0px; padding: 0px;"></span></p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; color: rgb(51, 51, 51); word-wrap: break-word; font-family: 微软雅黑, 宋体; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　<strong style="border: 0px; margin: 0px; padding: 0px;"><span style="border: 0px; margin: 0px; padding: 0px;">诉讼催收：</span></strong><span style="border: 0px; margin: 0px; padding: 0px;">即向法院提起诉讼进行催收，诉讼类型包括民事诉讼、刑事诉讼两种。诉讼催收针对的欠款人群主要是有能力还款却不还的借款人。&nbsp;</span></p><p><br/></p>', NULL, '1486286306', 1, 'maodou', '1492586085', NULL, 2),
(10, '1702217983', '租赁欠款', 1, '毛毛', '210212199205232563', '15028574125', 1, '小明', '211232199201142563', '18759658741', '河南', '郑州市', 120, 96, 216300.00, 4, 12500.00, 1, '<p>欠债不还，打死他丫的</p><p>欠债不还，打死他丫的</p><p>欠债不还，打死他丫的</p><p>欠债不还，打死他丫的</p><p>欠债不还，打死他丫的</p><p>欠债不还，打死他丫的</p><p>欠债不还，打死他丫的</p><p>欠债不还，打死他丫的</p><p>欠债不还，打死他丫的</p><p>欠债不还，打死他丫的</p>', NULL, '1487668103', 2, 'ifly', '1498037393', NULL, 0),
(11, '1702225941', '保险相关', 1, '刘德华', '8332', '8332', 1, '周星驰', '3258', '3255', '陕西', '渭南市', 52, 32, 200000.00, 1, 20000.00, 2, '<p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　新京报快讯(记者林斐然 实习生李阳)2月21日晚6时30分，辽宁省凌海市一民爆公司发生爆炸事故，截至22日凌晨2时，新京报记者从凌海市政府部门方面确认，该起事故造成3死21伤，目前事故原因仍在调查。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　多位当地市民反映，21日晚6时许，凌海市内均可听到天空中传来巨响，并伴有较强震感。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　新京报记者从凌海市政府应急办证实，凌海市山发民爆有限公司（锦州申瑞泰爆破工程有限公司凌海分公司）于当晚6时30分发生爆炸。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　事发时，该公司正在销毁炸药，过程中起火引起爆炸，导致3人死亡， 21人受伤。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　公开资料显示，凌海市山发民爆有限公司位于凌海市大业乡毛峪村，2004年3月31日成立，注资30万，经营范围为民用爆炸物品销售、储存，持有辽宁省经</p><p><br/></p>', NULL, '1487726040', 1, 'maodou', '1492225098', NULL, 2),
(12, '1702226050', '劳动关系', 1, '李德', '5213526545122563', '21215576155', 1, '博古', '8812541022453232', '48745211211', '河南', '郑州市', 855, 54, 852412.22, 5, 22546.00, 0, '<p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　新京报快讯(记者林斐然 实习生李阳)2月21日晚6时30分，辽宁省凌海市一民爆公司发生爆炸事故，截至22日凌晨2时，新京报记者从凌海市政府部门方面确认，该起事故造成3死21伤，目前事故原因仍在调查。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　多位当地市民反映，21日晚6时许，凌海市内均可听到天空中传来巨响，并伴有较强震感。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　新京报记者从凌海市政府应急办证实，凌海市山发民爆有限公司（锦州申瑞泰爆破工程有限公司凌海分公司）于当晚6时30分发生爆炸。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　事发时，该公司正在销毁炸药，过程中起火引起爆炸，导致3人死亡， 21人受伤。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　公开资料显示，凌海市山发民爆有限公司位于凌海市大业乡毛峪村，2004年3月31日成立，注资30万，经营范围为民用爆炸物品销售、储存，持有辽宁省经</p><p><br/></p>', NULL, '1487726106', 0, NULL, NULL, NULL, 0),
(13, '1702226110', '借贷违约', 1, '刘建', '54521548545481', '12154215451215', 1, '张扬', '545448515121632658', '151541212512', '新疆', '喀什地区', 21, 85, 121341.20, 3, 151.00, 0, '<p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　新京报快讯(记者林斐然 实习生李阳)2月21日晚6时30分，辽宁省凌海市一民爆公司发生爆炸事故，截至22日凌晨2时，新京报记者从凌海市政府部门方面确认，该起事故造成3死21伤，目前事故原因仍在调查。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　多位当地市民反映，21日晚6时许，凌海市内均可听到天空中传来巨响，并伴有较强震感。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　新京报记者从凌海市政府应急办证实，凌海市山发民爆有限公司（锦州申瑞泰爆破工程有限公司凌海分公司）于当晚6时30分发生爆炸。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　事发时，该公司正在销毁炸药，过程中起火引起爆炸，导致3人死亡， 21人受伤。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　公开资料显示，凌海市山发民爆有限公司位于凌海市大业乡毛峪村，2004年3月31日成立，注资30万，经营范围为民用爆炸物品销售、储存，持有辽宁省经</p><p><br/></p>', NULL, '1487726163', 0, NULL, NULL, NULL, 0),
(14, '1702226177', '税务拖欠', 1, '江华', '121546154841215', '18454512154312', 1, '古巨炮', '5641144165421321', '1321461.2132456', '宁夏', '中卫市', 215, 56, 5200000.00, 4, 3000.00, 0, '<p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　新京报快讯(记者林斐然 实习生李阳)2月21日晚6时30分，辽宁省凌海市一民爆公司发生爆炸事故，截至22日凌晨2时，新京报记者从凌海市政府部门方面确认，该起事故造成3死21伤，目前事故原因仍在调查。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　多位当地市民反映，21日晚6时许，凌海市内均可听到天空中传来巨响，并伴有较强震感。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　新京报记者从凌海市政府应急办证实，凌海市山发民爆有限公司（锦州申瑞泰爆破工程有限公司凌海分公司）于当晚6时30分发生爆炸。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　事发时，该公司正在销毁炸药，过程中起火引起爆炸，导致3人死亡， 21人受伤。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　公开资料显示，凌海市山发民爆有限公司位于凌海市大业乡毛峪村，2004年3月31日成立，注资30万，经营范围为民用爆炸物品销售、储存，持有辽宁省经</p><p><br/></p>', NULL, '1487726238', 0, NULL, NULL, NULL, 0),
(15, '1702226400', '租赁欠款', 1, '王胖子', '123456781848454545121', '1214513154546', 1, '李瘦子', '123456854815154121', '545124313245431', '陕西', '安康市', 23, 62, 500000.00, 3, 5000.00, 0, '<p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　新京报快讯(记者林斐然 实习生李阳)2月21日晚6时30分，辽宁省凌海市一民爆公司发生爆炸事故，截至22日凌晨2时，新京报记者从凌海市政府部门方面确认，该起事故造成3死21伤，目前事故原因仍在调查。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　多位当地市民反映，21日晚6时许，凌海市内均可听到天空中传来巨响，并伴有较强震感。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　新京报记者从凌海市政府应急办证实，凌海市山发民爆有限公司（锦州申瑞泰爆破工程有限公司凌海分公司）于当晚6时30分发生爆炸。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　事发时，该公司正在销毁炸药，过程中起火引起爆炸，导致3人死亡， 21人受伤。</p><p style="border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; font-family: 宋体, simsun, sans-serif, Arial; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);">　　公开资料显示，凌海市山发民爆有限公司位于凌海市大业乡毛峪村，2004年3月31日成立，注资30万，经营范围为民用爆炸物品销售、储存，持有辽宁省经</p><p><br/></p>', NULL, '1487726460', 0, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `f_friendlink`
--

CREATE TABLE IF NOT EXISTS `f_friendlink` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `sort` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='友情链接' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `f_friendlink`
--

INSERT INTO `f_friendlink` (`id`, `url`, `name`, `sort`) VALUES
(1, 'http://www.lyzgw.com/Index.asp', '洛阳政工网', 0),
(2, 'http://www.people.com.cn/', '人民网', 0),
(3, 'http://www.wenming.cn/', '中央文明网', 0),
(4, 'http://wenming.dahe.cn/', '河南文明网', 0);

-- --------------------------------------------------------

--
-- 表的结构 `f_getcash`
--

CREATE TABLE IF NOT EXISTS `f_getcash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mem_id` int(10) NOT NULL COMMENT '会员id',
  `mem_name` varchar(50) NOT NULL COMMENT '会员名',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '提现金额',
  `apply_time` int(10) NOT NULL COMMENT '提现时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '提现状态0默认，1处理中，2已打款。',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户提现记录' AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `f_getcash`
--

INSERT INTO `f_getcash` (`id`, `mem_id`, `mem_name`, `money`, `apply_time`, `status`) VALUES
(1, 1, 'maodou', 100.00, 0, 2),
(2, 1, 'maodou', 0.00, 200, 2),
(3, 1, '张冬冬', 100.00, 1487402236, 2),
(4, 1, '张冬冬', 900.00, 1487408083, 2),
(5, 1, '张冬冬', 1000.00, 1487466788, 2),
(6, 1, '张冬冬', 200.00, 1487467723, 2),
(7, 1, '张冬冬', 7800.00, 1487484964, 2);

-- --------------------------------------------------------

--
-- 表的结构 `f_local_city`
--

CREATE TABLE IF NOT EXISTS `f_local_city` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `cityid` int(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `provinceid` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `provinceid` (`provinceid`),
  KEY `cityid` (`cityid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='城市' AUTO_INCREMENT=346 ;

--
-- 转存表中的数据 `f_local_city`
--

INSERT INTO `f_local_city` (`id`, `cityid`, `city`, `provinceid`) VALUES
(1, 110100, '北京市', 110000),
(3, 120100, '天津市', 120000),
(5, 130100, '石家庄市', 130000),
(6, 130200, '唐山市', 130000),
(7, 130300, '秦皇岛市', 130000),
(8, 130400, '邯郸市', 130000),
(9, 130500, '邢台市', 130000),
(10, 130600, '保定市', 130000),
(11, 130700, '张家口市', 130000),
(12, 130800, '承德市', 130000),
(13, 130900, '沧州市', 130000),
(14, 131000, '廊坊市', 130000),
(15, 131100, '衡水市', 130000),
(16, 140100, '太原市', 140000),
(17, 140200, '大同市', 140000),
(18, 140300, '阳泉市', 140000),
(19, 140400, '长治市', 140000),
(20, 140500, '晋城市', 140000),
(21, 140600, '朔州市', 140000),
(22, 140700, '晋中市', 140000),
(23, 140800, '运城市', 140000),
(24, 140900, '忻州市', 140000),
(25, 141000, '临汾市', 140000),
(26, 141100, '吕梁市', 140000),
(27, 150100, '呼和浩特市', 150000),
(28, 150200, '包头市', 150000),
(29, 150300, '乌海市', 150000),
(30, 150400, '赤峰市', 150000),
(31, 150500, '通辽市', 150000),
(32, 150600, '鄂尔多斯市', 150000),
(33, 150700, '呼伦贝尔市', 150000),
(34, 150800, '巴彦淖尔市', 150000),
(35, 150900, '乌兰察布市', 150000),
(36, 152200, '兴安盟', 150000),
(37, 152500, '锡林郭勒盟', 150000),
(38, 152900, '阿拉善盟', 150000),
(39, 210100, '沈阳市', 210000),
(40, 210200, '大连市', 210000),
(41, 210300, '鞍山市', 210000),
(42, 210400, '抚顺市', 210000),
(43, 210500, '本溪市', 210000),
(44, 210600, '丹东市', 210000),
(45, 210700, '锦州市', 210000),
(46, 210800, '营口市', 210000),
(47, 210900, '阜新市', 210000),
(48, 211000, '辽阳市', 210000),
(49, 211100, '盘锦市', 210000),
(50, 211200, '铁岭市', 210000),
(51, 211300, '朝阳市', 210000),
(52, 211400, '葫芦岛市', 210000),
(53, 220100, '长春市', 220000),
(54, 220200, '吉林市', 220000),
(55, 220300, '四平市', 220000),
(56, 220400, '辽源市', 220000),
(57, 220500, '通化市', 220000),
(58, 220600, '白山市', 220000),
(59, 220700, '松原市', 220000),
(60, 220800, '白城市', 220000),
(61, 222400, '延边朝鲜族自治州', 220000),
(62, 230100, '哈尔滨市', 230000),
(63, 230200, '齐齐哈尔市', 230000),
(64, 230300, '鸡西市', 230000),
(65, 230400, '鹤岗市', 230000),
(66, 230500, '双鸭山市', 230000),
(67, 230600, '大庆市', 230000),
(68, 230700, '伊春市', 230000),
(69, 230800, '佳木斯市', 230000),
(70, 230900, '七台河市', 230000),
(71, 231000, '牡丹江市', 230000),
(72, 231100, '黑河市', 230000),
(73, 231200, '绥化市', 230000),
(74, 232700, '大兴安岭地区', 230000),
(75, 310100, '市辖区', 310000),
(76, 310200, '县', 310000),
(77, 320100, '南京市', 320000),
(78, 320200, '无锡市', 320000),
(79, 320300, '徐州市', 320000),
(80, 320400, '常州市', 320000),
(81, 320500, '苏州市', 320000),
(82, 320600, '南通市', 320000),
(83, 320700, '连云港市', 320000),
(84, 320800, '淮安市', 320000),
(85, 320900, '盐城市', 320000),
(86, 321000, '扬州市', 320000),
(87, 321100, '镇江市', 320000),
(88, 321200, '泰州市', 320000),
(89, 321300, '宿迁市', 320000),
(90, 330100, '杭州市', 330000),
(91, 330200, '宁波市', 330000),
(92, 330300, '温州市', 330000),
(93, 330400, '嘉兴市', 330000),
(94, 330500, '湖州市', 330000),
(95, 330600, '绍兴市', 330000),
(96, 330700, '金华市', 330000),
(97, 330800, '衢州市', 330000),
(98, 330900, '舟山市', 330000),
(99, 331000, '台州市', 330000),
(100, 331100, '丽水市', 330000),
(101, 340100, '合肥市', 340000),
(102, 340200, '芜湖市', 340000),
(103, 340300, '蚌埠市', 340000),
(104, 340400, '淮南市', 340000),
(105, 340500, '马鞍山市', 340000),
(106, 340600, '淮北市', 340000),
(107, 340700, '铜陵市', 340000),
(108, 340800, '安庆市', 340000),
(109, 341000, '黄山市', 340000),
(110, 341100, '滁州市', 340000),
(111, 341200, '阜阳市', 340000),
(112, 341300, '宿州市', 340000),
(113, 341400, '巢湖市', 340000),
(114, 341500, '六安市', 340000),
(115, 341600, '亳州市', 340000),
(116, 341700, '池州市', 340000),
(117, 341800, '宣城市', 340000),
(118, 350100, '福州市', 350000),
(119, 350200, '厦门市', 350000),
(120, 350300, '莆田市', 350000),
(121, 350400, '三明市', 350000),
(122, 350500, '泉州市', 350000),
(123, 350600, '漳州市', 350000),
(124, 350700, '南平市', 350000),
(125, 350800, '龙岩市', 350000),
(126, 350900, '宁德市', 350000),
(127, 360100, '南昌市', 360000),
(128, 360200, '景德镇市', 360000),
(129, 360300, '萍乡市', 360000),
(130, 360400, '九江市', 360000),
(131, 360500, '新余市', 360000),
(132, 360600, '鹰潭市', 360000),
(133, 360700, '赣州市', 360000),
(134, 360800, '吉安市', 360000),
(135, 360900, '宜春市', 360000),
(136, 361000, '抚州市', 360000),
(137, 361100, '上饶市', 360000),
(138, 370100, '济南市', 370000),
(139, 370200, '青岛市', 370000),
(140, 370300, '淄博市', 370000),
(141, 370400, '枣庄市', 370000),
(142, 370500, '东营市', 370000),
(143, 370600, '烟台市', 370000),
(144, 370700, '潍坊市', 370000),
(145, 370800, '济宁市', 370000),
(146, 370900, '泰安市', 370000),
(147, 371000, '威海市', 370000),
(148, 371100, '日照市', 370000),
(149, 371200, '莱芜市', 370000),
(150, 371300, '临沂市', 370000),
(151, 371400, '德州市', 370000),
(152, 371500, '聊城市', 370000),
(153, 371600, '滨州市', 370000),
(154, 371700, '荷泽市', 370000),
(155, 410100, '郑州市', 410000),
(156, 410200, '开封市', 410000),
(157, 410300, '洛阳市', 410000),
(158, 410400, '平顶山市', 410000),
(159, 410500, '安阳市', 410000),
(160, 410600, '鹤壁市', 410000),
(161, 410700, '新乡市', 410000),
(162, 410800, '焦作市', 410000),
(163, 410900, '濮阳市', 410000),
(164, 411000, '许昌市', 410000),
(165, 411100, '漯河市', 410000),
(166, 411200, '三门峡市', 410000),
(167, 411300, '南阳市', 410000),
(168, 411400, '商丘市', 410000),
(169, 411500, '信阳市', 410000),
(170, 411600, '周口市', 410000),
(171, 411700, '驻马店市', 410000),
(172, 420100, '武汉市', 420000),
(173, 420200, '黄石市', 420000),
(174, 420300, '十堰市', 420000),
(175, 420500, '宜昌市', 420000),
(176, 420600, '襄樊市', 420000),
(177, 420700, '鄂州市', 420000),
(178, 420800, '荆门市', 420000),
(179, 420900, '孝感市', 420000),
(180, 421000, '荆州市', 420000),
(181, 421100, '黄冈市', 420000),
(182, 421200, '咸宁市', 420000),
(183, 421300, '随州市', 420000),
(184, 422800, '恩施土家族苗族自治州', 420000),
(185, 429000, '省直辖行政单位', 420000),
(186, 430100, '长沙市', 430000),
(187, 430200, '株洲市', 430000),
(188, 430300, '湘潭市', 430000),
(189, 430400, '衡阳市', 430000),
(190, 430500, '邵阳市', 430000),
(191, 430600, '岳阳市', 430000),
(192, 430700, '常德市', 430000),
(193, 430800, '张家界市', 430000),
(194, 430900, '益阳市', 430000),
(195, 431000, '郴州市', 430000),
(196, 431100, '永州市', 430000),
(197, 431200, '怀化市', 430000),
(198, 431300, '娄底市', 430000),
(199, 433100, '湘西土家族苗族自治州', 430000),
(200, 440100, '广州市', 440000),
(201, 440200, '韶关市', 440000),
(202, 440300, '深圳市', 440000),
(203, 440400, '珠海市', 440000),
(204, 440500, '汕头市', 440000),
(205, 440600, '佛山市', 440000),
(206, 440700, '江门市', 440000),
(207, 440800, '湛江市', 440000),
(208, 440900, '茂名市', 440000),
(209, 441200, '肇庆市', 440000),
(210, 441300, '惠州市', 440000),
(211, 441400, '梅州市', 440000),
(212, 441500, '汕尾市', 440000),
(213, 441600, '河源市', 440000),
(214, 441700, '阳江市', 440000),
(215, 441800, '清远市', 440000),
(216, 441900, '东莞市', 440000),
(217, 442000, '中山市', 440000),
(218, 445100, '潮州市', 440000),
(219, 445200, '揭阳市', 440000),
(220, 445300, '云浮市', 440000),
(221, 450100, '南宁市', 450000),
(222, 450200, '柳州市', 450000),
(223, 450300, '桂林市', 450000),
(224, 450400, '梧州市', 450000),
(225, 450500, '北海市', 450000),
(226, 450600, '防城港市', 450000),
(227, 450700, '钦州市', 450000),
(228, 450800, '贵港市', 450000),
(229, 450900, '玉林市', 450000),
(230, 451000, '百色市', 450000),
(231, 451100, '贺州市', 450000),
(232, 451200, '河池市', 450000),
(233, 451300, '来宾市', 450000),
(234, 451400, '崇左市', 450000),
(235, 460100, '海口市', 460000),
(236, 460200, '三亚市', 460000),
(237, 469000, '省直辖县级行政单位', 460000),
(238, 500100, '市辖区', 500000),
(239, 500200, '县', 500000),
(240, 500300, '市', 500000),
(241, 510100, '成都市', 510000),
(242, 510300, '自贡市', 510000),
(243, 510400, '攀枝花市', 510000),
(244, 510500, '泸州市', 510000),
(245, 510600, '德阳市', 510000),
(246, 510700, '绵阳市', 510000),
(247, 510800, '广元市', 510000),
(248, 510900, '遂宁市', 510000),
(249, 511000, '内江市', 510000),
(250, 511100, '乐山市', 510000),
(251, 511300, '南充市', 510000),
(252, 511400, '眉山市', 510000),
(253, 511500, '宜宾市', 510000),
(254, 511600, '广安市', 510000),
(255, 511700, '达州市', 510000),
(256, 511800, '雅安市', 510000),
(257, 511900, '巴中市', 510000),
(258, 512000, '资阳市', 510000),
(259, 513200, '阿坝藏族羌族自治州', 510000),
(260, 513300, '甘孜藏族自治州', 510000),
(261, 513400, '凉山彝族自治州', 510000),
(262, 520100, '贵阳市', 520000),
(263, 520200, '六盘水市', 520000),
(264, 520300, '遵义市', 520000),
(265, 520400, '安顺市', 520000),
(266, 522200, '铜仁地区', 520000),
(267, 522300, '黔西南布依族苗族自治州', 520000),
(268, 522400, '毕节地区', 520000),
(269, 522600, '黔东南苗族侗族自治州', 520000),
(270, 522700, '黔南布依族苗族自治州', 520000),
(271, 530100, '昆明市', 530000),
(272, 530300, '曲靖市', 530000),
(273, 530400, '玉溪市', 530000),
(274, 530500, '保山市', 530000),
(275, 530600, '昭通市', 530000),
(276, 530700, '丽江市', 530000),
(277, 530800, '思茅市', 530000),
(278, 530900, '临沧市', 530000),
(279, 532300, '楚雄彝族自治州', 530000),
(280, 532500, '红河哈尼族彝族自治州', 530000),
(281, 532600, '文山壮族苗族自治州', 530000),
(282, 532800, '西双版纳傣族自治州', 530000),
(283, 532900, '大理白族自治州', 530000),
(284, 533100, '德宏傣族景颇族自治州', 530000),
(285, 533300, '怒江傈僳族自治州', 530000),
(286, 533400, '迪庆藏族自治州', 530000),
(287, 540100, '拉萨市', 540000),
(288, 542100, '昌都地区', 540000),
(289, 542200, '山南地区', 540000),
(290, 542300, '日喀则地区', 540000),
(291, 542400, '那曲地区', 540000),
(292, 542500, '阿里地区', 540000),
(293, 542600, '林芝地区', 540000),
(294, 610100, '西安市', 610000),
(295, 610200, '铜川市', 610000),
(296, 610300, '宝鸡市', 610000),
(297, 610400, '咸阳市', 610000),
(298, 610500, '渭南市', 610000),
(299, 610600, '延安市', 610000),
(300, 610700, '汉中市', 610000),
(301, 610800, '榆林市', 610000),
(302, 610900, '安康市', 610000),
(303, 611000, '商洛市', 610000),
(304, 620100, '兰州市', 620000),
(305, 620200, '嘉峪关市', 620000),
(306, 620300, '金昌市', 620000),
(307, 620400, '白银市', 620000),
(308, 620500, '天水市', 620000),
(309, 620600, '武威市', 620000),
(310, 620700, '张掖市', 620000),
(311, 620800, '平凉市', 620000),
(312, 620900, '酒泉市', 620000),
(313, 621000, '庆阳市', 620000),
(314, 621100, '定西市', 620000),
(315, 621200, '陇南市', 620000),
(316, 622900, '临夏回族自治州', 620000),
(317, 623000, '甘南藏族自治州', 620000),
(318, 630100, '西宁市', 630000),
(319, 632100, '海东地区', 630000),
(320, 632200, '海北藏族自治州', 630000),
(321, 632300, '黄南藏族自治州', 630000),
(322, 632500, '海南藏族自治州', 630000),
(323, 632600, '果洛藏族自治州', 630000),
(324, 632700, '玉树藏族自治州', 630000),
(325, 632800, '海西蒙古族藏族自治州', 630000),
(326, 640100, '银川市', 640000),
(327, 640200, '石嘴山市', 640000),
(328, 640300, '吴忠市', 640000),
(329, 640400, '固原市', 640000),
(330, 640500, '中卫市', 640000),
(331, 650100, '乌鲁木齐市', 650000),
(332, 650200, '克拉玛依市', 650000),
(333, 652100, '吐鲁番地区', 650000),
(334, 652200, '哈密地区', 650000),
(335, 652300, '昌吉回族自治州', 650000),
(336, 652700, '博尔塔拉蒙古自治州', 650000),
(337, 652800, '巴音郭楞蒙古自治州', 650000),
(338, 652900, '阿克苏地区', 650000),
(339, 653000, '克孜勒苏柯尔克孜自治州', 650000),
(340, 653100, '喀什地区', 650000),
(341, 653200, '和田地区', 650000),
(342, 654000, '伊犁哈萨克自治州', 650000),
(343, 654200, '塔城地区', 650000),
(344, 654300, '阿勒泰地区', 650000),
(345, 659000, '省直辖行政单位', 650000);

-- --------------------------------------------------------

--
-- 表的结构 `f_local_provinces`
--

CREATE TABLE IF NOT EXISTS `f_local_provinces` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `provinceid` int(10) NOT NULL,
  `province` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `provinceid` (`provinceid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='省份' AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `f_local_provinces`
--

INSERT INTO `f_local_provinces` (`id`, `provinceid`, `province`) VALUES
(1, 110000, '北京市'),
(2, 120000, '天津市'),
(3, 130000, '河北省'),
(4, 140000, '山西省'),
(5, 150000, '内蒙古自治区'),
(6, 210000, '辽宁省'),
(7, 220000, '吉林省'),
(8, 230000, '黑龙江省'),
(9, 310000, '上海市'),
(10, 320000, '江苏省'),
(11, 330000, '浙江省'),
(12, 340000, '安徽省'),
(13, 350000, '福建省'),
(14, 360000, '江西省'),
(15, 370000, '山东省'),
(16, 410000, '河南省'),
(17, 420000, '湖北省'),
(18, 430000, '湖南省'),
(19, 440000, '广东省'),
(20, 450000, '广西壮族自治区'),
(21, 460000, '海南省'),
(22, 500000, '重庆市'),
(23, 510000, '四川省'),
(24, 520000, '贵州省'),
(25, 530000, '云南省'),
(26, 540000, '西藏自治区'),
(27, 610000, '陕西省'),
(28, 620000, '甘肃省'),
(29, 630000, '青海省'),
(30, 640000, '宁夏回族自治区'),
(31, 650000, '新疆维吾尔自治区'),
(32, 710000, '台湾省'),
(33, 810000, '香港特别行政区'),
(34, 820000, '澳门特别行政区');

-- --------------------------------------------------------

--
-- 表的结构 `f_member`
--

CREATE TABLE IF NOT EXISTS `f_member` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mname` varchar(50) NOT NULL COMMENT '用户名',
  `pwd` varchar(48) NOT NULL COMMENT '密码',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `realname` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `idcard` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `idcard_face` varchar(255) DEFAULT NULL COMMENT '身份证正面',
  `idcard_side` varchar(255) DEFAULT NULL COMMENT '身份证反面',
  `person_idcard` varchar(255) DEFAULT NULL COMMENT '手持身份证照片',
  `bank_name` varchar(50) DEFAULT NULL COMMENT '银行名称',
  `bank_cardno` varchar(20) DEFAULT NULL COMMENT '银行卡号',
  `tel` varchar(100) DEFAULT NULL COMMENT '手机号',
  `certification` tinyint(1) DEFAULT '0' COMMENT '0未实名认证 1已实名 认证 2拒绝认证',
  `certific_time` varchar(13) DEFAULT NULL COMMENT '认证时间',
  `reason` varchar(255) DEFAULT NULL COMMENT '拒绝原因',
  `balance` decimal(10,2) DEFAULT '0.00' COMMENT '账户余额',
  `balance_money` decimal(10,2) DEFAULT '0.00' COMMENT '可用余额',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='会员' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `f_member`
--

INSERT INTO `f_member` (`id`, `mname`, `pwd`, `avatar`, `realname`, `idcard`, `idcard_face`, `idcard_side`, `person_idcard`, `bank_name`, `bank_cardno`, `tel`, `certification`, `certific_time`, `reason`, `balance`, `balance_money`, `email`) VALUES
(1, 'maodou', 'e10adc3949ba59abbe56e057f20f883e', '2017-02-17/58a6b1db44b9c_94_94.jpg', '张冬冬', '414141414144545451', '2017-02-17/58a6a1375f6db_480_260.jpg', '2017-02-17/58a6a1376eaff_480_260.jpg', '2017-02-17/58a6a1378d347_480_260.jpg', '华夏123', '686888785474547854', '15258784574', 1, '1486366895', '', 0.00, 0.00, '573454190@qq.com'),
(2, 'ifly', 'e10adc3949ba59abbe56e057f20f883e', NULL, '张飞', '411254199002142563', '2017-02-20/58aa5b71502b7_480_260.jpg', '2017-02-20/58aa5b716eaff_480_260.jpg', '2017-02-20/58aa5b718963e_480_260.jpg', '工商银行', '6598587454785478', '15425487452', 2, NULL, '信息不一致，你是在逗我玩呢？', 0.00, 0.00, ''),
(3, 'iflys', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0.00, 0.00, NULL),
(4, '454545', 'ea051928caf84d26cf38a94771da2a95', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0.00, 0.00, NULL),
(5, '你是谁', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0.00, 0.00, NULL),
(6, 'wangxuwei', 'aa3a6a18ff4828d90b96a9b7deaa1b5f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0.00, 0.00, NULL),
(7, 'wangxuei', 'aa3a6a18ff4828d90b96a9b7deaa1b5f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0.00, 0.00, NULL),
(8, 'zybzyb', '2049d5a87c7ac0b8325f0d968060b9e7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0.00, 0.00, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `f_member_creditor_record`
--

CREATE TABLE IF NOT EXISTS `f_member_creditor_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mem_id` int(10) NOT NULL COMMENT '会员id',
  `mem_name` varchar(50) NOT NULL COMMENT '会员名称',
  `creditor_id` int(10) NOT NULL COMMENT '债券id',
  `receve_time` varchar(13) NOT NULL COMMENT '接单时间',
  `r_liquidate_end` varchar(13) NOT NULL COMMENT '到期时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `f_member_creditor_record`
--

INSERT INTO `f_member_creditor_record` (`id`, `mem_id`, `mem_name`, `creditor_id`, `receve_time`, `r_liquidate_end`) VALUES
(1, 1, 'maodou', 6, '1487208930', '1492392930'),
(2, 1, 'maodou', 7, '1487231070', '1492415070'),
(3, 1, 'maodou', 6, '1487319188', '1492503188'),
(4, 1, 'maodou', 7, '1487402085', '1492586085'),
(5, 1, 'maodou', 8, '1487561497', '1495337497'),
(6, 2, 'ifly', 10, '1487669393', '1498037393'),
(7, 1, 'maodou', 11, '1487732298', '1492225098');

-- --------------------------------------------------------

--
-- 表的结构 `f_site`
--

CREATE TABLE IF NOT EXISTS `f_site` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `SITE_URL` varchar(80) DEFAULT NULL,
  `SITE_TITLE` varchar(120) DEFAULT NULL,
  `KEYWORD` varchar(100) DEFAULT NULL,
  `DESCRIBE` varchar(255) DEFAULT NULL,
  `COPYRIHT` varchar(50) DEFAULT NULL,
  `ADDRESS` varchar(60) DEFAULT NULL,
  `MOBILE` varchar(20) DEFAULT NULL,
  `TEL` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `PAGESIZE` tinyint(2) DEFAULT NULL,
  `SINA_WEIBO` varchar(255) DEFAULT NULL,
  `QQ_WEIBO` varchar(100) DEFAULT NULL,
  `YOUBIAN` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `f_site`
--

INSERT INTO `f_site` (`id`, `SITE_URL`, `SITE_TITLE`, `KEYWORD`, `DESCRIBE`, `COPYRIHT`, `ADDRESS`, `MOBILE`, `TEL`, `EMAIL`, `PAGESIZE`, `SINA_WEIBO`, `QQ_WEIBO`, `YOUBIAN`) VALUES
(1, 'http://edu.onways.cn/', '洛阳理工学院', '洛阳理工学院', '洛阳理工学院', '版权所有 © 2015洛阳理工学院 请使用IE7以上浏览器预览', '河南省洛阳市洛龙区王城大道90号', '400-8939-555', '0379-65928000', '8625988835@163.com', 10, 'http://weibo.com/litedu?topnav=1&amp;wvr=6&amp;topsug=1', 'http://', '471023');
