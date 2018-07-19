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
-- 数据库: `demo`
--

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
-- 表的结构 `f_apply`
--

CREATE TABLE IF NOT EXISTS `f_apply` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `buy_time` varchar(15) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `apply_time` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='售后申请' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `f_apply`
--

INSERT INTO `f_apply` (`id`, `name`, `tel`, `address`, `type`, `buy_time`, `note`, `photo`, `apply_time`) VALUES
(1, '测试', '22222222222', '二二二', '二人', '耳热', '双方都', '2017-01-08/587257105fab4_200_200.jpg', '1483888400');

-- --------------------------------------------------------

--
-- 表的结构 `f_article`
--

CREATE TABLE IF NOT EXISTS `f_article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sort` tinyint(3) DEFAULT '0',
  `cate_id` int(10) NOT NULL COMMENT '栏目id',
  `title` varchar(150) NOT NULL COMMENT '标题',
  `desc` varchar(200) DEFAULT NULL COMMENT '描述',
  `content` text NOT NULL COMMENT '内容',
  `thumb` varchar(255) DEFAULT NULL,
  `attach` varchar(255) DEFAULT NULL COMMENT '附件',
  `pub_time` varchar(15) DEFAULT NULL,
  `seo_title` varchar(86) DEFAULT NULL,
  `seo_desc` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `title_2` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='文章' AUTO_INCREMENT=32 ;

--
-- 转存表中的数据 `f_article`
--

