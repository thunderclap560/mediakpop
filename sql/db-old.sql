-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 26, 2016 at 04:15 PM
-- Server version: 5.5.45-cll-lve
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kfun9504_kfun`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=41 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Other', 33, '2013-10-24 09:41:57', '2015-05-23 21:14:52'),
(2, 'BIGBANG', 1, '2013-10-18 08:57:00', '2015-05-23 21:05:49'),
(25, '2PM', 24, '2013-10-24 09:40:46', '2015-05-23 21:13:55'),
(29, 'Girl''s Day', 31, '2013-10-24 09:41:30', '2015-05-23 21:15:12'),
(31, 'SNSD', 18, '2014-01-28 07:59:34', '2015-05-23 21:06:35'),
(33, 'T-ara', 22, '2014-01-28 08:44:11', '2015-05-23 21:11:44'),
(34, 'EXO', 2, '2014-01-28 08:45:15', '2015-05-23 21:06:00'),
(35, 'GOT7', 20, '2014-01-28 09:00:22', '2015-05-23 21:09:43'),
(36, '2NE1', 19, '2014-01-28 09:01:08', '2015-05-23 21:08:31'),
(37, 'BEAST', 13, '2014-01-30 21:11:41', '2015-05-23 21:06:14'),
(38, 'Sistar', 38, '2014-01-30 21:20:05', '2015-05-23 21:15:26'),
(39, 'A Pink', 21, '2014-01-30 21:46:00', '2015-05-23 21:10:30'),
(40, 'AOA ', 25, '2014-02-03 21:38:23', '2015-05-23 21:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pic_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vid_url` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `media_id`, `comment`, `pic_url`, `vid_url`, `created_at`, `updated_at`) VALUES
(1, 1, 220, 'Seungri kiếm nhiều tiền nhất :))', NULL, NULL, '2015-05-23 22:23:52', '2015-05-23 22:23:52'),
(2, 6, 250, 'Chỉ có đứa ngu mới đọc tới cuối :))', NULL, NULL, '2015-05-29 08:29:09', '2015-05-29 08:29:09'),
(3, 3, 250, 'Cũng hơi ngu :D', NULL, NULL, '2015-05-29 08:35:06', '2015-05-29 08:35:06'),
(4, 3, 253, 'Loser chuẩn bị xún hạng :))', NULL, NULL, '2015-06-01 09:14:10', '2015-06-01 09:14:10'),
(5, 1, 269, ':))))))', NULL, NULL, '2015-07-22 03:01:24', '2015-07-22 03:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `comment_flags`
--

CREATE TABLE IF NOT EXISTS `comment_flags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comment_votes`
--

CREATE TABLE IF NOT EXISTS `comment_votes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `up` tinyint(1) NOT NULL DEFAULT '0',
  `down` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `comment_votes`
--

INSERT INTO `comment_votes` (`id`, `user_id`, `comment_id`, `up`, `down`, `created_at`, `updated_at`) VALUES
(1, 6, 2, 0, 1, '2015-05-29 08:29:46', '2015-05-29 08:29:48');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `medias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '1',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `vid` tinyint(1) NOT NULL DEFAULT '0',
  `pic` tinyint(1) NOT NULL DEFAULT '1',
  `pic_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vid_url` text COLLATE utf8_unicode_ci,
  `link_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nsfw` tinyint(1) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=272 ;

--
-- Dumping data for table `media`
--

INSERT INTO `medias` (`id`, `user_id`, `category_id`, `title`, `slug`, `description`, `active`, `vid`, `pic`, `pic_url`, `vid_url`, `link_url`, `tags`, `created_at`, `updated_at`, `nsfw`, `views`) VALUES
(217, 1, 2, 'Là gì vậy các V.I.P :))', 'la-gi-v-y-cac-v-i-p', NULL, 1, 0, 1, 'May2015/bigbang-1.jpg', '', '', 'BIGBANG', '2015-05-23 21:23:39', '2015-07-23 10:37:14', 0, 66),
(218, 1, 31, 'Chuyện chỉ dành riêng cho Sone', 'chuy-n-ch-danh-rieng-cho-sone', NULL, 1, 0, 1, 'May2015/SONE.jpg', '', '', 'SNSD', '2015-05-23 21:29:30', '2015-07-23 08:04:27', 0, 49),
(219, 1, 1, 'Thì ra Na nó không chịu đánh răng :))', 'thi-ra-na-no-khong-ch-u-anh-r-ng', NULL, 1, 0, 1, 'May2015/SONE1.jpg', '', '', 'SNSD', '2015-05-23 21:34:58', '2015-07-23 08:03:03', 0, 37),
(220, 1, 2, '3 năm không comeback nhưng các thành viên BIGBANG vẫn sống khỏe nhờ các nghề tay trái :))', 'chuy-n-ch-danh-rieng-cho-sone-1', NULL, 1, 0, 1, 'May2015/bigbang1.jpg', '', '', 'BIGBANG', '2015-05-23 21:39:05', '2015-07-23 08:05:09', 0, 49),
(221, 1, 39, 'Đây là lý do Naeun cười các Panda ạ :))', 'ay-la-ly-do-naeun-c-i-cac-panda', NULL, 1, 0, 1, 'May2015/apink.jpg', '', '', 'APINK', '2015-05-23 21:45:59', '2015-07-23 08:03:45', 0, 65),
(222, 1, 39, 'Phát hiên anh trai mới của Bomi :))', 'phat-hien-anh-trai-m-i-c-a-bomi', NULL, 1, 0, 1, 'May2015/BOMI_APINK.jpg', '', '', 'APINK', '2015-05-23 21:47:39', '2015-07-23 08:09:24', 0, 43),
(223, 1, 39, 'Chị nói rất đúng ạ :3', 'ch-noi-r-t-ung-3', NULL, 1, 0, 1, 'May2015/CHORONG_APINK.jpg', '', '', 'APINK', '2015-05-23 21:49:09', '2015-07-23 08:11:30', 0, 46),
(224, 1, 39, 'Tỉnh như ruồi :))', 't-nh-nh-ru-i', NULL, 1, 0, 1, 'May2015/APINKVAY.jpg', '', '', 'APINK', '2015-05-23 21:52:54', '2015-07-23 17:58:56', 0, 48),
(225, 1, 35, 'Khi các anh hết tiền :))', 'khi-cac-anh-h-t-ti-n', NULL, 1, 0, 1, 'May2015/got7.png', '', '', 'GOT7', '2015-05-23 21:56:22', '2015-07-23 08:07:17', 0, 52),
(226, 1, 35, 'Thế còn nhớ ck oppa là ai hơm', 'th-con-nh-ck-oppa-la-ai-h-m', NULL, 1, 0, 1, 'May2015/GOT7-CHE.png', '', '', 'GOT7', '2015-05-23 22:06:13', '2015-07-23 08:10:49', 0, 47),
(227, 1, 34, 'mấy chế dựa vào đâu? =))', 'm-y-ch-d-a-vao-au', NULL, 1, 0, 1, 'May2015/EXO.jpg', '', '', 'EXO', '2015-05-23 22:11:39', '2015-07-23 08:07:58', 0, 51),
(228, 1, 34, 'Em rất ít khi troll', 'em-r-t-it-khi-troll', NULL, 1, 0, 1, 'May2015/55615e0a767c3-EXO.jpg', '', '', 'EXO', '2015-05-23 22:13:46', '2015-07-23 08:05:53', 0, 44),
(229, 1, 34, 'Và Dẹo đã tưởng mình yêu la la la lí la la  :))', 'va-d-o-a-t-ng-minh-yeu-la-la-la-li-la-la', NULL, 1, 0, 1, 'May2015/EXO.png', '', '', 'EXO', '2015-05-23 22:15:52', '2015-07-23 08:02:19', 0, 51),
(230, 1, 36, 'NGOAN hay HƯ đây =))))))', 'ngoan-hay-h-ay', NULL, 1, 0, 1, 'May2015/2ne1.jpg', '', '', '2NE1', '2015-05-23 22:19:08', '2015-07-23 10:33:18', 0, 57),
(232, 1, 2, 'G-Dragon đọc rap khi còn nhỏ &lt;3 ', 'g-dragon-c-rap-khi-con-nh-lt-3', NULL, 1, 1, 1, 'May2015/556191836812b-1.jpg.jpg', 'https://www.youtube.com/watch?v=Spooo0f24Kg', '', 'G-DRAGON', '2015-05-24 01:53:23', '2015-07-23 08:06:33', 0, 47),
(233, 1, 37, 'Quá nhọ cho team chămđánhrăng ( ˘ з·˘)', 'qua-nh-cho-team-ch-m-anhr-ng', NULL, 1, 0, 1, 'May2015/11210464_713169082143872_4680917528361630259_n.jpg', '', '', 'BEAST', '2015-05-24 05:17:04', '2015-07-23 07:58:05', 0, 54),
(234, 1, 37, 'Nhớ ai mà dữ dội vậy chế =)))', 'nh-ai-ma-d-d-i-v-y-ch', NULL, 1, 0, 1, 'May2015/11295721_716662101794570_471997463657860699_n.jpg', '', '', 'BEAST', '2015-05-24 05:19:08', '2015-07-23 07:57:23', 0, 54),
(235, 1, 37, 'Đừng nhờn với anh =))', 'ng-nh-n-v-i-anh', NULL, 1, 0, 1, 'May2015/11149505_697756067018507_7121642713495187510_n.jpg', '', '', 'BEAST', '2015-05-24 05:23:20', '2015-07-23 07:56:37', 0, 53),
(237, 1, 36, 'Lí do đơn giản :((', 'li-do-n-gi-n', NULL, 1, 0, 1, 'May2015/5561c4bdcbfac-tonghopanhtrollp2b-yenthao.jpg', '', '', '2NE1', '2015-05-24 05:31:58', '2015-07-23 17:59:08', 0, 60),
(238, 1, 37, 'Chúng con yêu bố :D', 'chung-con-yeu-b-d', NULL, 1, 0, 1, 'May2015/231231.jpg', '', '', 'BEAST', '2015-05-24 05:34:02', '2015-07-23 07:52:00', 0, 58),
(239, 1, 33, 'Tiếp về sau đi các chế :)))', 'ti-p-v-sau-i-cac-ch', NULL, 1, 0, 1, 'May2015/11264023_792537090842668_1009191612396501250_n.jpg', '', '', 'T-ARA', '2015-05-24 05:45:52', '2015-07-23 07:58:50', 0, 62),
(240, 1, 33, 'Hồi còn sống tui cũng hay làm hệt vậy đó :v', 'h-i-con-s-ng-tui-c-ng-hay-lam-h-t-v-y-o-v', NULL, 1, 0, 1, 'May2015/11136766_791567624272948_5468393979148435619_n.jpg', '', '', 'T-ARA', '2015-05-24 05:47:55', '2015-07-23 07:53:33', 0, 61),
(241, 1, 38, ' Câu chuyện CÁ VOI :3', 'cau-chuy-n-ca-voi-3', NULL, 1, 0, 1, 'May2015/1601471_286583304866528_5405790434122652301_n.png', '', '', 'SISTAR', '2015-05-24 05:56:13', '2015-07-23 07:50:33', 0, 57),
(242, 1, 33, 'Câu chuyện từ muôn thuở...', 'cau-chuy-n-t-muon-thu', NULL, 1, 0, 1, 'May2015/11246031_791253954304315_2806465998542479684_n.jpg', '', '', 'T-ARA', '2015-05-24 05:58:10', '2015-07-23 07:51:18', 0, 64),
(243, 1, 38, 'BIẾT NẤU ĂN :3', 'bi-t-n-u-n-3', NULL, 1, 0, 1, 'May2015/10355017_283295365195322_6795074535807900227_n.jpg', '', '', 'SISTAR', '2015-05-24 06:01:51', '2015-07-23 17:59:01', 0, 63),
(244, 1, 38, 'MÓN QUÀ MỖI TỐI &lt;3', 'mon-qua-m-i-t-i-lt-3', NULL, 1, 0, 1, 'May2015/10666024_280314322160093_5870377004707682319_n.png', '', '', 'SISTAR', '2015-05-24 06:03:39', '2015-07-23 07:55:05', 0, 71),
(245, 1, 40, 'Đến giờ uống thuốc rồi Seolhyun =))))))))))', 'n-gi-u-ng-thu-c-r-i-seolhyun', NULL, 1, 0, 1, 'May2015/10646842_1061137383902263_7893515335397044168_n.jpg', '', '', 'AOA', '2015-05-24 06:08:01', '2015-07-23 07:55:52', 0, 77),
(246, 1, 40, 'Em rất ít khi hỏi :D', 'em-r-t-it-khi-h-i-d', NULL, 1, 0, 1, 'May2015/11046397_1567510250173500_7912736844454105031_n.jpg', '', '', 'AOA', '2015-05-24 06:11:21', '2015-07-23 07:52:49', 0, 83),
(247, 1, 29, 'Cưng hết chỗ nói &lt;3', 'c-ng-h-t-ch-noi-lt-3', NULL, 1, 0, 1, 'May2015/11011560_928037190553116_3519186449452904368_n.jpg', '', '', 'GIRL''S DAY', '2015-05-24 06:13:49', '2015-07-23 07:49:50', 0, 86),
(248, 1, 31, 'Ai ngu hơn =))', 'ai-ngu-h-n', NULL, 1, 0, 1, 'May2015/59819907.jpg', '', '', 'SNSD', '2015-05-24 06:29:54', '2015-07-23 11:15:16', 0, 91),
(249, 4, 2, '123123', '123123', '', 0, 0, 1, 'May2015/cnbluewegotmarried1.jpg', '', '', 'KPOP', '2015-05-24 06:47:47', '2015-07-08 16:26:38', 0, 8),
(250, 1, 2, 'Ai là đứa ngu =))', 'ai-la-a-ngu', 'Khi cu Gờ troll :)))', 1, 0, 1, 'May2015/Untitled-4.jpg', '', '', 'BIGBANG', '2015-05-29 07:46:17', '2015-07-23 17:58:58', 0, 289),
(251, 3, 2, 'Lót dép hóng xem mấy chú làm ăn thế nào :3', 'lot-dep-hong-xem-m-y-chu-lam-n-th-nao-3', 'Lót dép hóng xem mấy chú làm ăn thế nào :3 ', 1, 0, 1, 'May2015/big-bang-updates-fans-june-single-releases-we-like-2-party-and-bang-bang-bang.jpg', '', '', 'BIGBANG', '2015-05-29 08:37:39', '2015-07-22 19:58:53', 0, 96),
(252, 6, 34, 'Câu chuyện tiết kiệm &lt;3', 'cau-chuy-n-ti-t-ki-m-lt-3', 'Mình đã thử và thành công cmn các bạn ạ ^^', 1, 0, 1, 'May2015/11257232_1042698832426376_8462827357011745344_n.jpg', '', '', 'EXO', '2015-05-29 08:52:35', '2015-07-22 01:14:02', 0, 105),
(253, 1, 2, 'Phải nói thế nào về MV lần này của Big Bang nhỉ @@', 'ph-i-noi-th-nao-v-mv-l-n-nay-c-a-big-bang-nh', 'Quá chất so với mức quy định :v', 1, 1, 1, 'June2015/1.jpg', 'https://www.youtube.com/watch?v=2ips2mM7Zqw', '', 'BIGBANG', '2015-06-01 09:08:23', '2015-07-23 10:43:22', 0, 70),
(254, 1, 2, 'Chỉ có Big Bang mới đánh bại Big Bang ', 'ch-co-big-bang-m-i-anh-b-i-big-bang', 'Cùng xem M/V &quot;We Like 2 Party&quot; sẽ làm ăn như thế nào vào ngày 05.06 tới :3', 1, 0, 1, 'June2015/11390139_991893324174821_5858665680480684596_n.jpg', '', '', 'BIGBANG', '2015-06-03 09:02:35', '2015-07-23 08:12:55', 0, 106),
(255, 1, 34, 'Quá thâm thúy', 'qua-tham-thuy', 'Trẻ Đao lúc nào cũng thâm thúy :v\r\nĐến cái bản mặt ẻm nhìn còn thấy dâm chứ đừng nói đầu óc ẻm :v ', 1, 0, 1, 'June2015/11407148_814018328676204_1522876362793483286_n.jpg', '', '', 'EXO', '2015-06-14 21:09:14', '2015-07-23 08:15:40', 0, 85),
(256, 1, 2, 'Hãy vì tình yêu với nhóm nhạc 5 dòng kẻ này nhé các V.I.P :v', 'hay-vi-tinh-yeu-v-i-nhom-nh-c-5-dong-k-nay-nhe-cac-v-i-p-v', 'BIGBANG ah! cho dù cả thế giới này có quay lưng lại với các anh đi chăng nữa, thì các anh vẫn còn V.I.Ps chúng em sẽ ở bên các anh mãi mãi', 1, 0, 1, 'June2015/20997_997794800251340_8217126801744193620_n.jpg', '', '', 'BIGBANG', '2015-06-14 21:30:00', '2015-07-23 17:58:55', 0, 56),
(257, 1, 39, '3 chàng Hot Boy của Hội Hường :3', '3-chang-hot-boy-c-a-h-i-h-ng-3', '.... và 1000 năm sau đc gọi là &quot;Bom Nguyên Tử&quot; :))', 1, 0, 1, 'June2015/10568823_1524185534480880_8391628152754707741_n.jpg', '', '', 'APINK', '2015-06-14 21:35:57', '2015-07-21 07:14:24', 0, 51),
(258, 1, 33, ' Tựa đề : vị khách tâm thần :))', 't-a-vi-kha-ch-tam-tha-n', 'Bạt tay cho nhanh :))))', 1, 0, 1, 'June2015/11391147_801039326659111_1793967308233114435_n.jpg', '', '', 'T-ARA', '2015-06-14 21:39:23', '2015-07-21 07:14:53', 0, 46),
(259, 1, 34, 'EXO CAFE', 'exo-cafe', '', 1, 0, 1, 'June2015/aad24c68gw1dzw84nunh7j.png', '', 'http://saokpop.com', 'EXO', '2015-06-29 19:36:00', '2015-07-23 20:03:18', 0, 41),
(260, 1, 2, 'Phát ngôn gây cuồng của cậu Rồng :3', 'phat-ngon-gay-cu-ng-c-a-c-u-r-ng-3', 'Đừng nhìn bên ngoài mà nghĩ ghẻ là Hoàng Tử... Thật ra ẻm là Công Túaaa', 1, 0, 1, 'July2015/gd.jpg', '', '', 'BIGBANG', '2015-07-19 23:57:37', '2015-07-23 11:53:58', 0, 8),
(261, 1, 34, ' Ờ thì cuộc đời học sinh nó thế :v', 'thi-cu-c-i-h-c-sinh-no-th-v', '', 1, 0, 1, 'July2015/thi.jpg', '', '', 'EXO', '2015-07-20 00:07:11', '2015-07-23 11:54:25', 0, 7),
(262, 1, 33, 'Min Đao mà phán thì chỉ có đúng', 'min-ao-ma-phan-thi-ch-co-ung', '', 1, 0, 1, 'July2015/11659237_814316468664730_3391148391030221656_n.jpg', '', '', 'T-ARA', '2015-07-20 00:13:55', '2015-07-23 11:53:29', 0, 8),
(263, 17, 39, 'Vui vẻ tí rồi vào coi tăng view cho mấy gái đi các Gấu ơi &lt;3', 'vui-v-ti-r-i-vao-coi-t-ng-view-cho-m-y-gai-i-cac-g-u-i-lt-3', 'https://www.youtube.com/watch?v=akoSG0kRcXw&amp;list=PLDq0Qaetsjxd4i2H2mQkFZNW9bELeFeIj', 1, 0, 1, 'July2015/APINK.jpg', '', '', 'APINK', '2015-07-20 00:24:52', '2015-07-23 11:55:05', 0, 7),
(264, 4, 2, 'Có thể bạn chưa biết: GD và T.O.P là 2 trong số những fanboy đình đám nhất của BIGBANG', 'co-th-b-n-ch-a-bi-t-g-dragon-va-t-o-p-la-2-trong-s-nh-ng-fanboy-inh-am-nh-t-c-a-bigbang', '', 1, 0, 1, 'July2015/11742795_1013594098671410_3532383407816130772_n.jpg', '', '', 'BIGBANG', '2015-07-20 00:35:24', '2015-07-23 20:12:54', 0, 16),
(265, 3, 35, 'Dẹp mẹ nó chuyện tìm sịp điii :''&gt;&gt;&gt; THẢ RÔNG cho nó MÁT ~ Bi ạ :v :v ', 'd-p-m-no-chuy-n-tim-s-p-iii-gt-gt-gt-th-rong-cho-no-mat-bi-v-v', ' ~ Sơn ~ * SLOW MOTION * - Cô dâu 8 tuổi -_-', 1, 0, 1, 'July2015/123.jpg', '', '', 'GOT7', '2015-07-20 00:57:07', '2016-01-26 02:14:45', 0, 12),
(266, 3, 31, 'Coi hình là hết hứng đi :v', 'coi-hinh-la-h-t-h-ng-i-v', 'SM Pr quá giỏi, làm MV ko tốn tiền mà có thêm tiền, chỉ tội gái e nó nhảy như điên dưới năng 40 độ', 1, 0, 1, 'July2015/snsd.jpg', '', '', 'SNSD', '2015-07-20 00:59:18', '2015-07-23 11:52:46', 0, 13),
(267, 3, 31, 'Nữ Thần Tự Ăn - Sò Lép :v', 'n-th-n-t-n', '', 1, 0, 1, 'July2015/nuna.jpg', '', '', 'SNSD', '2015-07-20 01:04:19', '2015-07-23 11:53:42', 0, 13),
(268, 1, 1, 'Khi Rain bóc kẹo :v', 'khi-rain-boc-k-o-v', 'Cười không nhặt được mồm =))))', 1, 1, 1, 'July2015/1.jpg', 'https://www.youtube.com/watch?v=a_rCy91Yktw', '', 'RAIN', '2015-07-20 01:09:07', '2015-07-23 11:53:05', 0, 12),
(269, 18, 1, 'Thì ra chữ Điên là thế T_T', 'thi-ra-ch-ien-la-th-t-t', '', 1, 0, 1, 'July2015/beast.jpg', '', '', 'BEAST', '2015-07-20 01:16:47', '2015-07-23 20:03:55', 0, 18),
(270, 1, 2, 'Sơn Tùng MTP k thích điều này =)))', 's-n-tung-mtp-k-thich-i-u-nay', '', 1, 0, 1, 'July2015/gd-123.jpg', '', '', 'BIGBANG', '2015-07-23 00:18:17', '2016-01-26 02:14:30', 0, 25),
(271, 1, 2, 'Đâu là quan niệm của các anh về một người đàn ông tốt?', 'au-la-quan-ni-m-c-a-cac-anh-v-m-t-ng-i-an-ong-t-t', 'Trích bài phỏng vấn GD&amp;TOP trên Zipper Magazine (2011) ', 1, 0, 1, 'July2015/dgtop.jpg', '', '', 'BIGBANG', '2015-07-23 19:43:53', '2016-01-26 02:14:37', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `media_flags`
--

CREATE TABLE IF NOT EXISTS `media_flags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `media_likes`
--

CREATE TABLE IF NOT EXISTS `media_likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `media_likes`
--

INSERT INTO `media_likes` (`id`, `user_id`, `media_id`, `created_at`, `updated_at`) VALUES
(1, 1, 216, '2015-05-23 00:01:38', '2015-05-23 00:01:38'),
(2, 1, 230, '2015-05-23 23:14:17', '2015-05-23 23:14:17'),
(3, 3, 230, '2015-05-23 23:16:01', '2015-05-23 23:16:01'),
(4, 1, 250, '2015-05-29 07:49:02', '2015-05-29 07:49:02'),
(5, 6, 250, '2015-05-29 08:28:00', '2015-05-29 08:28:00'),
(6, 3, 250, '2015-05-29 08:34:10', '2015-05-29 08:34:10'),
(7, 3, 253, '2015-06-01 09:11:44', '2015-06-01 09:11:44'),
(8, 9, 251, '2015-06-03 02:52:26', '2015-06-03 02:52:26'),
(9, 9, 250, '2015-06-03 02:52:29', '2015-06-03 02:52:29'),
(10, 9, 217, '2015-06-03 02:55:27', '2015-06-03 02:55:27'),
(11, 11, 239, '2015-06-07 20:23:49', '2015-06-07 20:23:49'),
(12, 1, 248, '2015-06-29 18:57:47', '2015-06-29 18:57:47'),
(13, 1, 269, '2015-07-22 23:51:18', '2015-07-22 23:51:18');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_facebook`
--

CREATE TABLE IF NOT EXISTS `oauth_facebook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `oauth_userid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oauth_facebook`
--

INSERT INTO `oauth_facebook` (`id`, `user_id`, `oauth_userid`, `created_at`, `updated_at`) VALUES
(1, 3, '1652420264987075', '2015-05-23 23:15:42', '2015-05-23 23:15:42'),
(2, 7, '1580077782272056', '2015-05-30 02:49:17', '2015-05-30 02:49:17'),
(3, 8, '1592723131007468', '2015-05-31 04:16:32', '2015-05-31 04:16:32'),
(4, 10, '1444700982499282', '2015-06-06 07:53:38', '2015-06-06 07:53:38'),
(5, 11, '1847792028779773', '2015-06-07 20:23:15', '2015-06-07 20:23:15'),
(6, 12, '1443749465944937', '2015-06-08 22:13:02', '2015-06-08 22:13:02'),
(7, 13, '1644499879114982', '2015-06-09 04:45:26', '2015-06-09 04:45:26'),
(8, 14, '533287860152049', '2015-06-20 02:00:05', '2015-06-20 02:00:05'),
(9, 15, '503556146459388', '2015-07-01 04:01:03', '2015-07-01 04:01:03'),
(10, 16, '436776196527080', '2015-07-07 05:57:47', '2015-07-07 05:57:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_google`
--

CREATE TABLE IF NOT EXISTS `oauth_google` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `oauth_userid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `show_in_menu` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `url`, `body`, `order`, `active`, `show_in_menu`, `created_at`, `updated_at`) VALUES
(1, 'Nội quy', 'noi-quy-website', '<p><strong>Nội quy :</strong></p>\r\n<p>Cộng đồng fan y&ecirc;u th&iacute;ch KPOP - Kfun.Nơi ch<span class="text_exposed_show">ia sẻ những khoảng khắc vui nhộn v&agrave; thể hiện t&igrave;nh y&ecirc;u của m&igrave;nh với c&aacute;c Idol KPOP.<br /><br />+ Tuyệt đối cấm c&aacute;c h&agrave;nh vi lăng mạ v&agrave; x&uacute;c phạm c&aacute;c idol group kh&aacute;c.<br /></span></p>\r\n<p><span class="text_exposed_show">+ C&aacute;c nội dung li&ecirc;n quan đến sex/ch&iacute;nh trị/t&ocirc;n gi&aacute;o sẽ bị x&oacute;a v&agrave; ban nick t&ugrave;y mức độ.<br /></span></p>\r\n<p><span class="text_exposed_show">+ C&aacute;c nội dung kh&ocirc;ng/&iacute;t li&ecirc;n quan sẽ bị x&oacute;a m&agrave; kh&ocirc;ng cần b&aacute;o trước.<br /></span></p>\r\n<p><span class="text_exposed_show">+ Nghi&ecirc;m cấm trao đổi/bu&ocirc;n b&aacute;n c&aacute;c dịch vụ kh&ocirc;ng li&ecirc;n quan tới Website.</span></p>\r\n<p>+ Kh&ocirc;ng b&igrave;nh luận v&ocirc; văn h&oacute;a</p>\r\n<p><span class="text_exposed_show">+ Th&agrave;nh vi&ecirc;n tự chịu tr&aacute;ch nhiệm về nội dung m&igrave;nh đăng tải</span></p>\r\n<p><span class="text_exposed_show">Mọi &yacute; kiến đ&oacute;ng g&oacute;p xin li&ecirc;n hệ tại đ&acirc;y</span></p>\r\n<p style="text-align: right;">&nbsp;~ BQT Kfun ~</p>', 0, 1, 1, '2015-05-24 07:09:35', '2015-05-24 07:16:02'),
(2, 'FAQ', 'huong-dan-su-dung', '<div class="header-page">\r\n<p><strong>C&acirc;u hỏi thường gặp</strong></p>\r\n<p>Những c&acirc;u hỏi thường gặp khi tham gia Kfun.net</p>\r\n<p><strong><span style="color: #ff0000;">[Update]- 6/8/2015 : Trong thời gian n&agrave;y, c&aacute;c b&agrave;i viết sẽ kh&ocirc;ng được BQT duyệt b&agrave;i</span></strong></p>\r\n<p><strong>1. T&ocirc;i c&oacute; thể đăng b&agrave;i l&ecirc;n Kfun.net kh&ocirc;ng?</strong></p>\r\n<p>Để c&oacute; thể tham gia đăng b&agrave;i người d&ugrave;ng cần 1 t&agrave;i khoản c&aacute; nh&acirc;n của hệ thống hoặc bất cứ ai c&oacute; t&agrave;i khoản Facebook đều c&oacute; thể đăng b&agrave;i.</p>\r\n<p><br /><strong>2. T&ocirc;i c&oacute; thể đăng bao nhi&ecirc;u b&agrave;i/ng&agrave;y?</strong></p>\r\n<p>Tối đa 5 b&agrave;i mỗi ng&agrave;y&nbsp;</p>\r\n<p><br /><strong>3. L&agrave;m thế n&agrave;o để b&agrave;i đăng của t&ocirc;i xuất hiện tr&ecirc;n trang chủ?</strong></p>\r\n<p>Khi mới đăng, b&agrave;i của bạn sẽ chưa xuất hiện tr&ecirc;n trang chủ.Sau khi được ban quản trị duyệt b&agrave;i v&agrave; x&aacute;c nhận đ&uacute;ng với nội quy của website, khi đ&oacute; b&agrave;i&nbsp;của bạn sẽ xuất hiện ở trang MỚI, tiếp tục đủ lượng quan t&acirc;m như thế b&agrave;i sẽ xuất hiện tr&ecirc;n trang HOT (trang chủ) v&agrave; tiếp cận h&agrave;ng triệu người.</p>\r\n<p>Lưu &yacute;: Những lượt like, b&igrave;nh luận ảo sẽ kh&ocirc;ng được hệ thống t&iacute;nh l&agrave; hợp lệ.</p>\r\n<p><br /><strong>4. Tại sao b&agrave;i của t&ocirc;i bị xo&aacute; sau khi đăng?</strong></p>\r\n<p>C&oacute; 2 trường hợp:</p>\r\n<p>a) B&agrave;i bị xo&aacute; khi c&ograve;n đang tr&ecirc;n trang Duyệt: L&yacute; do ch&iacute;nh l&agrave; &ldquo;BỊ TR&Ugrave;NG, Đ&Agrave;O MỘ&rdquo; (đ&atilde; từng xuất hiện tr&ecirc;n trang chủ). V&igrave; b&agrave;i tr&ecirc;n trang Duyệt xuất hiện theo thứ tự thời gian, n&ecirc;n b&agrave;i tr&ugrave;ng bắt buộc phải bị xo&aacute; đi để d&agrave;nh chỗ cho c&aacute;c b&agrave;i mới kh&aacute;c.</p>\r\n<p>b) B&agrave;i bị xo&aacute; sau khi đ&atilde; l&ecirc;n trang chủ: Kh&ocirc;ng ph&ugrave; hợp với quy định hoặc c&oacute; khiếu nại từ th&agrave;nh vi&ecirc;n.</p>\r\n<p>Ngo&agrave;i ra, b&agrave;i bị xo&aacute; khi đang ở tr&ecirc;n trang chủ c&ograve;n c&oacute; những l&yacute; do sau: Video bị x&oacute;a từ b&ecirc;n thứ 3 (Youtube), b&agrave;i được b&igrave;nh chọn bằng h&igrave;nh thức gian lận...<br />Bạn kh&ocirc;ng n&ecirc;n cố gắng đăng lại b&agrave;i đ&atilde; bị xo&aacute;, v&igrave; sẽ rất mất c&ocirc;ng. Hệ thống x&eacute;t duyệt b&agrave;i tr&ugrave;ng của kfun.net đảm bảo độ ch&iacute;nh x&aacute;c đến 90%, n&ecirc;n bạn c&oacute; thể y&ecirc;n t&acirc;m kh&ocirc;ng sợ b&agrave;i m&igrave;nh bị xo&aacute; nhầm.</p>\r\n<p><br /><strong>5. T&agrave;i sao b&agrave;i của t&ocirc;i bị x&oacute;a?</strong></p>\r\n<p>Gồm c&aacute;c l&yacute; do sau:</p>\r\n<p>- B&agrave;i c&oacute; nội dung đồi trụy, phản động, li&ecirc;n quan đến ch&iacute;nh trị, t&ocirc;n gi&aacute;o, c&aacute;c vấn đề nhạy cảm, phảm cảm, man rợ, đ&aacute;nh nhau, qu&aacute; kinh dị... ảnh hưởng đến thuần phong mỹ tục v&agrave; vi phạm ph&aacute;p luật.</p>\r\n<p>- B&agrave;i c&oacute; nội dung vi phạm bản quyền, v&iacute; dụ: reup video c&oacute; bản quyền như &acirc;m nhạc, vlog, phim ngắn,...từ c&aacute;c channel trong v&agrave; ngo&agrave;i nước.</p>\r\n<p>- B&agrave;i li&ecirc;n quan đến c&aacute;c tổ chức/c&aacute; nh&acirc;n được tổ chức/c&aacute; nh&acirc;n y&ecirc;u cầu gỡ bỏ.</p>\r\n<p>- B&agrave;i c&oacute; nội dung PR/Quảng c&aacute;o lộ liễu.</p>\r\n<p>- B&agrave;i c&oacute; ti&ecirc;u đề sai ch&iacute;nh tả, tiếng Việt kh&ocirc;ng dấu, ti&ecirc;u đề cẩu thả, ti&ecirc;u đề kiểu đăng h&agrave;ng loạt.</p>\r\n<p>- Ti&ecirc;u đề chứa những từ cấm kỵ v&agrave; nhảy cảm như sex, porn, d&acirc;m, quay l&eacute;n, hiếp d&acirc;m,...</p>\r\n<p>- Chất lượng ảnh k&eacute;m, mờ, k&iacute;ch thước nhỏ, nội dung đ&atilde; cũ, kh&ocirc;ng h&agrave;i hước.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>6. C&oacute; nhiều người đăng b&agrave;i giống nhau, tại sao b&agrave;i n&agrave;y được l&ecirc;n trang chủ, c&ograve;n b&agrave;i kh&aacute;c th&igrave; kh&ocirc;ng?</strong></p>\r\n<p>B&agrave;i được b&igrave;nh chọn l&ecirc;n trang chủ hay kh&ocirc;ng do người xem quyết định, kh&ocirc;ng phụ thuộc v&agrave;o tr&igrave;nh tự thời gian trước sau. Tuy nhi&ecirc;n, c&aacute;c b&agrave;i ''ch&iacute;nh chủ'' được ưu ti&ecirc;n hơn. V&iacute; dụ: Video được đăng từ t&agrave;i khoản Youtube sở hữu bản quyền video đấy sẽ được ưu ti&ecirc;n hơn c&aacute;c video re-up.<br />Ngo&agrave;i ra, việc đặt ti&ecirc;u đề hấp dẫn cũng rất quan trọng trong việc b&agrave;i c&oacute; được duyệt l&ecirc;n trang chủ hay kh&ocirc;ng?</p>\r\n<p><br /><strong>7. Tại sao t&agrave;i khoản của t&ocirc;i bị kh&oacute;a?</strong></p>\r\n<p>- Đăng b&agrave;i c&oacute; nội dung vi phạm nhiều lần, cố t&igrave;nh ph&aacute; hoại s&acirc;n chơi chung.</p>\r\n<p>- Cố t&igrave;nh tạo t&agrave;i khoản clone để spam video. Vi phạm lần đầu sẽ bị kh&oacute;a tất cả c&aacute;c t&agrave;i khoản clone, giữ lại t&agrave;i khoản ch&iacute;nh v&agrave; bị cảnh c&aacute;o. Nếu tiếp tục vi phạm, bạn sẽ bị kh&oacute;a tất cả c&aacute;c t&agrave;i khoản.</p>\r\n<p>- T&agrave;i khoản sở hữu k&ecirc;nh Youtube x&oacute;a video đ&atilde; upload sau khi đăng l&ecirc;n kfun.net, g&acirc;y ảnh hưởng đến người xem.</p>\r\n<p>- C&aacute;c c&aacute; nh&acirc;n, tổ chức sở hữu k&ecirc;nh Youtube partner bị kh&oacute;a ho&agrave;n to&agrave;n (terminated) dẫn đến việc video bị mất h&agrave;ng loạt trong c&aacute;c b&agrave;i đăng.</p>\r\n<p>- Spam comment ảnh hưởng đến tập thể.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>8.C&aacute;ch thức kiếm điểm t&iacute;ch cực từ website</strong></p>\r\n<p>- Người d&ugrave;ng c&oacute; thể thực hiện những bước dưới đ&acirc;y để kiếm điểm từ t&agrave;i khoản c&aacute; nh&acirc;n của m&igrave;nh.</p>\r\n<p>- Quyền lợi:</p>\r\n<p>Cuối th&aacute;ng&nbsp;hệ thống sẽ tổng kết&nbsp;t&agrave;i khoản n&agrave;o c&oacute; nhiều điểm nhất v&agrave; trao cho người đ&oacute; những phần thưởng c&oacute; gi&aacute; trị như sau :</p>\r\n<p>+ Top 1: 1 phần thưởng trị gi&aacute; 500k + 1 album official t&ugrave;y chọn của nh&oacute;m nhạc m&igrave;nh y&ecirc;u th&iacute;ch</p>\r\n<p>+ Top 2: 1 phần thưởng trị gi&aacute; 200k &nbsp;+1 tấm banner của nh&oacute;m nhạc m&igrave;nh y&ecirc;u th&iacute;ch</p>\r\n<p>+ Top 3: 1 phần thưởng trị gi&aacute; 100k&nbsp;</p>\r\n<p>Đ&acirc;y l&agrave; c&aacute;ch bạn kiếm được điểm</p>\r\n<ul>\r\n<li>Mỗi ng&agrave;y bạn đăng nhập, bạn sẽ nhận được 1 điểm</li>\r\n<li>Mỗi lần bạn tải l&ecirc;n 1 h&igrave;nh ảnh, bạn sẽ nhận được 1 điểm (tối đa 5 mỗi ng&agrave;y)</li>\r\n<li>Mỗi lần bạn để lại một b&igrave;nh luận m&agrave; bạn sẽ nhận được 1 điểm (tối đa 5 mỗi ng&agrave;y)</li>\r\n</ul>\r\n<p><br /><strong>Lời kết</strong>: BQT Kfun.net kh&ocirc;ng khuyến kh&iacute;ch c&aacute;c th&agrave;nh vi&ecirc;n đăng video từ c&aacute;c channel re-up, kh&ocirc;ng ch&iacute;nh chủ v&igrave; điều n&agrave;y ảnh hưởng đến trải nghiệm của người xem. Đồng thời, t&agrave;i khoản của c&aacute;c th&agrave;nh vi&ecirc;n n&agrave;y cũng c&oacute; khả năng bị kh&oacute;a cao. V&igrave; vậy, mong c&aacute;c bạn suy nghĩ v&agrave; chọn lựa kỹ nội dung cũng như ng&ocirc;n từ khi đăng b&agrave;i.</p>\r\n<p>&nbsp;BQT sẽ c&oacute; biện ph&aacute;p trừng phạt nghi&ecirc;m khắc đối với c&aacute;c c&aacute; nh&acirc;n, nh&oacute;m c&aacute; nh&acirc;n sử dụng c&aacute;c biện ph&aacute;p kỹ thuật, hỗ trợ v&agrave; gian lận để spam video l&ecirc;n trang chủ, g&acirc;y ảnh hưởng đến chất lượng v&agrave; trải nghiệm của người xem của trang.</p>\r\n<p>&nbsp;</p>\r\n</div>', 0, 1, 1, '2015-05-24 07:21:43', '2015-06-07 18:18:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_reminders`
--

CREATE TABLE IF NOT EXISTS `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_reminders_email_index` (`email`),
  KEY `password_reminders_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_reminders`
--

INSERT INTO `password_reminders` (`email`, `token`, `created_at`) VALUES
('datptpd00519@fpt.edu.vn', '92f84545e57755ae9671e7e0ef8119785f4bdb2c', '2015-05-25 09:36:39'),
('godobelisk12345@gmail.com', '5780fba66da9f9c3c372af486d4ef270ee4f9899', '2015-05-27 06:41:32'),
('godobelisk12345@gmail.com', 'b8da162ca9221bbb5c243fc84bb1baa224781a06', '2015-05-27 06:44:27'),
('godobelisk12345@gmail.com', '2f6430de4812c10f1805badd95e300bb021c4503', '2015-05-27 06:50:08'),
('godobelisk12345@gmail.com', 'f59f5a10f83e16f12aac59222230cccc8d9c83ba', '2015-05-27 06:50:22'),
('godobelisk12345@gmail.com', '2856bd4cb0ad27aa3eebd52b90222e27d1fb1e8c', '2015-05-27 07:03:04'),
('godobelisk12345@gmail.com', 'a10bcaf5d04aed2866c512bcf249302061edba2a', '2015-05-27 07:04:30'),
('godobelisk12345@gmail.com', '915efc42f897b74dc65bda188c3f964faf0cc136', '2015-05-27 07:06:34'),
('godobelisk12345@gmail.com', 'ad786c7bf8595370db0239395acc388e181201b2', '2015-05-27 07:11:31'),
('godobelisk12345@gmail.com', '3a52ee93a9537cc86781a7ac1f159c0b5f9a3892', '2015-07-22 20:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE IF NOT EXISTS `plugins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_data`
--

CREATE TABLE IF NOT EXISTS `plugin_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plugin_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE IF NOT EXISTS `points` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=99 ;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `user_id`, `points`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 200, 'Registration', '2015-05-22 23:22:11', '2015-05-22 23:22:11'),
(2, 1, 5, 'Daily Login', '2015-05-22 23:56:56', '2015-05-22 23:56:56'),
(3, 2, 200, 'Đăng kí', '2015-05-23 02:41:23', '2015-05-23 02:41:23'),
(4, 1, 5, 'Daily Login', '2015-05-23 20:21:33', '2015-05-23 20:21:33'),
(5, 1, 1, 'Daily Upload', '2015-05-23 21:23:39', '2015-05-23 21:23:39'),
(6, 1, 1, 'Daily Upload', '2015-05-23 21:29:30', '2015-05-23 21:29:30'),
(7, 1, 1, 'Daily Upload', '2015-05-23 21:34:58', '2015-05-23 21:34:58'),
(8, 1, 1, 'Daily Upload', '2015-05-23 21:39:05', '2015-05-23 21:39:05'),
(9, 1, 1, 'Daily Upload', '2015-05-23 21:45:59', '2015-05-23 21:45:59'),
(10, 1, 1, 'Daily Comment', '2015-05-23 22:23:52', '2015-05-23 22:23:52'),
(11, 3, 200, 'Đăng kí', '2015-05-23 23:15:42', '2015-05-23 23:15:42'),
(12, 3, 5, 'Daily Login', '2015-05-23 23:15:42', '2015-05-23 23:15:42'),
(13, 4, 200, 'Đăng kí', '2015-05-24 06:47:07', '2015-05-24 06:47:07'),
(14, 4, 1, 'Daily Upload', '2015-05-24 06:47:47', '2015-05-24 06:47:47'),
(15, 1, 5, 'Daily Login', '2015-05-26 05:39:06', '2015-05-26 05:39:06'),
(16, 1, 5, 'Daily Login', '2015-05-27 04:21:29', '2015-05-27 04:21:29'),
(17, 5, 200, 'Đăng kí', '2015-05-27 06:41:07', '2015-05-27 06:41:07'),
(18, 5, 5, 'Daily Login', '2015-05-27 07:38:19', '2015-05-27 07:38:19'),
(19, 1, 5, 'Daily Login', '2015-05-29 07:40:38', '2015-05-29 07:40:38'),
(20, 1, 1, 'Daily Upload', '2015-05-29 07:46:16', '2015-05-29 07:46:16'),
(21, 6, 200, 'Đăng kí', '2015-05-29 08:20:56', '2015-05-29 08:20:56'),
(22, 6, 1, 'Daily Comment', '2015-05-29 08:29:09', '2015-05-29 08:29:09'),
(23, 3, 5, 'Daily Login', '2015-05-29 08:33:14', '2015-05-29 08:33:14'),
(24, 3, 1, 'Daily Comment', '2015-05-29 08:35:06', '2015-05-29 08:35:06'),
(25, 3, 1, 'Daily Upload', '2015-05-29 08:37:39', '2015-05-29 08:37:39'),
(26, 6, 5, 'Daily Login', '2015-05-29 08:51:11', '2015-05-29 08:51:11'),
(27, 6, 1, 'Daily Upload', '2015-05-29 08:52:35', '2015-05-29 08:52:35'),
(28, 1, 5, 'Daily Login', '2015-05-29 18:07:20', '2015-05-29 18:07:20'),
(29, 7, 200, 'Đăng kí', '2015-05-30 02:49:17', '2015-05-30 02:49:17'),
(30, 7, 5, 'Daily Login', '2015-05-30 02:49:17', '2015-05-30 02:49:17'),
(31, 1, 5, 'Daily Login', '2015-05-30 18:58:35', '2015-05-30 18:58:35'),
(32, 8, 200, 'Đăng kí', '2015-05-31 04:16:32', '2015-05-31 04:16:32'),
(33, 8, 5, 'Daily Login', '2015-05-31 04:16:32', '2015-05-31 04:16:32'),
(34, 1, 5, 'Daily Login', '2015-05-31 18:18:06', '2015-05-31 18:18:06'),
(35, 1, 1, 'Daily Upload', '2015-06-01 09:08:23', '2015-06-01 09:08:23'),
(36, 3, 5, 'Daily Login', '2015-06-01 09:11:34', '2015-06-01 09:11:34'),
(37, 3, 1, 'Daily Comment', '2015-06-01 09:14:10', '2015-06-01 09:14:10'),
(38, 1, 5, 'Daily Login', '2015-06-02 00:51:52', '2015-06-02 00:51:52'),
(39, 1, 5, 'Daily Login', '2015-06-02 21:37:30', '2015-06-02 21:37:30'),
(40, 9, 200, 'Đăng kí', '2015-06-03 02:50:20', '2015-06-03 02:50:20'),
(41, 1, 1, 'Daily Upload', '2015-06-03 09:02:35', '2015-06-03 09:02:35'),
(42, 1, 5, 'Daily Login', '2015-06-04 23:49:59', '2015-06-04 23:49:59'),
(43, 1, 5, 'Daily Login', '2015-06-06 05:08:50', '2015-06-06 05:08:50'),
(44, 10, 200, 'Đăng kí', '2015-06-06 07:53:38', '2015-06-06 07:53:38'),
(45, 10, 5, 'Daily Login', '2015-06-06 07:53:38', '2015-06-06 07:53:38'),
(46, 1, 5, 'Daily Login', '2015-06-07 18:06:32', '2015-06-07 18:06:32'),
(47, 11, 200, 'Đăng kí', '2015-06-07 20:23:15', '2015-06-07 20:23:15'),
(48, 11, 5, 'Daily Login', '2015-06-07 20:23:15', '2015-06-07 20:23:15'),
(49, 1, 5, 'Daily Login', '2015-06-08 21:19:33', '2015-06-08 21:19:33'),
(50, 12, 200, 'Đăng kí', '2015-06-08 22:13:02', '2015-06-08 22:13:02'),
(51, 12, 5, 'Daily Login', '2015-06-08 22:13:02', '2015-06-08 22:13:02'),
(52, 13, 200, 'Đăng kí', '2015-06-09 04:45:26', '2015-06-09 04:45:26'),
(53, 13, 5, 'Daily Login', '2015-06-09 04:45:26', '2015-06-09 04:45:26'),
(54, 1, 5, 'Daily Login', '2015-06-09 21:28:32', '2015-06-09 21:28:32'),
(55, 4, 5, 'Daily Login', '2015-06-09 21:29:08', '2015-06-09 21:29:08'),
(56, 1, 5, 'Daily Login', '2015-06-10 18:21:54', '2015-06-10 18:21:54'),
(57, 1, 5, 'Daily Login', '2015-06-11 18:34:01', '2015-06-11 18:34:01'),
(58, 1, 5, 'Daily Login', '2015-06-14 07:29:54', '2015-06-14 07:29:54'),
(59, 1, 5, 'Daily Login', '2015-06-14 21:07:54', '2015-06-14 21:07:54'),
(60, 1, 1, 'Daily Upload', '2015-06-14 21:09:14', '2015-06-14 21:09:14'),
(61, 1, 1, 'Daily Upload', '2015-06-14 21:30:00', '2015-06-14 21:30:00'),
(62, 1, 1, 'Daily Upload', '2015-06-14 21:35:57', '2015-06-14 21:35:57'),
(63, 1, 1, 'Daily Upload', '2015-06-14 21:39:23', '2015-06-14 21:39:23'),
(64, 1, 5, 'Daily Login', '2015-06-16 01:03:48', '2015-06-16 01:03:48'),
(65, 1, 5, 'Daily Login', '2015-06-17 23:46:40', '2015-06-17 23:46:40'),
(66, 14, 200, 'Đăng kí', '2015-06-20 02:00:05', '2015-06-20 02:00:05'),
(67, 14, 5, 'Daily Login', '2015-06-20 02:00:05', '2015-06-20 02:00:05'),
(68, 1, 5, 'Daily Login', '2015-06-22 02:12:20', '2015-06-22 02:12:20'),
(69, 1, 5, 'Daily Login', '2015-06-23 19:45:30', '2015-06-23 19:45:30'),
(70, 1, 5, 'Daily Login', '2015-06-29 18:56:05', '2015-06-29 18:56:05'),
(71, 1, 1, 'Daily Upload', '2015-06-29 19:36:00', '2015-06-29 19:36:00'),
(72, 15, 200, 'Đăng kí', '2015-07-01 04:01:03', '2015-07-01 04:01:03'),
(73, 15, 5, 'Daily Login', '2015-07-01 04:01:03', '2015-07-01 04:01:03'),
(74, 16, 200, 'Đăng kí', '2015-07-07 05:57:47', '2015-07-07 05:57:47'),
(75, 16, 5, 'Daily Login', '2015-07-07 05:57:47', '2015-07-07 05:57:47'),
(76, 1, 5, 'Daily Login', '2015-07-19 23:54:28', '2015-07-19 23:54:28'),
(77, 1, 1, 'Daily Upload', '2015-07-19 23:57:37', '2015-07-19 23:57:37'),
(78, 1, 1, 'Daily Upload', '2015-07-20 00:07:11', '2015-07-20 00:07:11'),
(79, 1, 1, 'Daily Upload', '2015-07-20 00:13:55', '2015-07-20 00:13:55'),
(80, 17, 200, 'Đăng kí', '2015-07-20 00:21:15', '2015-07-20 00:21:15'),
(81, 17, 5, 'Daily Login', '2015-07-20 00:21:36', '2015-07-20 00:21:36'),
(82, 17, 1, 'Daily Upload', '2015-07-20 00:24:52', '2015-07-20 00:24:52'),
(83, 4, 5, 'Daily Login', '2015-07-20 00:25:34', '2015-07-20 00:25:34'),
(84, 4, 1, 'Daily Upload', '2015-07-20 00:35:23', '2015-07-20 00:35:23'),
(85, 3, 5, 'Daily Login', '2015-07-20 00:54:53', '2015-07-20 00:54:53'),
(86, 3, 1, 'Daily Upload', '2015-07-20 00:57:07', '2015-07-20 00:57:07'),
(87, 3, 1, 'Daily Upload', '2015-07-20 00:59:18', '2015-07-20 00:59:18'),
(88, 3, 1, 'Daily Upload', '2015-07-20 01:04:19', '2015-07-20 01:04:19'),
(89, 1, 1, 'Daily Upload', '2015-07-20 01:09:07', '2015-07-20 01:09:07'),
(90, 18, 200, 'Đăng kí', '2015-07-20 01:15:37', '2015-07-20 01:15:37'),
(91, 18, 1, 'Daily Upload', '2015-07-20 01:16:47', '2015-07-20 01:16:47'),
(92, 1, 5, 'Daily Login', '2015-07-22 01:12:47', '2015-07-22 01:12:47'),
(93, 1, 1, 'Daily Comment', '2015-07-22 03:01:24', '2015-07-22 03:01:24'),
(94, 1, 5, 'Daily Login', '2015-07-22 23:41:34', '2015-07-22 23:41:34'),
(95, 1, 1, 'Daily Upload', '2015-07-23 00:18:17', '2015-07-23 00:18:17'),
(96, 19, 200, 'Đăng kí', '2015-07-23 04:12:07', '2015-07-23 04:12:07'),
(97, 1, 5, 'Daily Login', '2015-07-23 19:43:14', '2015-07-23 19:43:14'),
(98, 1, 1, 'Daily Upload', '2015-07-23 19:43:53', '2015-07-23 19:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `website_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fb_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fb_secret_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook_page_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_secret_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `google_page_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter_page_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_title_length` int(11) NOT NULL,
  `auto_approve_posts` tinyint(1) NOT NULL,
  `custom_css` text COLLATE utf8_unicode_ci NOT NULL,
  `like_icon` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `secondary_color` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `primary_color` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `square_ad` text COLLATE utf8_unicode_ci NOT NULL,
  `color_scheme` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'light',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `analytics` text COLLATE utf8_unicode_ci NOT NULL,
  `user_registration` tinyint(1) NOT NULL DEFAULT '1',
  `infinite_scroll` tinyint(1) NOT NULL DEFAULT '1',
  `random_bar_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `media_description` tinyint(1) NOT NULL DEFAULT '0',
  `inbetween_ads` text COLLATE utf8_unicode_ci,
  `inbetween_ads_repeat` int(11) NOT NULL DEFAULT '5',
  `enable_watermark` tinyint(1) NOT NULL DEFAULT '0',
  `watermark_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'application/assets/img/watermark.png',
  `watermark_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'bottom-right',
  `watermark_offset_x` int(11) NOT NULL DEFAULT '0',
  `watermark_offset_y` int(11) NOT NULL DEFAULT '0',
  `pages_in_menu` tinyint(1) NOT NULL DEFAULT '1',
  `pages_in_menu_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'More',
  `infinite_load_btn` tinyint(1) NOT NULL DEFAULT '0',
  `captcha` tinyint(1) NOT NULL DEFAULT '0',
  `captcha_public_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `captcha_private_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_name`, `website_description`, `logo`, `favicon`, `theme`, `fb_key`, `fb_secret_key`, `facebook_page_id`, `google_key`, `google_secret_key`, `google_page_id`, `twitter_page_id`, `post_title_length`, `auto_approve_posts`, `custom_css`, `like_icon`, `secondary_color`, `primary_color`, `square_ad`, `color_scheme`, `created_at`, `updated_at`, `analytics`, `user_registration`, `infinite_scroll`, `random_bar_enabled`, `media_description`, `inbetween_ads`, `inbetween_ads_repeat`, `enable_watermark`, `watermark_image`, `watermark_position`, `watermark_offset_x`, `watermark_offset_y`, `pages_in_menu`, `pages_in_menu_text`, `infinite_load_btn`, `captcha`, `captcha_public_key`, `captcha_private_key`) VALUES
(1, 'KPOP FUN', 'Tổng hợp những hình ảnh vui từ KPOP', '55614a4d0321f-logo.png', 'application/assets/img/favicon.png', '', '375706065961090', '8cc669ca2a1a55d63a99158e08e8f43f', 'HoiNhungNguoiMeTraiKpop', '', '', '', '', 0, 1, '', 'fa-thumbs-o-up', '#12c3ee', '#8c4898', '', 'light', '0000-00-00 00:00:00', '2015-06-12 03:04:05', '<script>\r\n  (function(i,s,o,g,r,a,m){i[''GoogleAnalyticsObject'']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,''script'',''//www.google-analytics.com/analytics.js'',''ga'');\r\n\r\n  ga(''create'', ''UA-54051498-2'', ''auto'');\r\n  ga(''send'', ''pageview'');\r\n\r\n</script>', 1, 1, 0, 1, '', 5, 0, 'application/assets/img/watermark.png', 'bottom-right', 0, 0, 1, 'More', 0, 0, '123456', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `admin`, `active`, `email`, `password`, `avatar`, `created_at`, `updated_at`, `activation_code`, `remember_token`) VALUES
(1, 'thunderclap1030', 1, 1, 'thunderclap1030@gmail.com', '$2y$08$3xf0Ub98V/eJfRMo7ZEY1OSUewsgZNSdDbYLkFs7UkYKVBtx.VCC6', 'TVXQ-Yunho.jpg', '2015-05-22 23:22:11', '2015-07-23 00:17:21', NULL, 'LgO4BCPQJZ0iEjhwhH76yNi0Rv5pAOpMnknP1rf4KNNhkjCXEO3D0cS8RQcd'),
(3, 'Ngọc', 0, 1, 'datptpd00519@fpt.edu.vn', '$2y$08$tcUlLPmQC7WdgIsNRro58u6an1UmsOdI55xDjT8kPnBdnYw1.XF.u', 'deo.jpg', '2015-05-23 23:15:42', '2015-07-20 01:05:12', NULL, 'eZQj6WslBNUTd0FPFVroJB7F7SBZHcfMy7kTdY8ivKIfzwtJjNuLvl8xm1VM'),
(4, 'dat-pt', 0, 1, 'dat.pt@danangtrade.vn', '$2y$08$cCNMC4pKPS4bcOSbt4ULcOSn5Yz8RUE.Q7I.W.UtwhHJVGXtdtVEy', 'tumblr_nr3tmjhaui1rm7fruo1_500.jpg', '2015-05-24 06:47:07', '2015-07-20 00:54:20', NULL, 'BDkImSFZne9ODKq3BxxuYzRiByjgFL2DXES8pEliwbdZqFGpmEir5oZYPcbx'),
(5, 'datpt', 0, 1, 'godobelisk12345@gmail.com', '$2y$08$h95m2Vf9CZuY/W/VF1Rs8.DEdNfzIW1oF4lhBri1U7qoyWzXNt5Ou', 'default.jpg', '2015-05-27 06:41:07', '2015-05-27 07:37:28', NULL, 'wA0xfCrDrd032nczPkEhRbR2C3FrhzEkpFKV9jsmfIPLVbhyGk19Qx3unE7h'),
(6, 'infinite', 0, 1, 'godobelisk123456@gmail.com', '$2y$08$aK9573WueQxuMfe9XtFnYOWX4IqKJpbKb0OqbqGJ/NvSnQz7lBULS', 'exo-trong-tre.png', '2015-05-29 08:20:56', '2015-05-29 08:52:53', NULL, 'ZtMr9gEDSK4dya1EjMkKMUMFYHdlRvyCuxjIglsFAL8JR4Rwq2B5xWIhVzBU'),
(7, 'Nguyễn', 0, 1, 'nguyendung2562002@gmail.com', '$2y$08$EwV1elxHWDmHjHiijXQmn.oLQHFHZ.612nfw.T8qOc88/wXXuwUPq', 'default.jpg', '2015-05-30 02:49:17', '2015-05-30 02:49:17', NULL, ''),
(8, 'ExoShidae', 0, 1, 'taeyeon297@yahoo.com.vn', '$2y$08$8RM0dvcA2mfbfMoLwWe0o.vunOFNCDyI3bCYJku35GmlrKtcppeu2', 'ExoShidae.jpg', '2015-05-31 04:16:32', '2015-05-31 04:16:32', NULL, ''),
(9, 'ngocthanh17721', 0, 1, 'ngocthanhminh1772002@gmail.com', '$2y$08$qD/GEzr4iZDimBJjOsGQAuZGupcRtQyAIsII2x8mphfjZITsQ6Ai.', 'default.jpg', '2015-06-03 02:50:20', '2015-06-03 02:50:20', NULL, ''),
(10, 'Nguyễn5573096b19141', 0, 1, 'choijoohyun1210@gmail.com', '$2y$08$xvMJ.VsMFKJs7k7M.ssmkO8wM6i0tEurz5dWWXbTbIJTVRfT1vmqi', 'default.jpg', '2015-06-06 07:53:38', '2015-06-06 07:53:38', NULL, ''),
(11, 'Thảo', 0, 1, 'pe.meo.den2000@gmail.com', '$2y$08$BYFNNBr8ACx3qC49rQ9/FOn2y54dgWr9bkUMCsI1qxwotj8EptdJ6', 'default.jpg', '2015-06-07 20:23:15', '2015-06-07 20:23:15', NULL, ''),
(12, 'Hiếu''s', 0, 1, 'nguyenthihieutam56@gmail.com', '$2y$08$n4AI4ERtm9PBhvKEgUc/P.fxaaLTMtNm93CgfhQLGDkUZLa3m5GKe', 'default.jpg', '2015-06-08 22:13:02', '2015-06-08 22:13:02', NULL, ''),
(13, 'Ngọc5576d1cc1b629', 0, 1, 'minhngoctran98@gmail.com', '$2y$08$5SevMkoJtDeMYT2iBwjP1eAJVX8FWF.xtm.t9vESWAqywEev1eh.a', 'default.jpg', '2015-06-09 04:45:26', '2015-06-09 04:45:26', NULL, ''),
(14, 'Hạnh', 0, 1, 'hanhdo907@gmail.com', '$2y$08$qrhMkFnlW3MapnrBmDb32uGw7nSxGgT4oksA/qb7NeaQrwdYv96JS', 'default.jpg', '2015-06-20 02:00:05', '2015-06-20 02:00:05', NULL, ''),
(15, 'Lin', 0, 1, 'linheokutea2@gmail.com', '$2y$08$.lnkkHFxN6LW9.uRA2lamuMzh0qQYDiuyEAkBjlnCPlle2XwpENG2', 'Lin.jpg', '2015-07-01 04:01:03', '2015-07-01 04:01:03', NULL, ''),
(16, 'Sữa', 0, 1, 'binhchickchoe@gmail.com', '$2y$08$MX/AStTDU5sUwa793eCVje4CiOrTjaoYDcJEIIfYCwYUCUilXhJKe', 'default.jpg', '2015-07-07 05:57:47', '2015-07-07 05:57:47', NULL, ''),
(17, 'tcp560', 0, 1, 'thunderclap560@gmail.com', '$2y$08$6WLXUkcpWD3g3T4Q7FSfveRYgGkZo3uPGEsURQF.3YmThvrj.qZCu', '11753722_486177441549129_4427140356653254125_n.png', '2015-07-20 00:21:15', '2015-07-20 00:25:17', NULL, 'EYYREucLuspYPd8HJlRQqUvyQT1UouUs5iaWAE1hpwwfS4D9R65LnBcTFmVK'),
(18, 'dongkun112', 0, 1, 'godobelisk1234@gmail.com', '$2y$08$dGYRO6EqihdXIeoW9MwHwuwqqQJ1pu00t5BxViW7iSpmt/sZyXVzG', 'default.jpg', '2015-07-20 01:15:37', '2015-07-20 01:18:02', NULL, 'MYNGgyPb1ON9UvX8HU11pRe5NMGeSST31mD6yHGRrmPpm5EpZWQHS9u8WafY'),
(19, 'admin', 0, 1, 'admin@gmail.com', '$2y$08$IBsKWvXzAIMDmSM5FWR2hua78AKJK7/B0Ddki6iUWJjtsFw.weJ5y', 'default.jpg', '2015-07-23 04:12:07', '2015-07-23 04:12:07', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `user_flags`
--

CREATE TABLE IF NOT EXISTS `user_flags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_flagged_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_flags`
--

INSERT INTO `user_flags` (`id`, `user_id`, `user_flagged_id`, `created_at`, `updated_at`) VALUES
(1, 1, 14, '2015-06-29 18:56:55', '2015-06-29 18:56:55');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
