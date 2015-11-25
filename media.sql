-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2015 at 05:01 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `media`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 33, '2013-10-24 09:41:57', '2014-01-28 08:25:19'),
(2, 'Animals', 1, '2013-10-18 08:57:00', '2014-01-28 08:45:25'),
(25, 'News', 24, '2013-10-24 09:40:46', '2013-10-24 09:40:46'),
(29, 'Sports', 31, '2013-10-24 09:41:30', '2014-01-26 10:22:09'),
(31, 'Comics', 18, '2014-01-28 07:59:34', '2014-01-28 09:00:58'),
(32, 'Cartoon', 3, '2014-01-28 08:25:09', '2014-01-28 08:25:09'),
(33, 'Music', 22, '2014-01-28 08:44:11', '2014-01-28 08:44:11'),
(34, 'Architecture', 2, '2014-01-28 08:45:15', '2014-01-28 08:45:31'),
(35, 'Film', 20, '2014-01-28 09:00:22', '2014-01-28 09:00:22'),
(36, 'Family', 19, '2014-01-28 09:01:08', '2014-01-28 09:01:08'),
(37, 'Comedy', 13, '2014-01-30 21:11:41', '2014-01-30 21:11:41'),
(38, 'Vehicles', 38, '2014-01-30 21:20:05', '2014-01-30 21:20:05'),
(39, 'Food', 21, '2014-01-30 21:46:00', '2014-01-30 21:46:00'),
(40, 'Retro', 25, '2014-02-03 21:38:23', '2014-02-03 21:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pic_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vid_url` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_flags`
--

CREATE TABLE IF NOT EXISTS `comment_flags` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_votes`
--

CREATE TABLE IF NOT EXISTS `comment_votes` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `up` tinyint(1) NOT NULL DEFAULT '0',
  `down` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` int(10) unsigned NOT NULL,
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
  `views` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_flags`
--

CREATE TABLE IF NOT EXISTS `media_flags` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_likes`
--

CREATE TABLE IF NOT EXISTS `media_likes` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_facebook`
--

CREATE TABLE IF NOT EXISTS `oauth_facebook` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `oauth_userid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_google`
--

CREATE TABLE IF NOT EXISTS `oauth_google` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `oauth_userid` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `show_in_menu` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reminders`
--

CREATE TABLE IF NOT EXISTS `password_reminders` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE IF NOT EXISTS `plugins` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugin_data`
--

CREATE TABLE IF NOT EXISTS `plugin_data` (
  `id` int(10) unsigned NOT NULL,
  `plugin_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE IF NOT EXISTS `points` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `user_id`, `points`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 200, 'Registration', '2015-11-25 07:35:43', '2015-11-25 07:35:43'),
(2, 1, 5, 'Daily Login', '2015-11-25 07:40:20', '2015-11-25 07:40:20'),
(3, 1, 1, 'Daily Comment', '2015-11-25 07:40:49', '2015-11-25 07:40:49');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL,
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
  `captcha_private_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_name`, `website_description`, `logo`, `favicon`, `theme`, `fb_key`, `fb_secret_key`, `facebook_page_id`, `google_key`, `google_secret_key`, `google_page_id`, `twitter_page_id`, `post_title_length`, `auto_approve_posts`, `custom_css`, `like_icon`, `secondary_color`, `primary_color`, `square_ad`, `color_scheme`, `created_at`, `updated_at`, `analytics`, `user_registration`, `infinite_scroll`, `random_bar_enabled`, `media_description`, `inbetween_ads`, `inbetween_ads_repeat`, `enable_watermark`, `watermark_image`, `watermark_position`, `watermark_offset_x`, `watermark_offset_y`, `pages_in_menu`, `pages_in_menu_text`, `infinite_load_btn`, `captcha`, `captcha_public_key`, `captcha_private_key`) VALUES
(1, 'Ninja Media Script', 'Viral Fun Media Sharing Script', 'logo.png', 'application/assets/img/favicon.png', '', '', '', 'envato', '', '', 'envato', 'envato', 0, 1, '', 'fa-thumbs-o-up', '#12c3ee', '#ee222e', '', 'light', '0000-00-00 00:00:00', '2014-01-03 17:08:17', '', 1, 1, 0, 0, NULL, 5, 0, 'application/assets/img/watermark.png', 'bottom-right', 0, 0, 1, 'More', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `admin`, `active`, `email`, `password`, `avatar`, `created_at`, `updated_at`, `activation_code`, `remember_token`) VALUES
(1, 'thunderclap1030', 1, 1, 'thunderclap1030@gmail.com', '$2y$08$1yB8LrJmEg9zWn/kqZkCyerfOoS60JLxagC5unbKRIP6ImKJQnGh.', 'default.jpg', '2015-11-25 07:35:42', '2015-11-25 07:35:42', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `user_flags`
--

CREATE TABLE IF NOT EXISTS `user_flags` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_flagged_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_flags`
--
ALTER TABLE `comment_flags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_votes`
--
ALTER TABLE `comment_votes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_flags`
--
ALTER TABLE `media_flags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_likes`
--
ALTER TABLE `media_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_facebook`
--
ALTER TABLE `oauth_facebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_google`
--
ALTER TABLE `oauth_google`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reminders`
--
ALTER TABLE `password_reminders`
  ADD KEY `password_reminders_email_index` (`email`),
  ADD KEY `password_reminders_token_index` (`token`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plugin_data`
--
ALTER TABLE `plugin_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_flags`
--
ALTER TABLE `user_flags`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `comment_flags`
--
ALTER TABLE `comment_flags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment_votes`
--
ALTER TABLE `comment_votes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=217;
--
-- AUTO_INCREMENT for table `media_flags`
--
ALTER TABLE `media_flags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `media_likes`
--
ALTER TABLE `media_likes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_facebook`
--
ALTER TABLE `oauth_facebook`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oauth_google`
--
ALTER TABLE `oauth_google`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plugin_data`
--
ALTER TABLE `plugin_data`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_flags`
--
ALTER TABLE `user_flags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