INSERT INTO `f_article` (`id`, `sort`, `cate_id`, `title`, `desc`, `content`, `thumb`, `attach`, `pub_time`, `seo_title`, `seo_desc`) VALUES
(11, 0, 10, '洛阳米科尼精密机械有限公司前身为CK精雕高级工作室', '洛阳米科尼精密机械有限公司前身为CK精雕高级工作室成立于2012年。公司自成立以来一直致力于小型精密3、4、5轴CNC的设计开发、 生产制造及销售。公司拥有年生产能力达300 台套龙门式小型精密CNC生产线以及精密3 轴、RTCP5轴精密加工中心、400精密数车加工能力。 公司秉承品质就是生命这一理念严控品质注重客户体验为客户提供全方位的技术服务在业内广受客户好评和赞誉。在公司蓬勃发展之际诚 邀有', '<p style="line-height: 1.5em; text-indent: 2em;">洛阳米科尼精密机械有限公司前身为CK精雕高级工作室成立于2012年。公司自成立以来一直致力于小型精密3、4、5轴CNC的设计开发、 生产制造及销售。公司拥有年生产能力达300 台套龙门式小型精密CNC生产线以及精密3 轴、RTCP5轴精密加工中心、400精密数车加工能力。 公司秉承品质就是生命这一理念严控品质注重客户体验为客户提供全方位的技术服务在业内广受客户好评和赞誉。在公司蓬勃发展之际诚 邀有识之士加入我们的团队共创辉煌。</p><br/><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; color: rgb(92, 92, 92); font-family: Helmet, Freesans, sans-serif; line-height: 30px; white-space: normal; background: rgb(255, 255, 255);"><br/></p><p><br/></p>', '2016-12-30/586616f60d21c_200_200.jpg', NULL, '1483085558', '发过节费', '附睾结核'),
(23, 0, 11, '油价上涨激发勘探业石油钻探设备出口激增', '这一系列产业政策的贯彻实施，得到广大防水企业的积极响应，对我国防水行业调整产业结构、实施宏观调控、推广新型防水材料、打击假冒伪劣产品、规范防水市场和推动行业技术进步，引导行业健康发展起到了有力的促进作用。（1）行业的工艺装备水平普遍提高。年产500万平方米能力改性沥青防水卷材生产线不断增多，性能更好的三元乙丙防水卷材加长硫化罐已投入运行。（2）推广应用产品明显增长，生产技术明显提高，产品结构明显改', '<p style="line-height: 1.5em; text-indent: 2em;">这一系列产业政策的贯彻实施，得到广大防水企业的积极响应，对我国防水行业调整产业结构、实施宏观调控、推广新型防水材料、打击假冒伪劣产品、规范防水市场和推动行业技术进步，引导行业健康发展起到了有力的促进作用。（1）行业的工艺装备水平普遍提高。年产500万平方米能力改性沥青防水卷材生产线不断增多，性能更好的三元乙丙防水卷材加长硫化罐已投入运行。（2）推广应用产品明显增长，生产技术明显提高，产品结构明显改善。SBS/APP改性沥青防水卷材、高分子防水卷材、中高档防水涂料均持续增长，中高档建筑密封材料大幅度增长。（3）落实限制使用产品和技术政策有突破性进展。规范聚乙烯丙纶防水卷材生产和应用，适时开发和推广环保型防水材料等显见成效。（4）禁止使用产品和技术的政策在不同范围和程度上得到落实。淘汰年产100万卷能力石油沥青纸胎油毡生产线、煤焦油基防水涂料和密封材料等的规定都得到较好的贯彻，二次成型聚乙烯丙纶卷材已基本退出市场。（5）新产品、新技术的研究开发和引进取得多方面的成果。高分子防水卷材胶粘剂、胶粘带的开发，玻纤沥青瓦、自粘防水卷材的生产和应用技术的开发，金属卷材、金属胎卷材的研发成果，为防水工程提供了更多的选择。</p>', NULL, NULL, '1484011380', '', ''),
(17, 0, 13, '资料下载', '资料下载', '<p>资料下载</p>', NULL, NULL, '1483866180', '', ''),
(18, 0, 13, '是大法官', '房顶上', '<p>房顶上</p>', NULL, '2017-01-08/58720b2289f58.docx', '1483868962', '', ''),
(19, 0, 10, '管理和质量保证体系国际质量管理和质量保证体系国际质量', '公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、', '<p><br/></p><p style="text-align: left; text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-align: left; text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-align: left; text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-align: left; text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-align: left; text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-align: left; text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-align: left; text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p>', NULL, NULL, '1484010409', '', ''),
(20, 0, 10, '全面实施ISO9000国际质量管理和质量保证体系', '公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、', '<p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p>', NULL, NULL, '1484010735', '', ''),
(21, 0, 10, '公司全面实施国际质量管理和质量保证体系司全面国际质量管', '公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、', '<p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p>', NULL, NULL, '1484010740', '', ''),
(22, 0, 10, '国际质量管理和质量保证体系国际质量体系', '公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、2000国际质量管理和质量保证体系公司全面实施ISO9000、', '<p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p><p style="text-indent: 2em;">公司全面实施ISO9000、2000国际质量管理和质量保证体系</p><p><br/></p>', NULL, NULL, '1484010929', '', ''),
(24, 0, 11, '上涨激发勘探业石油钻探设备出口激增', '这一系列产业政策的贯彻实施，得到广大防水企业的积极响应，对我国防水行业调整产业结构、实施宏观调控、推广新型防水材料、打击假冒伪劣产品、规范防水市场和推动行业技术进步，引导行业健康发展起到了有力的促进作用。（1）行业的工艺装备水平普遍提高。年产500万平方米能力改性沥青防水卷材生产线不断增多，性能更好的三元乙丙防水卷材加长硫化罐已投入运行。（2）推广应用产品明显增长，生产技术明显提高，产品结构明显改', '<p style="line-height: 1.5em; text-indent: 2em;">这一系列产业政策的贯彻实施，得到广大防水企业的积极响应，对我国防水行业调整产业结构、实施宏观调控、推广新型防水材料、打击假冒伪劣产品、规范防水市场和推动行业技术进步，引导行业健康发展起到了有力的促进作用。（1）行业的工艺装备水平普遍提高。年产500万平方米能力改性沥青防水卷材生产线不断增多，性能更好的三元乙丙防水卷材加长硫化罐已投入运行。（2）推广应用产品明显增长，生产技术明显提高，产品结构明显改善。SBS/APP改性沥青防水卷材、高分子防水卷材、中高档防水涂料均持续增长，中高档建筑密封材料大幅度增长。（3）落实限制使用产品和技术政策有突破性进展。规范聚乙烯丙纶防水卷材生产和应用，适时开发和推广环保型防水材料等显见成效。（4）禁止使用产品和技术的政策在不同范围和程度上得到落实。淘汰年产100万卷能力石油沥青纸胎油毡生产线、煤焦油基防水涂料和密封材料等的规定都得到较好的贯彻，二次成型聚乙烯丙纶卷材已基本退出市场。（5）新产品、新技术的研究开发和引进取得多方面的成果。高分子防水卷材胶粘剂、胶粘带的开发，玻纤沥青瓦、自粘防水卷材的生产和应用技术的开发，金属卷材、金属胎卷材的研发成果，为防水工程提供了更多的选择。</p>', NULL, NULL, '1484011421', '', ''),
(25, 0, 11, '涨激发勘探业石油钻探设备出口激增', '这一系列产业政策的贯彻实施，得到广大防水企业的积极响应，对我国防水行业调整产业结构、实施宏观调控、推广新型防水材料、打击假冒伪劣产品、规范防水市场和推动行业技术进步，引导行业健康发展起到了有力的促进作用。（1）行业的工艺装备水平普遍提高。年产500万平方米能力改性沥青防水卷材生产线不断增多，性能更好的三元乙丙防水卷材加长硫化罐已投入运行。（2）推广应用产品明显增长，生产技术明显提高，产品结构明显改', '<p style="text-indent: 2em; line-height: 1.5em;">这一系列产业政策的贯彻实施，得到广大防水企业的积极响应，对我国防水行业调整产业结构、实施宏观调控、推广新型防水材料、打击假冒伪劣产品、规范防水市场和推动行业技术进步，引导行业健康发展起到了有力的促进作用。（1）行业的工艺装备水平普遍提高。年产500万平方米能力改性沥青防水卷材生产线不断增多，性能更好的三元乙丙防水卷材加长硫化罐已投入运行。（2）推广应用产品明显增长，生产技术明显提高，产品结构明显改善。SBS/APP改性沥青防水卷材、高分子防水卷材、中高档防水涂料均持续增长，中高档建筑密封材料大幅度增长。（3）落实限制使用产品和技术政策有突破性进展。规范聚乙烯丙纶防水卷材生产和应用，适时开发和推广环保型防水材料等显见成效。（4）禁止使用产品和技术的政策在不同范围和程度上得到落实。淘汰年产100万卷能力石油沥青纸胎油毡生产线、煤焦油基防水涂料和密封材料等的规定都得到较好的贯彻，二次成型聚乙烯丙纶卷材已基本退出市场。（5）新产品、新技术的研究开发和引进取得多方面的成果。高分子防水卷材胶粘剂、胶粘带的开发，玻纤沥青瓦、自粘防水卷材的生产和应用技术的开发，金属卷材、金属胎卷材的研发成果，为防水工程提供了更多的选择。<br/></p><p><br/></p>', NULL, NULL, '1484011462', '', ''),
(26, 0, 11, '油价上涨激发勘探业石油钻探设备出口激增', '一系列产业政策的贯彻实施，得到广大防水企业的积极响应，对我国防水行业调整产业结构、实施宏观调控、推广新型防水材料、打击假冒伪劣产品、规范防水市场和推动行业技术进步，引导行业健康发展起到了有力的促进作用。（1）行业的工艺装备水平普遍提高。年产500万平方米能力改性沥青防水卷材生产线不断增多，性能更好的三元乙丙防水卷材加长硫化罐已投入运行。（2）推广应用产品明显增长，生产技术明显提高，产品结构明显改善', '<p style="text-indent: 2em; line-height: 1.5em;">一系列产业政策的贯彻实施，得到广大防水企业的积极响应，对我国防水行业调整产业结构、实施宏观调控、推广新型防水材料、打击假冒伪劣产品、规范防水市场和推动行业技术进步，引导行业健康发展起到了有力的促进作用。（1）行业的工艺装备水平普遍提高。年产500万平方米能力改性沥青防水卷材生产线不断增多，性能更好的三元乙丙防水卷材加长硫化罐已投入运行。（2）推广应用产品明显增长，生产技术明显提高，产品结构明显改善。SBS/APP改性沥青防水卷材、高分子防水卷材、中高档防水涂料均持续增长，中高档建筑密封材料大幅度增长。（3）落实限制使用产品和技术政策有突破性进展。规范聚乙烯丙纶防水卷材生产和应用，适时开发和推广环保型防水材料等显见成效。（4）禁止使用产品和技术的政策在不同范围和程度上得到落实。淘汰年产100万卷能力石油沥青纸胎油毡生产线、煤焦油基防水涂料和密封材料等的规定都得到较好的贯彻，二次成型聚乙烯丙纶卷材已基本退出市场。（5）新产品、新技术的研究开发和引进取得多方面的成果。高分子防水卷材胶粘剂、胶粘带的开发，玻纤沥青瓦、自粘防水卷材的生产和应用技术的开发，金属卷材、金属胎卷材的研发成果，为防水工程提供了更多的选择。</p>', NULL, NULL, '1484011506', '', ''),
(27, 0, 11, '涨激发勘探业石油钻探设备出口激增', '一系列产业政策的贯彻实施，得到广大防水企业的积极响应，对我国防水行业调整产业结构、实施宏观调控、推广新型防水材料、打击假冒伪劣产品、规范防水市场和推动行业技术进步，引导行业健康发展起到了有力的促进作用。（1）行业的工艺装备水平普遍提高。年产500万平方米能力改性沥青防水卷材生产线不断增多，性能更好的三元乙丙防水卷材加长硫化罐已投入运行。（2）推广应用产品明显增长，生产技术明显提高，产品结构明显改善', '<p style="text-indent: 2em; line-height: 1.5em;">一系列产业政策的贯彻实施，得到广大防水企业的积极响应，对我国防水行业调整产业结构、实施宏观调控、推广新型防水材料、打击假冒伪劣产品、规范防水市场和推动行业技术进步，引导行业健康发展起到了有力的促进作用。（1）行业的工艺装备水平普遍提高。年产500万平方米能力改性沥青防水卷材生产线不断增多，性能更好的三元乙丙防水卷材加长硫化罐已投入运行。（2）推广应用产品明显增长，生产技术明显提高，产品结构明显改善。SBS/APP改性沥青防水卷材、高分子防水卷材、中高档防水涂料均持续增长，中高档建筑密封材料大幅度增长。（3）落实限制使用产品和技术政策有突破性进展。规范聚乙烯丙纶防水卷材生产和应用，适时开发和推广环保型防水材料等显见成效。（4）禁止使用产品和技术的政策在不同范围和程度上得到落实。淘汰年产100万卷能力石油沥青纸胎油毡生产线、煤焦油基防水涂料和密封材料等的规定都得到较好的贯彻，二次成型聚乙烯丙纶卷材已基本退出市场。（5）新产品、新技术的研究开发和引进取得多方面的成果。高分子防水卷材胶粘剂、胶粘带的开发，玻纤沥青瓦、自粘防水卷材的生产和应用技术的开发，金属卷材、金属胎卷材的研发成果，为防水工程提供了更多的选择。<br/></p><p><br/></p>', NULL, NULL, '1484011564', '', ''),
(30, 0, 15, '测试2', '', '<p><video class="edui-upload-video  vjs-default-skin video-js" controls="" preload="none" width="420" height="280" src="/Uploads/video/2017-01-10/1484057901887349.mp4" data-setup="{}"></video></p>', '2017-01-10/5874ecca50ddd_200_200.png', NULL, '1484057766', '', ''),
(31, 0, 3, '测试1', '', '<p><video class="edui-upload-video  vjs-default-skin  video-js" controls="" preload="none" width="420" height="280" src data-setup="{}"></video></p>', '2017-01-11/5875a5060fc98_200_200.png', NULL, '1484104930', '', '');

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
  `model_name` varchar(20) DEFAULT 'category' COMMENT 'category 文章 page 单网页 product产品',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- 转存表中的数据 `f_category`
