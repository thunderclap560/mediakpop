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
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
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

INSERT INTO `media` (`id`, `user_id`, `category_id`, `title`, `slug`, `description`, `active`, `vid`, `pic`, `pic_url`, `vid_url`, `link_url`, `tags`, `created_at`, `updated_at`, `nsfw`, `views`) VALUES
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