--

INSERT INTO `f_category` (`id`, `name`, `pid`, `display`, `model`, `sort`, `model_name`) VALUES
(1, '关于我们', 0, 1, 2, 1, 'page'),
(3, '视频展示', 0, 1, 1, 4, 'category'),
(4, '技术支持', 0, 1, 1, 5, 'down'),
(16, '联系我们', 0, 1, 2, 6, 'page'),
(6, '公司简介', 1, 0, 2, 0, 'page'),
(7, '发展历程', 1, 0, 2, 0, 'page'),
(8, '企业形象', 1, 0, 2, 0, 'page'),
(10, '公司新闻', 2, 0, 1, 0, 'category'),
(11, '行业新闻', 2, 0, 1, 0, 'category'),
(12, '媒体报到', 2, 0, 1, 0, 'category'),
(13, '资料下载', 4, 0, 1, 0, 'down'),
(14, '申请售后', 4, 0, 1, 0, 'shouhou'),
(15, '视频展示', 3, 0, 1, 0, 'category'),
(17, '产品中心', 0, 1, 3, 3, 'product'),
(18, '龙门式小型雕铣机', 17, 0, 3, 0, 'product'),
(19, '龙门式小型加工中心', 17, 0, 3, 0, 'product'),
(20, '立柱式小型加工中心 ', 17, 0, 3, 0, 'product'),
(21, '智能义齿机', 17, 0, 3, 0, 'product'),
(22, '电子地图', 16, 0, 2, 0, 'page'),
(2, '新闻中心', 0, 1, 1, 2, 'category');

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `f_friendlink`
--

INSERT INTO `f_friendlink` (`id`, `url`, `name`, `sort`) VALUES
(1, 'http://baidu.com', '百度', 0);

-- --------------------------------------------------------

--
-- 表的结构 `f_page`
--

CREATE TABLE IF NOT EXISTS `f_page` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `cate_id` int(10) NOT NULL,
  `cate_name` varchar(30) DEFAULT NULL,
  `title` varchar(120) NOT NULL,
  `content` text NOT NULL,
  `descs` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `f_page`
--

INSERT INTO `f_page` (`id`, `cate_id`, `cate_name`, `title`, `content`, `descs`, `thumb`) VALUES
(1, 6, '公司简介', '洛阳米科尼精密机械有限公司', '<p style="text-align: center;"><img title="1484016275587326.png" alt="公司简介-小图.png" src="/Uploads/image/2017-01-10/1484016275587326.png"/></p><p style="line-height: 1.5em; text-indent: 2em;">洛阳米科尼精密机械有限公司前身为CK精雕高级工作室成立于2012年。公司自成立以来一直致力于小型精密3、4、5轴CNC的设计开发、生产制造及销售。公司拥有年生产能力达300 台套龙门式小型精密CNC 生产线以及精密3 轴、RTCP5轴精密加工中心、400精密数车加工能力。公司秉承品质就是生命这一理念严控品质注重客户体验为客户提供全方位的技术服务在业内广受客户好评和赞誉。在公司蓬勃发展之际诚邀有识之士加入我们的团队共创辉煌。</p><p><br/></p><p><br/></p>', '洛阳米科尼精密机械有限公司前身为CK精雕高级工作室成立于2012年。公司自成立以来一直致力于小型精密3、4、5轴CNC的设计开发、生产制造及销售。公司拥有年生产能力达300 台套龙门式小型精密CNC 生产线以及精密3 轴、RTCP5轴精密加工中心、400精密数车加工能力。公司秉承品质就是生命这一理念严控品质注重客户体验为客户提供全方位的技术服务在业内广受客户好评和赞誉。在公司蓬勃发展之际诚邀有识之士加入我们的团队共创辉煌。', '2017-01-10/587446f4dd0cb_212_78.JPG'),
(2, 7, '发展历程', '', '<p style="text-align:center"><span style="font-family: 宋体, SimSun;"><img src="/Uploads/image/2017-01-10/1484037373599833.png" title="1484037373599833.png" alt="公司简介-小图.png"/></span></p><p style="text-indent: 2em; line-height: 1.5em;"><span style="font-family: 宋体, SimSun;">自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。 发展：追求永续发展的目标，并把它建立在客户满意的基础上。企业精神：自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。</span></p><p style="text-indent: 2em; line-height: 1.5em;"><span style="font-family: 宋体, SimSun;">发展：追求永续发展的目标，并把它建立在客户满意的基础上。自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。 发展：追求永续发展的目标，并把它建立在客户满意的基础上。企业精神：自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。 发展：追求永续发展的目标，并把它建立在客户满意的基础上。</span></p><p><br/></p>', '自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工创造良好的工作环境和发展前景。市场：为客户降低采购成本和风险，为客户投资提供切实保障。 发展：追求永续发展的目标，并把它建立在客户满意的基础上。企业精神：自信、自律，自立、自强客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。员工：信任员工的努力和奉献，承认员工的成就并提供相应回报，为员工', '2017-01-10/5874ea3679e35_212_78.jpg'),
(3, 22, '电子地图', '', '<p><img width="530" height="340" src="http://api.map.baidu.com/staticimage?center=112.382971,34.663543&zoom=13&width=530&height=340&markers=112.382971,34.663543"/></p>', '', '2017-01-10/5874ea493dcb8_212_78.jpg'),
(4, 8, '企业形象', '', '<p>111</p>', '111', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `f_procuct`
--

CREATE TABLE IF NOT EXISTS `f_procuct` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sort` tinyint(3) NOT NULL,
  `cate_id` varchar(3) NOT NULL,
  `title` varchar(100) NOT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `content` text,
  `img` varchar(255) DEFAULT NULL,
  `canshu` text,
  `thumb` varchar(255) DEFAULT NULL,
  `shuxing` text,
  `pub_time` varchar(13) DEFAULT NULL,
  `seo_title` varchar(120) DEFAULT NULL,
  `seo_desc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `f_procuct`
--

INSERT INTO `f_procuct` (`id`, `sort`, `cate_id`, `title`, `desc`, `content`, `img`, `canshu`, `thumb`, `shuxing`, `pub_time`, `seo_title`, `seo_desc`) VALUES
(8, 0, '18', '气动抛光机01', '超小型设计，气动双动齿轮结构，形成无窝轮饰面，体积小，适用于狭窄作业。', '<p><img src="/Uploads/image/2017-01-10/1484035622641063.png" title="1484035622641063.png" alt="气动抛光机01.png"/></p><p>超小型设计，气动双动齿轮结构，形成无窝轮饰面，体积小，适用于狭窄作业。</p>', '2017-01-11/5875a40681b10_304_234.png,2017-01-11/5875a40686041_304_234.png,2017-01-11/5875a40689ae6_304_234.png,2017-01-11/5875a4068d2c4_304_234.png', '<p>技术参数</p>', '2017-01-10/5874945659980_202_132.png', '<p>空载转速：10000/分钟</p><p>底盘尺寸：直径125毫米（无孔）<br/></p><p>平均耗气：5scfm<br/></p><p>轴心偏摆：5mm偏心<br/></p><p>裸机重量：0.845kg<br/></p><p>转子核心：塑钢转子<br/></p><p><br/></p>', '1484014990', '', ''),
(11, 0, '18', '角向砂轮机02', '超小型设计，气动双动齿轮结构，形成无窝轮饰面，体积小，适用于狭窄作业。', '<p>超小型设计，气动双动齿轮结构，形成无窝轮饰面，体积小，适用于狭窄作业。</p>', '2017-01-11/5875a3b7240fb_304_234.png,2017-01-11/5875a3b727e53_304_234.png,2017-01-11/5875a3b72b421_304_234.png,2017-01-11/5875a3b72f186_304_234.png', '<p>技术参数</p>', '2017-01-10/58744b84cf4ab_202_132.png', '<p style="white-space: normal;">空载转速：10000/分钟</p><p style="white-space: normal;">底盘尺寸：直径125毫米（无孔）<br/></p><p style="white-space: normal;">平均耗气：5scfm<br/></p><p style="white-space: normal;">轴心偏摆：5mm偏心<br/></p><p style="white-space: normal;">裸机重量：0.845kg<br/></p><p style="white-space: normal;">转子核心：塑钢转子</p><p><br/></p>', '1484016056', '', ''),
(9, 0, '18', '角向砂轮机01', '超小型设计，气动双动齿轮结构，形成无窝轮饰面，体积小，适用于狭窄作业。', '<p>超小型设计，气动双动齿轮结构，形成无窝轮饰面，体积小，适用于狭窄作业。</p>', '2017-01-11/5875a3e0cc6aa_304_234.png,2017-01-11/5875a3e0d079e_304_234.png,2017-01-11/5875a3e0d3fb1_304_234.png,2017-01-11/5875a3e0d7625_304_234.png', '<p>技术参数</p>', '2017-01-10/58744833e9a04_202_132.png', '<p style="white-space: normal;">空载转速：10000/分钟</p><p style="white-space: normal;">底盘尺寸：直径125毫米（无孔）<br/></p><p style="white-space: normal;">平均耗气：5scfm<br/></p><p style="white-space: normal;">轴心偏摆：5mm偏心<br/></p><p style="white-space: normal;">裸机重量：0.845kg<br/></p><p style="white-space: normal;">转子核心：塑钢转子</p><p><br/></p>', '1484015667', '', ''),
(10, 0, '18', '气动抛光机02', '超小型设计，气动双动齿轮结构，形成无窝轮饰面，体积小，适用于狭窄作业。', '<p>超小型设计，气动双动齿轮结构，形成无窝轮饰面，体积小，适用于狭窄作业。</p>', '2017-01-11/5875a3d1225c5_304_234.png,2017-01-11/5875a3d126b8b_304_234.png,2017-01-11/5875a3d12b3f3_304_234.png,2017-01-11/5875a3d12ecb0_304_234.png', '<p>技术参数</p>', '2017-01-10/58744b9ed33b8_202_132.png', '<p style="white-space: normal;">空载转速：10000/分钟</p><p style="white-space: normal;">底盘尺寸：直径125毫米（无孔）<br/></p><p style="white-space: normal;">平均耗气：5scfm<br/></p><p style="white-space: normal;">轴心偏摆：5mm偏心<br/></p><p style="white-space: normal;">裸机重量：0.845kg<br/></p><p style="white-space: normal;">转子核心：塑钢转子</p><p><br/></p>', '1484015906', '', ''),
(12, 0, '18', '角向砂轮机03', '超小型设计，气动双动齿轮结构，形成无窝轮饰面，体积小，适用于狭窄作业。', '<p>超小型设计，气动双动齿轮结构，形成无窝轮饰面，体积小，适用于狭窄作业。</p>', '2017-01-11/5875a394f14c3_304_234.png,2017-01-11/5875a39500eef_304_234.png,2017-01-11/5875a39504700_304_234.png,2017-01-11/5875a3950a03b_304_234.png', '<p>22222222222222222222222222222222222222</p>', '2017-01-10/58744d5ec643a_202_132.png', '<p style="white-space: normal;">空载转速：10000/分钟</p><p style="white-space: normal;">底盘尺寸：直径125毫米（无孔）<br/></p><p style="white-space: normal;">平均耗气：5scfm<br/></p><p style="white-space: normal;">轴心偏摆：5mm偏心<br/></p><p style="white-space: normal;">裸机重量：0.845kg<br/></p><p style="white-space: normal;">转子核心：塑钢转子</p><p><br/></p>', '1484016966', '', ''),
(18, 0, '18', 'qw', 'dsfd', '<p>dsfd</p>', '2017-01-10/5874ef67ab05a_304_234.jpg,2017-01-10/5874ef67adf57_304_234.jpg,2017-01-10/5874ef67b0bd3_304_234.jpg,2017-01-10/5874ef67b474b_304_234.jpg', '<p>技术参数</p>', '2017-01-10/5874ef67a86c9_202_132.jpg', '<p>属性</p>', '1484058471', '', ''),
(13, 0, '18', '角向砂轮机04', '超小型设计，气动双动齿轮结构，形成无窝轮饰面，体积小，适用于狭窄作业。', '<p>超小型设计，气动双动齿轮结构，形成无窝轮饰面，体积小，适用于狭窄作业。</p>', '2017-01-11/5875a3649b89e_304_234.png,2017-01-11/5875a364a086c_304_234.png,2017-01-11/5875a364a5eda_304_234.png,2017-01-11/5875a364aba1b_304_234.png', '<p>技术参数</p>', '2017-01-10/5874f0790c4e0_202_132.jpg', '<p style="white-space: normal;">空载转速：10000/分钟</p><p style="white-space: normal;">底盘尺寸：直径125毫米（无孔）<br/></p><p style="white-space: normal;">平均耗气：5scfm<br/></p><p style="white-space: normal;">轴心偏摆：5mm偏心<br/></p><p style="white-space: normal;">裸机重量：0.845kg<br/></p><p style="white-space: normal;">转子核心：塑钢转子</p><p><br/></p>', '1484026686', '', '');

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
  `WEIBO` varchar(255) DEFAULT NULL,
  `QQ` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `f_site`
--

INSERT INTO `f_site` (`id`, `SITE_URL`, `SITE_TITLE`, `KEYWORD`, `DESCRIBE`, `COPYRIHT`, `ADDRESS`, `MOBILE`, `TEL`, `EMAIL`, `PAGESIZE`, `WEIBO`, `QQ`) VALUES
(1, 'http://127.0.0.1/', '洛阳米科尼精密机械有限公司', '洛阳米科尼精密机械有限公司', '洛阳米科尼精密机械有限公司', '洛阳米科尼精密机械有限公司', '河南洛阳洛阳涧西区龙鳞路一拖学院南150米', '186-2598-8835', '0379-64283323', '8625988835@163.com', 10, 'http://www.w3.cn', '10010');
