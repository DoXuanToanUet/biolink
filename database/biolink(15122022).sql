-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 15, 2022 lúc 09:21 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `biolink`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(408, 'action_scheduler/migration_hook', 'complete', '2022-12-08 09:00:05', '2022-12-08 09:00:05', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1670490005;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1670490005;}', 1, 1, '2022-12-08 09:02:04', '2022-12-08 16:02:04', 0, NULL),
(409, 'wp_mail_smtp_summary_report_email', 'complete', '2022-12-12 07:00:00', '2022-12-12 07:00:00', '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1670828400;s:18:\"\0*\0first_timestamp\";i:1670828400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1670828400;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2022-12-13 07:12:19', '2022-12-13 14:12:19', 0, NULL),
(410, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[2]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2022-12-08 09:11:31', '2022-12-08 16:11:31', 0, NULL),
(411, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[3]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2022-12-12 02:39:54', '2022-12-12 09:39:54', 0, NULL),
(412, 'wp_mail_smtp_summary_report_email', 'pending', '2022-12-20 07:12:19', '2022-12-20 07:12:19', '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1671520339;s:18:\"\0*\0first_timestamp\";i:1670828400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1671520339;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(413, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[4]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2022-12-13 07:14:44', '2022-12-13 14:14:44', 0, NULL),
(414, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[5]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2022-12-14 07:25:06', '2022-12-14 14:25:06', 0, NULL),
(415, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[6]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2022-12-15 07:30:05', '2022-12-15 14:30:05', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wp_mail_smtp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 408, 'action created', '2022-12-08 08:59:05', '2022-12-08 08:59:05'),
(2, 408, 'action started via WP Cron', '2022-12-08 09:02:04', '2022-12-08 09:02:04'),
(3, 408, 'action complete via WP Cron', '2022-12-08 09:02:04', '2022-12-08 09:02:04'),
(4, 409, 'action created', '2022-12-08 09:02:08', '2022-12-08 09:02:08'),
(5, 410, 'action created', '2022-12-08 09:10:29', '2022-12-08 09:10:29'),
(6, 410, 'action started via WP Cron', '2022-12-08 09:11:31', '2022-12-08 09:11:31'),
(7, 410, 'action complete via WP Cron', '2022-12-08 09:11:31', '2022-12-08 09:11:31'),
(8, 411, 'action created', '2022-12-12 02:39:46', '2022-12-12 02:39:46'),
(9, 411, 'action started via Async Request', '2022-12-12 02:39:54', '2022-12-12 02:39:54'),
(10, 411, 'action complete via Async Request', '2022-12-12 02:39:54', '2022-12-12 02:39:54'),
(11, 409, 'action started via WP Cron', '2022-12-13 07:12:15', '2022-12-13 07:12:15'),
(12, 409, 'action complete via WP Cron', '2022-12-13 07:12:19', '2022-12-13 07:12:19'),
(13, 412, 'action created', '2022-12-13 07:12:19', '2022-12-13 07:12:19'),
(14, 413, 'action created', '2022-12-13 07:14:41', '2022-12-13 07:14:41'),
(15, 413, 'action started via Async Request', '2022-12-13 07:14:44', '2022-12-13 07:14:44'),
(16, 413, 'action complete via Async Request', '2022-12-13 07:14:44', '2022-12-13 07:14:44'),
(17, 414, 'action created', '2022-12-14 07:24:11', '2022-12-14 07:24:11'),
(18, 414, 'action started via WP Cron', '2022-12-14 07:25:06', '2022-12-14 07:25:06'),
(19, 414, 'action complete via WP Cron', '2022-12-14 07:25:06', '2022-12-14 07:25:06'),
(20, 415, 'action created', '2022-12-15 07:30:03', '2022-12-15 07:30:03'),
(21, 415, 'action started via WP Cron', '2022-12-15 07:30:05', '2022-12-15 07:30:05'),
(22, 415, 'action complete via WP Cron', '2022-12-15 07:30:05', '2022-12-15 07:30:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://vi.wordpress.org/', '', '2022-12-01 02:44:56', '2022-12-01 02:44:56', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_fbv`
--

CREATE TABLE `wp_fbv` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `type` int(2) NOT NULL DEFAULT 0,
  `ord` int(11) DEFAULT 0,
  `created_by` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_fbv_attachment_folder`
--

CREATE TABLE `wp_fbv_attachment_folder` (
  `folder_id` int(11) UNSIGNED NOT NULL,
  `attachment_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_mclean_refs`
--

CREATE TABLE `wp_mclean_refs` (
  `id` bigint(20) NOT NULL,
  `mediaId` bigint(20) DEFAULT NULL,
  `mediaUrl` tinytext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `originType` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_mclean_scan`
--

CREATE TABLE `wp_mclean_scan` (
  `id` bigint(20) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` tinyint(1) NOT NULL,
  `postId` bigint(20) DEFAULT NULL,
  `path` tinytext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `size` int(9) DEFAULT NULL,
  `ignored` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `issue` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_mclean_scan`
--

INSERT INTO `wp_mclean_scan` (`id`, `time`, `type`, `postId`, `path`, `size`, `ignored`, `deleted`, `issue`) VALUES
(20, '2022-12-06 09:21:09', 1, 225, '2022/12/avatar-gai-xinh-56-1.jpg (+ 2 files)', 72189, 0, 0, 'NO_CONTENT'),
(21, '2022-12-06 09:21:09', 1, 263, '2022/12/Playdisk-Music-Entertainment-Logo.png (+ 2 files)', 24906, 0, 0, 'NO_CONTENT'),
(22, '2022-12-06 09:21:09', 1, 266, '2022/12/background-images-for-login-page3bc68c53b0db224b.jpg (+ 2 files)', 94503, 0, 0, 'NO_CONTENT'),
(23, '2022-12-06 09:21:09', 1, 296, '2022/12/vien-uong-bo-sung-nmn-hm-medical-aishodo-nmn-18000-90-vien-kd.jpg (+ 2 files)', 50469, 0, 0, 'NO_CONTENT'),
(24, '2022-12-06 09:21:09', 1, 308, '2022/12/hinh-nen-hotgirl-duyen-dang_125438813.jpg (+ 2 files)', 0, 0, 0, 'ORPHAN_MEDIA'),
(25, '2022-12-06 09:21:09', 1, 309, '2022/12/hinh-nen-hotgirl-duyen-dang_125438813-1.jpg (+ 2 files)', 140151, 0, 0, 'NO_CONTENT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://biolink.local', 'yes'),
(2, 'home', 'http://biolink.local', 'yes'),
(3, 'blogname', 'Biolink', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'itscompanydev@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=431&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:14:{i:0;s:31:\"query-monitor/query-monitor.php\";i:1;s:33:\"admin-menu-editor/menu-editor.php\";i:2;s:34:\"advanced-custom-fields-pro/acf.php\";i:3;s:81:\"all-in-one-wp-migration-file-extension/all-in-one-wp-migration-file-extension.php\";i:4;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:5;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:6;s:49:\"easy-table-of-contents/easy-table-of-contents.php\";i:7;s:31:\"media-cleaner/media-cleaner.php\";i:8;s:37:\"user-role-editor/user-role-editor.php\";i:9;s:23:\"wordfence/wordfence.php\";i:10;s:39:\"wp-add-mime-types/wp-add-mime-types.php\";i:11;s:58:\"wp-delete-user-accounts-master/wp-delete-user-accounts.php\";i:12;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";i:13;s:33:\"wps-hide-login/wps-hide-login.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '7', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'biolink', 'yes'),
(41, 'stylesheet', 'biolink', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:2:{s:37:\"user-role-editor/user-role-editor.php\";a:2:{i:0;s:16:\"User_Role_Editor\";i:1;s:9:\"uninstall\";}s:39:\"wp-add-mime-types/wp-add-mime-types.php\";s:16:\"wamt_uninstaller\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '431', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1685414695', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:84:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:14:\"ure_edit_roles\";b:1;s:16:\"ure_create_roles\";b:1;s:16:\"ure_delete_roles\";b:1;s:23:\"ure_create_capabilities\";b:1;s:23:\"ure_delete_capabilities\";b:1;s:18:\"ure_manage_options\";b:1;s:15:\"ure_reset_roles\";b:1;s:12:\"create_posts\";b:1;s:17:\"install_languages\";b:1;s:14:\"resume_plugins\";b:1;s:13:\"resume_themes\";b:1;s:23:\"view_site_health_checks\";b:1;s:31:\"genesis_custom_block_edit_block\";b:1;s:32:\"genesis_custom_block_edit_blocks\";b:1;s:39:\"genesis_custom_block_edit_others_blocks\";b:1;s:35:\"genesis_custom_block_publish_blocks\";b:1;s:31:\"genesis_custom_block_read_block\";b:1;s:40:\"genesis_custom_block_read_private_blocks\";b:1;s:33:\"genesis_custom_block_delete_block\";b:1;s:18:\"view_query_monitor\";b:1;s:23:\"wf2fa_activate_2fa_self\";b:1;s:25:\"wf2fa_activate_2fa_others\";b:1;s:21:\"wf2fa_manage_settings\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:4:{s:12:\"delete_pages\";b:1;s:10:\"edit_pages\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;}}s:8:\"kol_user\";a:2:{s:4:\"name\";s:12:\"Biolink User\";s:12:\"capabilities\";a:7:{s:10:\"edit_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:7:\"level_0\";b:1;s:7:\"level_1\";b:1;s:13:\"publish_pages\";b:1;s:4:\"read\";b:1;s:12:\"upload_files\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', '', 'yes'),
(103, 'user_count', '8', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:159:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Bài viết mới</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:236:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Phản hồi gần đây</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:148:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Lưu trữ</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:153:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Chuyên mục</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:13:{i:1671092524;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1671093275;a:1:{s:21:\"wordfence_ls_ntp_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1671093281;a:1:{s:21:\"wordfence_hourly_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1671095232;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1671115496;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1671115515;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1671158081;a:1:{s:20:\"wordfence_daily_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1671158696;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1671158714;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1671158717;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1671158887;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1671440400;a:1:{s:31:\"wordfence_email_activity_report\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}', 'yes'),
(126, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1669864368;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(142, 'can_compress_scripts', '1', 'no'),
(155, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(156, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(161, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"itscompanydev@gmail.com\";s:7:\"version\";s:5:\"6.1.1\";s:9:\"timestamp\";i:1669862740;}', 'no'),
(170, 'finished_updating_comment_type', '1', 'yes'),
(171, 'recently_activated', 'a:0:{}', 'yes'),
(172, 'acf_version', '5.11.4', 'yes'),
(173, 'ai1wm_secret_key', 'kzNbZbA6Q0zf', 'yes'),
(174, 'ai1wmte_plugin_key', '1', 'yes'),
(177, '_site_transient_ai1wm_last_check_for_updates', '1671069306', 'no'),
(178, 'ai1wm_updater', 'a:1:{s:38:\"all-in-one-wp-migration-file-extension\";a:13:{s:4:\"name\";s:14:\"File Extension\";s:4:\"slug\";s:14:\"file-extension\";s:8:\"homepage\";s:31:\"https://import.wp-migration.com\";s:13:\"download_link\";s:74:\"https://import.wp-migration.com/all-in-one-wp-migration-file-extension.zip\";s:7:\"version\";s:3:\"1.8\";s:6:\"author\";s:8:\"ServMask\";s:15:\"author_homepage\";s:20:\"https://servmask.com\";s:8:\"sections\";a:1:{s:11:\"description\";s:60:\"<ul class=\"description\"><li>Import from file</li></ul><br />\";}s:7:\"banners\";a:2:{s:3:\"low\";s:71:\"https://import.wp-migration.com/img/products/file-extension-772x250.png\";s:4:\"high\";s:72:\"https://import.wp-migration.com/img/products/file-extension-1544x500.png\";}s:5:\"icons\";a:3:{s:2:\"1x\";s:71:\"https://import.wp-migration.com/img/products/file-extension-128x128.png\";s:2:\"2x\";s:71:\"https://import.wp-migration.com/img/products/file-extension-256x256.png\";s:7:\"default\";s:71:\"https://import.wp-migration.com/img/products/file-extension-256x256.png\";}s:6:\"rating\";i:99;s:11:\"num_ratings\";i:309;s:10:\"downloaded\";i:40188;}}', 'yes'),
(190, 'current_theme', 'Biolink', 'yes'),
(191, 'theme_mods_biolink', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:6:{s:8:\"mainmenu\";i:2;s:11:\"footermenu2\";i:3;s:10:\"footermenu\";i:4;s:11:\"footermenu3\";i:5;s:11:\"sidebarmenu\";i:7;s:14:\"sidebarSupport\";i:7;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1669868372;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(192, 'theme_switched', '', 'yes'),
(193, 'recovery_mode_email_last_sent', '1669864369', 'yes'),
(210, 'user_role_editor', 'a:1:{s:11:\"ure_version\";s:4:\"4.63\";}', 'yes'),
(211, 'wp_backup_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'no'),
(212, 'ure_tasks_queue', 'a:0:{}', 'yes'),
(222, 'ure_role_additional_options_values', 'a:2:{s:8:\"kol_user\";a:0:{}s:10:\"subscriber\";a:0:{}}', 'yes'),
(254, 'theme_mods_genesis', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1669868668;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:12:\"header-right\";a:0:{}s:7:\"sidebar\";a:0:{}s:11:\"sidebar-alt\";a:0:{}}}}', 'yes'),
(255, 'widget_featured-page', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(256, 'widget_featured-post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(257, 'widget_user-profile', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(258, 'genesis-settings', 'a:32:{s:6:\"update\";i:1;s:20:\"update_email_address\";s:0:\"\";s:10:\"blog_title\";s:4:\"text\";s:15:\"style_selection\";s:0:\"\";s:11:\"site_layout\";s:15:\"content-sidebar\";s:9:\"superfish\";i:0;s:15:\"breadcrumb_home\";i:0;s:21:\"breadcrumb_front_page\";i:0;s:21:\"breadcrumb_posts_page\";i:0;s:17:\"breadcrumb_single\";i:0;s:15:\"breadcrumb_page\";i:0;s:18:\"breadcrumb_archive\";i:0;s:14:\"breadcrumb_404\";i:0;s:21:\"breadcrumb_attachment\";i:0;s:14:\"comments_pages\";i:0;s:14:\"comments_posts\";i:1;s:25:\"entry_meta_before_content\";s:67:\"[post_date] by [post_author_posts_link] [post_comments] [post_edit]\";s:24:\"entry_meta_after_content\";s:29:\"[post_categories] [post_tags]\";s:16:\"trackbacks_pages\";i:0;s:16:\"trackbacks_posts\";i:1;s:15:\"content_archive\";s:4:\"full\";s:21:\"content_archive_limit\";i:0;s:25:\"content_archive_thumbnail\";i:0;s:10:\"image_size\";s:0:\"\";s:15:\"image_alignment\";s:9:\"alignleft\";s:9:\"posts_nav\";s:7:\"numeric\";s:14:\"header_scripts\";s:0:\"\";s:14:\"footer_scripts\";s:0:\"\";s:11:\"footer_text\";s:203:\"[footer_copyright before=\"Copyright \"] · [footer_childtheme_link before=\"\" after=\" on\"] [footer_genesis_link url=\"https://www.studiopress.com/\" before=\"\"] · [footer_wordpress_link] · [footer_loginout]\";s:13:\"theme_version\";s:5:\"3.4.0\";s:10:\"db_version\";s:4:\"3301\";s:13:\"first_version\";s:5:\"3.4.0\";}', 'yes'),
(259, 'genesis-seo-settings', 'a:25:{s:17:\"append_site_title\";i:0;s:12:\"doctitle_sep\";s:3:\"–\";s:20:\"doctitle_seplocation\";s:5:\"right\";s:23:\"append_description_home\";i:1;s:10:\"home_h1_on\";s:5:\"title\";s:13:\"home_doctitle\";s:0:\"\";s:16:\"home_description\";s:0:\"\";s:13:\"home_keywords\";s:0:\"\";s:12:\"home_noindex\";i:0;s:13:\"home_nofollow\";i:0;s:14:\"home_noarchive\";i:0;s:28:\"head_adjacent_posts_rel_link\";i:0;s:21:\"head_wlwmanifest_link\";i:0;s:14:\"head_shortlink\";i:0;s:19:\"noindex_cat_archive\";i:1;s:19:\"noindex_tag_archive\";i:1;s:22:\"noindex_author_archive\";i:1;s:20:\"noindex_date_archive\";i:1;s:22:\"noindex_search_archive\";i:1;s:21:\"noarchive_cat_archive\";i:0;s:21:\"noarchive_tag_archive\";i:0;s:24:\"noarchive_author_archive\";i:0;s:22:\"noarchive_date_archive\";i:0;s:24:\"noarchive_search_archive\";i:0;s:9:\"noarchive\";i:0;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(275, '_site_transient_traduttore-registry-themes', 'O:8:\"stdClass\":2:{s:7:\"genesis\";a:1:{s:12:\"translations\";a:53:{i:0;a:7:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:06:20+00:00\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:70:\"https://translate.studiopress.com/wp-content/traduttore/genesis-am.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"am\";i:1;s:3:\"amh\";}}i:1;a:7:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-03-04T10:00:48+00:00\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:70:\"https://translate.studiopress.com/wp-content/traduttore/genesis-ar.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"ar\";i:1;s:3:\"ara\";}}i:2;a:7:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:06:24+00:00\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:70:\"https://translate.studiopress.com/wp-content/traduttore/genesis-eu.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"eu\";i:1;s:3:\"eus\";}}i:3;a:7:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-03-04T09:58:05+00:00\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-bn_BD.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"bn\";}}i:4;a:7:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:06:28+00:00\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-bg_BG.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"bg\";i:1;s:3:\"bul\";}}i:5;a:7:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-03-04T09:56:09+00:00\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:70:\"https://translate.studiopress.com/wp-content/traduttore/genesis-ca.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"ca\";i:1;s:3:\"cat\";}}i:6;a:7:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-03-21T17:10:22+00:00\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-zh_CN.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"zh\";i:1;s:3:\"zho\";}}i:7;a:7:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2022-02-20T22:16:01+00:00\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-zh_TW.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"zh\";i:1;s:3:\"zho\";}}i:8;a:7:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-03-05T15:08:04+00:00\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:70:\"https://translate.studiopress.com/wp-content/traduttore/genesis-hr.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"hr\";i:1;s:3:\"hrv\";}}i:9;a:7:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:06:45+00:00\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-cs_CZ.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"cs\";i:1;s:3:\"ces\";}}i:10;a:7:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-04-27T09:15:27+00:00\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-da_DK.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"da\";i:1;s:3:\"dan\";}}i:11;a:7:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-04-23T12:35:17+00:00\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-nl_NL.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"nl\";i:1;s:3:\"nld\";}}i:12;a:7:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-03-04T10:03:28+00:00\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-nl_BE.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"nl\";i:1;s:3:\"nld\";}}i:13;a:7:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-01-24T15:56:19+00:00\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-en_GB.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"en\";i:1;s:3:\"eng\";i:2;s:3:\"eng\";}}i:14;a:7:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-03-04T09:58:46+00:00\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:70:\"https://translate.studiopress.com/wp-content/traduttore/genesis-eo.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"eo\";i:1;s:3:\"epo\";}}i:15;a:7:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:07:13+00:00\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:70:\"https://translate.studiopress.com/wp-content/traduttore/genesis-et.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"et\";i:1;s:3:\"est\";}}i:16;a:7:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-10-07T12:56:40+00:00\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:70:\"https://translate.studiopress.com/wp-content/traduttore/genesis-fi.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"fi\";i:1;s:3:\"fin\";}}i:17;a:7:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:07:22+00:00\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-fr_CA.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"fr\";i:1;s:3:\"fra\";}}i:18;a:7:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-03-16T17:01:25+00:00\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-fr_FR.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"fr\";}}i:19;a:7:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-03-04T09:55:07+00:00\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-de_DE.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"de\";}}i:20;a:7:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-04-27T09:37:08+00:00\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-de_DE.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"de\";}}i:21;a:7:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:07:41+00:00\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:70:\"https://translate.studiopress.com/wp-content/traduttore/genesis-el.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"el\";i:1;s:3:\"ell\";}}i:22;a:7:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:07:44+00:00\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-he_IL.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"he\";}}i:23;a:7:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-04-15T14:58:19+00:00\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-hu_HU.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"hu\";i:1;s:3:\"hun\";}}i:24;a:7:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:07:50+00:00\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-is_IS.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"is\";i:1;s:3:\"isl\";}}i:25;a:7:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:07:55+00:00\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-id_ID.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"id\";i:1;s:3:\"ind\";}}i:26;a:7:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-11-10T19:23:00+00:00\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-it_IT.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"it\";i:1;s:3:\"ita\";}}i:27;a:7:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-04-15T14:58:39+00:00\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:70:\"https://translate.studiopress.com/wp-content/traduttore/genesis-ja.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"ja\";}}i:28;a:7:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-08-11T02:24:12+00:00\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-ko_KR.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"ko\";i:1;s:3:\"kor\";}}i:29;a:7:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:08:05+00:00\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-mk_MK.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"mk\";i:1;s:3:\"mkd\";}}i:30;a:7:{s:8:\"language\";N;s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-01-24T15:56:34+00:00\";s:12:\"english_name\";s:9:\"Norwegian\";s:11:\"native_name\";s:5:\"Norsk\";s:7:\"package\";s:68:\"https://translate.studiopress.com/wp-content/traduttore/genesis-.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"no\";i:1;s:3:\"nor\";}}i:31;a:7:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-03-04T09:58:38+00:00\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-nb_NO.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"nb\";i:1;s:3:\"nob\";}}i:32;a:7:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:08:13+00:00\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-fa_IR.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"fa\";i:1;s:3:\"fas\";}}i:33;a:7:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-03-18T09:27:32+00:00\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-pl_PL.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"pl\";i:1;s:3:\"pol\";}}i:34;a:7:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-11-23T17:20:11+00:00\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-pt_BR.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"pt\";i:1;s:3:\"por\";}}i:35;a:7:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:08:28+00:00\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-pt_PT.zip\";s:3:\"iso\";a:1:{i:0;s:2:\"pt\";}}i:36;a:7:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:08:34+00:00\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-ro_RO.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"ro\";i:1;s:3:\"ron\";}}i:37;a:7:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-03-04T09:57:27+00:00\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-ru_RU.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"ru\";i:1;s:3:\"rus\";}}i:38;a:7:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-03-29T10:38:15+00:00\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-sr_RS.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"sr\";i:1;s:3:\"srp\";}}i:39;a:7:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:08:41+00:00\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-sk_SK.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"sk\";i:1;s:3:\"slk\";}}i:40;a:7:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2021-06-08T09:27:51+00:00\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-sl_SI.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"sl\";i:1;s:3:\"slv\";}}i:41;a:7:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:08:42+00:00\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-es_AR.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"es\";i:1;s:3:\"spa\";i:2;s:3:\"spa\";}}i:42;a:7:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:08:42+00:00\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-es_GT.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"es\";i:1;s:3:\"spa\";i:2;s:3:\"spa\";}}i:43;a:7:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-08-05T12:20:20+00:00\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-es_MX.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"es\";i:1;s:3:\"spa\";i:2;s:3:\"spa\";}}i:44;a:7:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2022-02-20T16:38:44+00:00\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-es_ES.zip\";s:3:\"iso\";a:3:{i:0;s:2:\"es\";i:1;s:3:\"spa\";i:2;s:3:\"spa\";}}i:45;a:7:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-03-04T09:58:32+00:00\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:70:\"https://translate.studiopress.com/wp-content/traduttore/genesis-sw.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"sw\";i:1;s:3:\"swa\";}}i:46;a:7:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-03-29T10:38:05+00:00\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-sv_SE.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"sv\";i:1;s:3:\"swe\";}}i:47;a:7:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:09:07+00:00\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:70:\"https://translate.studiopress.com/wp-content/traduttore/genesis-te.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"te\";i:1;s:3:\"tel\";}}i:48;a:7:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:09:10+00:00\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:73:\"https://translate.studiopress.com/wp-content/traduttore/genesis-tr_TR.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"tr\";i:1;s:3:\"tur\";}}i:49;a:7:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:09:11+00:00\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:70:\"https://translate.studiopress.com/wp-content/traduttore/genesis-uk.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"uk\";i:1;s:3:\"ukr\";}}i:50;a:7:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:09:11+00:00\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:70:\"https://translate.studiopress.com/wp-content/traduttore/genesis-ur.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"ur\";i:1;s:3:\"urd\";}}i:51;a:7:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2020-03-21T17:11:10+00:00\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:70:\"https://translate.studiopress.com/wp-content/traduttore/genesis-vi.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"vi\";i:1;s:3:\"vie\";}}i:52;a:7:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:25:\"2019-11-20T05:09:17+00:00\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:70:\"https://translate.studiopress.com/wp-content/traduttore/genesis-cy.zip\";s:3:\"iso\";a:2:{i:0;s:2:\"cy\";i:1;s:3:\"cym\";}}}}s:13:\"_last_checked\";i:1669868657;}', 'no'),
(277, 'genesis_custom_blocks_example_post_id', '10', 'yes'),
(283, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(435, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":7,\"critical\":0}', 'yes'),
(482, 'new_admin_email', 'itscompanydev@gmail.com', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(883, '_transient_dirsize_cache', 'a:456:{s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-admin/css/colors/blue\";i:78232;s:56:\"D:\\toanTNT\\itsproject\\biolink/wp-admin/css/colors/coffee\";i:76514;s:59:\"D:\\toanTNT\\itsproject\\biolink/wp-admin/css/colors/ectoplasm\";i:78291;s:55:\"D:\\toanTNT\\itsproject\\biolink/wp-admin/css/colors/light\";i:78804;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-admin/css/colors/midnight\";i:79071;s:56:\"D:\\toanTNT\\itsproject\\biolink/wp-admin/css/colors/modern\";i:78662;s:55:\"D:\\toanTNT\\itsproject\\biolink/wp-admin/css/colors/ocean\";i:75743;s:57:\"D:\\toanTNT\\itsproject\\biolink/wp-admin/css/colors/sunrise\";i:79029;s:49:\"D:\\toanTNT\\itsproject\\biolink/wp-admin/css/colors\";i:647958;s:42:\"D:\\toanTNT\\itsproject\\biolink/wp-admin/css\";i:2513909;s:45:\"D:\\toanTNT\\itsproject\\biolink/wp-admin/images\";i:415159;s:47:\"D:\\toanTNT\\itsproject\\biolink/wp-admin/includes\";i:2938570;s:49:\"D:\\toanTNT\\itsproject\\biolink/wp-admin/js/widgets\";i:139382;s:41:\"D:\\toanTNT\\itsproject\\biolink/wp-admin/js\";i:1907419;s:44:\"D:\\toanTNT\\itsproject\\biolink/wp-admin/maint\";i:7643;s:46:\"D:\\toanTNT\\itsproject\\biolink/wp-admin/network\";i:124260;s:43:\"D:\\toanTNT\\itsproject\\biolink/wp-admin/user\";i:3418;s:38:\"D:\\toanTNT\\itsproject\\biolink/wp-admin\";i:8817398;s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-content/ai1wm-backups\";i:630;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-content/languages/plugins\";i:154583;s:57:\"D:\\toanTNT\\itsproject\\biolink/wp-content/languages/themes\";i:2294;s:50:\"D:\\toanTNT\\itsproject\\biolink/wp-content/languages\";i:2831158;s:48:\"D:\\toanTNT\\itsproject\\biolink/wp-content/upgrade\";i:0;s:40:\"D:\\toanTNT\\itsproject\\biolink/wp-content\";i:2831816;s:48:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/assets\";i:22442;s:56:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/block-patterns\";i:8843;s:56:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/block-supports\";i:84759;s:57:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/archives\";i:7295;s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/audio\";i:12352;s:55:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/avatar\";i:7768;s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/block\";i:4929;s:55:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/button\";i:22396;s:56:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/buttons\";i:17559;s:57:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/calendar\";i:5465;s:59:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/categories\";i:8039;s:53:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/code\";i:11282;s:55:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/column\";i:1443;s:56:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/columns\";i:14713;s:68:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/comment-author-name\";i:1138;s:64:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/comment-content\";i:4319;s:61:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/comment-date\";i:1058;s:66:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/comment-edit-link\";i:1159;s:67:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/comment-reply-link\";i:1001;s:65:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/comment-template\";i:5686;s:57:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/comments\";i:35308;s:68:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/comments-pagination\";i:14649;s:73:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/comments-pagination-next\";i:957;s:76:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/comments-pagination-numbers\";i:4624;s:77:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/comments-pagination-previous\";i:969;s:63:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/comments-title\";i:4590;s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/cover\";i:85161;s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/embed\";i:19828;s:53:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/file\";i:15372;s:57:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/freeform\";i:42245;s:56:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/gallery\";i:85707;s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/group\";i:15854;s:56:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/heading\";i:5053;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/home-link\";i:1076;s:53:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/html\";i:6703;s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/image\";i:35645;s:64:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/latest-comments\";i:7625;s:61:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/latest-posts\";i:17123;s:62:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/legacy-widget\";i:501;s:53:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/list\";i:4896;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/list-item\";i:514;s:57:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/loginout\";i:510;s:59:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/media-text\";i:20633;s:56:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/missing\";i:564;s:53:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/more\";i:6746;s:59:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/navigation\";i:141329;s:64:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/navigation-link\";i:17801;s:67:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/navigation-submenu\";i:8840;s:57:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/nextpage\";i:6021;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/page-list\";i:12609;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/paragraph\";i:10751;s:56:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/pattern\";i:324;s:60:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/post-author\";i:5748;s:70:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/post-author-biography\";i:922;s:67:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/post-comments-form\";i:15204;s:61:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/post-content\";i:801;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/post-date\";i:4237;s:61:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/post-excerpt\";i:7621;s:68:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/post-featured-image\";i:32175;s:69:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/post-navigation-link\";i:1032;s:62:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/post-template\";i:11234;s:59:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/post-terms\";i:4279;s:59:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/post-title\";i:4779;s:61:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/preformatted\";i:4416;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/pullquote\";i:16643;s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/query\";i:9858;s:65:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/query-no-results\";i:845;s:65:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/query-pagination\";i:15348;s:70:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/query-pagination-next\";i:939;s:73:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/query-pagination-numbers\";i:4748;s:74:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/query-pagination-previous\";i:951;s:60:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/query-title\";i:4337;s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/quote\";i:11966;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/read-more\";i:5292;s:52:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/rss\";i:11940;s:55:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/search\";i:17653;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/separator\";i:14385;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/shortcode\";i:8171;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/site-logo\";i:15563;s:61:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/site-tagline\";i:4358;s:59:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/site-title\";i:4668;s:60:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/social-link\";i:5220;s:61:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/social-links\";i:57756;s:55:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/spacer\";i:10135;s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/table\";i:38192;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/tag-cloud\";i:6043;s:62:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/template-part\";i:9183;s:65:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/term-description\";i:1017;s:61:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/text-columns\";i:8990;s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/verse\";i:4485;s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/video\";i:22073;s:61:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks/widget-group\";i:319;s:48:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/blocks\";i:1571171;s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/certificates\";i:233231;s:66:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/css/dist/block-directory\";i:17720;s:63:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/css/dist/block-editor\";i:510773;s:64:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/css/dist/block-library\";i:758154;s:61:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/css/dist/components\";i:360844;s:68:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/css/dist/customize-widgets\";i:27716;s:60:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/css/dist/edit-post\";i:201859;s:60:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/css/dist/edit-site\";i:227817;s:63:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/css/dist/edit-widgets\";i:106919;s:57:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/css/dist/editor\";i:85270;s:65:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/css/dist/format-library\";i:10926;s:71:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/css/dist/list-reusable-blocks\";i:21908;s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/css/dist/nux\";i:14552;s:66:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/css/dist/reusable-blocks\";i:5178;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/css/dist/widgets\";i:27376;s:50:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/css/dist\";i:2377012;s:45:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/css\";i:3024212;s:51:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/customize\";i:173214;s:47:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/fonts\";i:289826;s:45:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/ID3\";i:1155209;s:56:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/images/crystal\";i:15541;s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/images/media\";i:2419;s:56:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/images/smilies\";i:10082;s:52:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/images/wlw\";i:4413;s:48:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/images\";i:103747;s:45:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/IXR\";i:33914;s:55:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/codemirror\";i:1287141;s:49:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/crop\";i:20004;s:61:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/dist/development\";i:178306;s:56:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/dist/vendor\";i:2356316;s:49:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/dist\";i:16780808;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/imgareaselect\";i:49024;s:50:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/jcrop\";i:24976;s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/jquery/ui\";i:808560;s:51:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/jquery\";i:1323894;s:67:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/mediaelement/renderers\";i:18880;s:57:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/mediaelement\";i:720715;s:53:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/plupload\";i:489841;s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/swfupload\";i:8715;s:53:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/thickbox\";i:31233;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/langs\";i:15529;s:68:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/charmap\";i:31811;s:72:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/colorpicker\";i:4910;s:73:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/compat3x/css\";i:8179;s:69:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/compat3x\";i:21758;s:75:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/directionality\";i:2749;s:71:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/fullscreen\";i:7779;s:63:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/hr\";i:1347;s:66:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/image\";i:55874;s:65:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/link\";i:32949;s:66:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/lists\";i:97383;s:66:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/media\";i:57914;s:66:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/paste\";i:113193;s:69:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/tabfocus\";i:5336;s:70:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/textcolor\";i:16237;s:70:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/wordpress\";i:50630;s:73:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/wpautoresize\";i:8332;s:70:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/wpdialogs\";i:3761;s:72:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/wpeditimage\";i:37711;s:68:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/wpemoji\";i:5099;s:70:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/wpgallery\";i:4806;s:67:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/wplink\";i:26476;s:74:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/wptextpattern\";i:11923;s:67:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins/wpview\";i:8985;s:60:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/plugins\";i:606963;s:74:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/skins/lightgray/fonts\";i:155760;s:72:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/skins/lightgray/img\";i:2856;s:68:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/skins/lightgray\";i:210254;s:75:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/skins/wordpress/images\";i:14207;s:68:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/skins/wordpress\";i:22831;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/skins\";i:233085;s:66:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/themes/inlite\";i:452642;s:66:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/themes/modern\";i:446221;s:59:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/themes\";i:898863;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce/utils\";i:18822;s:52:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js/tinymce\";i:2853655;s:44:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/js\";i:25997791;s:52:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/php-compat\";i:1203;s:51:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/PHPMailer\";i:227415;s:46:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/pomo\";i:53989;s:55:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/random_compat\";i:43330;s:55:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/Requests/Auth\";i:1939;s:57:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/Requests/Cookie\";i:3865;s:65:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/Requests/Exception/HTTP\";i:14365;s:70:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/Requests/Exception/Transport\";i:919;s:60:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/Requests/Exception\";i:16778;s:56:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/Requests/Proxy\";i:3488;s:59:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/Requests/Response\";i:2135;s:60:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/Requests/Transport\";i:30090;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/Requests/Utility\";i:3310;s:50:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/Requests\";i:139225;s:60:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/rest-api/endpoints\";i:732712;s:57:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/rest-api/fields\";i:22340;s:57:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/rest-api/search\";i:15903;s:50:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/rest-api\";i:857772;s:57:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/SimplePie/Cache\";i:39607;s:64:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/SimplePie/Content/Type\";i:8015;s:59:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/SimplePie/Content\";i:8015;s:63:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/SimplePie/Decode/HTML\";i:17241;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/SimplePie/Decode\";i:17241;s:56:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/SimplePie/HTTP\";i:11487;s:55:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/SimplePie/Net\";i:7493;s:57:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/SimplePie/Parse\";i:20551;s:67:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/SimplePie/XML/Declaration\";i:7098;s:55:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/SimplePie/XML\";i:7098;s:51:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/SimplePie\";i:458625;s:60:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sitemaps/providers\";i:16711;s:50:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sitemaps\";i:46823;s:59:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/lib\";i:87301;s:80:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/namespaced/Core/ChaCha20\";i:224;s:85:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/namespaced/Core/Curve25519/Ge\";i:602;s:82:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/namespaced/Core/Curve25519\";i:820;s:80:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/namespaced/Core/Poly1305\";i:112;s:71:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/namespaced/Core\";i:2444;s:66:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/namespaced\";i:2698;s:71:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/src/Core/Base64\";i:22135;s:73:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/src/Core/ChaCha20\";i:5264;s:78:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/src/Core/Curve25519/Ge\";i:7881;s:75:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/src/Core/Curve25519\";i:121645;s:73:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/src/Core/Poly1305\";i:12912;s:77:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/src/Core/SecretStream\";i:3624;s:64:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/src/Core\";i:452743;s:75:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/src/Core32/ChaCha20\";i:6407;s:80:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/src/Core32/Curve25519/Ge\";i:8177;s:77:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/src/Core32/Curve25519\";i:122690;s:75:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/src/Core32/Poly1305\";i:15965;s:79:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/src/Core32/SecretStream\";i:3656;s:66:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/src/Core32\";i:437041;s:65:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/src/PHP52\";i:4116;s:59:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat/src\";i:1207254;s:55:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/sodium_compat\";i:1303466;s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/style-engine\";i:37964;s:58:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/Text/Diff/Engine\";i:31662;s:60:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/Text/Diff/Renderer\";i:5535;s:51:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/Text/Diff\";i:44010;s:46:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/Text\";i:56929;s:54:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/theme-compat\";i:15442;s:49:\"D:\\toanTNT\\itsproject\\biolink/wp-includes/widgets\";i:157421;s:41:\"D:\\toanTNT\\itsproject\\biolink/wp-includes\";i:42862381;s:29:\"D:\\toanTNT\\itsproject\\biolink\";i:54692789;s:73:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/css/common\";i:4309;s:66:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/css\";i:26436;s:68:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/fonts\";i:1128917;s:65:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/js\";i:4093;s:80:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/plugins/bootstrap\";i:306461;s:76:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/plugins/count\";i:11863;s:79:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/plugins/fancybox\";i:116630;s:82:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/plugins/fontAwesome\";i:1569966;s:106:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/plugins/lineawesome/Desktop Font/demo-files\";i:35256;s:95:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/plugins/lineawesome/Desktop Font\";i:217703;s:86:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/plugins/lineawesome/PDF\";i:683703;s:86:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/plugins/lineawesome/SVG\";i:227312;s:101:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/plugins/lineawesome/WebFont/demo-files\";i:7580;s:96:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/plugins/lineawesome/WebFont/fonts\";i:394961;s:90:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/plugins/lineawesome/WebFont\";i:828851;s:82:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/plugins/lineawesome\";i:1957730;s:77:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/plugins/swiper\";i:188681;s:79:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/plugins/validate\";i:52599;s:76:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/plugins/wowjs\";i:53800;s:70:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets/plugins\";i:4371344;s:62:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/assets\";i:5530790;s:62:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/blocks\";i:48;s:69:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/template-page\";i:11749;s:89:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/template-parts/blocks/biolink/css\";i:1126;s:85:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/template-parts/blocks/biolink\";i:2531;s:89:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/template-parts/blocks/testimonial\";i:219;s:77:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/template-parts/blocks\";i:2750;s:70:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink/template-parts\";i:2750;s:55:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/biolink\";i:6020812;s:62:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/config\";i:39146;s:62:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/images\";i:40394;s:80:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/admin/images/layouts\";i:9395;s:72:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/admin/images\";i:13138;s:76:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/admin/onboarding\";i:6487;s:65:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/admin\";i:77271;s:71:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/classes/SEO\";i:8019;s:75:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/classes/Upgrade\";i:31520;s:67:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/classes\";i:190177;s:69:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/css/fonts\";i:7225;s:63:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/css\";i:62462;s:69:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/functions\";i:263303;s:68:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/js/build\";i:43571;s:73:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/js/components\";i:19643;s:69:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/js/editor\";i:15961;s:67:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/js/menu\";i:28052;s:75:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/js/vendor/modal\";i:9526;s:69:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/js/vendor\";i:9526;s:62:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/js\";i:141866;s:69:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/languages\";i:81621;s:70:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/shortcodes\";i:28571;s:69:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/structure\";i:116061;s:66:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/vendor\";i:5967;s:70:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/views/help\";i:30106;s:76:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/views/meta-boxes\";i:35067;s:70:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/views/misc\";i:2091;s:76:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/views/onboarding\";i:2988;s:71:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/views/pages\";i:19522;s:65:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/views\";i:89774;s:67:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib/widgets\";i:56717;s:59:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis/lib\";i:1131454;s:55:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/genesis\";i:1329095;s:84:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/twentytwentytwo/assets/fonts/dm-sans\";i:301601;s:85:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/twentytwentytwo/assets/fonts/ibm-plex\";i:423403;s:82:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/twentytwentytwo/assets/fonts/inter\";i:809786;s:93:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/twentytwentytwo/assets/fonts/source-serif-pro\";i:1409152;s:76:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/twentytwentytwo/assets/fonts\";i:4348514;s:77:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/twentytwentytwo/assets/images\";i:1453963;s:77:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/twentytwentytwo/assets/videos\";i:468755;s:70:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/twentytwentytwo/assets\";i:6271232;s:76:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/twentytwentytwo/inc/patterns\";i:157180;s:67:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/twentytwentytwo/inc\";i:161123;s:69:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/twentytwentytwo/parts\";i:2724;s:70:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/twentytwentytwo/styles\";i:11351;s:73:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/twentytwentytwo/templates\";i:13966;s:63:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes/twentytwentytwo\";i:6643877;s:47:\"D:\\toanTNT\\itsproject\\biolink/wp-content/themes\";i:13993812;s:96:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/assets/build/css/pro\";i:83100;s:92:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/assets/build/css\";i:588592;s:95:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/assets/build/js/pro\";i:867685;s:91:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/assets/build/js\";i:2297507;s:88:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/assets/build\";i:2886099;s:89:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/assets/images\";i:17845;s:105:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/assets/inc/color-picker-alpha\";i:27318;s:104:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/assets/inc/datepicker/images\";i:11397;s:97:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/assets/inc/datepicker\";i:61331;s:96:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/assets/inc/select2/3\";i:268765;s:96:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/assets/inc/select2/4\";i:582442;s:94:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/assets/inc/select2\";i:851207;s:97:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/assets/inc/timepicker\";i:130956;s:86:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/assets/inc\";i:1070812;s:82:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/assets\";i:3974756;s:96:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/includes/admin/tools\";i:16942;s:96:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/includes/admin/views\";i:31844;s:90:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/includes/admin\";i:112394;s:89:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/includes/ajax\";i:22895;s:88:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/includes/api\";i:126723;s:91:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/includes/fields\";i:304870;s:90:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/includes/forms\";i:75943;s:91:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/includes/legacy\";i:1777;s:94:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/includes/locations\";i:49186;s:93:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/includes/rest-api\";i:30331;s:92:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/includes/walkers\";i:5692;s:84:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/includes\";i:1004087;s:80:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/lang\";i:5010282;s:91:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/pro/admin/views\";i:5517;s:85:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/pro/admin\";i:19136;s:86:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/pro/fields\";i:118990;s:89:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/pro/locations\";i:3565;s:79:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro/pro\";i:188348;s:75:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/advanced-custom-fields-pro\";i:10230805;s:62:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/akismet/views\";i:35572;s:65:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/akismet/_inc/img\";i:5956;s:61:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/akismet/_inc\";i:42088;s:56:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/akismet\";i:270868;s:87:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/controller\";i:88762;s:89:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/model/export\";i:86106;s:89:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/model/import\";i:125757;s:82:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/model\";i:262331;s:112:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/vendor/bandar/bandar/lib/Exceptions\";i:1996;s:101:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/vendor/bandar/bandar/lib\";i:7938;s:97:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/vendor/bandar/bandar\";i:9015;s:90:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/vendor/bandar\";i:9015;s:101:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/vendor/servmask/archiver\";i:38773;s:100:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/vendor/servmask/command\";i:1522;s:97:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/vendor/servmask/cron\";i:4035;s:101:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/vendor/servmask/database\";i:66636;s:103:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/vendor/servmask/filesystem\";i:16130;s:99:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/vendor/servmask/filter\";i:5833;s:101:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/vendor/servmask/iterator\";i:4869;s:92:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/vendor/servmask\";i:137798;s:83:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/vendor\";i:146813;s:92:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/view/assets/css\";i:317904;s:93:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/view/assets/font\";i:45130;s:102:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/view/assets/img/whats-new\";i:3199057;s:92:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/view/assets/img\";i:3210625;s:99:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/view/assets/javascript\";i:620237;s:88:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/view/assets\";i:4193896;s:89:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/view/backups\";i:13389;s:88:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/view/common\";i:15641;s:88:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/view/export\";i:52741;s:88:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/view/import\";i:54653;s:86:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/view/main\";i:41408;s:89:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/view/updater\";i:9474;s:91:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/view/whats-new\";i:2703;s:81:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib/view\";i:4383905;s:76:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/lib\";i:4881811;s:80:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration/storage\";i:52;s:72:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration\";i:5058046;s:102:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration-file-extension/lib/controller\";i:7823;s:114:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration-file-extension/lib/view/assets/javascript\";i:39440;s:103:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration-file-extension/lib/view/assets\";i:39440;s:103:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration-file-extension/lib/view/import\";i:2559;s:96:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration-file-extension/lib/view\";i:41999;s:91:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration-file-extension/lib\";i:49822;s:87:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/all-in-one-wp-migration-file-extension\";i:57690;s:66:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/classic-editor/js\";i:624;s:63:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/classic-editor\";i:61880;s:84:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/genesis-custom-blocks/assets/images\";i:90493;s:77:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/genesis-custom-blocks/assets\";i:90493;s:79:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/genesis-custom-blocks/css/dist\";i:25502;s:74:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/genesis-custom-blocks/css\";i:37060;s:78:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/genesis-custom-blocks/js/dist\";i:851606;s:73:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/genesis-custom-blocks/js\";i:851606;s:79:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/genesis-custom-blocks/language\";i:0;s:80:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/genesis-custom-blocks/php/Admin\";i:39612;s:90:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/genesis-custom-blocks/php/Blocks/Controls\";i:25272;s:81:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/genesis-custom-blocks/php/Blocks\";i:54603;s:84:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/genesis-custom-blocks/php/PostTypes\";i:12001;s:80:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/genesis-custom-blocks/php/Views\";i:9091;s:74:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/genesis-custom-blocks/php\";i:146337;s:86:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/genesis-custom-blocks/vendor/composer\";i:44620;s:77:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/genesis-custom-blocks/vendor\";i:44798;s:70:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/genesis-custom-blocks\";i:1198422;s:75:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/query-monitor/assets/icons\";i:3874;s:69:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/query-monitor/assets\";i:74491;s:70:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/query-monitor/classes\";i:80030;s:73:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/query-monitor/collectors\";i:135124;s:74:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/query-monitor/dispatchers\";i:36707;s:77:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/query-monitor/output/headers\";i:4711;s:74:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/query-monitor/output/html\";i:152891;s:73:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/query-monitor/output/raw\";i:9771;s:69:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/query-monitor/output\";i:185364;s:78:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/query-monitor/vendor/composer\";i:28205;s:69:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/query-monitor/vendor\";i:28632;s:73:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/query-monitor/wp-content\";i:1990;s:62:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/query-monitor\";i:587352;s:73:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/resizable-editor-sidebar\";i:13429;s:76:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/user-role-editor/css/images\";i:36376;s:69:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/user-role-editor/css\";i:118662;s:72:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/user-role-editor/images\";i:160288;s:82:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/user-role-editor/includes/classes\";i:314236;s:74:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/user-role-editor/includes\";i:329152;s:68:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/user-role-editor/js\";i:297534;s:70:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/user-role-editor/lang\";i:26364;s:65:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins/user-role-editor\";i:1257673;s:48:\"D:\\toanTNT\\itsproject\\biolink/wp-content/plugins\";i:18738771;s:56:\"D:\\toanTNT\\itsproject\\biolink/wp-content/uploads/2022/12\";i:1171960;s:53:\"D:\\toanTNT\\itsproject\\biolink/wp-content/uploads/2022\";i:1171960;s:48:\"D:\\toanTNT\\itsproject\\biolink/wp-content/uploads\";i:1171960;}', 'yes'),
(892, 'fbv_is_new_user', '1', 'yes'),
(893, 'fbv_first_time_active', '1', 'yes'),
(894, 'fbv_version', '5.1', 'yes'),
(895, 'fbv_review', '1670466772', 'yes'),
(896, 'njt_fbv_folder_per_user', '', 'yes'),
(897, 'njt_fbv_default_folder', '', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(904, 'ws_menu_editor', 'a:28:{s:22:\"hide_advanced_settings\";b:1;s:16:\"show_extra_icons\";b:0;s:11:\"custom_menu\";a:7:{s:4:\"tree\";a:16:{s:9:\"index.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:10:\">index.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:2:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:19:\"index.php>index.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:4:\"Home\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"index.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"index.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"index.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:25:\"index.php>update-core.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:87:\"Updates <span class=\"update-plugins count-5\"><span class=\"update-count\">5</span></span>\";s:12:\"access_level\";s:11:\"update_core\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:15:\"update-core.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"index.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:15:\"update-core.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:9:\"Dashboard\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"index.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:43:\"menu-top menu-top-first menu-icon-dashboard\";s:8:\"hookname\";s:14:\"menu-dashboard\";s:8:\"icon_url\";s:19:\"dashicons-dashboard\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"index.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:11:\"separator_6\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:1;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:12:\">separator_6\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"separator_6\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:17:\"wp-menu-separator\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:1;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:0:\"\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:8:\"edit.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:9:\">edit.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:4:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:17:\"edit.php>edit.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:9:\"All Posts\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:8:\"edit.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:8:\"edit.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:8:\"edit.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:21:\"edit.php>post-new.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:12:\"post-new.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:8:\"edit.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:12:\"post-new.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:40:\"edit.php>edit-tags.php?taxonomy=category\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:10:\"Categories\";s:12:\"access_level\";s:17:\"manage_categories\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:31:\"edit-tags.php?taxonomy=category\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:8:\"edit.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:31:\"edit-tags.php?taxonomy=category\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:40:\"edit.php>edit-tags.php?taxonomy=post_tag\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:4:\"Tags\";s:12:\"access_level\";s:16:\"manage_post_tags\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:31:\"edit-tags.php?taxonomy=post_tag\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:8:\"edit.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:31:\"edit-tags.php?taxonomy=post_tag\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Posts\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:8:\"edit.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:37:\"menu-top menu-icon-post open-if-no-js\";s:8:\"hookname\";s:10:\"menu-posts\";s:8:\"icon_url\";s:20:\"dashicons-admin-post\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:8:\"edit.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:10:\"upload.php\";a:33:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";s:13:\"administrator\";s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:11:\">upload.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:3:{i:0;a:33:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:21:\"upload.php>upload.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Library\";s:12:\"access_level\";s:12:\"upload_files\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"upload.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"upload.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"upload.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}s:29:\"required_capability_read_only\";N;}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:25:\"upload.php>wpmc_dashboard\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:23:\"Media Cleaner Dashboard\";s:10:\"menu_title\";s:7:\"Cleaner\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:14:\"wpmc_dashboard\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"upload.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:30:\"upload.php?page=wpmc_dashboard\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:33:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";s:13:\"administrator\";s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:24:\"upload.php>media-new.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:12:\"upload_files\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:13:\"media-new.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"upload.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:13:\"media-new.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}s:29:\"required_capability_read_only\";s:12:\"upload_files\";}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Media\";s:12:\"access_level\";s:12:\"upload_files\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"upload.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:24:\"menu-top menu-icon-media\";s:8:\"hookname\";s:10:\"menu-media\";s:8:\"icon_url\";s:21:\"dashicons-admin-media\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"upload.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}s:29:\"required_capability_read_only\";N;}s:23:\"edit.php?post_type=page\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:24:\">edit.php?post_type=page\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:2:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:47:\"edit.php?post_type=page>edit.php?post_type=page\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:9:\"All Pages\";s:12:\"access_level\";s:10:\"edit_pages\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:23:\"edit.php?post_type=page\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:23:\"edit.php?post_type=page\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:23:\"edit.php?post_type=page\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:51:\"edit.php?post_type=page>post-new.php?post_type=page\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:10:\"edit_pages\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:27:\"post-new.php?post_type=page\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:23:\"edit.php?post_type=page\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:27:\"post-new.php?post_type=page\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Pages\";s:12:\"access_level\";s:10:\"edit_pages\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:23:\"edit.php?post_type=page\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:23:\"menu-top menu-icon-page\";s:8:\"hookname\";s:10:\"menu-pages\";s:8:\"icon_url\";s:20:\"dashicons-admin-page\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:23:\"edit.php?post_type=page\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:17:\"edit-comments.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:18:\">edit-comments.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:1:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:35:\"edit-comments.php>edit-comments.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:12:\"All Comments\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"edit-comments.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:17:\"edit-comments.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:17:\"edit-comments.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:198:\"Comments <span class=\"awaiting-mod count-0\"><span class=\"pending-count\" aria-hidden=\"true\">0</span><span class=\"comments-in-moderation-text screen-reader-text\">0 Comments in moderation</span></span>\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"edit-comments.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:27:\"menu-top menu-icon-comments\";s:8:\"hookname\";s:13:\"menu-comments\";s:8:\"icon_url\";s:24:\"dashicons-admin-comments\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:17:\"edit-comments.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:11:\"separator_7\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:6;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:1;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:12:\">separator_7\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"separator_7\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:17:\"wp-menu-separator\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:1;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:0:\"\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:10:\"themes.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:7;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:11:\">themes.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:7:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:21:\"themes.php>themes.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:85:\"Themes <span class=\"update-plugins count-1\"><span class=\"theme-count\">1</span></span>\";s:12:\"access_level\";s:13:\"switch_themes\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"themes.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"themes.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:24:\"themes.php>customize.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:9:\"Customize\";s:12:\"access_level\";s:9:\"customize\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:206:\"customize.php?return=%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor%26sub_section%3Deditor%26selected_menu_url%3Dupload.php%26selected_submenu_url%3Dupload.php%26expand_menu%3D1%26expand_submenu%3D1\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:20:\"hide-if-no-customize\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:206:\"customize.php?return=%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor%26sub_section%3Deditor%26selected_menu_url%3Dupload.php%26selected_submenu_url%3Dupload.php%26expand_menu%3D1%26expand_submenu%3D1\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:64:\"themes.php>customize.php#038;autofocus%5Bcontrol%5D=header_image\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:6:\"Header\";s:12:\"access_level\";s:13:\"switch_themes\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:247:\"customize.php?return=%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor%26sub_section%3Deditor%26selected_menu_url%3Dupload.php%26selected_submenu_url%3Dupload.php%26expand_menu%3D1%26expand_submenu%3D1&#038;autofocus%5Bcontrol%5D=header_image\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:20:\"hide-if-no-customize\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:242:\"customize.php?return=%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor%26sub_section%3Deditor%26selected_menu_url%3Dupload.php%26selected_submenu_url%3Dupload.php%26expand_menu%3D1%26expand_submenu%3D1&autofocus%5Bcontrol%5D=header_image\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:68:\"themes.php>customize.php#038;autofocus%5Bcontrol%5D=background_image\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:10:\"Background\";s:12:\"access_level\";s:13:\"switch_themes\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:251:\"customize.php?return=%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor%26sub_section%3Deditor%26selected_menu_url%3Dupload.php%26selected_submenu_url%3Dupload.php%26expand_menu%3D1%26expand_submenu%3D1&#038;autofocus%5Bcontrol%5D=background_image\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:20:\"hide-if-no-customize\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:246:\"customize.php?return=%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor%26sub_section%3Deditor%26selected_menu_url%3Dupload.php%26selected_submenu_url%3Dupload.php%26expand_menu%3D1%26expand_submenu%3D1&autofocus%5Bcontrol%5D=background_image\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:4;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:24:\"themes.php>custom-header\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:6:\"Header\";s:10:\"menu_title\";s:6:\"Header\";s:12:\"access_level\";s:18:\"edit_theme_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:13:\"custom-header\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:29:\"themes.php?page=custom-header\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:5;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:28:\"themes.php>custom-background\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:10:\"Background\";s:10:\"menu_title\";s:10:\"Background\";s:12:\"access_level\";s:18:\"edit_theme_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"custom-background\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:33:\"themes.php?page=custom-background\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:6;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:6;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:27:\"themes.php>theme-editor.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:17:\"Theme File Editor\";s:10:\"menu_title\";s:17:\"Theme File Editor\";s:12:\"access_level\";s:11:\"edit_themes\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:16:\"theme-editor.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:16:\"theme-editor.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:10:\"Appearance\";s:12:\"access_level\";s:13:\"switch_themes\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"themes.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:29:\"menu-top menu-icon-appearance\";s:8:\"hookname\";s:15:\"menu-appearance\";s:8:\"icon_url\";s:26:\"dashicons-admin-appearance\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"themes.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:11:\"plugins.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:8;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:12:\">plugins.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:3:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:23:\"plugins.php>plugins.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:17:\"Installed Plugins\";s:12:\"access_level\";s:16:\"activate_plugins\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"plugins.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:11:\"plugins.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:11:\"plugins.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:30:\"plugins.php>plugin-install.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:15:\"install_plugins\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:18:\"plugin-install.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:11:\"plugins.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:18:\"plugin-install.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:29:\"plugins.php>plugin-editor.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:18:\"Plugin File Editor\";s:12:\"access_level\";s:12:\"edit_plugins\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"plugin-editor.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:11:\"plugins.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:17:\"plugin-editor.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:87:\"Plugins <span class=\"update-plugins count-4\"><span class=\"plugin-count\">4</span></span>\";s:12:\"access_level\";s:16:\"activate_plugins\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"plugins.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:26:\"menu-top menu-icon-plugins\";s:8:\"hookname\";s:12:\"menu-plugins\";s:8:\"icon_url\";s:23:\"dashicons-admin-plugins\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:11:\"plugins.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:9:\"users.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:9;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:10:\">users.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:4:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:19:\"users.php>users.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:9:\"All Users\";s:12:\"access_level\";s:10:\"list_users\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"users.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"users.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"users.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:22:\"users.php>user-new.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:12:\"create_users\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:12:\"user-new.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"users.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:12:\"user-new.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:21:\"users.php>profile.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Profile\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"profile.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"users.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:11:\"profile.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:36:\"users.php>users-user-role-editor.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:16:\"User Role Editor\";s:10:\"menu_title\";s:16:\"User Role Editor\";s:12:\"access_level\";s:14:\"ure_edit_roles\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:26:\"users-user-role-editor.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"users.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:41:\"users.php?page=users-user-role-editor.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Users\";s:12:\"access_level\";s:10:\"list_users\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"users.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:24:\"menu-top menu-icon-users\";s:8:\"hookname\";s:10:\"menu-users\";s:8:\"icon_url\";s:21:\"dashicons-admin-users\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"users.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:9:\"tools.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:10;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:10:\">tools.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:6:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:19:\"tools.php>tools.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:15:\"Available Tools\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"tools.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"tools.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:20:\"tools.php>import.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:6:\"Import\";s:12:\"access_level\";s:6:\"import\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"import.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"import.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:20:\"tools.php>export.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:6:\"Export\";s:12:\"access_level\";s:6:\"export\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"export.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"export.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:25:\"tools.php>site-health.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:102:\"Site Health <span class=\"menu-counter site-health-counter count-0\"><span class=\"count\">0</span></span>\";s:12:\"access_level\";s:23:\"view_site_health_checks\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:15:\"site-health.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:15:\"site-health.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:4;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:34:\"tools.php>export-personal-data.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:20:\"Export Personal Data\";s:12:\"access_level\";s:27:\"export_others_personal_data\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:24:\"export-personal-data.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:24:\"export-personal-data.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:5;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:33:\"tools.php>erase-personal-data.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:19:\"Erase Personal Data\";s:12:\"access_level\";s:26:\"erase_others_personal_data\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:23:\"erase-personal-data.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:23:\"erase-personal-data.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Tools\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"tools.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:24:\"menu-top menu-icon-tools\";s:8:\"hookname\";s:10:\"menu-tools\";s:8:\"icon_url\";s:21:\"dashicons-admin-tools\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"tools.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:12:\"ai1wm_export\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:11;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:13:\">ai1wm_export\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:4:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:25:\"ai1wm_export>ai1wm_export\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:6:\"Export\";s:10:\"menu_title\";s:6:\"Export\";s:12:\"access_level\";s:6:\"export\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:12:\"ai1wm_export\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:12:\"ai1wm_export\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:27:\"admin.php?page=ai1wm_export\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:25:\"ai1wm_export>ai1wm_import\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:6:\"Import\";s:10:\"menu_title\";s:6:\"Import\";s:12:\"access_level\";s:6:\"import\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:12:\"ai1wm_import\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:12:\"ai1wm_export\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:27:\"admin.php?page=ai1wm_import\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:26:\"ai1wm_export>ai1wm_backups\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:7:\"Backups\";s:10:\"menu_title\";s:90:\"Backups <span class=\"ai1wm-menu-count ai1wm-menu-hide\" title=\"You have 0 backups\">0</span>\";s:12:\"access_level\";s:6:\"import\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:13:\"ai1wm_backups\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:12:\"ai1wm_export\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:28:\"admin.php?page=ai1wm_backups\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:28:\"ai1wm_export>ai1wm_whats_new\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:10:\"What\'s new\";s:10:\"menu_title\";s:73:\"What\'s new <span class=\"ai1wm-icon-bullhorn\" title=\"Notification\"></span>\";s:12:\"access_level\";s:6:\"import\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:15:\"ai1wm_whats_new\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:12:\"ai1wm_export\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:30:\"admin.php?page=ai1wm_whats_new\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:23:\"All-in-One WP Migration\";s:10:\"menu_title\";s:23:\"All-in-One WP Migration\";s:12:\"access_level\";s:6:\"export\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:12:\"ai1wm_export\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:53:\"menu-top menu-icon-generic toplevel_page_ai1wm_export\";s:8:\"hookname\";s:26:\"toplevel_page_ai1wm_export\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:27:\"admin.php?page=ai1wm_export\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:19:\"options-general.php\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:12;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:20:\">options-general.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:10:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:39:\"options-general.php>options-general.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"General\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:19:\"options-general.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:19:\"options-general.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:39:\"options-general.php>options-writing.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Writing\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:19:\"options-writing.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:19:\"options-writing.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:39:\"options-general.php>options-reading.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Reading\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:19:\"options-reading.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:19:\"options-reading.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:42:\"options-general.php>options-discussion.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:10:\"Discussion\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:22:\"options-discussion.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:22:\"options-discussion.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:4;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:37:\"options-general.php>options-media.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Media\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"options-media.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:17:\"options-media.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:5;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:41:\"options-general.php>options-permalink.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:10:\"Permalinks\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:21:\"options-permalink.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:21:\"options-permalink.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:6;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:6;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:39:\"options-general.php>options-privacy.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Privacy\";s:12:\"access_level\";s:22:\"manage_privacy_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:19:\"options-privacy.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:19:\"options-privacy.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:7;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:7;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:49:\"options-general.php>settings-user-role-editor.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:16:\"User Role Editor\";s:10:\"menu_title\";s:16:\"User Role Editor\";s:12:\"access_level\";s:18:\"ure_manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:29:\"settings-user-role-editor.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:54:\"options-general.php?page=settings-user-role-editor.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:8;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:8;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:56:\"options-general.php>wp-add-mime-types/includes/admin.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:32:\"WP Add Mime Types Admin Settings\";s:10:\"menu_title\";s:18:\"Mime Type Settings\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:36:\"wp-add-mime-types/includes/admin.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:61:\"options-general.php?page=wp-add-mime-types/includes/admin.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:9;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:9;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:31:\"options-general.php>menu_editor\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:11:\"Menu Editor\";s:10:\"menu_title\";s:11:\"Menu Editor\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"menu_editor\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:36:\"options-general.php?page=menu_editor\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:8:\"Settings\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:19:\"options-general.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:27:\"menu-top menu-icon-settings\";s:8:\"hookname\";s:13:\"menu-settings\";s:8:\"icon_url\";s:24:\"dashicons-admin-settings\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:19:\"options-general.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:34:\"edit.php?post_type=acf-field-group\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:13;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:35:\">edit.php?post_type=acf-field-group\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:4:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:69:\"edit.php?post_type=acf-field-group>edit.php?post_type=acf-field-group\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:12:\"Field Groups\";s:10:\"menu_title\";s:12:\"Field Groups\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:34:\"edit.php?post_type=acf-field-group\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:34:\"edit.php?post_type=acf-field-group\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:34:\"edit.php?post_type=acf-field-group\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:73:\"edit.php?post_type=acf-field-group>post-new.php?post_type=acf-field-group\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:7:\"Add New\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:38:\"post-new.php?post_type=acf-field-group\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:34:\"edit.php?post_type=acf-field-group\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:38:\"post-new.php?post_type=acf-field-group\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:44:\"edit.php?post_type=acf-field-group>acf-tools\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:5:\"Tools\";s:10:\"menu_title\";s:5:\"Tools\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"acf-tools\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:34:\"edit.php?post_type=acf-field-group\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:49:\"edit.php?post_type=acf-field-group&page=acf-tools\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:55:\"edit.php?post_type=acf-field-group>acf-settings-updates\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:7:\"Updates\";s:10:\"menu_title\";s:7:\"Updates\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:20:\"acf-settings-updates\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:34:\"edit.php?post_type=acf-field-group\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:60:\"edit.php?post_type=acf-field-group&page=acf-settings-updates\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:13:\"Custom Fields\";s:10:\"menu_title\";s:13:\"Custom Fields\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:34:\"edit.php?post_type=acf-field-group\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:53:\"menu-top toplevel_page_edit?post_type=acf-field-group\";s:8:\"hookname\";s:44:\"toplevel_page_edit?post_type=acf-field-group\";s:8:\"icon_url\";s:31:\"dashicons-welcome-widgets-menus\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:34:\"edit.php?post_type=acf-field-group\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:18:\"meowapps-main-menu\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:14;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:19:\">meowapps-main-menu\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:2:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:37:\"meowapps-main-menu>meowapps-main-menu\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:9:\"Dashboard\";s:10:\"menu_title\";s:9:\"Dashboard\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:18:\"meowapps-main-menu\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:18:\"meowapps-main-menu\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:33:\"admin.php?page=meowapps-main-menu\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:32:\"meowapps-main-menu>wpmc_settings\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:13:\"Media Cleaner\";s:10:\"menu_title\";s:13:\"Media Cleaner\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:13:\"wpmc_settings\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:18:\"meowapps-main-menu\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:28:\"admin.php?page=wpmc_settings\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:9:\"Meow Apps\";s:10:\"menu_title\";s:1504:\"<img alt=\"Meow Apps\" style=\"width: 24px; margin-left: -30px; position: absolute; margin-top: -3px;\" src=\"data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxIiB2aWV3Qm94PSIwIDAgMTY1IDE2NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8c3R5bGU+CiAgICAuc3Qye2ZpbGw6IzgwNDYyNX0uc3Qze2ZpbGw6I2ZkYTk2MH0KICA8L3N0eWxlPgogIDxwYXRoIGQ9Ik03MiA3YTc2IDc2IDAgMCAxIDg0IDkxQTc1IDc1IDAgMSAxIDcyIDd6IiBmaWxsPSIjNGE2YjhjIi8+CiAgPHBhdGggZD0iTTQ4IDQ4YzIgNSAyIDEwIDUgMTQgNSA4IDEzIDE3IDIyIDIwbDEtMTBjMS0yIDMtMyA1LTNoMTNjMiAwIDQgMSA1IDNsMyA5IDQtMTBjMi0zIDYtMiA5LTJoMTFjMyAyIDMgNSAzIDhsMiAzN2MwIDMtMSA3LTQgOGgtMTJjLTIgMC0zLTItNS00LTEgMS0yIDMtNCAzLTUgMS05IDEtMTMtMS0zIDItNSAyLTkgMnMtOSAxLTEwLTNjLTItNC0xLTggMC0xMi04LTMtMTUtNy0yMi0xMi03LTctMTUtMTQtMjAtMjMtMy00LTUtOC01LTEzIDEtNCAzLTEwIDYtMTMgNC0zIDEyLTIgMTUgMnoiIGZpbGw9IiMxMDEwMTAiLz4KICA8cGF0aCBjbGFzcz0ic3QyIiBkPSJNNDMgNTFsNCAxMS02IDVoLTZjLTMtNS0zLTExIDAtMTYgMi0yIDYtMyA4IDB6Ii8+CiAgPHBhdGggY2xhc3M9InN0MyIgZD0iTTQ3IDYybDMgNmMwIDMgMCA0LTIgNnMtNCAyLTcgMmwtNi05aDZsNi01eiIvPgogIDxwYXRoIGNsYXNzPSJzdDIiIGQ9Ik01MCA2OGw4IDljLTMgMy01IDYtOSA4bC04LTljMyAwIDUgMCA3LTJzMy0zIDItNnoiLz4KICA8cGF0aCBkPSJNODIgNzRoMTJsNSAxOCAzIDExIDgtMjloMTNsMiA0MmgtOGwtMS0yLTEtMzEtMTAgMzItNyAxLTktMzMtMSAyOS0xIDRoLThsMy00MnoiIGZpbGw9IiNmZmYiLz4KICA8cGF0aCBjbGFzcz0ic3QzIiBkPSJNNTggNzdsNSA1Yy0xIDQtMiA4LTcgOGwtNy01YzQtMiA2LTUgOS04eiIvPgogIDxwYXRoIGNsYXNzPSJzdDIiIGQ9Ik02MyA4Mmw5IDUtNiA5LTEwLTZjNSAwIDYtNCA3LTh6Ii8+CiAgPHBhdGggY2xhc3M9InN0MyIgZD0iTTcyIDg3bDMgMS0xIDExLTgtMyA2LTEweiIvPgo8L3N2Zz4K\" />Meow Apps\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:18:\"meowapps-main-menu\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:59:\"menu-top menu-icon-generic toplevel_page_meowapps-main-menu\";s:8:\"hookname\";s:32:\"toplevel_page_meowapps-main-menu\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:33:\"admin.php?page=meowapps-main-menu\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:11:\"separator_8\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:15;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:1;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:25:\"is_iframe_scroll_disabled\";N;s:11:\"template_id\";s:12:\">separator_8\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:21:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"separator_8\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:17:\"wp-menu-separator\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:1;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:25:\"is_iframe_scroll_disabled\";b:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:0:\"\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:6:\"format\";a:3:{s:4:\"name\";s:22:\"Admin Menu Editor menu\";s:7:\"version\";s:3:\"7.0\";s:13:\"is_normalized\";b:1;}s:13:\"color_presets\";a:0:{}s:20:\"component_visibility\";a:0:{}s:22:\"has_modified_dashicons\";b:0;s:16:\"last_modified_on\";s:25:\"2022-12-05T09:35:26+00:00\";s:21:\"prebuilt_virtual_caps\";a:2:{i:2;a:0:{}i:3;a:0:{}}}s:19:\"custom_network_menu\";N;s:18:\"first_install_time\";i:1670207840;s:21:\"display_survey_notice\";b:1;s:17:\"plugin_db_version\";i:140;s:24:\"security_logging_enabled\";b:0;s:17:\"menu_config_scope\";s:6:\"global\";s:13:\"plugin_access\";s:14:\"manage_options\";s:15:\"allowed_user_id\";N;s:28:\"plugins_page_allowed_user_id\";N;s:27:\"show_deprecated_hide_button\";b:1;s:37:\"dashboard_hiding_confirmation_enabled\";b:1;s:21:\"submenu_icons_enabled\";s:9:\"if_custom\";s:22:\"force_custom_dashicons\";b:1;s:16:\"ui_colour_scheme\";s:7:\"classic\";s:13:\"visible_users\";a:0:{}s:23:\"show_plugin_menu_notice\";b:0;s:20:\"unused_item_position\";s:8:\"relative\";s:23:\"unused_item_permissions\";s:9:\"unchanged\";s:15:\"error_verbosity\";i:2;s:20:\"compress_custom_menu\";b:0;s:20:\"wpml_support_enabled\";b:1;s:24:\"bbpress_override_enabled\";b:0;s:20:\"deep_nesting_enabled\";N;s:24:\"was_nesting_ever_changed\";b:0;s:16:\"is_active_module\";a:1:{s:19:\"highlight-new-menus\";b:0;}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(957, 'wpmc_options', 'a:22:{s:6:\"method\";s:5:\"media\";s:7:\"content\";b:1;s:18:\"filesystem_content\";b:0;s:13:\"media_library\";b:1;s:12:\"live_content\";b:0;s:9:\"debuglogs\";b:0;s:11:\"images_only\";b:0;s:13:\"attach_is_use\";b:0;s:15:\"thumbnails_only\";b:0;s:11:\"dirs_filter\";s:0:\"\";s:12:\"files_filter\";s:0:\"\";s:15:\"hide_thumbnails\";b:0;s:12:\"hide_warning\";b:0;s:10:\"skip_trash\";b:0;s:13:\"medias_buffer\";i:100;s:12:\"posts_buffer\";i:5;s:15:\"analysis_buffer\";i:100;s:14:\"file_op_buffer\";i:20;s:5:\"delay\";i:100;s:19:\"shortcodes_disabled\";b:0;s:14:\"posts_per_page\";i:10;s:15:\"clean_uninstall\";b:0;}', 'no'),
(958, 'wpmc_rating_date', '1672030057', 'no'),
(1553, 'cptui_new_install', 'false', 'yes'),
(1564, 'cptui_post_types', 'a:0:{}', 'yes'),
(2095, '_site_transient_timeout_browser_ada48f6ccc916dd80f9fb1f13581ed67', '1671091335', 'no'),
(2096, '_site_transient_browser_ada48f6ccc916dd80f9fb1f13581ed67', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"108.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(2214, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.1.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.1.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.1.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1671089715;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(2217, 'action_scheduler_hybrid_store_demarkation', '407', 'yes'),
(2218, 'schema-ActionScheduler_StoreSchema', '6.0.1670489944', 'yes'),
(2219, 'schema-ActionScheduler_LoggerSchema', '3.0.1670489944', 'yes'),
(2220, 'wp_mail_smtp_initial_version', '3.6.1', 'no'),
(2221, 'wp_mail_smtp_version', '3.6.1', 'no'),
(2222, 'wp_mail_smtp', 'a:11:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:23:\"itscompanydev@gmail.com\";s:9:\"from_name\";s:7:\"Biolink\";s:6:\"mailer\";s:4:\"smtp\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";b:1;s:4:\"auth\";b:1;s:4:\"host\";s:14:\"smtp.gmail.com\";s:10:\"encryption\";s:3:\"ssl\";s:4:\"port\";i:465;s:4:\"user\";s:23:\"itscompanydev@gmail.com\";s:4:\"pass\";s:76:\"Av1Yse2SH2lQ2Xki3fzQKQc2UyqxP2X92BKnruzUi/PTKfCkIpLeV7F9adwNAIL6olRk1yL/7V0=\";}s:7:\"general\";a:1:{s:29:\"summary_report_email_disabled\";b:0;}s:9:\"sendlayer\";a:1:{s:7:\"api_key\";s:0:\"\";}s:7:\"smtpcom\";a:2:{s:7:\"api_key\";s:0:\"\";s:7:\"channel\";s:0:\"\";}s:10:\"sendinblue\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:5:\"gmail\";a:2:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"postmark\";a:2:{s:16:\"server_api_token\";s:0:\"\";s:14:\"message_stream\";s:0:\"\";}s:8:\"sendgrid\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:9:\"sparkpost\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"region\";s:2:\"US\";}}', 'no'),
(2223, 'wp_mail_smtp_activated_time', '1670489944', 'no'),
(2224, 'wp_mail_smtp_activated', 'a:1:{s:4:\"lite\";i:1670489944;}', 'yes'),
(2227, 'action_scheduler_lock_async-request-runner', '1671092517', 'yes'),
(2231, 'wp_mail_smtp_migration_version', '5', 'yes'),
(2232, 'wp_mail_smtp_debug_events_db_version', '1', 'yes'),
(2233, 'wp_mail_smtp_activation_prevent_redirect', '1', 'yes'),
(2241, 'action_scheduler_migration_status', 'complete', 'yes'),
(2266, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1670490629;s:9:\"dismissed\";b:0;}', 'yes'),
(2268, 'wp_mail_smtp_notifications', 'a:4:{s:6:\"update\";i:1671089405;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(2386, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(2387, 'wp_mail_smtp_mail_key', 'QG0lhdtK/av6u3XHkR1uPXOj66/IlODcA69fOZDs+xA=', 'yes'),
(2388, 'wp_mail_smtp_lite_sent_email_counter', '6', 'yes'),
(2389, 'wp_mail_smtp_lite_weekly_sent_email_counter', 'a:2:{i:49;i:5;i:50;i:1;}', 'yes'),
(2486, 'whl_page', 'biotwlogin', 'yes'),
(2487, 'whl_redirect_admin', '404', 'yes'),
(2524, 'wordfence_ls_version', '1.0.12', 'yes'),
(2525, 'wfls_last_role_change', '1670560987', 'no'),
(2526, 'wordfence_version', '7.8.0', 'yes'),
(2527, 'wordfence_case', '1', 'yes'),
(2528, 'wordfence_installed', '1', 'yes'),
(2529, 'wordfenceActivated', '1', 'yes'),
(2530, 'wf_plugin_act_error', '', 'yes'),
(2849, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(2923, '_transient_timeout_acf_plugin_updates', '1671158299', 'no'),
(2924, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.0.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.1.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.11.4\";}}', 'no'),
(2938, '_site_transient_timeout_browser_a818ab359804517f2549e94c88d03c0b', '1671590474', 'no'),
(2939, '_site_transient_browser_a818ab359804517f2549e94c88d03c0b', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"108.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(2970, 'options_logo_options', '449', 'no'),
(2971, '_options_logo_options', 'field_5e7c73407f2dd', 'no'),
(2972, 'options_favicon_options', '532', 'no'),
(2973, '_options_favicon_options', 'field_5ea6a9a3d7cdb', 'no'),
(2974, 'options_hotline_footer_options', '', 'no'),
(2975, '_options_hotline_footer_options', 'field_5eb0d65e492c6', 'no'),
(2976, 'options_social_network_options', '3', 'no'),
(2977, '_options_social_network_options', 'field_5e7c773fd0ca4', 'no'),
(2978, 'options_hotline_options', '', 'no'),
(2979, '_options_hotline_options', 'field_5e9d006f1c2c2', 'no'),
(3231, 'options_social_network_options_0_icon_social', '459', 'no'),
(3232, '_options_social_network_options_0_icon_social', 'field_5e7c7761d0ca5', 'no'),
(3233, 'options_social_network_options_0_title_social', 'Facebook', 'no'),
(3234, '_options_social_network_options_0_title_social', 'field_5e7c779fd0ca7', 'no'),
(3235, 'options_social_network_options_0_link_social', 'https://zalo.me/0385157444', 'no'),
(3236, '_options_social_network_options_0_link_social', 'field_5e7c778ed0ca6', 'no'),
(3256, 'options_social_network_options_1_icon_social', '460', 'no'),
(3257, '_options_social_network_options_1_icon_social', 'field_5e7c7761d0ca5', 'no'),
(3258, 'options_social_network_options_1_title_social', 'Youtube', 'no'),
(3259, '_options_social_network_options_1_title_social', 'field_5e7c779fd0ca7', 'no'),
(3260, 'options_social_network_options_1_link_social', 'https://zalo.me/0385157444', 'no'),
(3261, '_options_social_network_options_1_link_social', 'field_5e7c778ed0ca6', 'no'),
(3262, 'options_social_network_options_2_icon_social', '461', 'no'),
(3263, '_options_social_network_options_2_icon_social', 'field_5e7c7761d0ca5', 'no'),
(3264, 'options_social_network_options_2_title_social', 'Zalo', 'no'),
(3265, '_options_social_network_options_2_title_social', 'field_5e7c779fd0ca7', 'no'),
(3266, 'options_social_network_options_2_link_social', 'https://zalo.me/0385157444', 'no'),
(3267, '_options_social_network_options_2_link_social', 'field_5e7c778ed0ca6', 'no'),
(3310, 'options_logoft_options', '465', 'no'),
(3311, '_options_logoft_options', 'field_63996e965427f', 'no'),
(3777, '_site_transient_timeout_browser_195f77c180c23e3f5a8a8f38e4290186', '1671616300', 'no'),
(3778, '_site_transient_browser_195f77c180c23e3f5a8a8f38e4290186', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:6:\"13.0.3\";s:8:\"platform\";s:6:\"iPhone\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}', 'no'),
(3961, '_site_transient_timeout_available_translations', '1671081404', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3962, '_site_transient_available_translations', 'a:129:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.3/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.1.1/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-04 13:58:35\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.21/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"5.8.6\";s:7:\"updated\";s:19:\"2021-09-08 17:57:56\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.6/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.22/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-12 16:24:24\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-10-31 08:48:37\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.12/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-24 12:03:10\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-13 14:46:37\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-13 12:26:17\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-14 15:48:08\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-11 09:43:06\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-10 01:53:24\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.1.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-02 17:33:39\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/6.1.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2022-03-17 12:58:14\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.3/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-10 01:58:13\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-02 17:31:02\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.1.1/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-22 18:55:37\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-10 21:58:00\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-16 06:36:35\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-09 10:47:19\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2022-04-01 22:35:34\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2021-12-24 12:36:39\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.3/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-09-29 20:39:44\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-07-22 14:08:10\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-07-07 20:37:41\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-14 21:16:08\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-10 19:19:07\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-10 18:26:21\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-28 20:06:07\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.6\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.6/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.6\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.6/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.12/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-11 23:25:26\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.17\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.17/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-15 05:47:03\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-12 19:51:24\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-10 08:12:43\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-07 05:25:25\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-12 18:38:54\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-02 09:17:04\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.21/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-12 08:21:50\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.22/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.29\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.29/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-02 09:16:06\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.12/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-15 19:56:23\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-07-18 19:40:10\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.1.1/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-09 10:40:12\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-15 22:53:06\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.22/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-30 09:00:20\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-15 02:07:47\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.22/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2022-10-24 08:01:09\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.3/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-04 12:58:16\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.1.1/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.22/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.17\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.17/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-03 15:26:53\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"5.8.6\";s:7:\"updated\";s:19:\"2021-12-07 16:32:30\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8.6/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-24 03:51:58\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-09 10:22:57\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-09 09:08:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.22/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.11\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.11/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.34\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.34/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-11 01:42:08\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-25 15:38:17\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-05 12:28:58\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.1.1/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-07 11:49:00\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-14 13:31:54\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.21/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-05 07:16:39\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.30\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.30/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-08-09 12:26:21\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.1.1/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-28 11:31:11\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-10-01 12:16:29\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-11 11:26:05\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-02 21:20:32\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-24 05:36:29\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.12/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-14 09:22:53\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-06 09:43:42\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.1.1/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-11 12:48:55\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-18 19:47:58\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.6\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.6/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-12-12 19:29:14\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.14\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.14/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.34\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.34/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.6\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.6/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.21/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-04 23:05:35\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.22/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2022-09-11 15:51:48\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.12/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-15 08:46:22\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-15 22:21:52\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-30 22:16:23\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3965, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1671113840', 'no'),
(3966, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:1:{i:0;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:17:\"State of the Word\";s:3:\"url\";s:58:\"https://wordpress.org/news/2022/11/state-of-the-word-2022/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2022-12-15 13:00:00\";s:8:\"end_date\";s:19:\"2022-12-15 14:30:00\";s:20:\"start_unix_timestamp\";i:1671127200;s:18:\"end_unix_timestamp\";i:1671132600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:29.768241024468665;s:9:\"longitude\";d:-95.36765276500797;}}}}', 'no'),
(3981, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1671082119', 'no'),
(3982, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:5872;}s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4805;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2775;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2647;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:2044;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1894;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1893;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1608;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1559;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1540;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1539;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1514;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1498;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1437;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1350;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1315;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1265;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1174;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1152;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1139;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:1040;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:1009;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:989;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:959;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:901;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:868;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:861;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:857;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:857;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:857;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:854;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:803;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:787;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:780;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:767;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:764;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:752;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:752;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:730;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:727;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:718;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:711;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:697;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:682;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:682;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:679;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:669;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:666;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:628;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:617;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:604;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:604;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:604;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:599;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:590;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:588;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:586;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:583;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:573;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:567;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:565;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:558;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:548;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:547;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:538;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:537;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:536;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:530;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:524;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:524;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:519;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:510;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:509;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:507;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:506;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:493;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:472;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:466;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:465;}s:6:\"blocks\";a:3:{s:4:\"name\";s:6:\"blocks\";s:4:\"slug\";s:6:\"blocks\";s:5:\"count\";i:458;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:450;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:448;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:443;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:434;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:429;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:426;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:421;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:417;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:416;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:415;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:410;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:409;}s:7:\"gateway\";a:3:{s:4:\"name\";s:7:\"gateway\";s:4:\"slug\";s:7:\"gateway\";s:5:\"count\";i:407;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:400;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:396;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:394;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:390;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:387;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:386;}s:8:\"payments\";a:3:{s:4:\"name\";s:8:\"payments\";s:4:\"slug\";s:8:\"payments\";s:5:\"count\";i:385;}}', 'no'),
(3988, 'ez-toc-shortcode-exist-and-render', '', 'yes'),
(3989, 'widget_ezw_tco', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(3990, 'ez-toc-settings', 'a:51:{s:15:\"fragment_prefix\";s:1:\"i\";s:8:\"position\";s:6:\"before\";s:5:\"start\";s:1:\"2\";s:17:\"show_heading_text\";s:1:\"1\";s:12:\"heading_text\";s:11:\"Mục lục\";s:18:\"enabled_post_types\";a:2:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";}s:22:\"auto_insert_post_types\";a:2:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";}s:14:\"show_hierarchy\";s:1:\"1\";s:7:\"counter\";s:7:\"decimal\";s:13:\"smooth_scroll\";s:1:\"1\";s:20:\"smooth_scroll_offset\";s:2:\"30\";s:10:\"visibility\";s:1:\"1\";s:11:\"toc_loading\";s:2:\"js\";s:5:\"width\";s:4:\"auto\";s:12:\"width_custom\";s:3:\"275\";s:18:\"width_custom_units\";s:2:\"px\";s:8:\"wrapping\";s:4:\"none\";s:15:\"title_font_size\";s:3:\"120\";s:21:\"title_font_size_units\";s:1:\"%\";s:17:\"title_font_weight\";s:3:\"500\";s:9:\"font_size\";s:2:\"95\";s:15:\"child_font_size\";s:2:\"90\";s:15:\"font_size_units\";s:1:\"%\";s:5:\"theme\";s:4:\"grey\";s:24:\"custom_background_colour\";s:4:\"#fff\";s:20:\"custom_border_colour\";s:4:\"#ddd\";s:19:\"custom_title_colour\";s:4:\"#999\";s:18:\"custom_link_colour\";s:7:\"#428bca\";s:24:\"custom_link_hover_colour\";s:7:\"#2a6496\";s:26:\"custom_link_visited_colour\";s:7:\"#428bca\";s:14:\"heading_levels\";a:6:{i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:1:\"5\";i:6;s:1:\"6\";}s:19:\"css_container_class\";s:0:\"\";s:22:\"heading-text-direction\";s:3:\"ltr\";s:19:\"sticky-toggle-width\";s:4:\"auto\";s:20:\"sticky-toggle-height\";s:4:\"auto\";s:30:\"sticky-toggle-open-button-text\";s:5:\"Index\";s:21:\"child_font_size_units\";s:1:\"%\";s:26:\"sticky-toggle-width-custom\";s:0:\"\";s:27:\"sticky-toggle-height-custom\";s:0:\"\";s:7:\"exclude\";s:0:\"\";s:27:\"mobile_smooth_scroll_offset\";s:1:\"0\";s:13:\"restrict_path\";s:0:\"\";s:21:\"widget_affix_selector\";s:0:\"\";s:26:\"visibility_hide_by_default\";s:1:\"0\";s:13:\"sticky-toggle\";s:1:\"0\";s:9:\"lowercase\";s:1:\"0\";s:9:\"hyphenate\";s:1:\"0\";s:16:\"include_homepage\";s:1:\"0\";s:11:\"exclude_css\";s:1:\"0\";s:10:\"inline_css\";s:1:\"0\";s:31:\"remove_special_chars_from_title\";s:1:\"0\";}', 'yes'),
(4025, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1671072318;s:7:\"checked\";a:3:{s:7:\"biolink\";s:3:\"1.1\";s:7:\"genesis\";s:5:\"3.4.0\";s:15:\"twentytwentytwo\";s:3:\"1.2\";}s:8:\"response\";a:1:{s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(4026, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1671072319;s:8:\"response\";a:6:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.2\";}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.68\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.68.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2818373\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2818373\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.3\";}s:31:\"media-cleaner/media-cleaner.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/media-cleaner\";s:4:\"slug\";s:13:\"media-cleaner\";s:6:\"plugin\";s:31:\"media-cleaner/media-cleaner.php\";s:11:\"new_version\";s:5:\"6.5.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/media-cleaner/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/media-cleaner.6.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/media-cleaner/assets/icon-256x256.png?rev=2791576\";s:2:\"1x\";s:66:\"https://ps.w.org/media-cleaner/assets/icon-128x128.png?rev=2791576\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/media-cleaner/assets/banner-1544x500.png?rev=1874957\";s:2:\"1x\";s:68:\"https://ps.w.org/media-cleaner/assets/banner-772x250.png?rev=1874957\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"7.0\";}s:37:\"user-role-editor/user-role-editor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:30:\"w.org/plugins/user-role-editor\";s:4:\"slug\";s:16:\"user-role-editor\";s:6:\"plugin\";s:37:\"user-role-editor/user-role-editor.php\";s:11:\"new_version\";s:6:\"4.63.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/user-role-editor/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/user-role-editor.4.63.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-256x256.jpg?rev=1020390\";s:2:\"1x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-128x128.jpg?rev=1020390\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/user-role-editor/assets/banner-772x250.png?rev=1263116\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.4\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"7.3\";}s:23:\"wordfence/wordfence.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/wordfence\";s:4:\"slug\";s:9:\"wordfence\";s:6:\"plugin\";s:23:\"wordfence/wordfence.php\";s:11:\"new_version\";s:5:\"7.8.2\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/wordfence/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/wordfence.7.8.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/wordfence/assets/icon-256x256.png?rev=2070855\";s:2:\"1x\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";s:3:\"svg\";s:54:\"https://ps.w.org/wordfence/assets/icon.svg?rev=2070865\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wordfence/assets/banner-1544x500.jpg?rev=2124102\";s:2:\"1x\";s:64:\"https://ps.w.org/wordfence/assets/banner-772x250.jpg?rev=2124102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.9\";s:6:\"tested\";s:5:\"6.1.1\";s:12:\"requires_php\";s:3:\"5.3\";}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"6.0.6\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"6.1.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:13:{s:33:\"admin-menu-editor/menu-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/admin-menu-editor\";s:4:\"slug\";s:17:\"admin-menu-editor\";s:6:\"plugin\";s:33:\"admin-menu-editor/menu-editor.php\";s:11:\"new_version\";s:6:\"1.10.4\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/admin-menu-editor/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/admin-menu-editor.1.10.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/admin-menu-editor/assets/icon-128x128.png?rev=1418604\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/admin-menu-editor/assets/banner-772x250.png?rev=1419590\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.13.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.13.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2744389\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2744389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2744389\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2744389\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:49:\"easy-table-of-contents/easy-table-of-contents.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/easy-table-of-contents\";s:4:\"slug\";s:22:\"easy-table-of-contents\";s:6:\"plugin\";s:49:\"easy-table-of-contents/easy-table-of-contents.php\";s:11:\"new_version\";s:6:\"2.0.40\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/easy-table-of-contents/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/easy-table-of-contents.2.0.40.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/easy-table-of-contents/assets/icon-256x256.png?rev=2704774\";s:2:\"1x\";s:75:\"https://ps.w.org/easy-table-of-contents/assets/icon-128x128.png?rev=2704774\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/easy-table-of-contents/assets/banner-1544x500.png?rev=2704774\";s:2:\"1x\";s:77:\"https://ps.w.org/easy-table-of-contents/assets/banner-772x250.png?rev=2704774\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.3\";}s:21:\"filebird/filebird.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:22:\"w.org/plugins/filebird\";s:4:\"slug\";s:8:\"filebird\";s:6:\"plugin\";s:21:\"filebird/filebird.php\";s:11:\"new_version\";s:3:\"5.1\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/filebird/\";s:7:\"package\";s:51:\"https://downloads.wordpress.org/plugin/filebird.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/filebird/assets/icon-128x128.gif?rev=2299145\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/filebird/assets/banner-1544x500.png?rev=2350008\";s:2:\"1x\";s:63:\"https://ps.w.org/filebird/assets/banner-772x250.png?rev=2350008\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.0\";}s:47:\"genesis-custom-blocks/genesis-custom-blocks.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/genesis-custom-blocks\";s:4:\"slug\";s:21:\"genesis-custom-blocks\";s:6:\"plugin\";s:47:\"genesis-custom-blocks/genesis-custom-blocks.php\";s:11:\"new_version\";s:5:\"1.5.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/genesis-custom-blocks/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/genesis-custom-blocks.1.5.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:74:\"https://ps.w.org/genesis-custom-blocks/assets/icon-256x256.png?rev=2373248\";s:2:\"1x\";s:66:\"https://ps.w.org/genesis-custom-blocks/assets/icon.svg?rev=2373248\";s:3:\"svg\";s:66:\"https://ps.w.org/genesis-custom-blocks/assets/icon.svg?rev=2373248\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/genesis-custom-blocks/assets/banner-1544x500.png?rev=2463780\";s:2:\"1x\";s:76:\"https://ps.w.org/genesis-custom-blocks/assets/banner-772x250.png?rev=2463780\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:31:\"query-monitor/query-monitor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/query-monitor\";s:4:\"slug\";s:13:\"query-monitor\";s:6:\"plugin\";s:31:\"query-monitor/query-monitor.php\";s:11:\"new_version\";s:6:\"3.10.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/query-monitor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/query-monitor.3.10.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/query-monitor/assets/icon-256x256.png?rev=2301273\";s:2:\"1x\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";s:3:\"svg\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/query-monitor/assets/banner-1544x500.png?rev=2457098\";s:2:\"1x\";s:68:\"https://ps.w.org/query-monitor/assets/banner-772x250.png?rev=2457098\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.7\";}s:53:\"resizable-editor-sidebar/resizable-editor-sidebar.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:38:\"w.org/plugins/resizable-editor-sidebar\";s:4:\"slug\";s:24:\"resizable-editor-sidebar\";s:6:\"plugin\";s:53:\"resizable-editor-sidebar/resizable-editor-sidebar.php\";s:11:\"new_version\";s:5:\"1.0.1\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/resizable-editor-sidebar/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/resizable-editor-sidebar.1.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/resizable-editor-sidebar/assets/icon-256x256.gif?rev=2589725\";s:2:\"1x\";s:77:\"https://ps.w.org/resizable-editor-sidebar/assets/icon-128x128.gif?rev=2589725\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}s:39:\"wp-add-mime-types/wp-add-mime-types.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/wp-add-mime-types\";s:4:\"slug\";s:17:\"wp-add-mime-types\";s:6:\"plugin\";s:39:\"wp-add-mime-types/wp-add-mime-types.php\";s:11:\"new_version\";s:5:\"3.0.3\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/wp-add-mime-types/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/wp-add-mime-types.3.0.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:61:\"https://s.w.org/plugins/geopattern-icon/wp-add-mime-types.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.4\";}s:58:\"wp-delete-user-accounts-master/wp-delete-user-accounts.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:37:\"w.org/plugins/wp-delete-user-accounts\";s:4:\"slug\";s:23:\"wp-delete-user-accounts\";s:6:\"plugin\";s:58:\"wp-delete-user-accounts-master/wp-delete-user-accounts.php\";s:11:\"new_version\";s:5:\"1.2.3\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/wp-delete-user-accounts/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/wp-delete-user-accounts.1.2.3.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:67:\"https://s.w.org/plugins/geopattern-icon/wp-delete-user-accounts.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";b:0;}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"3.6.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.3.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.jpg?rev=2811094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.jpg?rev=2811094\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}s:33:\"wps-hide-login/wps-hide-login.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wps-hide-login\";s:4:\"slug\";s:14:\"wps-hide-login\";s:6:\"plugin\";s:33:\"wps-hide-login/wps-hide-login.php\";s:11:\"new_version\";s:5:\"1.9.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wps-hide-login/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wps-hide-login.1.9.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-256x256.png?rev=1820667\";s:2:\"1x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-128x128.png?rev=1820667\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wps-hide-login/assets/banner-1544x500.jpg?rev=1820667\";s:2:\"1x\";s:69:\"https://ps.w.org/wps-hide-login/assets/banner-772x250.jpg?rev=1820667\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.1\";}}s:7:\"checked\";a:20:{s:33:\"admin-menu-editor/menu-editor.php\";s:6:\"1.10.4\";s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.11.4\";s:19:\"akismet/akismet.php\";s:3:\"5.0\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.64\";s:81:\"all-in-one-wp-migration-file-extension/all-in-one-wp-migration-file-extension.php\";s:3:\"1.8\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.13.2\";s:49:\"easy-table-of-contents/easy-table-of-contents.php\";s:6:\"2.0.40\";s:21:\"filebird/filebird.php\";s:3:\"5.1\";s:47:\"genesis-custom-blocks/genesis-custom-blocks.php\";s:5:\"1.5.1\";s:9:\"hello.php\";s:5:\"1.7.2\";s:31:\"media-cleaner/media-cleaner.php\";s:5:\"6.5.0\";s:31:\"query-monitor/query-monitor.php\";s:6:\"3.10.1\";s:53:\"resizable-editor-sidebar/resizable-editor-sidebar.php\";s:5:\"1.0.1\";s:37:\"user-role-editor/user-role-editor.php\";s:4:\"4.63\";s:23:\"wordfence/wordfence.php\";s:5:\"7.8.0\";s:39:\"wp-add-mime-types/wp-add-mime-types.php\";s:5:\"3.0.3\";s:58:\"wp-delete-user-accounts-master/wp-delete-user-accounts.php\";s:5:\"1.2.3\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"3.6.1\";s:33:\"wps-hide-login/wps-hide-login.php\";s:5:\"1.9.6\";}}', 'no'),
(4433, '_site_transient_timeout_php_check_71beb58986fe81ec54207f069dd45eee', '1671691481', 'no'),
(4434, '_site_transient_php_check_71beb58986fe81ec54207f069dd45eee', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(4572, '_site_transient_timeout_theme_roots', '1671091481', 'no'),
(4573, '_site_transient_theme_roots', 'a:3:{s:7:\"biolink\";s:7:\"/themes\";s:7:\"genesis\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(4654, 'category_children', 'a:0:{}', 'yes'),
(4737, '_transient_timeout_global_styles_biolink', '1671092494', 'no'),
(4738, '_transient_global_styles_biolink', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(4739, '_transient_timeout_global_styles_svg_filters_biolink', '1671092494', 'no'),
(4740, '_transient_global_styles_svg_filters_biolink', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 6, '_edit_lock', '1669881666:2'),
(4, 1, '_edit_lock', '1671091110:1'),
(8, 18, '_edit_lock', '1670398565:1'),
(9, 18, '_edit_last', '1'),
(22, 6, '_wp_trash_meta_status', 'pending'),
(23, 6, '_wp_trash_meta_time', '1669881586'),
(24, 6, '_wp_desired_post_slug', ''),
(25, 36, '_edit_lock', '1671091105:1'),
(62, 62, '_edit_last', '1'),
(63, 62, '_edit_lock', '1671091091:1'),
(64, 83, '_edit_lock', '1671091100:1'),
(67, 88, '_edit_lock', '1671091096:1'),
(71, 96, '_edit_lock', '1670493692:1'),
(72, 96, '_edit_last', '1'),
(526, 225, '_wp_attached_file', '2022/12/avatar-gai-xinh-56-1.jpg'),
(527, 225, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:625;s:4:\"file\";s:32:\"2022/12/avatar-gai-xinh-56-1.jpg\";s:8:\"filesize\";i:66079;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:32:\"avatar-gai-xinh-56-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6110;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(632, 250, '_edit_lock', '1670491201:1'),
(633, 250, '_edit_last', '1'),
(688, 263, '_wp_attached_file', '2022/12/Playdisk-Music-Entertainment-Logo.png'),
(689, 263, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:45:\"2022/12/Playdisk-Music-Entertainment-Logo.png\";s:8:\"filesize\";i:18609;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:45:\"Playdisk-Music-Entertainment-Logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6297;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(694, 266, '_wp_attached_file', '2022/12/background-images-for-login-page3bc68c53b0db224b.jpg'),
(695, 266, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:60:\"2022/12/background-images-for-login-page3bc68c53b0db224b.jpg\";s:8:\"filesize\";i:92383;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:60:\"background-images-for-login-page3bc68c53b0db224b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2120;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(800, 296, '_wp_attached_file', '2022/12/vien-uong-bo-sung-nmn-hm-medical-aishodo-nmn-18000-90-vien-kd.jpg'),
(801, 296, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:73:\"2022/12/vien-uong-bo-sung-nmn-hm-medical-aishodo-nmn-18000-90-vien-kd.jpg\";s:8:\"filesize\";i:45322;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:73:\"vien-uong-bo-sung-nmn-hm-medical-aishodo-nmn-18000-90-vien-kd-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5147;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(866, 308, '_wp_attached_file', '2022/12/hinh-nen-hotgirl-duyen-dang_125438813.jpg'),
(867, 308, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:49:\"2022/12/hinh-nen-hotgirl-duyen-dang_125438813.jpg\";s:8:\"filesize\";i:261063;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:49:\"hinh-nen-hotgirl-duyen-dang_125438813-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6052;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(868, 309, '_wp_attached_file', '2022/12/hinh-nen-hotgirl-duyen-dang_125438813-1.jpg'),
(869, 309, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:51:\"2022/12/hinh-nen-hotgirl-duyen-dang_125438813-1.jpg\";s:8:\"filesize\";i:134103;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:51:\"hinh-nen-hotgirl-duyen-dang_125438813-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6048;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(979, 325, '_edit_lock', '1670386300:4'),
(980, 326, '_edit_lock', '1670385522:1'),
(986, 332, '_edit_lock', '1670397741:1'),
(987, 332, '_edit_last', '1'),
(988, 332, 'bio_bkg', 'bkgImage'),
(989, 332, '_bio_bkg', 'field_6389addd51b11'),
(990, 332, 'bio_oBkg', '0'),
(991, 332, '_bio_oBkg', 'field_638efa53fa04d'),
(992, 332, 'bio_bkgImage', ''),
(993, 332, '_bio_bkgImage', 'field_6389b8f0f4259'),
(994, 333, 'bio_bkg', 'bkgImage'),
(995, 333, '_bio_bkg', 'field_6389addd51b11'),
(996, 333, 'bio_oBkg', '0'),
(997, 333, '_bio_oBkg', 'field_638efa53fa04d'),
(998, 333, 'bio_bkgImage', ''),
(999, 333, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1000, 334, '_edit_lock', '1671014226:4'),
(1001, 334, '_edit_last', '4'),
(1002, 334, 'bio_bkg', 'bkgImage'),
(1003, 334, '_bio_bkg', 'field_6389addd51b11'),
(1004, 334, 'bio_oBkg', '1'),
(1005, 334, '_bio_oBkg', 'field_638efa53fa04d'),
(1006, 334, 'bio_bkgImage', '365'),
(1007, 334, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1008, 335, 'bio_bkg', 'bkgImage'),
(1009, 335, '_bio_bkg', 'field_6389addd51b11'),
(1010, 335, 'bio_oBkg', '0'),
(1011, 335, '_bio_oBkg', 'field_638efa53fa04d'),
(1012, 335, 'bio_bkgImage', ''),
(1013, 335, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1026, 62, '_wp_old_date', '2022-12-02'),
(1099, 365, '_wp_attached_file', '2022/12/hinh-nen-hotgirl-duyen-dang_125438813-1-1.jpg'),
(1100, 365, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:53:\"2022/12/hinh-nen-hotgirl-duyen-dang_125438813-1-1.jpg\";s:8:\"filesize\";i:134103;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:53:\"hinh-nen-hotgirl-duyen-dang_125438813-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6048;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1113, 371, '_wp_attached_file', '2022/12/avatar-gai-xinh-56-1-1.jpg'),
(1114, 371, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:625;s:4:\"file\";s:34:\"2022/12/avatar-gai-xinh-56-1-1.jpg\";s:8:\"filesize\";i:66079;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"avatar-gai-xinh-56-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6110;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1121, 374, '_edit_lock', '1670491159:1'),
(1122, 374, '_edit_last', '1'),
(1123, 374, 'bio_bkg', 'bkgImage'),
(1124, 374, '_bio_bkg', 'field_6389addd51b11'),
(1125, 374, 'bio_oBkg', '0'),
(1126, 374, '_bio_oBkg', 'field_638efa53fa04d'),
(1127, 374, 'bio_bkgImage', ''),
(1128, 374, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1129, 375, 'bio_bkg', 'bkgImage'),
(1130, 375, '_bio_bkg', 'field_6389addd51b11'),
(1131, 375, 'bio_oBkg', '0'),
(1132, 375, '_bio_oBkg', 'field_638efa53fa04d'),
(1133, 375, 'bio_bkgImage', ''),
(1134, 375, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1135, 376, '_edit_lock', '1670494093:1'),
(1136, 376, '_edit_last', '1'),
(1137, 378, '_wp_attached_file', '2022/12/linkbios-1.jpg'),
(1138, 378, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1656;s:6:\"height\";i:1231;s:4:\"file\";s:22:\"2022/12/linkbios-1.jpg\";s:8:\"filesize\";i:785169;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"linkbios-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6778;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1139, 374, 'bio_loginImg', '309'),
(1140, 374, '_bio_loginImg', 'field_639042fb4e829'),
(1141, 379, 'bio_bkg', 'bkgImage'),
(1142, 379, '_bio_bkg', 'field_6389addd51b11'),
(1143, 379, 'bio_oBkg', '0'),
(1144, 379, '_bio_oBkg', 'field_638efa53fa04d'),
(1145, 379, 'bio_bkgImage', ''),
(1146, 379, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1147, 379, 'bio_loginImg', '378'),
(1148, 379, '_bio_loginImg', 'field_639042fb4e829'),
(1149, 380, '_edit_lock', '1670487891:1'),
(1150, 380, '_edit_last', '1'),
(1151, 380, 'bio_bkg', 'bkgImage'),
(1152, 380, '_bio_bkg', 'field_6389addd51b11'),
(1153, 380, 'bio_oBkg', '0'),
(1154, 380, '_bio_oBkg', 'field_638efa53fa04d'),
(1155, 380, 'bio_bkgImage', ''),
(1156, 380, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1157, 381, 'bio_bkg', 'bkgImage'),
(1158, 381, '_bio_bkg', 'field_6389addd51b11'),
(1159, 381, 'bio_oBkg', '0'),
(1160, 381, '_bio_oBkg', 'field_638efa53fa04d'),
(1161, 381, 'bio_bkgImage', ''),
(1162, 381, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1163, 380, 'bio_loginImg', '378'),
(1164, 380, '_bio_loginImg', 'field_639042fb4e829'),
(1165, 382, 'bio_bkg', 'bkgImage'),
(1166, 382, '_bio_bkg', 'field_6389addd51b11'),
(1167, 382, 'bio_oBkg', '0'),
(1168, 382, '_bio_oBkg', 'field_638efa53fa04d'),
(1169, 382, 'bio_bkgImage', ''),
(1170, 382, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1171, 382, 'bio_loginImg', '378'),
(1172, 382, '_bio_loginImg', 'field_639042fb4e829'),
(1223, 401, '_edit_last', '21'),
(1224, 401, '_wp_page_template', 'default'),
(1225, 401, '_edit_lock', '1670486978:21'),
(1226, 406, 'bio_bkg', 'bkgImage'),
(1227, 406, '_bio_bkg', 'field_6389addd51b11'),
(1228, 406, 'bio_oBkg', '0'),
(1229, 406, '_bio_oBkg', 'field_638efa53fa04d'),
(1230, 406, 'bio_bkgImage', ''),
(1231, 406, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1232, 406, 'bio_loginImg', '309'),
(1233, 406, '_bio_loginImg', 'field_639042fb4e829'),
(1242, 409, '_edit_lock', '1670491589:24'),
(1243, 409, '_edit_last', '24'),
(1244, 409, 'bio_bkg', 'bkgImage'),
(1245, 409, '_bio_bkg', 'field_6389addd51b11'),
(1246, 409, 'bio_oBkg', '0'),
(1247, 409, '_bio_oBkg', 'field_638efa53fa04d'),
(1248, 409, 'bio_bkgImage', ''),
(1249, 409, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1250, 411, 'bio_bkg', 'bkgImage'),
(1251, 411, '_bio_bkg', 'field_6389addd51b11'),
(1252, 411, 'bio_oBkg', '0'),
(1253, 411, '_bio_oBkg', 'field_638efa53fa04d'),
(1254, 411, 'bio_bkgImage', ''),
(1255, 411, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1256, 412, '_edit_lock', '1670495376:1'),
(1257, 412, '_edit_last', '1'),
(1258, 412, 'bio_bkg', 'bkgImage'),
(1259, 412, '_bio_bkg', 'field_6389addd51b11'),
(1260, 412, 'bio_oBkg', '0'),
(1261, 412, '_bio_oBkg', 'field_638efa53fa04d'),
(1262, 412, 'bio_bkgImage', ''),
(1263, 412, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1264, 413, 'bio_bkg', 'bkgImage'),
(1265, 413, '_bio_bkg', 'field_6389addd51b11'),
(1266, 413, 'bio_oBkg', '0'),
(1267, 413, '_bio_oBkg', 'field_638efa53fa04d'),
(1268, 413, 'bio_bkgImage', ''),
(1269, 413, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1270, 412, 'bio_loginImg', '378'),
(1271, 412, '_bio_loginImg', 'field_639042fb4e829'),
(1272, 414, 'bio_bkg', 'bkgImage'),
(1273, 414, '_bio_bkg', 'field_6389addd51b11'),
(1274, 414, 'bio_oBkg', '0'),
(1275, 414, '_bio_oBkg', 'field_638efa53fa04d'),
(1276, 414, 'bio_bkgImage', ''),
(1277, 414, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1278, 414, 'bio_loginImg', '378'),
(1279, 414, '_bio_loginImg', 'field_639042fb4e829'),
(1280, 415, '_edit_lock', '1670554519:25'),
(1281, 415, '_edit_last', '25'),
(1282, 415, 'bio_bkg', 'bkgImage'),
(1283, 415, '_bio_bkg', 'field_6389addd51b11'),
(1284, 415, 'bio_oBkg', '0'),
(1285, 415, '_bio_oBkg', 'field_638efa53fa04d'),
(1286, 415, 'bio_bkgImage', ''),
(1287, 415, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1294, 418, '_edit_lock', '1670554532:25'),
(1295, 419, '_edit_lock', '1670554538:25'),
(1300, 415, '_wp_desired_post_slug', 'bio6789'),
(1301, 418, '_wp_trash_meta_status', 'auto-draft'),
(1302, 418, '_wp_trash_meta_time', '1670555291'),
(1303, 418, '_wp_desired_post_slug', ''),
(1304, 419, '_wp_trash_meta_status', 'auto-draft'),
(1305, 419, '_wp_trash_meta_time', '1670555291'),
(1306, 419, '_wp_desired_post_slug', ''),
(1313, 424, 'bio_bkg', 'bkgImage'),
(1314, 424, '_bio_bkg', 'field_6389addd51b11'),
(1315, 424, 'bio_oBkg', '0'),
(1316, 424, '_bio_oBkg', 'field_638efa53fa04d'),
(1317, 424, 'bio_bkgImage', ''),
(1318, 424, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1319, 425, 'bio_bkg', 'bkgImage'),
(1320, 425, '_bio_bkg', 'field_6389addd51b11'),
(1321, 425, 'bio_oBkg', '0'),
(1322, 425, '_bio_oBkg', 'field_638efa53fa04d'),
(1323, 425, 'bio_bkgImage', ''),
(1324, 425, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1325, 426, '_edit_lock', '1670916033:1'),
(1326, 426, '_edit_last', '26'),
(1327, 426, 'bio_bkg', 'bkgImage'),
(1328, 426, '_bio_bkg', 'field_6389addd51b11'),
(1329, 426, 'bio_oBkg', '0'),
(1330, 426, '_bio_oBkg', 'field_638efa53fa04d'),
(1331, 426, 'bio_bkgImage', ''),
(1332, 426, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1333, 428, 'bio_bkg', 'bkgImage'),
(1334, 428, '_bio_bkg', 'field_6389addd51b11'),
(1335, 428, 'bio_oBkg', '0'),
(1336, 428, '_bio_oBkg', 'field_638efa53fa04d'),
(1337, 428, 'bio_bkgImage', ''),
(1338, 428, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1339, 430, 'bio_bkg', 'bkgImage'),
(1340, 430, '_bio_bkg', 'field_6389addd51b11'),
(1341, 430, 'bio_oBkg', '1'),
(1342, 430, '_bio_oBkg', 'field_638efa53fa04d'),
(1343, 430, 'bio_bkgImage', '365'),
(1344, 430, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1345, 431, '_edit_lock', '1671011780:1'),
(1346, 431, '_edit_last', '1'),
(1347, 431, 'bio_bkg', 'bkgImage'),
(1348, 431, '_bio_bkg', 'field_6389addd51b11'),
(1349, 431, 'bio_oBkg', '0'),
(1350, 431, '_bio_oBkg', 'field_638efa53fa04d'),
(1351, 431, 'bio_bkgImage', ''),
(1352, 431, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1353, 432, 'bio_bkg', 'bkgImage'),
(1354, 432, '_bio_bkg', 'field_6389addd51b11'),
(1355, 432, 'bio_oBkg', '0'),
(1356, 432, '_bio_oBkg', 'field_638efa53fa04d'),
(1357, 432, 'bio_bkgImage', ''),
(1358, 432, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1359, 433, '_menu_item_type', 'post_type'),
(1360, 433, '_menu_item_menu_item_parent', '0'),
(1361, 433, '_menu_item_object_id', '431'),
(1362, 433, '_menu_item_object', 'page'),
(1363, 433, '_menu_item_target', ''),
(1364, 433, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1365, 433, '_menu_item_xfn', ''),
(1366, 433, '_menu_item_url', ''),
(1377, 449, '_wp_attached_file', '2022/12/logobio.svg'),
(1378, 449, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:10823;}'),
(1379, 450, '_edit_lock', '1670987710:1'),
(1380, 450, '_edit_last', '1'),
(1381, 450, 'bio_bkg', 'bkgImage'),
(1382, 450, '_bio_bkg', 'field_6389addd51b11'),
(1383, 450, 'bio_oBkg', '0'),
(1384, 450, '_bio_oBkg', 'field_638efa53fa04d'),
(1385, 450, 'bio_bkgImage', ''),
(1386, 450, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1387, 451, 'bio_bkg', 'bkgImage'),
(1388, 451, '_bio_bkg', 'field_6389addd51b11'),
(1389, 451, 'bio_oBkg', '0'),
(1390, 451, '_bio_oBkg', 'field_638efa53fa04d'),
(1391, 451, 'bio_bkgImage', ''),
(1392, 451, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1393, 452, '_edit_lock', '1671012295:1'),
(1394, 452, '_edit_last', '1'),
(1395, 452, 'bio_bkg', 'bkgImage'),
(1396, 452, '_bio_bkg', 'field_6389addd51b11'),
(1397, 452, 'bio_oBkg', '0'),
(1398, 452, '_bio_oBkg', 'field_638efa53fa04d'),
(1399, 452, 'bio_bkgImage', ''),
(1400, 452, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1401, 453, 'bio_bkg', 'bkgImage'),
(1402, 453, '_bio_bkg', 'field_6389addd51b11'),
(1403, 453, 'bio_oBkg', '0'),
(1404, 453, '_bio_oBkg', 'field_638efa53fa04d'),
(1405, 453, 'bio_bkgImage', ''),
(1406, 453, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1407, 454, '_edit_lock', '1670987881:1'),
(1408, 454, '_edit_last', '1'),
(1409, 454, 'bio_bkg', 'bkgImage'),
(1410, 454, '_bio_bkg', 'field_6389addd51b11'),
(1411, 454, 'bio_oBkg', '0'),
(1412, 454, '_bio_oBkg', 'field_638efa53fa04d'),
(1413, 454, 'bio_bkgImage', ''),
(1414, 454, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1415, 455, 'bio_bkg', 'bkgImage'),
(1416, 455, '_bio_bkg', 'field_6389addd51b11'),
(1417, 455, 'bio_oBkg', '0'),
(1418, 455, '_bio_oBkg', 'field_638efa53fa04d'),
(1419, 455, 'bio_bkgImage', ''),
(1420, 455, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1430, 457, '_menu_item_type', 'post_type'),
(1431, 457, '_menu_item_menu_item_parent', '0'),
(1432, 457, '_menu_item_object_id', '452'),
(1433, 457, '_menu_item_object', 'page'),
(1434, 457, '_menu_item_target', ''),
(1435, 457, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1436, 457, '_menu_item_xfn', ''),
(1437, 457, '_menu_item_url', ''),
(1439, 458, '_menu_item_type', 'post_type'),
(1440, 458, '_menu_item_menu_item_parent', '0'),
(1441, 458, '_menu_item_object_id', '450'),
(1442, 458, '_menu_item_object', 'page'),
(1443, 458, '_menu_item_target', ''),
(1444, 458, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1445, 458, '_menu_item_xfn', ''),
(1446, 458, '_menu_item_url', ''),
(1448, 433, '_wp_old_date', '2022-12-13'),
(1449, 439, '_edit_lock', '1671001367:1'),
(1450, 439, '_edit_last', '1'),
(1451, 459, '_wp_attached_file', '2022/12/facebook.svg'),
(1452, 459, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:868;}'),
(1453, 460, '_wp_attached_file', '2022/12/youtube.svg'),
(1454, 460, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:707;}'),
(1455, 461, '_wp_attached_file', '2022/12/zalo.svg'),
(1456, 461, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:36533;}'),
(1461, 465, '_wp_attached_file', '2022/12/logofooter.png'),
(1462, 465, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:661;s:6:\"height\";i:219;s:4:\"file\";s:22:\"2022/12/logofooter.png\";s:8:\"filesize\";i:48741;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"logofooter-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2679;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1463, 466, '_menu_item_type', 'post_type'),
(1464, 466, '_menu_item_menu_item_parent', '0'),
(1465, 466, '_menu_item_object_id', '454'),
(1466, 466, '_menu_item_object', 'page'),
(1467, 466, '_menu_item_target', ''),
(1468, 466, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1469, 466, '_menu_item_xfn', ''),
(1470, 466, '_menu_item_url', ''),
(1472, 467, '_menu_item_type', 'post_type'),
(1473, 467, '_menu_item_menu_item_parent', '0'),
(1474, 467, '_menu_item_object_id', '452'),
(1475, 467, '_menu_item_object', 'page'),
(1476, 467, '_menu_item_target', ''),
(1477, 467, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1478, 467, '_menu_item_xfn', ''),
(1479, 467, '_menu_item_url', ''),
(1481, 468, '_menu_item_type', 'post_type'),
(1482, 468, '_menu_item_menu_item_parent', '0'),
(1483, 468, '_menu_item_object_id', '450'),
(1484, 468, '_menu_item_object', 'page'),
(1485, 468, '_menu_item_target', ''),
(1486, 468, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1487, 468, '_menu_item_xfn', ''),
(1488, 468, '_menu_item_url', ''),
(1490, 469, '_menu_item_type', 'post_type'),
(1491, 469, '_menu_item_menu_item_parent', '0'),
(1492, 469, '_menu_item_object_id', '426'),
(1493, 469, '_menu_item_object', 'page'),
(1494, 469, '_menu_item_target', ''),
(1495, 469, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1496, 469, '_menu_item_xfn', ''),
(1497, 469, '_menu_item_url', ''),
(1499, 470, '_menu_item_type', 'post_type'),
(1500, 470, '_menu_item_menu_item_parent', '0'),
(1501, 470, '_menu_item_object_id', '412'),
(1502, 470, '_menu_item_object', 'page'),
(1503, 470, '_menu_item_target', ''),
(1504, 470, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1505, 470, '_menu_item_xfn', ''),
(1506, 470, '_menu_item_url', ''),
(1508, 471, '_menu_item_type', 'post_type'),
(1509, 471, '_menu_item_menu_item_parent', '0'),
(1510, 471, '_menu_item_object_id', '454'),
(1511, 471, '_menu_item_object', 'page'),
(1512, 471, '_menu_item_target', ''),
(1513, 471, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1514, 471, '_menu_item_xfn', ''),
(1515, 471, '_menu_item_url', ''),
(1517, 472, '_menu_item_type', 'post_type'),
(1518, 472, '_menu_item_menu_item_parent', '0'),
(1519, 472, '_menu_item_object_id', '452'),
(1520, 472, '_menu_item_object', 'page'),
(1521, 472, '_menu_item_target', ''),
(1522, 472, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1523, 472, '_menu_item_xfn', ''),
(1524, 472, '_menu_item_url', ''),
(1526, 473, '_menu_item_type', 'post_type'),
(1527, 473, '_menu_item_menu_item_parent', '0'),
(1528, 473, '_menu_item_object_id', '450'),
(1529, 473, '_menu_item_object', 'page'),
(1530, 473, '_menu_item_target', ''),
(1531, 473, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1532, 473, '_menu_item_xfn', ''),
(1533, 473, '_menu_item_url', ''),
(1535, 474, '_menu_item_type', 'post_type'),
(1536, 474, '_menu_item_menu_item_parent', '0'),
(1537, 474, '_menu_item_object_id', '374'),
(1538, 474, '_menu_item_object', 'page'),
(1539, 474, '_menu_item_target', ''),
(1540, 474, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1541, 474, '_menu_item_xfn', ''),
(1542, 474, '_menu_item_url', ''),
(1544, 475, '_menu_item_type', 'post_type'),
(1545, 475, '_menu_item_menu_item_parent', '0'),
(1546, 475, '_menu_item_object_id', '334'),
(1547, 475, '_menu_item_object', 'page'),
(1548, 475, '_menu_item_target', ''),
(1549, 475, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1550, 475, '_menu_item_xfn', ''),
(1551, 475, '_menu_item_url', ''),
(1553, 476, '_menu_item_type', 'post_type'),
(1554, 476, '_menu_item_menu_item_parent', '0'),
(1555, 476, '_menu_item_object_id', '332'),
(1556, 476, '_menu_item_object', 'page'),
(1557, 476, '_menu_item_target', ''),
(1558, 476, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1559, 476, '_menu_item_xfn', ''),
(1560, 476, '_menu_item_url', ''),
(1562, 477, '_menu_item_type', 'post_type'),
(1563, 477, '_menu_item_menu_item_parent', '0'),
(1564, 477, '_menu_item_object_id', '454'),
(1565, 477, '_menu_item_object', 'page'),
(1566, 477, '_menu_item_target', ''),
(1567, 477, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1568, 477, '_menu_item_xfn', ''),
(1569, 477, '_menu_item_url', ''),
(1571, 478, '_menu_item_type', 'post_type'),
(1572, 478, '_menu_item_menu_item_parent', '0'),
(1573, 478, '_menu_item_object_id', '452'),
(1574, 478, '_menu_item_object', 'page'),
(1575, 478, '_menu_item_target', ''),
(1576, 478, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1577, 478, '_menu_item_xfn', ''),
(1578, 478, '_menu_item_url', ''),
(1580, 479, '_menu_item_type', 'post_type'),
(1581, 479, '_menu_item_menu_item_parent', '0'),
(1582, 479, '_menu_item_object_id', '450'),
(1583, 479, '_menu_item_object', 'page'),
(1584, 479, '_menu_item_target', ''),
(1585, 479, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1586, 479, '_menu_item_xfn', ''),
(1587, 479, '_menu_item_url', ''),
(1589, 480, '_menu_item_type', 'post_type'),
(1590, 480, '_menu_item_menu_item_parent', '0'),
(1591, 480, '_menu_item_object_id', '412'),
(1592, 480, '_menu_item_object', 'page'),
(1593, 480, '_menu_item_target', ''),
(1594, 480, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1595, 480, '_menu_item_xfn', ''),
(1596, 480, '_menu_item_url', ''),
(1598, 481, '_edit_lock', '1671012355:1'),
(1599, 481, '_edit_last', '1'),
(1600, 483, '_wp_attached_file', '2022/12/avatar-gai-xinh-56-1-2.jpg'),
(1601, 483, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:625;s:4:\"file\";s:34:\"2022/12/avatar-gai-xinh-56-1-2.jpg\";s:8:\"filesize\";i:66079;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"avatar-gai-xinh-56-1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6110;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1602, 485, 'bio_bkg', 'bkgImage'),
(1603, 485, '_bio_bkg', 'field_6389addd51b11'),
(1604, 485, 'bio_oBkg', '1'),
(1605, 485, '_bio_oBkg', 'field_638efa53fa04d'),
(1606, 485, 'bio_bkgImage', '365'),
(1607, 485, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1608, 486, 'bio_bkg', 'bkgImage'),
(1609, 486, '_bio_bkg', 'field_6389addd51b11'),
(1610, 486, 'bio_oBkg', '1'),
(1611, 486, '_bio_oBkg', 'field_638efa53fa04d'),
(1612, 486, 'bio_bkgImage', '365'),
(1613, 486, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1614, 487, 'bio_bkg', 'bkgImage'),
(1615, 487, '_bio_bkg', 'field_6389addd51b11'),
(1616, 487, 'bio_oBkg', '1'),
(1617, 487, '_bio_oBkg', 'field_638efa53fa04d'),
(1618, 487, 'bio_bkgImage', '365'),
(1619, 487, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1620, 431, 'banner_status', '1'),
(1621, 431, '_banner_status', 'field_63997b7a7a734'),
(1622, 431, 'banner_title', 'Create Stunning Websites With Ease, No Code Required'),
(1623, 431, '_banner_title', 'field_63997b9b7a735'),
(1624, 431, 'banner_subtitle', 'Join over 100k users that are building fast-loading websites with ease using Kadence Blocks! Get professional-looking results without any coding knowledge.'),
(1625, 431, '_banner_subtitle', 'field_63997bae7a736'),
(1626, 491, 'bio_bkg', 'bkgImage'),
(1627, 491, '_bio_bkg', 'field_6389addd51b11'),
(1628, 491, 'bio_oBkg', '0'),
(1629, 491, '_bio_oBkg', 'field_638efa53fa04d'),
(1630, 491, 'bio_bkgImage', ''),
(1631, 491, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1632, 491, 'banner_status', '1'),
(1633, 491, '_banner_status', 'field_63997b7a7a734'),
(1634, 491, 'banner_title', 'Kol.com.vn'),
(1635, 491, '_banner_title', 'field_63997b9b7a735'),
(1636, 491, 'banner_subtitle', 'Tạo Bio Link miễn phí tốt nhất dành cho bạn'),
(1637, 491, '_banner_subtitle', 'field_63997bae7a736'),
(1640, 431, 'banner_img', '378'),
(1641, 431, '_banner_img', 'field_63997c3acfbf1'),
(1642, 495, 'bio_bkg', 'bkgImage'),
(1643, 495, '_bio_bkg', 'field_6389addd51b11'),
(1644, 495, 'bio_oBkg', '0'),
(1645, 495, '_bio_oBkg', 'field_638efa53fa04d'),
(1646, 495, 'bio_bkgImage', ''),
(1647, 495, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1648, 495, 'banner_status', '1'),
(1649, 495, '_banner_status', 'field_63997b7a7a734'),
(1650, 495, 'banner_title', 'Kol.com.vn'),
(1651, 495, '_banner_title', 'field_63997b9b7a735'),
(1652, 495, 'banner_subtitle', 'Tạo Bio Link miễn phí tốt nhất dành cho bạn'),
(1653, 495, '_banner_subtitle', 'field_63997bae7a736'),
(1654, 495, 'banner_img', '378'),
(1655, 495, '_banner_img', 'field_63997c3acfbf1'),
(1656, 496, 'bio_bkg', 'bkgImage'),
(1657, 496, '_bio_bkg', 'field_6389addd51b11'),
(1658, 496, 'bio_oBkg', '0'),
(1659, 496, '_bio_oBkg', 'field_638efa53fa04d'),
(1660, 496, 'bio_bkgImage', ''),
(1661, 496, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1662, 496, 'banner_status', '1'),
(1663, 496, '_banner_status', 'field_63997b7a7a734'),
(1664, 496, 'banner_title', 'Create Stunning Websites With Ease, No Code Required'),
(1665, 496, '_banner_title', 'field_63997b9b7a735'),
(1666, 496, 'banner_subtitle', 'Join over 100k users that are building fast-loading websites with ease using Kadence Blocks! Get professional-looking results without any coding knowledge.'),
(1667, 496, '_banner_subtitle', 'field_63997bae7a736'),
(1668, 496, 'banner_img', '378'),
(1669, 496, '_banner_img', 'field_63997c3acfbf1'),
(1670, 431, 'feature_status', '1'),
(1671, 431, '_feature_status', 'field_639982c22a57f'),
(1672, 431, 'feature_subtitle', 'WHERE CAMPAIGNS BECOME MARKETING MACHINES'),
(1673, 431, '_feature_subtitle', 'field_639982de2a582'),
(1674, 431, 'feature_title', 'What are you looking to achieve with smart links?'),
(1675, 431, '_feature_title', 'field_639982da2a581'),
(1676, 501, 'bio_bkg', 'bkgImage'),
(1677, 501, '_bio_bkg', 'field_6389addd51b11'),
(1678, 501, 'bio_oBkg', '0'),
(1679, 501, '_bio_oBkg', 'field_638efa53fa04d'),
(1680, 501, 'bio_bkgImage', ''),
(1681, 501, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1682, 501, 'banner_status', '1'),
(1683, 501, '_banner_status', 'field_63997b7a7a734'),
(1684, 501, 'banner_title', 'Create Stunning Websites With Ease, No Code Required'),
(1685, 501, '_banner_title', 'field_63997b9b7a735'),
(1686, 501, 'banner_subtitle', 'Join over 100k users that are building fast-loading websites with ease using Kadence Blocks! Get professional-looking results without any coding knowledge.'),
(1687, 501, '_banner_subtitle', 'field_63997bae7a736'),
(1688, 501, 'banner_img', '378'),
(1689, 501, '_banner_img', 'field_63997c3acfbf1'),
(1690, 501, 'feature_status', '1'),
(1691, 501, '_feature_status', 'field_639982c22a57f'),
(1692, 501, 'feature_subtitle', 'WHERE CAMPAIGNS BECOME MARKETING MACHINES'),
(1693, 501, '_feature_subtitle', 'field_639982de2a582'),
(1694, 501, 'feature_title', 'What are you looking to achieve with smart links?'),
(1695, 501, '_feature_title', 'field_639982da2a581'),
(1696, 506, '_wp_attached_file', '2022/12/Pre-release-1.webp'),
(1697, 506, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:574;s:6:\"height\";i:434;s:4:\"file\";s:26:\"2022/12/Pre-release-1.webp\";s:8:\"filesize\";i:57788;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"Pre-release-1-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:2598;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1698, 431, 'feature_rp_0_ft_img', '506'),
(1699, 431, '_feature_rp_0_ft_img', 'field_6399837c61678'),
(1700, 431, 'feature_rp_0_ft_txt', 'Build hype '),
(1701, 431, '_feature_rp_0_ft_txt', 'field_6399839161679'),
(1702, 431, 'feature_rp_0_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1703, 431, '_feature_rp_0_ft_subtxt', 'field_6399839e6167a'),
(1704, 431, 'feature_rp_1_ft_img', '506'),
(1705, 431, '_feature_rp_1_ft_img', 'field_6399837c61678'),
(1706, 431, 'feature_rp_1_ft_txt', 'Build hype '),
(1707, 431, '_feature_rp_1_ft_txt', 'field_6399839161679'),
(1708, 431, 'feature_rp_1_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1709, 431, '_feature_rp_1_ft_subtxt', 'field_6399839e6167a'),
(1710, 431, 'feature_rp_2_ft_img', '506'),
(1711, 431, '_feature_rp_2_ft_img', 'field_6399837c61678'),
(1712, 431, 'feature_rp_2_ft_txt', 'Build hype '),
(1713, 431, '_feature_rp_2_ft_txt', 'field_6399839161679'),
(1714, 431, 'feature_rp_2_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1715, 431, '_feature_rp_2_ft_subtxt', 'field_6399839e6167a'),
(1716, 431, 'feature_rp_3_ft_img', '506'),
(1717, 431, '_feature_rp_3_ft_img', 'field_6399837c61678'),
(1718, 431, 'feature_rp_3_ft_txt', 'Build hype '),
(1719, 431, '_feature_rp_3_ft_txt', 'field_6399839161679'),
(1720, 431, 'feature_rp_3_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1721, 431, '_feature_rp_3_ft_subtxt', 'field_6399839e6167a'),
(1722, 431, 'feature_rp_4_ft_img', '506'),
(1723, 431, '_feature_rp_4_ft_img', 'field_6399837c61678'),
(1724, 431, 'feature_rp_4_ft_txt', 'Build hype '),
(1725, 431, '_feature_rp_4_ft_txt', 'field_6399839161679'),
(1726, 431, 'feature_rp_4_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1727, 431, '_feature_rp_4_ft_subtxt', 'field_6399839e6167a'),
(1728, 431, 'feature_rp_5_ft_img', '506'),
(1729, 431, '_feature_rp_5_ft_img', 'field_6399837c61678'),
(1730, 431, 'feature_rp_5_ft_txt', 'Build hype '),
(1731, 431, '_feature_rp_5_ft_txt', 'field_6399839161679'),
(1732, 431, 'feature_rp_5_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1733, 431, '_feature_rp_5_ft_subtxt', 'field_6399839e6167a'),
(1740, 431, 'feature_rp', '6'),
(1741, 431, '_feature_rp', 'field_6399836961677'),
(1742, 507, 'bio_bkg', 'bkgImage'),
(1743, 507, '_bio_bkg', 'field_6389addd51b11'),
(1744, 507, 'bio_oBkg', '0'),
(1745, 507, '_bio_oBkg', 'field_638efa53fa04d'),
(1746, 507, 'bio_bkgImage', ''),
(1747, 507, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1748, 507, 'banner_status', '1'),
(1749, 507, '_banner_status', 'field_63997b7a7a734'),
(1750, 507, 'banner_title', 'Create Stunning Websites With Ease, No Code Required'),
(1751, 507, '_banner_title', 'field_63997b9b7a735'),
(1752, 507, 'banner_subtitle', 'Join over 100k users that are building fast-loading websites with ease using Kadence Blocks! Get professional-looking results without any coding knowledge.'),
(1753, 507, '_banner_subtitle', 'field_63997bae7a736'),
(1754, 507, 'banner_img', '378'),
(1755, 507, '_banner_img', 'field_63997c3acfbf1'),
(1756, 507, 'feature_status', '1'),
(1757, 507, '_feature_status', 'field_639982c22a57f'),
(1758, 507, 'feature_subtitle', 'WHERE CAMPAIGNS BECOME MARKETING MACHINES'),
(1759, 507, '_feature_subtitle', 'field_639982de2a582'),
(1760, 507, 'feature_title', 'What are you looking to achieve with smart links?'),
(1761, 507, '_feature_title', 'field_639982da2a581'),
(1762, 507, 'feature_rp_0_ft_img', '506'),
(1763, 507, '_feature_rp_0_ft_img', 'field_6399837c61678'),
(1764, 507, 'feature_rp_0_ft_txt', 'Build hype '),
(1765, 507, '_feature_rp_0_ft_txt', 'field_6399839161679'),
(1766, 507, 'feature_rp_0_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1767, 507, '_feature_rp_0_ft_subtxt', 'field_6399839e6167a'),
(1768, 507, 'feature_rp_1_ft_img', '506'),
(1769, 507, '_feature_rp_1_ft_img', 'field_6399837c61678'),
(1770, 507, 'feature_rp_1_ft_txt', 'Build hype '),
(1771, 507, '_feature_rp_1_ft_txt', 'field_6399839161679'),
(1772, 507, 'feature_rp_1_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1773, 507, '_feature_rp_1_ft_subtxt', 'field_6399839e6167a'),
(1774, 507, 'feature_rp_2_ft_img', '506'),
(1775, 507, '_feature_rp_2_ft_img', 'field_6399837c61678'),
(1776, 507, 'feature_rp_2_ft_txt', 'Build hype '),
(1777, 507, '_feature_rp_2_ft_txt', 'field_6399839161679'),
(1778, 507, 'feature_rp_2_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1779, 507, '_feature_rp_2_ft_subtxt', 'field_6399839e6167a'),
(1780, 507, 'feature_rp_3_ft_img', '506'),
(1781, 507, '_feature_rp_3_ft_img', 'field_6399837c61678'),
(1782, 507, 'feature_rp_3_ft_txt', 'Build hype '),
(1783, 507, '_feature_rp_3_ft_txt', 'field_6399839161679'),
(1784, 507, 'feature_rp_3_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1785, 507, '_feature_rp_3_ft_subtxt', 'field_6399839e6167a'),
(1786, 507, 'feature_rp_4_ft_img', '506'),
(1787, 507, '_feature_rp_4_ft_img', 'field_6399837c61678'),
(1788, 507, 'feature_rp_4_ft_txt', 'Build hype '),
(1789, 507, '_feature_rp_4_ft_txt', 'field_6399839161679'),
(1790, 507, 'feature_rp_4_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1791, 507, '_feature_rp_4_ft_subtxt', 'field_6399839e6167a'),
(1792, 507, 'feature_rp_5_ft_img', '506'),
(1793, 507, '_feature_rp_5_ft_img', 'field_6399837c61678'),
(1794, 507, 'feature_rp_5_ft_txt', 'Build hype '),
(1795, 507, '_feature_rp_5_ft_txt', 'field_6399839161679'),
(1796, 507, 'feature_rp_5_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1797, 507, '_feature_rp_5_ft_subtxt', 'field_6399839e6167a'),
(1798, 507, 'feature_rp_6_ft_img', '506'),
(1799, 507, '_feature_rp_6_ft_img', 'field_6399837c61678'),
(1800, 507, 'feature_rp_6_ft_txt', 'Build hype '),
(1801, 507, '_feature_rp_6_ft_txt', 'field_6399839161679'),
(1802, 507, 'feature_rp_6_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1803, 507, '_feature_rp_6_ft_subtxt', 'field_6399839e6167a'),
(1804, 507, 'feature_rp', '7'),
(1805, 507, '_feature_rp', 'field_6399836961677'),
(1806, 508, 'bio_bkg', 'bkgImage'),
(1807, 508, '_bio_bkg', 'field_6389addd51b11'),
(1808, 508, 'bio_oBkg', '0'),
(1809, 508, '_bio_oBkg', 'field_638efa53fa04d'),
(1810, 508, 'bio_bkgImage', ''),
(1811, 508, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1812, 508, 'banner_status', '1'),
(1813, 508, '_banner_status', 'field_63997b7a7a734'),
(1814, 508, 'banner_title', 'Create Stunning Websites With Ease, No Code Required'),
(1815, 508, '_banner_title', 'field_63997b9b7a735'),
(1816, 508, 'banner_subtitle', 'Join over 100k users that are building fast-loading websites with ease using Kadence Blocks! Get professional-looking results without any coding knowledge.'),
(1817, 508, '_banner_subtitle', 'field_63997bae7a736'),
(1818, 508, 'banner_img', '378'),
(1819, 508, '_banner_img', 'field_63997c3acfbf1'),
(1820, 508, 'feature_status', '1'),
(1821, 508, '_feature_status', 'field_639982c22a57f'),
(1822, 508, 'feature_subtitle', 'WHERE CAMPAIGNS BECOME MARKETING MACHINES'),
(1823, 508, '_feature_subtitle', 'field_639982de2a582'),
(1824, 508, 'feature_title', 'What are you looking to achieve with smart links?'),
(1825, 508, '_feature_title', 'field_639982da2a581'),
(1826, 508, 'feature_rp_0_ft_img', '506'),
(1827, 508, '_feature_rp_0_ft_img', 'field_6399837c61678'),
(1828, 508, 'feature_rp_0_ft_txt', 'Build hype '),
(1829, 508, '_feature_rp_0_ft_txt', 'field_6399839161679'),
(1830, 508, 'feature_rp_0_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1831, 508, '_feature_rp_0_ft_subtxt', 'field_6399839e6167a'),
(1832, 508, 'feature_rp_1_ft_img', '506'),
(1833, 508, '_feature_rp_1_ft_img', 'field_6399837c61678'),
(1834, 508, 'feature_rp_1_ft_txt', 'Build hype '),
(1835, 508, '_feature_rp_1_ft_txt', 'field_6399839161679'),
(1836, 508, 'feature_rp_1_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1837, 508, '_feature_rp_1_ft_subtxt', 'field_6399839e6167a'),
(1838, 508, 'feature_rp_2_ft_img', '506'),
(1839, 508, '_feature_rp_2_ft_img', 'field_6399837c61678'),
(1840, 508, 'feature_rp_2_ft_txt', 'Build hype '),
(1841, 508, '_feature_rp_2_ft_txt', 'field_6399839161679'),
(1842, 508, 'feature_rp_2_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1843, 508, '_feature_rp_2_ft_subtxt', 'field_6399839e6167a'),
(1844, 508, 'feature_rp_3_ft_img', '506'),
(1845, 508, '_feature_rp_3_ft_img', 'field_6399837c61678'),
(1846, 508, 'feature_rp_3_ft_txt', 'Build hype '),
(1847, 508, '_feature_rp_3_ft_txt', 'field_6399839161679'),
(1848, 508, 'feature_rp_3_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1849, 508, '_feature_rp_3_ft_subtxt', 'field_6399839e6167a'),
(1850, 508, 'feature_rp_4_ft_img', '506'),
(1851, 508, '_feature_rp_4_ft_img', 'field_6399837c61678'),
(1852, 508, 'feature_rp_4_ft_txt', 'Build hype '),
(1853, 508, '_feature_rp_4_ft_txt', 'field_6399839161679'),
(1854, 508, 'feature_rp_4_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1855, 508, '_feature_rp_4_ft_subtxt', 'field_6399839e6167a'),
(1856, 508, 'feature_rp_5_ft_img', '506'),
(1857, 508, '_feature_rp_5_ft_img', 'field_6399837c61678'),
(1858, 508, 'feature_rp_5_ft_txt', 'Build hype '),
(1859, 508, '_feature_rp_5_ft_txt', 'field_6399839161679'),
(1860, 508, 'feature_rp_5_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1861, 508, '_feature_rp_5_ft_subtxt', 'field_6399839e6167a'),
(1862, 508, 'feature_rp', '6'),
(1863, 508, '_feature_rp', 'field_6399836961677'),
(1864, 431, 'cus_status', '1'),
(1865, 431, '_cus_status', 'field_63998b176febb'),
(1866, 431, 'cus_title', 'Customize Your Header Without Compromise'),
(1867, 431, '_cus_title', 'field_63998c8e6febd'),
(1868, 431, 'cus_sub', 'Tired of the same old three header styles that you get from other themes? Unlock limitless possibilities with our drag and drop header builde'),
(1869, 431, '_cus_sub', 'field_63998c916febe'),
(1870, 431, 'cus_left', '3'),
(1871, 431, '_cus_left', 'field_63998b2c6febc'),
(1872, 431, 'cus_right', '3'),
(1873, 431, '_cus_right', 'field_63998cf395e18'),
(1874, 431, 'cus_center', '506'),
(1875, 431, '_cus_center', 'field_63998d0695e1c'),
(1876, 520, 'bio_bkg', 'bkgImage'),
(1877, 520, '_bio_bkg', 'field_6389addd51b11'),
(1878, 520, 'bio_oBkg', '0'),
(1879, 520, '_bio_oBkg', 'field_638efa53fa04d'),
(1880, 520, 'bio_bkgImage', ''),
(1881, 520, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1882, 520, 'banner_status', '1'),
(1883, 520, '_banner_status', 'field_63997b7a7a734'),
(1884, 520, 'banner_title', 'Create Stunning Websites With Ease, No Code Required'),
(1885, 520, '_banner_title', 'field_63997b9b7a735'),
(1886, 520, 'banner_subtitle', 'Join over 100k users that are building fast-loading websites with ease using Kadence Blocks! Get professional-looking results without any coding knowledge.'),
(1887, 520, '_banner_subtitle', 'field_63997bae7a736'),
(1888, 520, 'banner_img', '378'),
(1889, 520, '_banner_img', 'field_63997c3acfbf1'),
(1890, 520, 'feature_status', '1'),
(1891, 520, '_feature_status', 'field_639982c22a57f'),
(1892, 520, 'feature_subtitle', 'WHERE CAMPAIGNS BECOME MARKETING MACHINES'),
(1893, 520, '_feature_subtitle', 'field_639982de2a582'),
(1894, 520, 'feature_title', 'What are you looking to achieve with smart links?'),
(1895, 520, '_feature_title', 'field_639982da2a581'),
(1896, 520, 'feature_rp_0_ft_img', '506'),
(1897, 520, '_feature_rp_0_ft_img', 'field_6399837c61678'),
(1898, 520, 'feature_rp_0_ft_txt', 'Build hype '),
(1899, 520, '_feature_rp_0_ft_txt', 'field_6399839161679'),
(1900, 520, 'feature_rp_0_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1901, 520, '_feature_rp_0_ft_subtxt', 'field_6399839e6167a'),
(1902, 520, 'feature_rp_1_ft_img', '506'),
(1903, 520, '_feature_rp_1_ft_img', 'field_6399837c61678'),
(1904, 520, 'feature_rp_1_ft_txt', 'Build hype '),
(1905, 520, '_feature_rp_1_ft_txt', 'field_6399839161679'),
(1906, 520, 'feature_rp_1_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1907, 520, '_feature_rp_1_ft_subtxt', 'field_6399839e6167a'),
(1908, 520, 'feature_rp_2_ft_img', '506'),
(1909, 520, '_feature_rp_2_ft_img', 'field_6399837c61678'),
(1910, 520, 'feature_rp_2_ft_txt', 'Build hype '),
(1911, 520, '_feature_rp_2_ft_txt', 'field_6399839161679'),
(1912, 520, 'feature_rp_2_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1913, 520, '_feature_rp_2_ft_subtxt', 'field_6399839e6167a'),
(1914, 520, 'feature_rp_3_ft_img', '506'),
(1915, 520, '_feature_rp_3_ft_img', 'field_6399837c61678'),
(1916, 520, 'feature_rp_3_ft_txt', 'Build hype '),
(1917, 520, '_feature_rp_3_ft_txt', 'field_6399839161679'),
(1918, 520, 'feature_rp_3_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1919, 520, '_feature_rp_3_ft_subtxt', 'field_6399839e6167a'),
(1920, 520, 'feature_rp_4_ft_img', '506'),
(1921, 520, '_feature_rp_4_ft_img', 'field_6399837c61678'),
(1922, 520, 'feature_rp_4_ft_txt', 'Build hype '),
(1923, 520, '_feature_rp_4_ft_txt', 'field_6399839161679'),
(1924, 520, 'feature_rp_4_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1925, 520, '_feature_rp_4_ft_subtxt', 'field_6399839e6167a'),
(1926, 520, 'feature_rp_5_ft_img', '506'),
(1927, 520, '_feature_rp_5_ft_img', 'field_6399837c61678'),
(1928, 520, 'feature_rp_5_ft_txt', 'Build hype '),
(1929, 520, '_feature_rp_5_ft_txt', 'field_6399839161679'),
(1930, 520, 'feature_rp_5_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1931, 520, '_feature_rp_5_ft_subtxt', 'field_6399839e6167a'),
(1932, 520, 'feature_rp', '6'),
(1933, 520, '_feature_rp', 'field_6399836961677'),
(1934, 520, 'cus_status', '1'),
(1935, 520, '_cus_status', 'field_63998b176febb'),
(1936, 520, 'cus_title', 'Customize Your Header Without Compromise'),
(1937, 520, '_cus_title', 'field_63998c8e6febd'),
(1938, 520, 'cus_sub', 'Tired of the same old three header styles that you get from other themes? Unlock limitless possibilities with our drag and drop header builde'),
(1939, 520, '_cus_sub', 'field_63998c916febe'),
(1940, 520, 'cus_left', ''),
(1941, 520, '_cus_left', 'field_63998b2c6febc'),
(1942, 520, 'cus_right', ''),
(1943, 520, '_cus_right', 'field_63998cf395e18'),
(1944, 520, 'cus_center', ''),
(1945, 520, '_cus_center', 'field_63998d0695e1c'),
(1946, 431, 'cus_left_0_cus_txt', 'Drag & Drop'),
(1947, 431, '_cus_left_0_cus_txt', 'field_63998cd7cd25e'),
(1948, 431, 'cus_left_0_cus_subtxt', 'Place items exactly where you want in the header.'),
(1949, 431, '_cus_left_0_cus_subtxt', 'field_63998ce3cd25f'),
(1950, 431, 'cus_left_1_cus_txt', 'Any Header Style'),
(1951, 431, '_cus_left_1_cus_txt', 'field_63998cd7cd25e'),
(1952, 431, 'cus_left_1_cus_subtxt', 'Change font colors, backgrounds, and base height. Make it sticky or transparent. It’s your header, your way!'),
(1953, 431, '_cus_left_1_cus_subtxt', 'field_63998ce3cd25f'),
(1954, 431, 'cus_left_2_cus_txt', 'Drag & Drop'),
(1955, 431, '_cus_left_2_cus_txt', 'field_63998cd7cd25e'),
(1956, 431, 'cus_left_2_cus_subtxt', 'Place items exactly where you want in the header.'),
(1957, 431, '_cus_left_2_cus_subtxt', 'field_63998ce3cd25f'),
(1958, 431, 'cus_right_0_cus_txt', 'Any Header Style'),
(1959, 431, '_cus_right_0_cus_txt', 'field_63998cf395e19'),
(1960, 431, 'cus_right_0_cus_subtxt', 'Place items exactly where you want in the header.'),
(1961, 431, '_cus_right_0_cus_subtxt', 'field_63998cf395e1a'),
(1962, 431, 'cus_right_1_cus_txt', 'Any Header Style'),
(1963, 431, '_cus_right_1_cus_txt', 'field_63998cf395e19'),
(1964, 431, 'cus_right_1_cus_subtxt', 'Place items exactly where you want in the header.'),
(1965, 431, '_cus_right_1_cus_subtxt', 'field_63998cf395e1a'),
(1966, 431, 'cus_right_2_cus_txt', 'Any Header Style'),
(1967, 431, '_cus_right_2_cus_txt', 'field_63998cf395e19'),
(1968, 431, 'cus_right_2_cus_subtxt', 'Place items exactly where you want in the header.'),
(1969, 431, '_cus_right_2_cus_subtxt', 'field_63998cf395e1a'),
(1970, 521, 'bio_bkg', 'bkgImage'),
(1971, 521, '_bio_bkg', 'field_6389addd51b11'),
(1972, 521, 'bio_oBkg', '0'),
(1973, 521, '_bio_oBkg', 'field_638efa53fa04d'),
(1974, 521, 'bio_bkgImage', ''),
(1975, 521, '_bio_bkgImage', 'field_6389b8f0f4259'),
(1976, 521, 'banner_status', '1'),
(1977, 521, '_banner_status', 'field_63997b7a7a734'),
(1978, 521, 'banner_title', 'Create Stunning Websites With Ease, No Code Required'),
(1979, 521, '_banner_title', 'field_63997b9b7a735'),
(1980, 521, 'banner_subtitle', 'Join over 100k users that are building fast-loading websites with ease using Kadence Blocks! Get professional-looking results without any coding knowledge.'),
(1981, 521, '_banner_subtitle', 'field_63997bae7a736'),
(1982, 521, 'banner_img', '378'),
(1983, 521, '_banner_img', 'field_63997c3acfbf1'),
(1984, 521, 'feature_status', '1'),
(1985, 521, '_feature_status', 'field_639982c22a57f'),
(1986, 521, 'feature_subtitle', 'WHERE CAMPAIGNS BECOME MARKETING MACHINES'),
(1987, 521, '_feature_subtitle', 'field_639982de2a582'),
(1988, 521, 'feature_title', 'What are you looking to achieve with smart links?'),
(1989, 521, '_feature_title', 'field_639982da2a581'),
(1990, 521, 'feature_rp_0_ft_img', '506'),
(1991, 521, '_feature_rp_0_ft_img', 'field_6399837c61678'),
(1992, 521, 'feature_rp_0_ft_txt', 'Build hype '),
(1993, 521, '_feature_rp_0_ft_txt', 'field_6399839161679'),
(1994, 521, 'feature_rp_0_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(1995, 521, '_feature_rp_0_ft_subtxt', 'field_6399839e6167a'),
(1996, 521, 'feature_rp_1_ft_img', '506'),
(1997, 521, '_feature_rp_1_ft_img', 'field_6399837c61678'),
(1998, 521, 'feature_rp_1_ft_txt', 'Build hype '),
(1999, 521, '_feature_rp_1_ft_txt', 'field_6399839161679'),
(2000, 521, 'feature_rp_1_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(2001, 521, '_feature_rp_1_ft_subtxt', 'field_6399839e6167a'),
(2002, 521, 'feature_rp_2_ft_img', '506'),
(2003, 521, '_feature_rp_2_ft_img', 'field_6399837c61678'),
(2004, 521, 'feature_rp_2_ft_txt', 'Build hype '),
(2005, 521, '_feature_rp_2_ft_txt', 'field_6399839161679'),
(2006, 521, 'feature_rp_2_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(2007, 521, '_feature_rp_2_ft_subtxt', 'field_6399839e6167a'),
(2008, 521, 'feature_rp_3_ft_img', '506'),
(2009, 521, '_feature_rp_3_ft_img', 'field_6399837c61678'),
(2010, 521, 'feature_rp_3_ft_txt', 'Build hype '),
(2011, 521, '_feature_rp_3_ft_txt', 'field_6399839161679'),
(2012, 521, 'feature_rp_3_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(2013, 521, '_feature_rp_3_ft_subtxt', 'field_6399839e6167a'),
(2014, 521, 'feature_rp_4_ft_img', '506'),
(2015, 521, '_feature_rp_4_ft_img', 'field_6399837c61678'),
(2016, 521, 'feature_rp_4_ft_txt', 'Build hype '),
(2017, 521, '_feature_rp_4_ft_txt', 'field_6399839161679'),
(2018, 521, 'feature_rp_4_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(2019, 521, '_feature_rp_4_ft_subtxt', 'field_6399839e6167a'),
(2020, 521, 'feature_rp_5_ft_img', '506'),
(2021, 521, '_feature_rp_5_ft_img', 'field_6399837c61678');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2022, 521, 'feature_rp_5_ft_txt', 'Build hype '),
(2023, 521, '_feature_rp_5_ft_txt', 'field_6399839161679'),
(2024, 521, 'feature_rp_5_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(2025, 521, '_feature_rp_5_ft_subtxt', 'field_6399839e6167a'),
(2026, 521, 'feature_rp', '6'),
(2027, 521, '_feature_rp', 'field_6399836961677'),
(2028, 521, 'cus_status', '1'),
(2029, 521, '_cus_status', 'field_63998b176febb'),
(2030, 521, 'cus_title', 'Customize Your Header Without Compromise'),
(2031, 521, '_cus_title', 'field_63998c8e6febd'),
(2032, 521, 'cus_sub', 'Tired of the same old three header styles that you get from other themes? Unlock limitless possibilities with our drag and drop header builde'),
(2033, 521, '_cus_sub', 'field_63998c916febe'),
(2034, 521, 'cus_left', '3'),
(2035, 521, '_cus_left', 'field_63998b2c6febc'),
(2036, 521, 'cus_right', '3'),
(2037, 521, '_cus_right', 'field_63998cf395e18'),
(2038, 521, 'cus_center', '506'),
(2039, 521, '_cus_center', 'field_63998d0695e1c'),
(2040, 521, 'cus_left_0_cus_txt', 'Drag & Drop'),
(2041, 521, '_cus_left_0_cus_txt', 'field_63998cd7cd25e'),
(2042, 521, 'cus_left_0_cus_subtxt', 'Place items exactly where you want in the header.'),
(2043, 521, '_cus_left_0_cus_subtxt', 'field_63998ce3cd25f'),
(2044, 521, 'cus_left_1_cus_txt', 'Any Header Style'),
(2045, 521, '_cus_left_1_cus_txt', 'field_63998cd7cd25e'),
(2046, 521, 'cus_left_1_cus_subtxt', 'Change font colors, backgrounds, and base height. Make it sticky or transparent. It’s your header, your way!'),
(2047, 521, '_cus_left_1_cus_subtxt', 'field_63998ce3cd25f'),
(2048, 521, 'cus_left_2_cus_txt', 'Drag & Drop'),
(2049, 521, '_cus_left_2_cus_txt', 'field_63998cd7cd25e'),
(2050, 521, 'cus_left_2_cus_subtxt', 'Place items exactly where you want in the header.'),
(2051, 521, '_cus_left_2_cus_subtxt', 'field_63998ce3cd25f'),
(2052, 521, 'cus_right_0_cus_txt', 'Any Header Style'),
(2053, 521, '_cus_right_0_cus_txt', 'field_63998cf395e19'),
(2054, 521, 'cus_right_0_cus_subtxt', 'Place items exactly where you want in the header.'),
(2055, 521, '_cus_right_0_cus_subtxt', 'field_63998cf395e1a'),
(2056, 521, 'cus_right_1_cus_txt', 'Any Header Style'),
(2057, 521, '_cus_right_1_cus_txt', 'field_63998cf395e19'),
(2058, 521, 'cus_right_1_cus_subtxt', 'Place items exactly where you want in the header.'),
(2059, 521, '_cus_right_1_cus_subtxt', 'field_63998cf395e1a'),
(2060, 521, 'cus_right_2_cus_txt', 'Any Header Style'),
(2061, 521, '_cus_right_2_cus_txt', 'field_63998cf395e19'),
(2062, 521, 'cus_right_2_cus_subtxt', 'Place items exactly where you want in the header.'),
(2063, 521, '_cus_right_2_cus_subtxt', 'field_63998cf395e1a'),
(2064, 431, 'qa_status', '1'),
(2065, 431, '_qa_status', 'field_6399959d38404'),
(2066, 431, 'qa_title', 'Frequently Asked Questions'),
(2067, 431, '_qa_title', 'field_639995ae38405'),
(2068, 431, 'qa_subtitle', 'We are always happy to help, if you can’t find the information you are looking for please don’t hesitate to reach out to us!'),
(2069, 431, '_qa_subtitle', 'field_639995c338406'),
(2070, 431, 'qa_rp_0_question', 'Is Kadence Blocks free?'),
(2071, 431, '_qa_rp_0_question', 'field_639995f338408'),
(2072, 431, 'qa_rp_0_answer', 'Kadence Blocks is free and open-source, you can use it however you want.  We also offer a Paid Pro Extension which provides added features, extra blocks, and extra prebuilt content. You can view'),
(2073, 431, '_qa_rp_0_answer', 'field_639995fc38409'),
(2074, 431, 'qa_rp_1_question', 'Is Kadence Blocks free?'),
(2075, 431, '_qa_rp_1_question', 'field_639995f338408'),
(2076, 431, 'qa_rp_1_answer', 'Kadence Blocks was built with intelligent code that make it as lightweight as possible. This means it only loads what you are using on a page by page basis.  For example, if you have a page where you are not using any Kadence Block then nothing from Kadence Blocks will load. Or if you have a page where you are only using our Advanced Button block then only the advanced button block styles will load.  The intelligent load means that if you just want to use one block from our plugin you don’t have to load all the other css and javascript as extras.'),
(2077, 431, '_qa_rp_1_answer', 'field_639995fc38409'),
(2078, 431, 'qa_rp_2_question', 'Is Kadence Blocks free?'),
(2079, 431, '_qa_rp_2_question', 'field_639995f338408'),
(2080, 431, 'qa_rp_2_answer', 'Kadence Blocks was built with intelligent code that make it as lightweight as possible. This means it only loads what you are using on a page by page basis.  For example, if you have a page where you are not using any Kadence Block then nothing from Kadence Blocks will load. Or if you have a page where you are only using our Advanced Button block then only the advanced button block styles will load.  The intelligent load means that if you just want to use one block from our plugin you don’t have to load all the other css and javascript as extras.'),
(2081, 431, '_qa_rp_2_answer', 'field_639995fc38409'),
(2082, 431, 'qa_rp', '3'),
(2083, 431, '_qa_rp', 'field_639995cc38407'),
(2084, 529, 'bio_bkg', 'bkgImage'),
(2085, 529, '_bio_bkg', 'field_6389addd51b11'),
(2086, 529, 'bio_oBkg', '0'),
(2087, 529, '_bio_oBkg', 'field_638efa53fa04d'),
(2088, 529, 'bio_bkgImage', ''),
(2089, 529, '_bio_bkgImage', 'field_6389b8f0f4259'),
(2090, 529, 'banner_status', '1'),
(2091, 529, '_banner_status', 'field_63997b7a7a734'),
(2092, 529, 'banner_title', 'Create Stunning Websites With Ease, No Code Required'),
(2093, 529, '_banner_title', 'field_63997b9b7a735'),
(2094, 529, 'banner_subtitle', 'Join over 100k users that are building fast-loading websites with ease using Kadence Blocks! Get professional-looking results without any coding knowledge.'),
(2095, 529, '_banner_subtitle', 'field_63997bae7a736'),
(2096, 529, 'banner_img', '378'),
(2097, 529, '_banner_img', 'field_63997c3acfbf1'),
(2098, 529, 'feature_status', '1'),
(2099, 529, '_feature_status', 'field_639982c22a57f'),
(2100, 529, 'feature_subtitle', 'WHERE CAMPAIGNS BECOME MARKETING MACHINES'),
(2101, 529, '_feature_subtitle', 'field_639982de2a582'),
(2102, 529, 'feature_title', 'What are you looking to achieve with smart links?'),
(2103, 529, '_feature_title', 'field_639982da2a581'),
(2104, 529, 'feature_rp_0_ft_img', '506'),
(2105, 529, '_feature_rp_0_ft_img', 'field_6399837c61678'),
(2106, 529, 'feature_rp_0_ft_txt', 'Build hype '),
(2107, 529, '_feature_rp_0_ft_txt', 'field_6399839161679'),
(2108, 529, 'feature_rp_0_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(2109, 529, '_feature_rp_0_ft_subtxt', 'field_6399839e6167a'),
(2110, 529, 'feature_rp_1_ft_img', '506'),
(2111, 529, '_feature_rp_1_ft_img', 'field_6399837c61678'),
(2112, 529, 'feature_rp_1_ft_txt', 'Build hype '),
(2113, 529, '_feature_rp_1_ft_txt', 'field_6399839161679'),
(2114, 529, 'feature_rp_1_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(2115, 529, '_feature_rp_1_ft_subtxt', 'field_6399839e6167a'),
(2116, 529, 'feature_rp_2_ft_img', '506'),
(2117, 529, '_feature_rp_2_ft_img', 'field_6399837c61678'),
(2118, 529, 'feature_rp_2_ft_txt', 'Build hype '),
(2119, 529, '_feature_rp_2_ft_txt', 'field_6399839161679'),
(2120, 529, 'feature_rp_2_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(2121, 529, '_feature_rp_2_ft_subtxt', 'field_6399839e6167a'),
(2122, 529, 'feature_rp_3_ft_img', '506'),
(2123, 529, '_feature_rp_3_ft_img', 'field_6399837c61678'),
(2124, 529, 'feature_rp_3_ft_txt', 'Build hype '),
(2125, 529, '_feature_rp_3_ft_txt', 'field_6399839161679'),
(2126, 529, 'feature_rp_3_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(2127, 529, '_feature_rp_3_ft_subtxt', 'field_6399839e6167a'),
(2128, 529, 'feature_rp_4_ft_img', '506'),
(2129, 529, '_feature_rp_4_ft_img', 'field_6399837c61678'),
(2130, 529, 'feature_rp_4_ft_txt', 'Build hype '),
(2131, 529, '_feature_rp_4_ft_txt', 'field_6399839161679'),
(2132, 529, 'feature_rp_4_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(2133, 529, '_feature_rp_4_ft_subtxt', 'field_6399839e6167a'),
(2134, 529, 'feature_rp_5_ft_img', '506'),
(2135, 529, '_feature_rp_5_ft_img', 'field_6399837c61678'),
(2136, 529, 'feature_rp_5_ft_txt', 'Build hype '),
(2137, 529, '_feature_rp_5_ft_txt', 'field_6399839161679'),
(2138, 529, 'feature_rp_5_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(2139, 529, '_feature_rp_5_ft_subtxt', 'field_6399839e6167a'),
(2140, 529, 'feature_rp', '6'),
(2141, 529, '_feature_rp', 'field_6399836961677'),
(2142, 529, 'cus_status', '1'),
(2143, 529, '_cus_status', 'field_63998b176febb'),
(2144, 529, 'cus_title', 'Customize Your Header Without Compromise'),
(2145, 529, '_cus_title', 'field_63998c8e6febd'),
(2146, 529, 'cus_sub', 'Tired of the same old three header styles that you get from other themes? Unlock limitless possibilities with our drag and drop header builde'),
(2147, 529, '_cus_sub', 'field_63998c916febe'),
(2148, 529, 'cus_left', '3'),
(2149, 529, '_cus_left', 'field_63998b2c6febc'),
(2150, 529, 'cus_right', '3'),
(2151, 529, '_cus_right', 'field_63998cf395e18'),
(2152, 529, 'cus_center', '506'),
(2153, 529, '_cus_center', 'field_63998d0695e1c'),
(2154, 529, 'cus_left_0_cus_txt', 'Drag & Drop'),
(2155, 529, '_cus_left_0_cus_txt', 'field_63998cd7cd25e'),
(2156, 529, 'cus_left_0_cus_subtxt', 'Place items exactly where you want in the header.'),
(2157, 529, '_cus_left_0_cus_subtxt', 'field_63998ce3cd25f'),
(2158, 529, 'cus_left_1_cus_txt', 'Any Header Style'),
(2159, 529, '_cus_left_1_cus_txt', 'field_63998cd7cd25e'),
(2160, 529, 'cus_left_1_cus_subtxt', 'Change font colors, backgrounds, and base height. Make it sticky or transparent. It’s your header, your way!'),
(2161, 529, '_cus_left_1_cus_subtxt', 'field_63998ce3cd25f'),
(2162, 529, 'cus_left_2_cus_txt', 'Drag & Drop'),
(2163, 529, '_cus_left_2_cus_txt', 'field_63998cd7cd25e'),
(2164, 529, 'cus_left_2_cus_subtxt', 'Place items exactly where you want in the header.'),
(2165, 529, '_cus_left_2_cus_subtxt', 'field_63998ce3cd25f'),
(2166, 529, 'cus_right_0_cus_txt', 'Any Header Style'),
(2167, 529, '_cus_right_0_cus_txt', 'field_63998cf395e19'),
(2168, 529, 'cus_right_0_cus_subtxt', 'Place items exactly where you want in the header.'),
(2169, 529, '_cus_right_0_cus_subtxt', 'field_63998cf395e1a'),
(2170, 529, 'cus_right_1_cus_txt', 'Any Header Style'),
(2171, 529, '_cus_right_1_cus_txt', 'field_63998cf395e19'),
(2172, 529, 'cus_right_1_cus_subtxt', 'Place items exactly where you want in the header.'),
(2173, 529, '_cus_right_1_cus_subtxt', 'field_63998cf395e1a'),
(2174, 529, 'cus_right_2_cus_txt', 'Any Header Style'),
(2175, 529, '_cus_right_2_cus_txt', 'field_63998cf395e19'),
(2176, 529, 'cus_right_2_cus_subtxt', 'Place items exactly where you want in the header.'),
(2177, 529, '_cus_right_2_cus_subtxt', 'field_63998cf395e1a'),
(2178, 529, 'qa_status', '1'),
(2179, 529, '_qa_status', 'field_6399959d38404'),
(2180, 529, 'qa_title', 'Frequently Asked Questions'),
(2181, 529, '_qa_title', 'field_639995ae38405'),
(2182, 529, 'qa_subtitle', 'We are always happy to help, if you can’t find the information you are looking for please don’t hesitate to reach out to us!'),
(2183, 529, '_qa_subtitle', 'field_639995c338406'),
(2184, 529, 'qa_rp_0_question', ''),
(2185, 529, '_qa_rp_0_question', 'field_639995f338408'),
(2186, 529, 'qa_rp_0_answer', 'Kadence Blocks is free and open-source, you can use it however you want.  We also offer a Paid Pro Extension which provides added features, extra blocks, and extra prebuilt content. You can view'),
(2187, 529, '_qa_rp_0_answer', 'field_639995fc38409'),
(2188, 529, 'qa_rp_1_question', ''),
(2189, 529, '_qa_rp_1_question', 'field_639995f338408'),
(2190, 529, 'qa_rp_1_answer', 'Kadence Blocks was built with intelligent code that make it as lightweight as possible. This means it only loads what you are using on a page by page basis.  For example, if you have a page where you are not using any Kadence Block then nothing from Kadence Blocks will load. Or if you have a page where you are only using our Advanced Button block then only the advanced button block styles will load.  The intelligent load means that if you just want to use one block from our plugin you don’t have to load all the other css and javascript as extras.'),
(2191, 529, '_qa_rp_1_answer', 'field_639995fc38409'),
(2192, 529, 'qa_rp_2_question', ''),
(2193, 529, '_qa_rp_2_question', 'field_639995f338408'),
(2194, 529, 'qa_rp_2_answer', ''),
(2195, 529, '_qa_rp_2_answer', 'field_639995fc38409'),
(2196, 529, 'qa_rp', '3'),
(2197, 529, '_qa_rp', 'field_639995cc38407'),
(2198, 530, 'bio_bkg', 'bkgImage'),
(2199, 530, '_bio_bkg', 'field_6389addd51b11'),
(2200, 530, 'bio_oBkg', '0'),
(2201, 530, '_bio_oBkg', 'field_638efa53fa04d'),
(2202, 530, 'bio_bkgImage', ''),
(2203, 530, '_bio_bkgImage', 'field_6389b8f0f4259'),
(2204, 530, 'banner_status', '1'),
(2205, 530, '_banner_status', 'field_63997b7a7a734'),
(2206, 530, 'banner_title', 'Create Stunning Websites With Ease, No Code Required'),
(2207, 530, '_banner_title', 'field_63997b9b7a735'),
(2208, 530, 'banner_subtitle', 'Join over 100k users that are building fast-loading websites with ease using Kadence Blocks! Get professional-looking results without any coding knowledge.'),
(2209, 530, '_banner_subtitle', 'field_63997bae7a736'),
(2210, 530, 'banner_img', '378'),
(2211, 530, '_banner_img', 'field_63997c3acfbf1'),
(2212, 530, 'feature_status', '1'),
(2213, 530, '_feature_status', 'field_639982c22a57f'),
(2214, 530, 'feature_subtitle', 'WHERE CAMPAIGNS BECOME MARKETING MACHINES'),
(2215, 530, '_feature_subtitle', 'field_639982de2a582'),
(2216, 530, 'feature_title', 'What are you looking to achieve with smart links?'),
(2217, 530, '_feature_title', 'field_639982da2a581'),
(2218, 530, 'feature_rp_0_ft_img', '506'),
(2219, 530, '_feature_rp_0_ft_img', 'field_6399837c61678'),
(2220, 530, 'feature_rp_0_ft_txt', 'Build hype '),
(2221, 530, '_feature_rp_0_ft_txt', 'field_6399839161679'),
(2222, 530, 'feature_rp_0_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(2223, 530, '_feature_rp_0_ft_subtxt', 'field_6399839e6167a'),
(2224, 530, 'feature_rp_1_ft_img', '506'),
(2225, 530, '_feature_rp_1_ft_img', 'field_6399837c61678'),
(2226, 530, 'feature_rp_1_ft_txt', 'Build hype '),
(2227, 530, '_feature_rp_1_ft_txt', 'field_6399839161679'),
(2228, 530, 'feature_rp_1_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(2229, 530, '_feature_rp_1_ft_subtxt', 'field_6399839e6167a'),
(2230, 530, 'feature_rp_2_ft_img', '506'),
(2231, 530, '_feature_rp_2_ft_img', 'field_6399837c61678'),
(2232, 530, 'feature_rp_2_ft_txt', 'Build hype '),
(2233, 530, '_feature_rp_2_ft_txt', 'field_6399839161679'),
(2234, 530, 'feature_rp_2_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(2235, 530, '_feature_rp_2_ft_subtxt', 'field_6399839e6167a'),
(2236, 530, 'feature_rp_3_ft_img', '506'),
(2237, 530, '_feature_rp_3_ft_img', 'field_6399837c61678'),
(2238, 530, 'feature_rp_3_ft_txt', 'Build hype '),
(2239, 530, '_feature_rp_3_ft_txt', 'field_6399839161679'),
(2240, 530, 'feature_rp_3_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(2241, 530, '_feature_rp_3_ft_subtxt', 'field_6399839e6167a'),
(2242, 530, 'feature_rp_4_ft_img', '506'),
(2243, 530, '_feature_rp_4_ft_img', 'field_6399837c61678'),
(2244, 530, 'feature_rp_4_ft_txt', 'Build hype '),
(2245, 530, '_feature_rp_4_ft_txt', 'field_6399839161679'),
(2246, 530, 'feature_rp_4_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(2247, 530, '_feature_rp_4_ft_subtxt', 'field_6399839e6167a'),
(2248, 530, 'feature_rp_5_ft_img', '506'),
(2249, 530, '_feature_rp_5_ft_img', 'field_6399837c61678'),
(2250, 530, 'feature_rp_5_ft_txt', 'Build hype '),
(2251, 530, '_feature_rp_5_ft_txt', 'field_6399839161679'),
(2252, 530, 'feature_rp_5_ft_subtxt', 'Run a pre-save campaign to make a big splash on release day.'),
(2253, 530, '_feature_rp_5_ft_subtxt', 'field_6399839e6167a'),
(2254, 530, 'feature_rp', '6'),
(2255, 530, '_feature_rp', 'field_6399836961677'),
(2256, 530, 'cus_status', '1'),
(2257, 530, '_cus_status', 'field_63998b176febb'),
(2258, 530, 'cus_title', 'Customize Your Header Without Compromise'),
(2259, 530, '_cus_title', 'field_63998c8e6febd'),
(2260, 530, 'cus_sub', 'Tired of the same old three header styles that you get from other themes? Unlock limitless possibilities with our drag and drop header builde'),
(2261, 530, '_cus_sub', 'field_63998c916febe'),
(2262, 530, 'cus_left', '3'),
(2263, 530, '_cus_left', 'field_63998b2c6febc'),
(2264, 530, 'cus_right', '3'),
(2265, 530, '_cus_right', 'field_63998cf395e18'),
(2266, 530, 'cus_center', '506'),
(2267, 530, '_cus_center', 'field_63998d0695e1c'),
(2268, 530, 'cus_left_0_cus_txt', 'Drag & Drop'),
(2269, 530, '_cus_left_0_cus_txt', 'field_63998cd7cd25e'),
(2270, 530, 'cus_left_0_cus_subtxt', 'Place items exactly where you want in the header.'),
(2271, 530, '_cus_left_0_cus_subtxt', 'field_63998ce3cd25f'),
(2272, 530, 'cus_left_1_cus_txt', 'Any Header Style'),
(2273, 530, '_cus_left_1_cus_txt', 'field_63998cd7cd25e'),
(2274, 530, 'cus_left_1_cus_subtxt', 'Change font colors, backgrounds, and base height. Make it sticky or transparent. It’s your header, your way!'),
(2275, 530, '_cus_left_1_cus_subtxt', 'field_63998ce3cd25f'),
(2276, 530, 'cus_left_2_cus_txt', 'Drag & Drop'),
(2277, 530, '_cus_left_2_cus_txt', 'field_63998cd7cd25e'),
(2278, 530, 'cus_left_2_cus_subtxt', 'Place items exactly where you want in the header.'),
(2279, 530, '_cus_left_2_cus_subtxt', 'field_63998ce3cd25f'),
(2280, 530, 'cus_right_0_cus_txt', 'Any Header Style'),
(2281, 530, '_cus_right_0_cus_txt', 'field_63998cf395e19'),
(2282, 530, 'cus_right_0_cus_subtxt', 'Place items exactly where you want in the header.'),
(2283, 530, '_cus_right_0_cus_subtxt', 'field_63998cf395e1a'),
(2284, 530, 'cus_right_1_cus_txt', 'Any Header Style'),
(2285, 530, '_cus_right_1_cus_txt', 'field_63998cf395e19'),
(2286, 530, 'cus_right_1_cus_subtxt', 'Place items exactly where you want in the header.'),
(2287, 530, '_cus_right_1_cus_subtxt', 'field_63998cf395e1a'),
(2288, 530, 'cus_right_2_cus_txt', 'Any Header Style'),
(2289, 530, '_cus_right_2_cus_txt', 'field_63998cf395e19'),
(2290, 530, 'cus_right_2_cus_subtxt', 'Place items exactly where you want in the header.'),
(2291, 530, '_cus_right_2_cus_subtxt', 'field_63998cf395e1a'),
(2292, 530, 'qa_status', '1'),
(2293, 530, '_qa_status', 'field_6399959d38404'),
(2294, 530, 'qa_title', 'Frequently Asked Questions'),
(2295, 530, '_qa_title', 'field_639995ae38405'),
(2296, 530, 'qa_subtitle', 'We are always happy to help, if you can’t find the information you are looking for please don’t hesitate to reach out to us!'),
(2297, 530, '_qa_subtitle', 'field_639995c338406'),
(2298, 530, 'qa_rp_0_question', 'Is Kadence Blocks free?'),
(2299, 530, '_qa_rp_0_question', 'field_639995f338408'),
(2300, 530, 'qa_rp_0_answer', 'Kadence Blocks is free and open-source, you can use it however you want.  We also offer a Paid Pro Extension which provides added features, extra blocks, and extra prebuilt content. You can view'),
(2301, 530, '_qa_rp_0_answer', 'field_639995fc38409'),
(2302, 530, 'qa_rp_1_question', 'Is Kadence Blocks free?'),
(2303, 530, '_qa_rp_1_question', 'field_639995f338408'),
(2304, 530, 'qa_rp_1_answer', 'Kadence Blocks was built with intelligent code that make it as lightweight as possible. This means it only loads what you are using on a page by page basis.  For example, if you have a page where you are not using any Kadence Block then nothing from Kadence Blocks will load. Or if you have a page where you are only using our Advanced Button block then only the advanced button block styles will load.  The intelligent load means that if you just want to use one block from our plugin you don’t have to load all the other css and javascript as extras.'),
(2305, 530, '_qa_rp_1_answer', 'field_639995fc38409'),
(2306, 530, 'qa_rp_2_question', 'Is Kadence Blocks free?'),
(2307, 530, '_qa_rp_2_question', 'field_639995f338408'),
(2308, 530, 'qa_rp_2_answer', 'Kadence Blocks was built with intelligent code that make it as lightweight as possible. This means it only loads what you are using on a page by page basis.  For example, if you have a page where you are not using any Kadence Block then nothing from Kadence Blocks will load. Or if you have a page where you are only using our Advanced Button block then only the advanced button block styles will load.  The intelligent load means that if you just want to use one block from our plugin you don’t have to load all the other css and javascript as extras.'),
(2309, 530, '_qa_rp_2_answer', 'field_639995fc38409'),
(2310, 530, 'qa_rp', '3'),
(2311, 530, '_qa_rp', 'field_639995cc38407'),
(2318, 532, '_wp_attached_file', '2022/12/favicon.svg'),
(2319, 532, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:4592;}'),
(2320, 452, 'post_views_count', '0'),
(2321, 62, 'post_views_count', '0'),
(2322, 88, 'post_views_count', '0'),
(2323, 83, 'post_views_count', '0'),
(2324, 1, 'post_views_count', '0'),
(2325, 533, '_edit_lock', '1671091086:1'),
(2327, 533, '_edit_last', '1'),
(2329, 535, '_wp_attached_file', '2022/12/Blog-hero.png'),
(2330, 535, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:795;s:6:\"height\";i:442;s:4:\"file\";s:21:\"2022/12/Blog-hero.png\";s:8:\"filesize\";i:110944;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"Blog-hero-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9058;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2331, 533, '_thumbnail_id', '535'),
(2333, 533, 'post_views_count', '0'),
(2334, 537, 'bio_bkg', 'bkgImage'),
(2335, 537, '_bio_bkg', 'field_6389addd51b11'),
(2336, 537, 'bio_oBkg', '1'),
(2337, 537, '_bio_oBkg', 'field_638efa53fa04d'),
(2338, 537, 'bio_bkgImage', '365'),
(2339, 537, '_bio_bkgImage', 'field_6389b8f0f4259'),
(2340, 538, '_edit_lock', '1671091081:1'),
(2341, 539, '_wp_attached_file', '2022/12/Linkfire-time-saving-tips-automations-for-music-marketers-Hero.png'),
(2342, 539, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:740;s:6:\"height\";i:395;s:4:\"file\";s:74:\"2022/12/Linkfire-time-saving-tips-automations-for-music-marketers-Hero.png\";s:8:\"filesize\";i:184834;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:74:\"Linkfire-time-saving-tips-automations-for-music-marketers-Hero-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16617;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2344, 538, '_thumbnail_id', '539'),
(2345, 538, '_edit_last', '1'),
(2347, 538, 'post_views_count', '5'),
(2349, 538, '_ez-toc-disabled', ''),
(2350, 538, '_ez-toc-insert', ''),
(2351, 538, '_ez-toc-heading-levels', 'a:0:{}'),
(2352, 538, '_ez-toc-alttext', ''),
(2353, 538, '_ez-toc-exclude', ''),
(2354, 36, '_edit_last', '1'),
(2356, 36, 'post_views_count', '0'),
(2357, 541, '_edit_lock', '1671091076:1'),
(2358, 542, '_wp_attached_file', '2022/12/kadence-200k-1024x535-1.webp'),
(2359, 542, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:535;s:4:\"file\";s:36:\"2022/12/kadence-200k-1024x535-1.webp\";s:8:\"filesize\";i:17848;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:36:\"kadence-200k-1024x535-1-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";s:8:\"filesize\";i:3742;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2361, 541, '_thumbnail_id', '309'),
(2362, 541, '_edit_last', '1'),
(2363, 541, 'post_views_count', '20'),
(2365, 541, '_ez-toc-disabled', ''),
(2366, 541, '_ez-toc-insert', ''),
(2367, 541, '_ez-toc-heading-levels', 'a:0:{}'),
(2368, 541, '_ez-toc-alttext', ''),
(2369, 541, '_ez-toc-exclude', ''),
(2372, 545, '_edit_lock', '1671090311:1'),
(2374, 545, '_edit_last', '1'),
(2376, 545, '_ez-toc-disabled', ''),
(2377, 545, '_ez-toc-insert', ''),
(2378, 545, '_ez-toc-heading-levels', 'a:0:{}'),
(2379, 545, '_ez-toc-alttext', ''),
(2380, 545, '_ez-toc-exclude', ''),
(2381, 547, '_menu_item_type', 'post_type'),
(2382, 547, '_menu_item_menu_item_parent', '559'),
(2383, 547, '_menu_item_object_id', '545'),
(2384, 547, '_menu_item_object', 'post'),
(2385, 547, '_menu_item_target', ''),
(2386, 547, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2387, 547, '_menu_item_xfn', ''),
(2388, 547, '_menu_item_url', ''),
(2390, 548, '_edit_lock', '1671090356:1'),
(2392, 548, '_edit_last', '1'),
(2394, 548, '_ez-toc-disabled', ''),
(2395, 548, '_ez-toc-insert', ''),
(2396, 548, '_ez-toc-heading-levels', 'a:0:{}'),
(2397, 548, '_ez-toc-alttext', ''),
(2398, 548, '_ez-toc-exclude', ''),
(2399, 550, '_edit_lock', '1671090392:1'),
(2401, 550, '_edit_last', '1'),
(2403, 550, '_ez-toc-disabled', ''),
(2404, 550, '_ez-toc-insert', ''),
(2405, 550, '_ez-toc-heading-levels', 'a:0:{}'),
(2406, 550, '_ez-toc-alttext', ''),
(2407, 550, '_ez-toc-exclude', ''),
(2408, 552, '_edit_lock', '1671090899:1'),
(2410, 552, '_edit_last', '1'),
(2412, 552, '_ez-toc-disabled', ''),
(2413, 552, '_ez-toc-insert', ''),
(2414, 552, '_ez-toc-heading-levels', 'a:0:{}'),
(2415, 552, '_ez-toc-alttext', ''),
(2416, 552, '_ez-toc-exclude', ''),
(2417, 554, '_menu_item_type', 'post_type'),
(2418, 554, '_menu_item_menu_item_parent', '559'),
(2419, 554, '_menu_item_object_id', '552'),
(2420, 554, '_menu_item_object', 'post'),
(2421, 554, '_menu_item_target', ''),
(2422, 554, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2423, 554, '_menu_item_xfn', ''),
(2424, 554, '_menu_item_url', ''),
(2426, 555, '_menu_item_type', 'post_type'),
(2427, 555, '_menu_item_menu_item_parent', '559'),
(2428, 555, '_menu_item_object_id', '550'),
(2429, 555, '_menu_item_object', 'post'),
(2430, 555, '_menu_item_target', ''),
(2431, 555, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2432, 555, '_menu_item_xfn', ''),
(2433, 555, '_menu_item_url', ''),
(2435, 556, '_menu_item_type', 'post_type'),
(2436, 556, '_menu_item_menu_item_parent', '559'),
(2437, 556, '_menu_item_object_id', '548'),
(2438, 556, '_menu_item_object', 'post'),
(2439, 556, '_menu_item_target', ''),
(2440, 556, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2441, 556, '_menu_item_xfn', ''),
(2442, 556, '_menu_item_url', ''),
(2444, 557, '_edit_lock', '1671090642:1'),
(2446, 557, '_edit_last', '1'),
(2448, 557, '_ez-toc-disabled', ''),
(2449, 557, '_ez-toc-insert', ''),
(2450, 557, '_ez-toc-heading-levels', 'a:0:{}'),
(2451, 557, '_ez-toc-alttext', ''),
(2452, 557, '_ez-toc-exclude', ''),
(2453, 559, '_menu_item_type', 'post_type'),
(2454, 559, '_menu_item_menu_item_parent', '0'),
(2455, 559, '_menu_item_object_id', '557'),
(2456, 559, '_menu_item_object', 'post'),
(2457, 559, '_menu_item_target', ''),
(2458, 559, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2459, 559, '_menu_item_xfn', ''),
(2460, 559, '_menu_item_url', ''),
(2462, 560, '_menu_item_type', 'post_type'),
(2463, 560, '_menu_item_menu_item_parent', '0'),
(2464, 560, '_menu_item_object_id', '552'),
(2465, 560, '_menu_item_object', 'post'),
(2466, 560, '_menu_item_target', ''),
(2467, 560, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2468, 560, '_menu_item_xfn', ''),
(2469, 560, '_menu_item_url', ''),
(2471, 561, '_menu_item_type', 'post_type'),
(2472, 561, '_menu_item_menu_item_parent', '560'),
(2473, 561, '_menu_item_object_id', '550'),
(2474, 561, '_menu_item_object', 'post'),
(2475, 561, '_menu_item_target', ''),
(2476, 561, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2477, 561, '_menu_item_xfn', ''),
(2478, 561, '_menu_item_url', ''),
(2480, 562, '_menu_item_type', 'post_type'),
(2481, 562, '_menu_item_menu_item_parent', '560'),
(2482, 562, '_menu_item_object_id', '548'),
(2483, 562, '_menu_item_object', 'post'),
(2484, 562, '_menu_item_target', ''),
(2485, 562, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2486, 562, '_menu_item_xfn', ''),
(2487, 562, '_menu_item_url', ''),
(2489, 545, 'post_views_count', '22'),
(2490, 557, 'post_views_count', '2'),
(2491, 552, 'post_views_count', '8'),
(2492, 550, 'post_views_count', '6'),
(2493, 548, 'post_views_count', '12'),
(2498, 88, '_edit_last', '1'),
(2500, 83, '_edit_last', '1'),
(2503, 1, '_edit_last', '1'),
(2505, 563, '_menu_item_type', 'taxonomy'),
(2506, 563, '_menu_item_menu_item_parent', '0'),
(2507, 563, '_menu_item_object_id', '6'),
(2508, 563, '_menu_item_object', 'category'),
(2509, 563, '_menu_item_target', ''),
(2510, 563, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2511, 563, '_menu_item_xfn', ''),
(2512, 563, '_menu_item_url', ''),
(2513, 563, '_menu_item_orphaned', '1671092338'),
(2514, 564, '_menu_item_type', 'taxonomy'),
(2515, 564, '_menu_item_menu_item_parent', '0'),
(2516, 564, '_menu_item_object_id', '6'),
(2517, 564, '_menu_item_object', 'category'),
(2518, 564, '_menu_item_target', ''),
(2519, 564, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2520, 564, '_menu_item_xfn', ''),
(2521, 564, '_menu_item_url', ''),
(2523, 433, '_wp_old_date', '2022-12-14'),
(2525, 457, '_wp_old_date', '2022-12-14'),
(2526, 458, '_wp_old_date', '2022-12-14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-12-01 02:44:56', '2022-11-30 19:44:56', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:acf/testimonial {\n    \"id\": \"block_638833df22d18\",\n    \"name\": \"acf\\/testimonial\",\n    \"data\": {\n        \"author\": \"This is Do Xuan Toan\",\n        \"_author\": \"field_6388332af7587\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'Chào tất cả mọi người!', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2022-12-15 14:58:30', '2022-12-15 07:58:30', '', 0, 'http://biolink.local/?p=1', 0, 'post', '', 1),
(6, 2, '2022-12-01 07:59:46', '2022-12-01 07:59:46', '<!-- wp:paragraph -->\n<p>This is a test</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Toan Tw', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2022-12-01 07:59:46', '2022-12-01 07:59:46', '', 0, 'http://biolink.local/?p=6', 0, 'post', '', 0),
(7, 2, '2022-12-01 04:05:42', '2022-12-01 04:05:42', '<!-- wp:paragraph -->\n<p>This is a test</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Toan Tw', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2022-12-01 04:05:42', '2022-12-01 04:05:42', '', 6, 'http://biolink.local/?p=7', 0, 'revision', '', 0),
(8, 2, '2022-12-01 04:13:42', '2022-12-01 04:13:42', '<!-- wp:paragraph -->\n<p>This is a test</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Toan Tw', '', 'inherit', 'closed', 'closed', '', '6-autosave-v1', '', '', '2022-12-01 04:13:42', '2022-12-01 04:13:42', '', 6, 'http://biolink.local/?p=8', 0, 'revision', '', 0),
(10, 1, '2022-12-01 04:24:20', '0000-00-00 00:00:00', '{\"genesis-custom-blocks\\/example-block\":{\"name\":\"example-block\",\"title\":\"Example Block\",\"icon\":\"genesis_custom_blocks\",\"category\":{\"slug\":\"text\",\"title\":\"Vu0103n bu1ea3n\",\"icon\":null},\"keywords\":[\"sample\",\"tutorial\",\"template\"],\"fields\":{\"title\":{\"name\":\"title\",\"label\":\"Title\",\"control\":\"text\",\"type\":\"string\",\"location\":\"editor\",\"order\":0,\"help\":\"The primary display text\",\"default\":\"\",\"placeholder\":\"\",\"maxlength\":null},\"description\":{\"name\":\"description\",\"label\":\"Description\",\"control\":\"textarea\",\"type\":\"string\",\"location\":\"editor\",\"order\":1,\"help\":\"\",\"default\":\"\",\"placeholder\":\"\",\"maxlength\":null,\"number_rows\":4},\"button-text\":{\"name\":\"button-text\",\"label\":\"Button Text\",\"control\":\"text\",\"type\":\"string\",\"location\":\"editor\",\"order\":2,\"help\":\"A Call-to-Action\",\"default\":\"\",\"placeholder\":\"\",\"maxlength\":null},\"button-link\":{\"name\":\"button-link\",\"label\":\"Button Link\",\"control\":\"url\",\"type\":\"string\",\"location\":\"editor\",\"order\":3,\"help\":\"The destination URL\",\"default\":\"\",\"placeholder\":\"\"}}}}', 'Example Block', '', 'draft', 'closed', 'closed', '', 'example-block', '', '', '2022-12-01 04:24:20', '0000-00-00 00:00:00', '', 0, 'http://biolink.local/?p=10', 0, 'genesis_custom_block', '', 0),
(15, 1, '2022-12-01 04:33:55', '2022-12-01 04:33:55', '{\"genesis-custom-blocks/kol\":{\"name\":\"kol\",\"title\":\"Kol\",\"excluded\":[],\"icon\":\"genesis_custom_blocks\",\"category\":{\"icon\":null,\"slug\":\"text\",\"title\":\"Text\"},\"keywords\":[],\"fields\":{\"new-field-2\":{\"location\":\"inspector\",\"width\":\"100\",\"help\":\"\",\"default\":\"\",\"placeholder\":\"\",\"maxlength\":\"\",\"name\":\"new-field-2\",\"label\":\"New Field 2\",\"order\":0,\"control\":\"text\",\"type\":\"string\"},\"new-field\":{\"location\":\"editor\",\"width\":\"100\",\"help\":\"\",\"default\":\"\",\"placeholder\":\"\",\"maxlength\":\"\",\"name\":\"new-field\",\"label\":\"New Field\",\"control\":\"text\",\"type\":\"string\",\"order\":1},\"new-field-1\":{\"location\":\"editor\",\"width\":\"100\",\"help\":\"\",\"default\":\"\",\"placeholder\":\"\",\"maxlength\":\"\",\"name\":\"new-field-1\",\"label\":\"New Field 1\",\"control\":\"text\",\"type\":\"string\",\"order\":2}}}}', 'Kol', '', 'publish', 'closed', 'closed', '', 'kol', '', '', '2022-12-01 04:41:34', '2022-12-01 04:41:34', '', 0, 'http://biolink.local/?post_type=genesis_custom_block&#038;p=15', 0, 'genesis_custom_block', '', 0),
(18, 1, '2022-12-01 04:53:18', '2022-12-01 04:53:18', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:5:\"block\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf/biolink-person\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'BioLink Layout 1', 'biolink-layout-1', 'publish', 'closed', 'closed', '', 'group_63883322c18ed', '', '', '2022-12-07 07:00:05', '2022-12-07 07:00:05', '', 0, 'http://biolink.local/?post_type=acf-field-group&#038;p=18', 0, 'acf-field-group', '', 0),
(19, 1, '2022-12-01 04:53:18', '2022-12-01 04:53:18', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:10:\"uploadedTo\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:3:\"0.1\";s:10:\"mime_types\";s:12:\"jpg,png,webp\";}', 'Author Image', 'bio1_img', 'publish', 'closed', 'closed', '', 'field_6388332af7587', '', '', '2022-12-07 06:53:50', '2022-12-07 06:53:50', '', 18, 'http://biolink.local/?post_type=acf-field&#038;p=19', 1, 'acf-field', '', 0),
(20, 1, '2022-12-01 04:56:15', '2022-12-01 04:56:15', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:acf/testimonial {\n    \"id\": \"block_638833df22d18\",\n    \"name\": \"acf\\/testimonial\",\n    \"data\": {\n        \"author\": \"This is Do Xuan Toan\",\n        \"_author\": \"field_6388332af7587\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-12-01 04:56:15', '2022-12-01 04:56:15', '', 1, 'http://biolink.local/?p=20', 0, 'revision', '', 0),
(36, 2, '2022-12-01 08:00:07', '2022-12-01 01:00:07', '', 't2', '', 'publish', 'open', 'open', '', 't2', '', '', '2022-12-15 14:58:25', '2022-12-15 07:58:25', '', 0, 'http://biolink.local/?p=36', 0, 'post', '', 0),
(37, 2, '2022-12-01 08:00:07', '2022-12-01 08:00:07', '', 't2', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2022-12-01 08:00:07', '2022-12-01 08:00:07', '', 36, 'http://biolink.local/?p=37', 0, 'revision', '', 0),
(41, 1, '2022-12-01 08:26:01', '2022-12-01 08:26:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:16:\"Official Website\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Author Name', 'bio1_name', 'publish', 'closed', 'closed', '', 'field_6388650b16b68', '', '', '2022-12-07 06:53:50', '2022-12-07 06:53:50', '', 18, 'http://biolink.local/?post_type=acf-field&#038;p=41', 2, 'acf-field', '', 0),
(42, 1, '2022-12-01 08:26:01', '2022-12-01 08:26:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'name', 'name', 'publish', 'closed', 'closed', '', 'field_6388651416b69', '', '', '2022-12-01 08:26:01', '2022-12-01 08:26:01', '', 41, 'http://biolink.local/?post_type=acf-field&p=42', 0, 'acf-field', '', 0),
(62, 4, '2022-12-07 04:25:00', '2022-12-06 21:25:00', '', 's', '', 'publish', 'open', 'open', '', 's', '', '', '2022-12-15 14:58:11', '2022-12-15 07:58:11', '', 0, 'http://biolink.local/?p=62', 0, 'post', '', 0),
(81, 4, '2022-12-02 04:52:56', '2022-12-02 04:52:56', '<!-- wp:paragraph -->s<!-- /wp:paragraph -->', 's', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2022-12-02 04:52:56', '2022-12-02 04:52:56', '', 62, 'http://biolink.local/?p=81', 0, 'revision', '', 0),
(83, 1, '2022-12-02 04:54:57', '2022-12-01 21:54:57', '', 'Tesst', '', 'publish', 'open', 'open', '', 'tesst', '', '', '2022-12-15 14:58:20', '2022-12-15 07:58:20', '', 0, 'http://biolink.local/?p=83', 0, 'post', '', 0),
(84, 1, '2022-12-02 04:54:57', '2022-12-02 04:54:57', '', 'Tesst', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2022-12-02 04:54:57', '2022-12-02 04:54:57', '', 83, 'http://biolink.local/?p=84', 0, 'revision', '', 0),
(88, 1, '2022-12-02 07:01:09', '2022-12-02 00:01:09', '<!-- wp:acf/testimonial {\n    \"id\": \"block_6389a2ad82330\",\n    \"name\": \"acf\\/testimonial\",\n    \"data\": {\n        \"author\": \"\",\n        \"_author\": \"field_6388332af7587\",\n        \"bio1\": \"\",\n        \"_bio1\": \"field_6388650b16b68\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'Testimonial', '', 'publish', 'open', 'open', '', 'testimonial', '', '', '2022-12-15 14:58:16', '2022-12-15 07:58:16', '', 0, 'http://biolink.local/?p=88', 0, 'post', '', 0),
(89, 1, '2022-12-02 07:01:09', '2022-12-02 07:01:09', '<!-- wp:acf/testimonial {\n    \"id\": \"block_6389a2ad82330\",\n    \"name\": \"acf\\/testimonial\",\n    \"data\": {\n        \"author\": \"\",\n        \"_author\": \"field_6388332af7587\",\n        \"bio1\": \"\",\n        \"_bio1\": \"field_6388650b16b68\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'Testimonial', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2022-12-02 07:01:09', '2022-12-02 07:01:09', '', 88, 'http://biolink.local/?p=89', 0, 'revision', '', 0),
(96, 1, '2022-12-02 08:06:18', '2022-12-02 08:06:18', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Settings Page', 'settings-page', 'publish', 'closed', 'closed', '', 'group_6389add458798', '', '', '2022-12-08 15:26:26', '2022-12-08 08:26:26', '', 0, 'http://biolink.local/?post_type=acf-field-group&#038;p=96', 0, 'acf-field-group', '', 0),
(97, 1, '2022-12-02 08:06:18', '2022-12-02 08:06:18', 'a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:8:\"bkgImage\";s:12:\"Ảnh nền\";s:8:\"bkgColor\";s:12:\"Màu sắc\";s:16:\"bkgGradientColor\";s:21:\"Màu sắc Gradient\";}s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:13:\"default_value\";s:0:\"\";s:6:\"layout\";s:8:\"vertical\";s:13:\"return_format\";s:5:\"value\";s:17:\"save_other_choice\";i:0;}', 'Kiểu Background', 'bio_bkg', 'publish', 'closed', 'closed', '', 'field_6389addd51b11', '', '', '2022-12-02 09:13:15', '2022-12-02 09:13:15', '', 96, 'http://biolink.local/?post_type=acf-field&#038;p=97', 0, 'acf-field', '', 0),
(98, 1, '2022-12-02 08:37:44', '2022-12-02 08:37:44', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_6389addd51b11\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"bkgImage\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:3:\"0.2\";s:10:\"mime_types\";s:0:\"\";}', 'Background Image', 'bio_bkgImage', 'publish', 'closed', 'closed', '', 'field_6389b8f0f4259', '', '', '2022-12-06 08:35:38', '2022-12-06 08:35:38', '', 96, 'http://biolink.local/?post_type=acf-field&#038;p=98', 2, 'acf-field', '', 0),
(99, 1, '2022-12-02 08:37:44', '2022-12-02 08:37:44', 'a:8:{s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_6389addd51b11\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"bkgColor\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:4:\"#fff\";s:14:\"enable_opacity\";i:0;s:13:\"return_format\";s:6:\"string\";}', 'Background Color', 'bio_bkgColor', 'publish', 'closed', 'closed', '', 'field_6389b937f425a', '', '', '2022-12-06 08:16:47', '2022-12-06 08:16:47', '', 96, 'http://biolink.local/?post_type=acf-field&#038;p=99', 3, 'acf-field', '', 0),
(109, 1, '2022-12-02 09:12:58', '2022-12-02 09:12:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_6389addd51b11\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"bkgGradientColor\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Background Gradient Color', 'bio_bkgGradientColor', 'publish', 'closed', 'closed', '', 'field_6389c18085b68', '', '', '2022-12-06 08:16:47', '2022-12-06 08:16:47', '', 96, 'http://biolink.local/?post_type=acf-field&#038;p=109', 4, 'acf-field', '', 0),
(132, 1, '2022-12-03 03:14:46', '2022-12-03 03:14:46', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Author', 'author_', 'publish', 'closed', 'closed', '', 'field_638abdfc464b2', '', '', '2022-12-03 03:14:46', '2022-12-03 03:14:46', '', 18, 'http://biolink.local/?post_type=acf-field&p=132', 0, 'acf-field', '', 0),
(133, 1, '2022-12-03 03:14:46', '2022-12-03 03:14:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:16:\"Official Website\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Desc', 'bio1_desc', 'publish', 'closed', 'closed', '', 'field_638abe5c464b3', '', '', '2022-12-07 06:53:50', '2022-12-07 06:53:50', '', 18, 'http://biolink.local/?post_type=acf-field&#038;p=133', 3, 'acf-field', '', 0),
(134, 1, '2022-12-03 03:14:46', '2022-12-03 03:14:46', 'a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:15:\"bio1StyleNormal\";s:6:\"Normal\";s:17:\"bio1StyleVertical\";s:8:\"vertical\";}s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:13:\"default_value\";s:0:\"\";s:6:\"layout\";s:8:\"vertical\";s:13:\"return_format\";s:5:\"value\";s:17:\"save_other_choice\";i:0;}', 'Author Style', 'bio1_author_style', 'publish', 'closed', 'closed', '', 'field_638abe69464b4', '', '', '2022-12-06 07:43:25', '2022-12-06 07:43:25', '', 18, 'http://biolink.local/?post_type=acf-field&#038;p=134', 6, 'acf-field', '', 0),
(157, 1, '2022-12-03 04:36:54', '2022-12-03 04:36:54', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_638ad2052f2c6', '', '', '2022-12-06 07:43:25', '2022-12-06 07:43:25', '', 18, 'http://biolink.local/?post_type=acf-field&#038;p=157', 7, 'acf-field', '', 0),
(158, 1, '2022-12-03 04:36:54', '2022-12-03 04:36:54', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:0:\"\";}', 'Link Author', 'bio1_rp', 'publish', 'closed', 'closed', '', 'field_638ad21e2f2c7', '', '', '2022-12-06 07:43:25', '2022-12-06 07:43:25', '', 18, 'http://biolink.local/?post_type=acf-field&#038;p=158', 9, 'acf-field', '', 0),
(159, 1, '2022-12-03 04:36:54', '2022-12-03 04:36:54', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:9:{s:6:\"bio1Fb\";s:8:\"Facebook\";s:7:\"bio1Ins\";s:9:\"Instagram\";s:6:\"bio1Yt\";s:7:\"Youtube\";s:10:\"bio1Tiktok\";s:6:\"Titkok\";s:10:\"bio1Shopee\";s:6:\"Shopee\";s:8:\"bio1Zalo\";s:4:\"Zalo\";s:11:\"bio1Twitter\";s:7:\"Twitter\";s:11:\"bio1Spotify\";s:7:\"Spotify\";s:8:\"bio1None\";s:11:\"Không icon\";}s:13:\"default_value\";s:8:\"Facebook\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Icon', 'bio1_rpIcon', 'publish', 'closed', 'closed', '', 'field_638ad2342f2c8', '', '', '2022-12-07 06:59:22', '2022-12-07 06:59:22', '', 158, 'http://biolink.local/?post_type=acf-field&#038;p=159', 0, 'acf-field', '', 0),
(161, 1, '2022-12-03 04:39:09', '2022-12-03 04:39:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:16:\"Official Website\";s:11:\"placeholder\";s:24:\"Tối đa 30 kí tự\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";i:30;}', 'Text', 'bio1_rpText', 'publish', 'closed', 'closed', '', 'field_638ad2a596f50', '', '', '2022-12-07 06:59:22', '2022-12-07 06:59:22', '', 158, 'http://biolink.local/?post_type=acf-field&#038;p=161', 1, 'acf-field', '', 0),
(162, 1, '2022-12-03 04:39:09', '2022-12-03 04:39:09', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link', 'bio1_rpLink', 'publish', 'closed', 'closed', '', 'field_638ad2c896f51', '', '', '2022-12-03 04:39:09', '2022-12-03 04:39:09', '', 158, 'http://biolink.local/?post_type=acf-field&p=162', 2, 'acf-field', '', 0),
(225, 4, '2022-12-05 10:09:44', '2022-12-05 10:09:44', '', 'avatar-gai-xinh-56 (1)', '', 'inherit', 'open', 'closed', '', 'avatar-gai-xinh-56-1', '', '', '2022-12-05 10:09:44', '2022-12-05 10:09:44', '', 0, 'http://biolink.local/wp-content/uploads/2022/12/avatar-gai-xinh-56-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(250, 1, '2022-12-06 04:19:23', '2022-12-06 04:19:23', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Homepage Setting', 'homepage-setting', 'publish', 'closed', 'closed', '', 'group_638ec0f559280', '', '', '2022-12-06 04:19:50', '2022-12-06 04:19:50', '', 0, 'http://biolink.local/?post_type=acf-field-group&#038;p=250', 0, 'acf-field-group', '', 0),
(255, 1, '2022-12-06 04:25:58', '2022-12-06 04:25:58', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:16;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Border', 'bio1_border', 'publish', 'closed', 'closed', '', 'field_638ec42d177f9', '', '', '2022-12-07 07:00:05', '2022-12-07 07:00:05', '', 18, 'http://biolink.local/?post_type=acf-field&#038;p=255', 8, 'acf-field', '', 0),
(263, 4, '2022-12-06 04:38:39', '2022-12-06 04:38:39', '', 'Playdisk Music Entertainment Logo', '', 'inherit', 'open', 'closed', '', 'playdisk-music-entertainment-logo', '', '', '2022-12-06 04:38:39', '2022-12-06 04:38:39', '', 0, 'http://biolink.local/wp-content/uploads/2022/12/Playdisk-Music-Entertainment-Logo.png', 0, 'attachment', 'image/png', 0),
(266, 4, '2022-12-06 04:39:23', '2022-12-06 04:39:23', '', 'background-images-for-login-page3bc68c53b0db224b', '', 'inherit', 'open', 'closed', '', 'background-images-for-login-page3bc68c53b0db224b', '', '', '2022-12-06 04:39:23', '2022-12-06 04:39:23', '', 0, 'http://biolink.local/wp-content/uploads/2022/12/background-images-for-login-page3bc68c53b0db224b.jpg', 0, 'attachment', 'image/jpeg', 0),
(291, 1, '2022-12-06 07:43:25', '2022-12-06 07:43:25', 'a:8:{s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:4:\"#000\";s:14:\"enable_opacity\";i:0;s:13:\"return_format\";s:6:\"string\";}', 'Color Author Name', 'bio1_nameColor', 'publish', 'closed', 'closed', '', 'field_638ef260ef69a', '', '', '2022-12-07 06:53:50', '2022-12-07 06:53:50', '', 18, 'http://biolink.local/?post_type=acf-field&#038;p=291', 4, 'acf-field', '', 0),
(292, 1, '2022-12-06 07:43:25', '2022-12-06 07:43:25', 'a:8:{s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:4:\"#000\";s:14:\"enable_opacity\";i:0;s:13:\"return_format\";s:6:\"string\";}', 'Color Desc', 'bio1_descColor', 'publish', 'closed', 'closed', '', 'field_638ef27fef69b', '', '', '2022-12-07 06:53:50', '2022-12-07 06:53:50', '', 18, 'http://biolink.local/?post_type=acf-field&#038;p=292', 5, 'acf-field', '', 0),
(296, 4, '2022-12-06 07:47:17', '2022-12-06 07:47:17', '', 'vien-uong-bo-sung-nmn-hm-medical-aishodo-nmn-18000-90-vien-kd', '', 'inherit', 'open', 'closed', '', 'vien-uong-bo-sung-nmn-hm-medical-aishodo-nmn-18000-90-vien-kd', '', '', '2022-12-06 07:47:17', '2022-12-06 07:47:17', '', 0, 'http://biolink.local/wp-content/uploads/2022/12/vien-uong-bo-sung-nmn-hm-medical-aishodo-nmn-18000-90-vien-kd.jpg', 0, 'attachment', 'image/jpeg', 0),
(304, 1, '2022-12-06 08:16:47', '2022-12-06 08:16:47', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Overlay Background', 'bio_oBkg', 'publish', 'closed', 'closed', '', 'field_638efa53fa04d', '', '', '2022-12-06 08:16:47', '2022-12-06 08:16:47', '', 96, 'http://biolink.local/?post_type=acf-field&p=304', 1, 'acf-field', '', 0),
(308, 4, '2022-12-06 08:33:41', '2022-12-06 08:33:41', '', 'hinh-nen-hotgirl-duyen-dang_125438813', '', 'inherit', 'open', 'closed', '', 'hinh-nen-hotgirl-duyen-dang_125438813', '', '', '2022-12-06 08:33:41', '2022-12-06 08:33:41', '', 0, 'http://biolink.local/wp-content/uploads/2022/12/hinh-nen-hotgirl-duyen-dang_125438813.jpg', 0, 'attachment', 'image/jpeg', 0),
(309, 4, '2022-12-06 08:36:35', '2022-12-06 08:36:35', '', 'hinh-nen-hotgirl-duyen-dang_125438813 (1)', '', 'inherit', 'open', 'closed', '', 'hinh-nen-hotgirl-duyen-dang_125438813-1', '', '', '2022-12-08 15:27:50', '2022-12-08 08:27:50', '', 374, 'http://biolink.local/wp-content/uploads/2022/12/hinh-nen-hotgirl-duyen-dang_125438813-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(325, 4, '2022-12-07 03:46:21', '2022-12-07 03:46:21', '', 'Bio2', '', 'publish', 'closed', 'closed', '', 'bio2', '', '', '2022-12-07 04:07:04', '2022-12-07 04:07:04', '', 0, 'http://biolink.local/?post_type=biolink&#038;p=325', 0, 'biolink', '', 0),
(326, 1, '2022-12-07 03:57:50', '2022-12-07 03:57:50', '', 'Bioadmin', '', 'publish', 'closed', 'closed', '', 'bioadmin', '', '', '2022-12-07 03:57:50', '2022-12-07 03:57:50', '', 0, 'http://biolink.local/?post_type=biolink&#038;p=326', 0, 'biolink', '', 0),
(332, 1, '2022-12-07 03:59:08', '2022-12-07 03:59:08', '', 'Biopage', '', 'publish', 'closed', 'closed', '', 'biopage', '', '', '2022-12-07 06:39:38', '2022-12-07 06:39:38', '', 0, 'http://biolink.local/?page_id=332', 0, 'page', '', 0),
(333, 1, '2022-12-07 03:59:08', '2022-12-07 03:59:08', '', 'Biopage', '', 'inherit', 'closed', 'closed', '', '332-revision-v1', '', '', '2022-12-07 03:59:08', '2022-12-07 03:59:08', '', 332, 'http://biolink.local/?p=333', 0, 'revision', '', 0),
(334, 4, '2022-12-07 04:13:35', '2022-12-07 04:13:35', '<!-- wp:acf/biolink-person {\n    \"id\": \"block_6392b11f96f2f\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": 483,\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp_0_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_0_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_0_bio1_rpText\": \"Facebook Group\",\n        \"_bio1_rp_0_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_0_bio1_rpLink\": \"\",\n        \"_bio1_rp_0_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_1_bio1_rpIcon\": \"bio1Yt\",\n        \"_bio1_rp_1_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_1_bio1_rpText\": \"Youtube Channer\",\n        \"_bio1_rp_1_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_1_bio1_rpLink\": \"\",\n        \"_bio1_rp_1_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_2_bio1_rpIcon\": \"bio1Tiktok\",\n        \"_bio1_rp_2_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_2_bio1_rpText\": \"Tiktok\",\n        \"_bio1_rp_2_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_2_bio1_rpLink\": \"\",\n        \"_bio1_rp_2_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_3_bio1_rpIcon\": \"bio1Zalo\",\n        \"_bio1_rp_3_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_3_bio1_rpText\": \"Zalo\",\n        \"_bio1_rp_3_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_3_bio1_rpLink\": \"\",\n        \"_bio1_rp_3_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_4_bio1_rpIcon\": \"bio1Shopee\",\n        \"_bio1_rp_4_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_4_bio1_rpText\": \"Shopee\",\n        \"_bio1_rp_4_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_4_bio1_rpLink\": \"\",\n        \"_bio1_rp_4_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_5_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_5_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_5_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_5_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_5_bio1_rpLink\": \"\",\n        \"_bio1_rp_5_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_6_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_6_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_6_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_6_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_6_bio1_rpLink\": \"\",\n        \"_bio1_rp_6_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_7_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_7_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_7_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_7_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_7_bio1_rpLink\": \"\",\n        \"_bio1_rp_7_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_8_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_8_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_8_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_8_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_8_bio1_rpLink\": \"\",\n        \"_bio1_rp_8_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_9_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_9_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_9_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_9_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_9_bio1_rpLink\": \"\",\n        \"_bio1_rp_9_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_10_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_10_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_10_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_10_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_10_bio1_rpLink\": \"\",\n        \"_bio1_rp_10_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_11_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_11_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_11_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_11_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_11_bio1_rpLink\": \"\",\n        \"_bio1_rp_11_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp\": 12,\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'BioLink', '', 'publish', 'closed', 'closed', '', 'bio2', '', '', '2022-12-14 17:33:30', '2022-12-14 10:33:30', '', 0, 'http://biolink.local/?page_id=334', 0, 'page', '', 0),
(335, 1, '2022-12-07 04:13:35', '2022-12-07 04:13:35', '', 'Bio2', '', 'inherit', 'closed', 'closed', '', '334-revision-v1', '', '', '2022-12-07 04:13:35', '2022-12-07 04:13:35', '', 334, 'http://biolink.local/?p=335', 0, 'revision', '', 0),
(347, 4, '2022-12-07 04:25:00', '2022-12-07 04:25:00', '', 's', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2022-12-07 04:25:00', '2022-12-07 04:25:00', '', 62, 'http://biolink.local/?p=347', 0, 'revision', '', 0),
(365, 5, '2022-12-07 07:11:43', '2022-12-07 07:11:43', '', 'hinh-nen-hotgirl-duyen-dang_125438813 (1)', '', 'inherit', 'open', 'closed', '', 'hinh-nen-hotgirl-duyen-dang_125438813-1-2', '', '', '2022-12-09 16:29:19', '2022-12-09 09:29:19', '', 334, 'http://biolink.local/wp-content/uploads/2022/12/hinh-nen-hotgirl-duyen-dang_125438813-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(371, 5, '2022-12-07 07:21:40', '2022-12-07 07:21:40', '', 'avatar-gai-xinh-56 (1)', '', 'inherit', 'open', 'closed', '', 'avatar-gai-xinh-56-1-2', '', '', '2022-12-07 07:21:40', '2022-12-07 07:21:40', '', 0, 'http://biolink.local/wp-content/uploads/2022/12/avatar-gai-xinh-56-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(374, 1, '2022-12-07 07:22:34', '2022-12-07 07:22:34', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2022-12-08 16:15:33', '2022-12-08 09:15:33', '', 0, 'http://biolink.local/?page_id=374', 0, 'page', '', 0),
(375, 1, '2022-12-07 07:22:34', '2022-12-07 07:22:34', '', 'Login', '', 'inherit', 'closed', 'closed', '', '374-revision-v1', '', '', '2022-12-07 07:22:34', '2022-12-07 07:22:34', '', 374, 'http://biolink.local/?p=375', 0, 'revision', '', 0),
(376, 1, '2022-12-07 07:39:00', '2022-12-07 07:39:00', 'a:8:{s:8:\"location\";a:3:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"380\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"374\";}}i:2;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"412\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Register Login Page', 'register-login-page', 'publish', 'closed', 'closed', '', 'group_639042f55e8a7', '', '', '2022-12-08 17:10:27', '2022-12-08 10:10:27', '', 0, 'http://biolink.local/?post_type=acf-field-group&#038;p=376', 0, 'acf-field-group', '', 0),
(377, 1, '2022-12-07 07:39:00', '2022-12-07 07:39:00', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Background', 'bio_loginImg', 'publish', 'closed', 'closed', '', 'field_639042fb4e829', '', '', '2022-12-07 07:41:29', '2022-12-07 07:41:29', '', 376, 'http://biolink.local/?post_type=acf-field&#038;p=377', 0, 'acf-field', '', 0),
(378, 1, '2022-12-07 07:41:01', '2022-12-07 07:41:01', '', 'linkbios-1', '', 'inherit', 'open', 'closed', '', 'linkbios-1', '', '', '2022-12-07 07:41:01', '2022-12-07 07:41:01', '', 374, 'http://biolink.local/wp-content/uploads/2022/12/linkbios-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(379, 1, '2022-12-07 07:41:04', '2022-12-07 07:41:04', '', 'Login', '', 'inherit', 'closed', 'closed', '', '374-revision-v1', '', '', '2022-12-07 07:41:04', '2022-12-07 07:41:04', '', 374, 'http://biolink.local/?p=379', 0, 'revision', '', 0),
(380, 1, '2022-12-08 01:54:27', '2022-12-08 01:54:27', '', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2022-12-08 15:25:09', '2022-12-08 08:25:09', '', 0, 'http://biolink.local/?page_id=380', 0, 'page', '', 0),
(381, 1, '2022-12-08 01:54:27', '2022-12-08 01:54:27', '', 'Register', '', 'inherit', 'closed', 'closed', '', '380-revision-v1', '', '', '2022-12-08 01:54:27', '2022-12-08 01:54:27', '', 380, 'http://biolink.local/?p=381', 0, 'revision', '', 0),
(382, 1, '2022-12-08 01:56:21', '2022-12-08 01:56:21', '', 'Register', '', 'inherit', 'closed', 'closed', '', '380-revision-v1', '', '', '2022-12-08 01:56:21', '2022-12-08 01:56:21', '', 380, 'http://biolink.local/?p=382', 0, 'revision', '', 0),
(400, 20, '2022-12-08 14:58:33', '2022-12-08 07:58:33', '', 'bio333', '', 'publish', 'closed', 'closed', '', 'bio333', '', '', '2022-12-08 14:58:33', '2022-12-08 07:58:33', '', 0, 'http://biolink.local/bio333/', 0, 'page', '', 0),
(401, 21, '2022-12-08 15:00:06', '2022-12-08 08:00:06', '', 'bio3333', '', 'publish', 'closed', 'closed', '', 'bio4', '', '', '2022-12-08 15:01:10', '2022-12-08 08:01:10', '', 0, 'http://biolink.local/bio3333/', 0, 'page', '', 0),
(402, 21, '2022-12-08 15:01:10', '2022-12-08 08:01:10', '', 'bio3333', '', 'inherit', 'closed', 'closed', '', '401-revision-v1', '', '', '2022-12-08 15:01:10', '2022-12-08 08:01:10', '', 401, 'http://biolink.local/?p=402', 0, 'revision', '', 0),
(403, 22, '2022-12-08 15:02:14', '2022-12-08 08:02:14', '', 'bio4', '', 'publish', 'closed', 'closed', '', 'bio4-2', '', '', '2022-12-08 15:02:14', '2022-12-08 08:02:14', '', 0, 'http://biolink.local/bio4-2/', 0, 'page', '', 0),
(404, 23, '2022-12-08 15:03:47', '2022-12-08 08:03:47', '', 'bio44', '', 'publish', 'closed', 'closed', '', 'bio44', '', '', '2022-12-08 15:03:47', '2022-12-08 08:03:47', '', 0, 'http://biolink.local/bio44/', 0, 'page', '', 0),
(405, 1, '2022-12-08 15:09:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-12-08 15:09:59', '0000-00-00 00:00:00', '', 0, 'http://biolink.local/?p=405', 0, 'post', '', 0),
(406, 1, '2022-12-08 15:27:50', '2022-12-08 08:27:50', '', 'Login', '', 'inherit', 'closed', 'closed', '', '374-revision-v1', '', '', '2022-12-08 15:27:50', '2022-12-08 08:27:50', '', 374, 'http://biolink.local/?p=406', 0, 'revision', '', 0),
(409, 24, '2022-12-08 16:25:24', '2022-12-08 09:25:24', '<!-- wp:acf/biolink-person {\n    \"id\": \"block_6391ad8c9d77f\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": \"\",\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp\": \"\",\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->\n\n<!-- wp:acf/biolink-person {\n    \"id\": \"block_6391ad9e9d781\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": \"\",\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp\": \"\",\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'bio5', '', 'publish', 'closed', 'closed', '', 'bio5', '', '', '2022-12-08 16:25:53', '2022-12-08 09:25:53', '', 0, 'http://biolink.local/bio5/', 0, 'page', '', 0),
(410, 1, '2022-12-08 16:25:52', '2022-12-08 09:25:52', '', 's', '', 'inherit', 'closed', 'closed', '', '62-autosave-v1', '', '', '2022-12-08 16:25:52', '2022-12-08 09:25:52', '', 62, 'http://biolink.local/?p=410', 0, 'revision', '', 0),
(411, 24, '2022-12-08 16:25:52', '2022-12-08 09:25:52', '<!-- wp:acf/biolink-person {\n    \"id\": \"block_6391ad8c9d77f\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": \"\",\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp\": \"\",\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->\n\n<!-- wp:acf/biolink-person {\n    \"id\": \"block_6391ad9e9d781\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": \"\",\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp\": \"\",\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'bio5', '', 'inherit', 'closed', 'closed', '', '409-revision-v1', '', '', '2022-12-08 16:25:52', '2022-12-08 09:25:52', '', 409, 'http://biolink.local/?p=411', 0, 'revision', '', 0),
(412, 1, '2022-12-08 17:04:17', '2022-12-08 10:04:17', '', 'Quên mật khẩu', '', 'publish', 'closed', 'closed', '', 'lost-password', '', '', '2022-12-08 17:10:49', '2022-12-08 10:10:49', '', 0, 'http://biolink.local/?page_id=412', 0, 'page', '', 0),
(413, 1, '2022-12-08 17:04:17', '2022-12-08 10:04:17', '', 'Quên mật khẩu', '', 'inherit', 'closed', 'closed', '', '412-revision-v1', '', '', '2022-12-08 17:04:17', '2022-12-08 10:04:17', '', 412, 'http://biolink.local/?p=413', 0, 'revision', '', 0),
(414, 1, '2022-12-08 17:10:49', '2022-12-08 10:10:49', '', 'Quên mật khẩu', '', 'inherit', 'closed', 'closed', '', '412-revision-v1', '', '', '2022-12-08 17:10:49', '2022-12-08 10:10:49', '', 412, 'http://biolink.local/?p=414', 0, 'revision', '', 0),
(415, 25, '2022-12-09 09:54:37', '2022-12-09 02:54:37', '<!-- wp:acf/biolink-person {\n    \"id\": \"block_6392a37bcdd4f\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": \"\",\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp_0_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_0_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_0_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_0_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_0_bio1_rpLink\": \"\",\n        \"_bio1_rp_0_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_1_bio1_rpIcon\": \"bio1Ins\",\n        \"_bio1_rp_1_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_1_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_1_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_1_bio1_rpLink\": \"\",\n        \"_bio1_rp_1_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_2_bio1_rpIcon\": \"bio1Tiktok\",\n        \"_bio1_rp_2_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_2_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_2_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_2_bio1_rpLink\": \"\",\n        \"_bio1_rp_2_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp\": 3,\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'bio6789', '', 'trash', 'closed', 'closed', '', 'bio6789__trashed', '', '', '2022-12-09 10:08:11', '2022-12-09 03:08:11', '', 0, 'http://biolink.local/bio6789/', 0, 'page', '', 0),
(418, 25, '2022-12-09 10:08:11', '2022-12-09 03:08:11', '', 'Auto Draft', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2022-12-09 10:08:11', '2022-12-09 03:08:11', '', 0, 'http://biolink.local/?page_id=418', 0, 'page', '', 0),
(419, 25, '2022-12-09 10:08:11', '2022-12-09 03:08:11', '', 'Auto Draft', '', 'trash', 'closed', 'closed', '', '__trashed-2', '', '', '2022-12-09 10:08:11', '2022-12-09 03:08:11', '', 0, 'http://biolink.local/?page_id=419', 0, 'page', '', 0),
(421, 25, '2022-12-09 10:08:11', '2022-12-09 03:08:11', '', 'Auto Draft', '', 'inherit', 'closed', 'closed', '', '418-revision-v1', '', '', '2022-12-09 10:08:11', '2022-12-09 03:08:11', '', 418, 'http://biolink.local/?p=421', 0, 'revision', '', 0),
(422, 25, '2022-12-09 10:08:11', '2022-12-09 03:08:11', '', 'Auto Draft', '', 'inherit', 'closed', 'closed', '', '419-revision-v1', '', '', '2022-12-09 10:08:11', '2022-12-09 03:08:11', '', 419, 'http://biolink.local/?p=422', 0, 'revision', '', 0),
(423, 4, '2022-12-09 10:53:15', '2022-12-09 03:53:15', '<!-- wp:acf/biolink-person {\n    \"id\": \"block_6392b11f96f2f\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": \"\",\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp_0_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_0_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_0_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_0_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_0_bio1_rpLink\": \"\",\n        \"_bio1_rp_0_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_1_bio1_rpIcon\": \"bio1Yt\",\n        \"_bio1_rp_1_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_1_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_1_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_1_bio1_rpLink\": \"\",\n        \"_bio1_rp_1_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_2_bio1_rpIcon\": \"bio1Tiktok\",\n        \"_bio1_rp_2_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_2_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_2_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_2_bio1_rpLink\": \"\",\n        \"_bio1_rp_2_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp\": 3,\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'Bio2', '', 'inherit', 'closed', 'closed', '', '334-revision-v1', '', '', '2022-12-09 10:53:15', '2022-12-09 03:53:15', '', 334, 'http://biolink.local/?p=423', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(424, 4, '2022-12-09 10:53:15', '2022-12-09 03:53:15', '<!-- wp:acf/biolink-person {\n    \"id\": \"block_6392b11f96f2f\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": \"\",\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp_0_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_0_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_0_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_0_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_0_bio1_rpLink\": \"\",\n        \"_bio1_rp_0_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_1_bio1_rpIcon\": \"bio1Yt\",\n        \"_bio1_rp_1_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_1_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_1_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_1_bio1_rpLink\": \"\",\n        \"_bio1_rp_1_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_2_bio1_rpIcon\": \"bio1Tiktok\",\n        \"_bio1_rp_2_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_2_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_2_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_2_bio1_rpLink\": \"\",\n        \"_bio1_rp_2_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp\": 3,\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'Bio2', '', 'inherit', 'closed', 'closed', '', '334-revision-v1', '', '', '2022-12-09 10:53:15', '2022-12-09 03:53:15', '', 334, 'http://biolink.local/?p=424', 0, 'revision', '', 0),
(425, 4, '2022-12-09 10:53:28', '2022-12-09 03:53:28', '<!-- wp:acf/biolink-person {\n    \"id\": \"block_6392b11f96f2f\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": \"\",\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp_0_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_0_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_0_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_0_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_0_bio1_rpLink\": \"\",\n        \"_bio1_rp_0_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_1_bio1_rpIcon\": \"bio1Yt\",\n        \"_bio1_rp_1_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_1_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_1_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_1_bio1_rpLink\": \"\",\n        \"_bio1_rp_1_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_2_bio1_rpIcon\": \"bio1Tiktok\",\n        \"_bio1_rp_2_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_2_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_2_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_2_bio1_rpLink\": \"\",\n        \"_bio1_rp_2_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp\": 3,\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'Bio2', '', 'inherit', 'closed', 'closed', '', '334-revision-v1', '', '', '2022-12-09 10:53:28', '2022-12-09 03:53:28', '', 334, 'http://biolink.local/?p=425', 0, 'revision', '', 0),
(426, 26, '2022-12-09 14:02:10', '2022-12-09 07:02:10', '<!-- wp:acf/biolink-person {\n    \"id\": \"block_6392dda17a401\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": \"\",\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp_0_bio1_rpIcon\": \"bio1Tiktok\",\n        \"_bio1_rp_0_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_0_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_0_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_0_bio1_rpLink\": \"\",\n        \"_bio1_rp_0_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_1_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_1_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_1_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_1_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_1_bio1_rpLink\": \"\",\n        \"_bio1_rp_1_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_2_bio1_rpIcon\": \"bio1Yt\",\n        \"_bio1_rp_2_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_2_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_2_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_2_bio1_rpLink\": \"\",\n        \"_bio1_rp_2_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp\": 3,\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'annguyen', '', 'publish', 'closed', 'closed', '', 'annguyen', '', '', '2022-12-09 14:03:12', '2022-12-09 07:03:12', '', 0, 'http://biolink.local/annguyen/', 0, 'page', '', 0),
(427, 26, '2022-12-09 14:03:12', '2022-12-09 07:03:12', '<!-- wp:acf/biolink-person {\n    \"id\": \"block_6392dda17a401\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": \"\",\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp_0_bio1_rpIcon\": \"bio1Tiktok\",\n        \"_bio1_rp_0_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_0_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_0_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_0_bio1_rpLink\": \"\",\n        \"_bio1_rp_0_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_1_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_1_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_1_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_1_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_1_bio1_rpLink\": \"\",\n        \"_bio1_rp_1_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_2_bio1_rpIcon\": \"bio1Yt\",\n        \"_bio1_rp_2_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_2_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_2_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_2_bio1_rpLink\": \"\",\n        \"_bio1_rp_2_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp\": 3,\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'annguyen', '', 'inherit', 'closed', 'closed', '', '426-revision-v1', '', '', '2022-12-09 14:03:12', '2022-12-09 07:03:12', '', 426, 'http://biolink.local/?p=427', 0, 'revision', '', 0),
(428, 26, '2022-12-09 14:03:12', '2022-12-09 07:03:12', '<!-- wp:acf/biolink-person {\n    \"id\": \"block_6392dda17a401\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": \"\",\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp_0_bio1_rpIcon\": \"bio1Tiktok\",\n        \"_bio1_rp_0_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_0_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_0_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_0_bio1_rpLink\": \"\",\n        \"_bio1_rp_0_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_1_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_1_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_1_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_1_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_1_bio1_rpLink\": \"\",\n        \"_bio1_rp_1_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_2_bio1_rpIcon\": \"bio1Yt\",\n        \"_bio1_rp_2_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_2_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_2_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_2_bio1_rpLink\": \"\",\n        \"_bio1_rp_2_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp\": 3,\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'annguyen', '', 'inherit', 'closed', 'closed', '', '426-revision-v1', '', '', '2022-12-09 14:03:12', '2022-12-09 07:03:12', '', 426, 'http://biolink.local/?p=428', 0, 'revision', '', 0),
(429, 4, '2022-12-09 16:29:19', '2022-12-09 09:29:19', '<!-- wp:acf/biolink-person {\n    \"id\": \"block_6392b11f96f2f\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": \"\",\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp_0_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_0_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_0_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_0_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_0_bio1_rpLink\": \"\",\n        \"_bio1_rp_0_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_1_bio1_rpIcon\": \"bio1Yt\",\n        \"_bio1_rp_1_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_1_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_1_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_1_bio1_rpLink\": \"\",\n        \"_bio1_rp_1_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_2_bio1_rpIcon\": \"bio1Tiktok\",\n        \"_bio1_rp_2_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_2_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_2_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_2_bio1_rpLink\": \"\",\n        \"_bio1_rp_2_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_3_bio1_rpIcon\": \"bio1Zalo\",\n        \"_bio1_rp_3_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_3_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_3_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_3_bio1_rpLink\": \"\",\n        \"_bio1_rp_3_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_4_bio1_rpIcon\": \"bio1Shopee\",\n        \"_bio1_rp_4_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_4_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_4_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_4_bio1_rpLink\": \"\",\n        \"_bio1_rp_4_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp\": 5,\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'Bio2', '', 'inherit', 'closed', 'closed', '', '334-revision-v1', '', '', '2022-12-09 16:29:19', '2022-12-09 09:29:19', '', 334, 'http://biolink.local/?p=429', 0, 'revision', '', 0),
(430, 4, '2022-12-09 16:29:19', '2022-12-09 09:29:19', '<!-- wp:acf/biolink-person {\n    \"id\": \"block_6392b11f96f2f\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": \"\",\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp_0_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_0_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_0_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_0_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_0_bio1_rpLink\": \"\",\n        \"_bio1_rp_0_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_1_bio1_rpIcon\": \"bio1Yt\",\n        \"_bio1_rp_1_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_1_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_1_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_1_bio1_rpLink\": \"\",\n        \"_bio1_rp_1_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_2_bio1_rpIcon\": \"bio1Tiktok\",\n        \"_bio1_rp_2_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_2_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_2_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_2_bio1_rpLink\": \"\",\n        \"_bio1_rp_2_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_3_bio1_rpIcon\": \"bio1Zalo\",\n        \"_bio1_rp_3_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_3_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_3_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_3_bio1_rpLink\": \"\",\n        \"_bio1_rp_3_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_4_bio1_rpIcon\": \"bio1Shopee\",\n        \"_bio1_rp_4_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_4_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_4_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_4_bio1_rpLink\": \"\",\n        \"_bio1_rp_4_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp\": 5,\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'Bio2', '', 'inherit', 'closed', 'closed', '', '334-revision-v1', '', '', '2022-12-09 16:29:19', '2022-12-09 09:29:19', '', 334, 'http://biolink.local/?p=430', 0, 'revision', '', 0),
(431, 1, '2022-12-13 14:21:36', '2022-12-13 07:21:36', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2022-12-14 16:29:22', '2022-12-14 09:29:22', '', 0, 'http://biolink.local/?page_id=431', 0, 'page', '', 0),
(432, 1, '2022-12-13 14:21:36', '2022-12-13 07:21:36', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '431-revision-v1', '', '', '2022-12-13 14:21:36', '2022-12-13 07:21:36', '', 431, 'http://biolink.local/?p=432', 0, 'revision', '', 0),
(433, 1, '2022-12-15 15:19:55', '2022-12-13 07:27:55', ' ', '', '', 'publish', 'closed', 'closed', '', '433', '', '', '2022-12-15 15:19:55', '2022-12-15 08:19:55', '', 0, 'http://biolink.local/?p=433', 1, 'nav_menu_item', '', 0),
(435, 1, '2022-12-14 09:49:57', '2022-12-14 02:49:57', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-footer\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";b:0;}', 'Footer Options', 'footer-options', 'publish', 'closed', 'closed', '', 'group_5e7c76ae563db', '', '', '2022-12-14 09:49:57', '2022-12-14 02:49:57', '', 0, 'http://biolink.local/?p=435', 0, 'acf-field-group', '', 0),
(436, 1, '2022-12-14 09:49:57', '2022-12-14 02:49:57', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Add code to Footer', 'add_code_to_footer_options', 'publish', 'closed', 'closed', '', 'field_5e7c76b7fe55f', '', '', '2022-12-14 09:49:57', '2022-12-14 02:49:57', '', 435, 'http://biolink.local/?post_type=acf-field&p=436', 0, 'acf-field', '', 0),
(437, 1, '2022-12-14 09:49:57', '2022-12-14 02:49:57', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-header\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";b:0;}', 'Header Options', 'header-options', 'publish', 'closed', 'closed', '', 'group_5e7c758bac2a0', '', '', '2022-12-14 09:49:57', '2022-12-14 02:49:57', '', 0, 'http://biolink.local/?p=437', 0, 'acf-field-group', '', 0),
(438, 1, '2022-12-14 09:49:57', '2022-12-14 02:49:57', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Add code to Header', 'add_code_to_header_options', 'publish', 'closed', 'closed', '', 'field_5e7c759b2b9aa', '', '', '2022-12-14 09:49:57', '2022-12-14 02:49:57', '', 437, 'http://biolink.local/?post_type=acf-field&p=438', 0, 'acf-field', '', 0),
(439, 1, '2022-12-14 09:49:57', '2022-12-14 02:49:57', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Theme Options', 'theme-options', 'publish', 'closed', 'closed', '', 'group_5e7c73153dd11', '', '', '2022-12-14 13:36:22', '2022-12-14 06:36:22', '', 0, 'http://biolink.local/?p=439', 0, 'acf-field-group', '', 0),
(440, 1, '2022-12-14 09:49:57', '2022-12-14 02:49:57', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:20:\"Logo Header & Footer\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo', 'logo_options', 'publish', 'closed', 'closed', '', 'field_5e7c73407f2dd', '', '', '2022-12-14 13:36:22', '2022-12-14 06:36:22', '', 439, 'http://biolink.local/?post_type=acf-field&#038;p=440', 0, 'acf-field', '', 0),
(441, 1, '2022-12-14 09:49:57', '2022-12-14 02:49:57', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:7:\"Favicon\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:12:\"medium_large\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";i:100;s:10:\"max_height\";i:100;s:8:\"max_size\";i:1;s:10:\"mime_types\";s:0:\"\";}', 'Favicon', 'favicon_options', 'publish', 'closed', 'closed', '', 'field_5ea6a9a3d7cdb', '', '', '2022-12-14 13:35:15', '2022-12-14 06:35:15', '', 439, 'http://biolink.local/?post_type=acf-field&#038;p=441', 2, 'acf-field', '', 0),
(442, 1, '2022-12-14 09:49:57', '2022-12-14 02:49:57', 'a:10:{s:4:\"type\";s:15:\"qtranslate_text\";s:12:\"instructions\";s:34:\"Địa chỉ liên hệ ở Footer\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Địa chỉ', 'address_options', 'publish', 'closed', 'closed', '', 'field_5e7c771197f94', '', '', '2022-12-14 13:35:15', '2022-12-14 06:35:15', '', 439, 'http://biolink.local/?post_type=acf-field&#038;p=442', 3, 'acf-field', '', 0),
(443, 1, '2022-12-14 09:49:57', '2022-12-14 02:49:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Hotline Footer', 'hotline_footer_options', 'publish', 'closed', 'closed', '', 'field_5eb0d65e492c6', '', '', '2022-12-14 13:35:15', '2022-12-14 06:35:15', '', 439, 'http://biolink.local/?post_type=acf-field&#038;p=443', 4, 'acf-field', '', 0),
(444, 1, '2022-12-14 09:49:57', '2022-12-14 02:49:57', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:26:\"Các link mạng xã hội\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Social Network', 'social_network_options', 'publish', 'closed', 'closed', '', 'field_5e7c773fd0ca4', '', '', '2022-12-14 13:35:15', '2022-12-14 06:35:15', '', 439, 'http://biolink.local/?post_type=acf-field&#038;p=444', 5, 'acf-field', '', 0),
(445, 1, '2022-12-14 09:49:57', '2022-12-14 02:49:57', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Icon', 'icon_social', 'publish', 'closed', 'closed', '', 'field_5e7c7761d0ca5', '', '', '2022-12-14 13:21:34', '2022-12-14 06:21:34', '', 444, 'http://biolink.local/?post_type=acf-field&#038;p=445', 0, 'acf-field', '', 0),
(446, 1, '2022-12-14 09:49:57', '2022-12-14 02:49:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title_social', 'publish', 'closed', 'closed', '', 'field_5e7c779fd0ca7', '', '', '2022-12-14 09:49:57', '2022-12-14 02:49:57', '', 444, 'http://biolink.local/?post_type=acf-field&p=446', 1, 'acf-field', '', 0),
(447, 1, '2022-12-14 09:49:57', '2022-12-14 02:49:57', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link', 'link_social', 'publish', 'closed', 'closed', '', 'field_5e7c778ed0ca6', '', '', '2022-12-14 09:49:57', '2022-12-14 02:49:57', '', 444, 'http://biolink.local/?post_type=acf-field&p=447', 2, 'acf-field', '', 0),
(448, 1, '2022-12-14 09:49:57', '2022-12-14 02:49:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:71:\"Đây là số điện thoại Hotline nằm cố định trên website\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Hotline Fixed', 'hotline_options', 'publish', 'closed', 'closed', '', 'field_5e9d006f1c2c2', '', '', '2022-12-14 13:35:15', '2022-12-14 06:35:15', '', 439, 'http://biolink.local/?post_type=acf-field&#038;p=448', 6, 'acf-field', '', 0),
(449, 1, '2022-12-14 10:01:34', '2022-12-14 03:01:34', '', 'logobio', '', 'inherit', 'open', 'closed', '', 'logobio', '', '', '2022-12-14 10:01:34', '2022-12-14 03:01:34', '', 0, 'http://biolink.local/wp-content/uploads/2022/12/logobio.svg', 0, 'attachment', 'image/svg+xml', 0),
(450, 1, '2022-12-14 10:15:08', '2022-12-14 03:15:08', '', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2022-12-14 10:15:09', '2022-12-14 03:15:09', '', 0, 'http://biolink.local/?page_id=450', 0, 'page', '', 0),
(451, 1, '2022-12-14 10:15:08', '2022-12-14 03:15:08', '', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '450-revision-v1', '', '', '2022-12-14 10:15:08', '2022-12-14 03:15:08', '', 450, 'http://biolink.local/?p=451', 0, 'revision', '', 0),
(452, 1, '2022-12-14 10:15:25', '2022-12-14 03:15:25', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2022-12-14 17:04:55', '2022-12-14 10:04:55', '', 0, 'http://biolink.local/?page_id=452', 0, 'page', '', 0),
(453, 1, '2022-12-14 10:15:25', '2022-12-14 03:15:25', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '452-revision-v1', '', '', '2022-12-14 10:15:25', '2022-12-14 03:15:25', '', 452, 'http://biolink.local/?p=453', 0, 'revision', '', 0),
(454, 1, '2022-12-14 10:15:58', '2022-12-14 03:15:58', '', 'Support', '', 'publish', 'closed', 'closed', '', 'support', '', '', '2022-12-14 10:15:58', '2022-12-14 03:15:58', '', 0, 'http://biolink.local/?page_id=454', 0, 'page', '', 0),
(455, 1, '2022-12-14 10:15:58', '2022-12-14 03:15:58', '', 'Support', '', 'inherit', 'closed', 'closed', '', '454-revision-v1', '', '', '2022-12-14 10:15:58', '2022-12-14 03:15:58', '', 454, 'http://biolink.local/?p=455', 0, 'revision', '', 0),
(457, 1, '2022-12-15 15:19:55', '2022-12-14 03:18:36', ' ', '', '', 'publish', 'closed', 'closed', '', '457', '', '', '2022-12-15 15:19:55', '2022-12-15 08:19:55', '', 0, 'http://biolink.local/?p=457', 3, 'nav_menu_item', '', 0),
(458, 1, '2022-12-15 15:19:55', '2022-12-14 03:18:36', ' ', '', '', 'publish', 'closed', 'closed', '', '458', '', '', '2022-12-15 15:19:55', '2022-12-15 08:19:55', '', 0, 'http://biolink.local/?p=458', 4, 'nav_menu_item', '', 0),
(459, 1, '2022-12-14 13:22:16', '2022-12-14 06:22:16', '', 'facebook', '', 'inherit', 'open', 'closed', '', 'facebook', '', '', '2022-12-14 13:22:16', '2022-12-14 06:22:16', '', 0, 'http://biolink.local/wp-content/uploads/2022/12/facebook.svg', 0, 'attachment', 'image/svg+xml', 0),
(460, 1, '2022-12-14 13:22:17', '2022-12-14 06:22:17', '', 'youtube', '', 'inherit', 'open', 'closed', '', 'youtube', '', '', '2022-12-14 13:22:17', '2022-12-14 06:22:17', '', 0, 'http://biolink.local/wp-content/uploads/2022/12/youtube.svg', 0, 'attachment', 'image/svg+xml', 0),
(461, 1, '2022-12-14 13:22:18', '2022-12-14 06:22:18', '', 'zalo', '', 'inherit', 'open', 'closed', '', 'zalo', '', '', '2022-12-14 13:22:18', '2022-12-14 06:22:18', '', 0, 'http://biolink.local/wp-content/uploads/2022/12/zalo.svg', 0, 'attachment', 'image/svg+xml', 0),
(462, 1, '2022-12-14 13:35:15', '2022-12-14 06:35:15', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:20:\"Logo Header & Footer\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo Footer', 'logoft_options', 'publish', 'closed', 'closed', '', 'field_63996e965427f', '', '', '2022-12-14 13:36:22', '2022-12-14 06:36:22', '', 439, 'http://biolink.local/?post_type=acf-field&#038;p=462', 1, 'acf-field', '', 0),
(465, 1, '2022-12-14 13:40:41', '2022-12-14 06:40:41', '', 'logofooter', '', 'inherit', 'open', 'closed', '', 'logofooter', '', '', '2022-12-14 13:40:41', '2022-12-14 06:40:41', '', 0, 'http://biolink.local/wp-content/uploads/2022/12/logofooter.png', 0, 'attachment', 'image/png', 0),
(466, 1, '2022-12-14 13:44:30', '2022-12-14 06:44:30', ' ', '', '', 'publish', 'closed', 'closed', '', '466', '', '', '2022-12-14 13:44:30', '2022-12-14 06:44:30', '', 0, 'http://biolink.local/?p=466', 1, 'nav_menu_item', '', 0),
(467, 1, '2022-12-14 13:44:31', '2022-12-14 06:44:31', ' ', '', '', 'publish', 'closed', 'closed', '', '467', '', '', '2022-12-14 13:44:31', '2022-12-14 06:44:31', '', 0, 'http://biolink.local/?p=467', 2, 'nav_menu_item', '', 0),
(468, 1, '2022-12-14 13:44:31', '2022-12-14 06:44:31', ' ', '', '', 'publish', 'closed', 'closed', '', '468', '', '', '2022-12-14 13:44:31', '2022-12-14 06:44:31', '', 0, 'http://biolink.local/?p=468', 3, 'nav_menu_item', '', 0),
(469, 1, '2022-12-14 13:44:31', '2022-12-14 06:44:31', ' ', '', '', 'publish', 'closed', 'closed', '', '469', '', '', '2022-12-14 13:44:31', '2022-12-14 06:44:31', '', 0, 'http://biolink.local/?p=469', 4, 'nav_menu_item', '', 0),
(470, 1, '2022-12-14 13:44:31', '2022-12-14 06:44:31', ' ', '', '', 'publish', 'closed', 'closed', '', '470', '', '', '2022-12-14 13:44:31', '2022-12-14 06:44:31', '', 0, 'http://biolink.local/?p=470', 5, 'nav_menu_item', '', 0),
(471, 1, '2022-12-14 13:44:47', '2022-12-14 06:44:47', ' ', '', '', 'publish', 'closed', 'closed', '', '471', '', '', '2022-12-14 13:44:47', '2022-12-14 06:44:47', '', 0, 'http://biolink.local/?p=471', 1, 'nav_menu_item', '', 0),
(472, 1, '2022-12-14 13:44:47', '2022-12-14 06:44:47', ' ', '', '', 'publish', 'closed', 'closed', '', '472', '', '', '2022-12-14 13:44:47', '2022-12-14 06:44:47', '', 0, 'http://biolink.local/?p=472', 2, 'nav_menu_item', '', 0),
(473, 1, '2022-12-14 13:44:47', '2022-12-14 06:44:47', ' ', '', '', 'publish', 'closed', 'closed', '', '473', '', '', '2022-12-14 13:44:47', '2022-12-14 06:44:47', '', 0, 'http://biolink.local/?p=473', 3, 'nav_menu_item', '', 0),
(474, 1, '2022-12-14 13:44:47', '2022-12-14 06:44:47', ' ', '', '', 'publish', 'closed', 'closed', '', '474', '', '', '2022-12-14 13:44:47', '2022-12-14 06:44:47', '', 0, 'http://biolink.local/?p=474', 4, 'nav_menu_item', '', 0),
(475, 1, '2022-12-14 13:44:47', '2022-12-14 06:44:47', ' ', '', '', 'publish', 'closed', 'closed', '', '475', '', '', '2022-12-14 13:44:47', '2022-12-14 06:44:47', '', 0, 'http://biolink.local/?p=475', 5, 'nav_menu_item', '', 0),
(476, 1, '2022-12-14 13:44:47', '2022-12-14 06:44:47', ' ', '', '', 'publish', 'closed', 'closed', '', '476', '', '', '2022-12-14 13:44:47', '2022-12-14 06:44:47', '', 0, 'http://biolink.local/?p=476', 6, 'nav_menu_item', '', 0),
(477, 1, '2022-12-14 13:50:54', '2022-12-14 06:50:54', ' ', '', '', 'publish', 'closed', 'closed', '', '477', '', '', '2022-12-14 13:50:54', '2022-12-14 06:50:54', '', 0, 'http://biolink.local/?p=477', 1, 'nav_menu_item', '', 0),
(478, 1, '2022-12-14 13:50:54', '2022-12-14 06:50:54', ' ', '', '', 'publish', 'closed', 'closed', '', '478', '', '', '2022-12-14 13:50:54', '2022-12-14 06:50:54', '', 0, 'http://biolink.local/?p=478', 2, 'nav_menu_item', '', 0),
(479, 1, '2022-12-14 13:50:54', '2022-12-14 06:50:54', ' ', '', '', 'publish', 'closed', 'closed', '', '479', '', '', '2022-12-14 13:50:54', '2022-12-14 06:50:54', '', 0, 'http://biolink.local/?p=479', 3, 'nav_menu_item', '', 0),
(480, 1, '2022-12-14 13:50:54', '2022-12-14 06:50:54', ' ', '', '', 'publish', 'closed', 'closed', '', '480', '', '', '2022-12-14 13:50:54', '2022-12-14 06:50:54', '', 0, 'http://biolink.local/?p=480', 4, 'nav_menu_item', '', 0),
(481, 1, '2022-12-14 14:06:05', '2022-12-14 07:06:05', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"431\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Homepage Option', 'homepage-option', 'publish', 'closed', 'closed', '', 'group_639975bd2b542', '', '', '2022-12-14 16:42:07', '2022-12-14 09:42:07', '', 0, 'http://biolink.local/?post_type=acf-field-group&#038;p=481', 0, 'acf-field-group', '', 0),
(483, 1, '2022-12-14 14:11:04', '2022-12-14 07:11:04', '', 'avatar-gai-xinh-56 (1)', '', 'inherit', 'open', 'closed', '', 'avatar-gai-xinh-56-1-3', '', '', '2022-12-14 14:11:04', '2022-12-14 07:11:04', '', 334, 'http://biolink.local/wp-content/uploads/2022/12/avatar-gai-xinh-56-1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(484, 1, '2022-12-14 14:11:16', '2022-12-14 07:11:16', '<!-- wp:acf/biolink-person {\n    \"id\": \"block_6392b11f96f2f\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": 483,\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp_0_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_0_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_0_bio1_rpText\": \"Facebook Group\",\n        \"_bio1_rp_0_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_0_bio1_rpLink\": \"\",\n        \"_bio1_rp_0_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_1_bio1_rpIcon\": \"bio1Yt\",\n        \"_bio1_rp_1_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_1_bio1_rpText\": \"Youtube Channer\",\n        \"_bio1_rp_1_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_1_bio1_rpLink\": \"\",\n        \"_bio1_rp_1_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_2_bio1_rpIcon\": \"bio1Tiktok\",\n        \"_bio1_rp_2_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_2_bio1_rpText\": \"Tiktok\",\n        \"_bio1_rp_2_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_2_bio1_rpLink\": \"\",\n        \"_bio1_rp_2_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_3_bio1_rpIcon\": \"bio1Zalo\",\n        \"_bio1_rp_3_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_3_bio1_rpText\": \"Zalo\",\n        \"_bio1_rp_3_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_3_bio1_rpLink\": \"\",\n        \"_bio1_rp_3_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_4_bio1_rpIcon\": \"bio1Shopee\",\n        \"_bio1_rp_4_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_4_bio1_rpText\": \"Shopee\",\n        \"_bio1_rp_4_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_4_bio1_rpLink\": \"\",\n        \"_bio1_rp_4_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp\": 5,\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'BioLink', '', 'inherit', 'closed', 'closed', '', '334-revision-v1', '', '', '2022-12-14 14:11:16', '2022-12-14 07:11:16', '', 334, 'http://biolink.local/?p=484', 0, 'revision', '', 0),
(485, 1, '2022-12-14 14:11:16', '2022-12-14 07:11:16', '<!-- wp:acf/biolink-person {\n    \"id\": \"block_6392b11f96f2f\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": 483,\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp_0_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_0_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_0_bio1_rpText\": \"Facebook Group\",\n        \"_bio1_rp_0_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_0_bio1_rpLink\": \"\",\n        \"_bio1_rp_0_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_1_bio1_rpIcon\": \"bio1Yt\",\n        \"_bio1_rp_1_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_1_bio1_rpText\": \"Youtube Channer\",\n        \"_bio1_rp_1_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_1_bio1_rpLink\": \"\",\n        \"_bio1_rp_1_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_2_bio1_rpIcon\": \"bio1Tiktok\",\n        \"_bio1_rp_2_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_2_bio1_rpText\": \"Tiktok\",\n        \"_bio1_rp_2_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_2_bio1_rpLink\": \"\",\n        \"_bio1_rp_2_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_3_bio1_rpIcon\": \"bio1Zalo\",\n        \"_bio1_rp_3_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_3_bio1_rpText\": \"Zalo\",\n        \"_bio1_rp_3_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_3_bio1_rpLink\": \"\",\n        \"_bio1_rp_3_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_4_bio1_rpIcon\": \"bio1Shopee\",\n        \"_bio1_rp_4_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_4_bio1_rpText\": \"Shopee\",\n        \"_bio1_rp_4_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_4_bio1_rpLink\": \"\",\n        \"_bio1_rp_4_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp\": 5,\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'BioLink', '', 'inherit', 'closed', 'closed', '', '334-revision-v1', '', '', '2022-12-14 14:11:16', '2022-12-14 07:11:16', '', 334, 'http://biolink.local/?p=485', 0, 'revision', '', 0),
(486, 1, '2022-12-14 14:13:54', '2022-12-14 07:13:54', '<!-- wp:acf/biolink-person {\n    \"id\": \"block_6392b11f96f2f\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": 483,\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp_0_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_0_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_0_bio1_rpText\": \"Facebook Group\",\n        \"_bio1_rp_0_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_0_bio1_rpLink\": \"\",\n        \"_bio1_rp_0_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_1_bio1_rpIcon\": \"bio1Yt\",\n        \"_bio1_rp_1_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_1_bio1_rpText\": \"Youtube Channer\",\n        \"_bio1_rp_1_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_1_bio1_rpLink\": \"\",\n        \"_bio1_rp_1_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_2_bio1_rpIcon\": \"bio1Tiktok\",\n        \"_bio1_rp_2_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_2_bio1_rpText\": \"Tiktok\",\n        \"_bio1_rp_2_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_2_bio1_rpLink\": \"\",\n        \"_bio1_rp_2_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_3_bio1_rpIcon\": \"bio1Zalo\",\n        \"_bio1_rp_3_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_3_bio1_rpText\": \"Zalo\",\n        \"_bio1_rp_3_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_3_bio1_rpLink\": \"\",\n        \"_bio1_rp_3_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_4_bio1_rpIcon\": \"bio1Shopee\",\n        \"_bio1_rp_4_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_4_bio1_rpText\": \"Shopee\",\n        \"_bio1_rp_4_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_4_bio1_rpLink\": \"\",\n        \"_bio1_rp_4_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp\": 5,\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'BioLink', '', 'inherit', 'closed', 'closed', '', '334-revision-v1', '', '', '2022-12-14 14:13:54', '2022-12-14 07:13:54', '', 334, 'http://biolink.local/?p=486', 0, 'revision', '', 0),
(487, 1, '2022-12-14 14:24:08', '2022-12-14 07:24:08', '<!-- wp:acf/biolink-person {\n    \"id\": \"block_6392b11f96f2f\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": 483,\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp_0_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_0_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_0_bio1_rpText\": \"Facebook Group\",\n        \"_bio1_rp_0_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_0_bio1_rpLink\": \"\",\n        \"_bio1_rp_0_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_1_bio1_rpIcon\": \"bio1Yt\",\n        \"_bio1_rp_1_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_1_bio1_rpText\": \"Youtube Channer\",\n        \"_bio1_rp_1_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_1_bio1_rpLink\": \"\",\n        \"_bio1_rp_1_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_2_bio1_rpIcon\": \"bio1Tiktok\",\n        \"_bio1_rp_2_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_2_bio1_rpText\": \"Tiktok\",\n        \"_bio1_rp_2_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_2_bio1_rpLink\": \"\",\n        \"_bio1_rp_2_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_3_bio1_rpIcon\": \"bio1Zalo\",\n        \"_bio1_rp_3_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_3_bio1_rpText\": \"Zalo\",\n        \"_bio1_rp_3_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_3_bio1_rpLink\": \"\",\n        \"_bio1_rp_3_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_4_bio1_rpIcon\": \"bio1Shopee\",\n        \"_bio1_rp_4_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_4_bio1_rpText\": \"Shopee\",\n        \"_bio1_rp_4_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_4_bio1_rpLink\": \"\",\n        \"_bio1_rp_4_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp\": 5,\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'BioLink', '', 'inherit', 'closed', 'closed', '', '334-revision-v1', '', '', '2022-12-14 14:24:08', '2022-12-14 07:24:08', '', 334, 'http://biolink.local/?p=487', 0, 'revision', '', 0),
(488, 1, '2022-12-14 14:31:06', '2022-12-14 07:31:06', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Banner', 'banner_status', 'publish', 'closed', 'closed', '', 'field_63997b7a7a734', '', '', '2022-12-14 14:33:48', '2022-12-14 07:33:48', '', 481, 'http://biolink.local/?post_type=acf-field&#038;p=488', 1, 'acf-field', '', 0),
(489, 1, '2022-12-14 14:31:06', '2022-12-14 07:31:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tiêu đề', 'banner_title', 'publish', 'closed', 'closed', '', 'field_63997b9b7a735', '', '', '2022-12-14 15:02:24', '2022-12-14 08:02:24', '', 481, 'http://biolink.local/?post_type=acf-field&#038;p=489', 2, 'acf-field', '', 0),
(490, 1, '2022-12-14 14:31:06', '2022-12-14 07:31:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Content', 'banner_subtitle', 'publish', 'closed', 'closed', '', 'field_63997bae7a736', '', '', '2022-12-14 15:02:24', '2022-12-14 08:02:24', '', 481, 'http://biolink.local/?post_type=acf-field&#038;p=490', 3, 'acf-field', '', 0),
(491, 1, '2022-12-14 14:32:36', '2022-12-14 07:32:36', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '431-revision-v1', '', '', '2022-12-14 14:32:36', '2022-12-14 07:32:36', '', 431, 'http://biolink.local/?p=491', 0, 'revision', '', 0),
(492, 1, '2022-12-14 14:33:30', '2022-12-14 07:33:30', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner Image', 'banner_img', 'publish', 'closed', 'closed', '', 'field_63997c3acfbf1', '', '', '2022-12-14 15:02:24', '2022-12-14 08:02:24', '', 481, 'http://biolink.local/?post_type=acf-field&#038;p=492', 4, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(493, 1, '2022-12-14 14:33:48', '2022-12-14 07:33:48', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_63997c52c8d6a', '', '', '2022-12-14 14:33:48', '2022-12-14 07:33:48', '', 481, 'http://biolink.local/?post_type=acf-field&p=493', 0, 'acf-field', '', 0),
(495, 1, '2022-12-14 14:34:14', '2022-12-14 07:34:14', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '431-revision-v1', '', '', '2022-12-14 14:34:14', '2022-12-14 07:34:14', '', 431, 'http://biolink.local/?p=495', 0, 'revision', '', 0),
(496, 1, '2022-12-14 14:35:11', '2022-12-14 07:35:11', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '431-revision-v1', '', '', '2022-12-14 14:35:11', '2022-12-14 07:35:11', '', 431, 'http://biolink.local/?p=496', 0, 'revision', '', 0),
(497, 1, '2022-12-14 15:02:24', '2022-12-14 08:02:24', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Feature', 'feature', 'publish', 'closed', 'closed', '', 'field_639982b32a57e', '', '', '2022-12-14 15:02:24', '2022-12-14 08:02:24', '', 481, 'http://biolink.local/?post_type=acf-field&p=497', 5, 'acf-field', '', 0),
(498, 1, '2022-12-14 15:02:24', '2022-12-14 08:02:24', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Feature Status', 'feature_status', 'publish', 'closed', 'closed', '', 'field_639982c22a57f', '', '', '2022-12-14 15:02:24', '2022-12-14 08:02:24', '', 481, 'http://biolink.local/?post_type=acf-field&p=498', 6, 'acf-field', '', 0),
(499, 1, '2022-12-14 15:02:24', '2022-12-14 08:02:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tiêu đề', 'feature_title', 'publish', 'closed', 'closed', '', 'field_639982da2a581', '', '', '2022-12-14 15:43:39', '2022-12-14 08:43:39', '', 481, 'http://biolink.local/?post_type=acf-field&#038;p=499', 8, 'acf-field', '', 0),
(500, 1, '2022-12-14 15:02:24', '2022-12-14 08:02:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub', 'feature_subtitle', 'publish', 'closed', 'closed', '', 'field_639982de2a582', '', '', '2022-12-14 15:43:39', '2022-12-14 08:43:39', '', 481, 'http://biolink.local/?post_type=acf-field&#038;p=500', 7, 'acf-field', '', 0),
(501, 1, '2022-12-14 15:03:46', '2022-12-14 08:03:46', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '431-revision-v1', '', '', '2022-12-14 15:03:46', '2022-12-14 08:03:46', '', 431, 'http://biolink.local/?p=501', 0, 'revision', '', 0),
(502, 1, '2022-12-14 15:05:01', '2022-12-14 08:05:01', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Nội dung', 'feature_rp', 'publish', 'closed', 'closed', '', 'field_6399836961677', '', '', '2022-12-14 15:43:39', '2022-12-14 08:43:39', '', 481, 'http://biolink.local/?post_type=acf-field&#038;p=502', 9, 'acf-field', '', 0),
(503, 1, '2022-12-14 15:05:01', '2022-12-14 08:05:01', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'ft_img', 'publish', 'closed', 'closed', '', 'field_6399837c61678', '', '', '2022-12-14 15:05:01', '2022-12-14 08:05:01', '', 502, 'http://biolink.local/?post_type=acf-field&p=503', 0, 'acf-field', '', 0),
(504, 1, '2022-12-14 15:05:01', '2022-12-14 08:05:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Text', 'ft_txt', 'publish', 'closed', 'closed', '', 'field_6399839161679', '', '', '2022-12-14 15:05:01', '2022-12-14 08:05:01', '', 502, 'http://biolink.local/?post_type=acf-field&p=504', 1, 'acf-field', '', 0),
(505, 1, '2022-12-14 15:05:01', '2022-12-14 08:05:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub', 'ft_subtxt', 'publish', 'closed', 'closed', '', 'field_6399839e6167a', '', '', '2022-12-14 15:05:01', '2022-12-14 08:05:01', '', 502, 'http://biolink.local/?post_type=acf-field&p=505', 2, 'acf-field', '', 0),
(506, 1, '2022-12-14 15:09:12', '2022-12-14 08:09:12', '', 'Pre-release-1', '', 'inherit', 'open', 'closed', '', 'pre-release-1', '', '', '2022-12-14 15:09:12', '2022-12-14 08:09:12', '', 431, 'http://biolink.local/wp-content/uploads/2022/12/Pre-release-1.webp', 0, 'attachment', 'image/webp', 0),
(507, 1, '2022-12-14 15:09:54', '2022-12-14 08:09:54', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '431-revision-v1', '', '', '2022-12-14 15:09:54', '2022-12-14 08:09:54', '', 431, 'http://biolink.local/?p=507', 0, 'revision', '', 0),
(508, 1, '2022-12-14 15:35:12', '2022-12-14 08:35:12', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '431-revision-v1', '', '', '2022-12-14 15:35:12', '2022-12-14 08:35:12', '', 431, 'http://biolink.local/?p=508', 0, 'revision', '', 0),
(509, 1, '2022-12-14 15:43:39', '2022-12-14 08:43:39', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Customize', 'customize', 'publish', 'closed', 'closed', '', 'field_63998b0b6feba', '', '', '2022-12-14 15:43:39', '2022-12-14 08:43:39', '', 481, 'http://biolink.local/?post_type=acf-field&p=509', 10, 'acf-field', '', 0),
(510, 1, '2022-12-14 15:43:39', '2022-12-14 08:43:39', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Customize Status', 'cus_status', 'publish', 'closed', 'closed', '', 'field_63998b176febb', '', '', '2022-12-14 15:43:39', '2022-12-14 08:43:39', '', 481, 'http://biolink.local/?post_type=acf-field&p=510', 11, 'acf-field', '', 0),
(511, 1, '2022-12-14 15:43:39', '2022-12-14 08:43:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tiêu đề', 'cus_title', 'publish', 'closed', 'closed', '', 'field_63998c8e6febd', '', '', '2022-12-14 15:43:39', '2022-12-14 08:43:39', '', 481, 'http://biolink.local/?post_type=acf-field&p=511', 12, 'acf-field', '', 0),
(512, 1, '2022-12-14 15:43:39', '2022-12-14 08:43:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Nội dung', 'cus_sub', 'publish', 'closed', 'closed', '', 'field_63998c916febe', '', '', '2022-12-14 15:43:39', '2022-12-14 08:43:39', '', 481, 'http://biolink.local/?post_type=acf-field&p=512', 13, 'acf-field', '', 0),
(513, 1, '2022-12-14 15:43:39', '2022-12-14 08:43:39', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Customize Left', 'cus_left', 'publish', 'closed', 'closed', '', 'field_63998b2c6febc', '', '', '2022-12-14 15:44:31', '2022-12-14 08:44:31', '', 481, 'http://biolink.local/?post_type=acf-field&#038;p=513', 14, 'acf-field', '', 0),
(514, 1, '2022-12-14 15:44:31', '2022-12-14 08:44:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'cus_txt', 'publish', 'closed', 'closed', '', 'field_63998cd7cd25e', '', '', '2022-12-14 15:44:31', '2022-12-14 08:44:31', '', 513, 'http://biolink.local/?post_type=acf-field&p=514', 0, 'acf-field', '', 0),
(515, 1, '2022-12-14 15:44:31', '2022-12-14 08:44:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub', 'cus_subtxt', 'publish', 'closed', 'closed', '', 'field_63998ce3cd25f', '', '', '2022-12-14 15:44:31', '2022-12-14 08:44:31', '', 513, 'http://biolink.local/?post_type=acf-field&p=515', 1, 'acf-field', '', 0),
(516, 1, '2022-12-14 15:45:15', '2022-12-14 08:45:15', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Customize Right', 'cus_right', 'publish', 'closed', 'closed', '', 'field_63998cf395e18', '', '', '2022-12-14 16:23:19', '2022-12-14 09:23:19', '', 481, 'http://biolink.local/?post_type=acf-field&#038;p=516', 15, 'acf-field', '', 0),
(517, 1, '2022-12-14 15:45:15', '2022-12-14 08:45:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'cus_txt', 'publish', 'closed', 'closed', '', 'field_63998cf395e19', '', '', '2022-12-14 15:45:15', '2022-12-14 08:45:15', '', 516, 'http://biolink.local/?post_type=acf-field&p=517', 0, 'acf-field', '', 0),
(518, 1, '2022-12-14 15:45:15', '2022-12-14 08:45:15', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub', 'cus_subtxt', 'publish', 'closed', 'closed', '', 'field_63998cf395e1a', '', '', '2022-12-14 15:45:15', '2022-12-14 08:45:15', '', 516, 'http://biolink.local/?post_type=acf-field&p=518', 1, 'acf-field', '', 0),
(519, 1, '2022-12-14 15:45:15', '2022-12-14 08:45:15', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Customize Center', 'cus_center', 'publish', 'closed', 'closed', '', 'field_63998d0695e1c', '', '', '2022-12-14 16:23:19', '2022-12-14 09:23:19', '', 481, 'http://biolink.local/?post_type=acf-field&#038;p=519', 16, 'acf-field', '', 0),
(520, 1, '2022-12-14 16:00:58', '2022-12-14 09:00:58', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '431-revision-v1', '', '', '2022-12-14 16:00:58', '2022-12-14 09:00:58', '', 431, 'http://biolink.local/?p=520', 0, 'revision', '', 0),
(521, 1, '2022-12-14 16:05:45', '2022-12-14 09:05:45', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '431-revision-v1', '', '', '2022-12-14 16:05:45', '2022-12-14 09:05:45', '', 431, 'http://biolink.local/?p=521', 0, 'revision', '', 0),
(522, 1, '2022-12-14 16:23:19', '2022-12-14 09:23:19', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Question', 'question', 'publish', 'closed', 'closed', '', 'field_6399959238403', '', '', '2022-12-14 16:23:19', '2022-12-14 09:23:19', '', 481, 'http://biolink.local/?post_type=acf-field&p=522', 17, 'acf-field', '', 0),
(523, 1, '2022-12-14 16:23:19', '2022-12-14 09:23:19', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Question', 'qa_status', 'publish', 'closed', 'closed', '', 'field_6399959d38404', '', '', '2022-12-14 16:23:19', '2022-12-14 09:23:19', '', 481, 'http://biolink.local/?post_type=acf-field&p=523', 18, 'acf-field', '', 0),
(524, 1, '2022-12-14 16:23:20', '2022-12-14 09:23:20', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tiêu đề', 'qa_title', 'publish', 'closed', 'closed', '', 'field_639995ae38405', '', '', '2022-12-14 16:23:20', '2022-12-14 09:23:20', '', 481, 'http://biolink.local/?post_type=acf-field&p=524', 19, 'acf-field', '', 0),
(525, 1, '2022-12-14 16:23:20', '2022-12-14 09:23:20', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Sub', 'qa_subtitle', 'publish', 'closed', 'closed', '', 'field_639995c338406', '', '', '2022-12-14 16:23:20', '2022-12-14 09:23:20', '', 481, 'http://biolink.local/?post_type=acf-field&p=525', 20, 'acf-field', '', 0),
(526, 1, '2022-12-14 16:23:20', '2022-12-14 09:23:20', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'QA accodion', 'qa_rp', 'publish', 'closed', 'closed', '', 'field_639995cc38407', '', '', '2022-12-14 16:23:20', '2022-12-14 09:23:20', '', 481, 'http://biolink.local/?post_type=acf-field&p=526', 21, 'acf-field', '', 0),
(527, 1, '2022-12-14 16:23:20', '2022-12-14 09:23:20', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Question', 'question', 'publish', 'closed', 'closed', '', 'field_639995f338408', '', '', '2022-12-14 16:23:20', '2022-12-14 09:23:20', '', 526, 'http://biolink.local/?post_type=acf-field&p=527', 0, 'acf-field', '', 0),
(528, 1, '2022-12-14 16:23:20', '2022-12-14 09:23:20', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Answer', 'answer', 'publish', 'closed', 'closed', '', 'field_639995fc38409', '', '', '2022-12-14 16:42:07', '2022-12-14 09:42:07', '', 526, 'http://biolink.local/?post_type=acf-field&#038;p=528', 1, 'acf-field', '', 0),
(529, 1, '2022-12-14 16:28:48', '2022-12-14 09:28:48', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '431-revision-v1', '', '', '2022-12-14 16:28:48', '2022-12-14 09:28:48', '', 431, 'http://biolink.local/?p=529', 0, 'revision', '', 0),
(530, 1, '2022-12-14 16:29:22', '2022-12-14 09:29:22', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '431-revision-v1', '', '', '2022-12-14 16:29:22', '2022-12-14 09:29:22', '', 431, 'http://biolink.local/?p=530', 0, 'revision', '', 0),
(532, 1, '2022-12-14 17:08:27', '2022-12-14 10:08:27', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2022-12-14 17:08:27', '2022-12-14 10:08:27', '', 0, 'http://biolink.local/wp-content/uploads/2022/12/favicon.svg', 0, 'attachment', 'image/svg+xml', 0),
(533, 1, '2022-12-14 17:17:28', '2022-12-14 10:17:28', '<!-- wp:heading -->\n<h2 id=\"we-gave-bio-links-a-major-upgrade\"><strong>We gave bio links a major upgrade</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>We’re always looking for ways to help you level up your music marketing, and this year was no different with with the launch of our next-generation bio link.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.linkfire.com/blog/introducing-linkfires-next-generation-bio-link\" rel=\"noreferrer noopener\" target=\"_blank\">Linkfire\'s new bio link builder</a>&nbsp;is jam-packed with thoughtfully designed new features and customizations, so that you can elevate your landing pages without any coding or design skills.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.linkfire.com/blog/introducing-linkfires-next-generation-bio-link\" rel=\"noreferrer noopener\" target=\"_blank\">Learn all about our next-generation bio link.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"linkDestination\":\"custom\"} -->\n<figure class=\"wp-block-image\"><a href=\"https://www.linkfire.com/blog/introducing-linkfires-next-generation-bio-link\" target=\"_blank\" rel=\"noreferrer noopener\"><img src=\"https://www.linkfire.com/hs-fs/hubfs/Blog%20image%201%20bio%20link.png?width=500&amp;height=383&amp;name=Blog%20image%201%20bio%20link.png\" alt=\"Blog year in review bio link\"/></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Offline promotion got even easier with QR codes</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Whether you’re promoting a new release or an upcoming tour, QR codes make it easier than ever to reach more fans both online and offline.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Thanks to our new&nbsp;<a href=\"https://www.linkfire.com/blog/how-to-promote-your-music-with-qr-codes-in-2022\" rel=\"noreferrer noopener\" target=\"_blank\">QR code generator</a>, you can easily create QR codes for your Linkfire links and track invaluable marketing data for your campaigns—all in one platform.<a href=\"https://lnk.to/emailcaptureblogBl\"></a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.linkfire.com/blog/how-to-promote-your-music-with-qr-codes-in-2022\" rel=\"noreferrer noopener\" target=\"_blank\">Discover how to promote your music with QR codes in 2023.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 id=\"apple-music-streaming-data-became-more-accessible\"><a href=\"https://www.linkfire.com/blog/how-to-promote-your-music-with-qr-codes-in-2023\" rel=\"noreferrer noopener\" target=\"_blank\"></a>Apple Music streaming data became more accessible</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>As part of our mission to make music data more accessible and actionable, we partnered with Apple Music to give you better streaming insights, right from your Linkfire dashboard.<br><br>Now, you can find out which of your songs are being streamed on Apple Music, how much of your catalog is being listened to after a click-through, which tracks are being added to Apple Music libraries, and more. You can use data like this to better understand fan preferences, identify different levels of engagement, and make the most of your marketing budget.<br><br><a href=\"https://www.linkfire.com/blog/3-ways-to-use-apple-music-streaming-insights-to-improve-your-music-marketing\" rel=\"noreferrer noopener\" target=\"_blank\">Read up on our new Apple Music Streaming Insights.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"linkDestination\":\"custom\"} -->\n<figure class=\"wp-block-image\"><a href=\"https://www.linkfire.com/blog/3-ways-to-use-apple-music-streaming-insights-to-improve-your-music-marketing\" target=\"_blank\" rel=\"noreferrer noopener\"><img src=\"https://www.linkfire.com/hs-fs/hubfs/Blog%20image%203%20Apple%20Music.png?width=500&amp;height=383&amp;name=Blog%20image%203%20Apple%20Music.png\" alt=\"Blog image Apple Music\"/></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2 id=\" -1\">&nbsp;</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2 id=\"access-our-best-music-marketing-insights-and-predictions-in-a-free-report\">Access our best music marketing insights and predictions in a free report</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With 2023 right around the corner, now is the perfect time to zoom out and reflect on everything we’ve learned this year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Linkfire is proud to present our&nbsp;<a href=\"https://lnk.to/musicmktreport22Bl\" rel=\"noreferrer noopener\" target=\"_blank\">2022 Music Marketing report</a>, which includes:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>The most successful music marketing strategies of 2022</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Regional insights, including top DSPs</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Social media trends</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>2023 music marketing predictions from label reps, artists, and industry experts</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://lnk.to/musicmktreport22Bl\" rel=\"noreferrer noopener\" target=\"_blank\"><strong>Get all the latest data, benchmarks, and insights you need to build a smarter music marketing strategy in 2023.</strong></a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"linkDestination\":\"custom\"} -->\n<figure class=\"wp-block-image\"><a href=\"https://lnk.to/musicmktreport22Bl\" target=\"_blank\" rel=\"noreferrer noopener\"><img src=\"https://www.linkfire.com/hs-fs/hubfs/linkfire%202022%20year%20in%20review%20music%20marketing%20report.png?width=500&amp;height=383&amp;name=linkfire%202022%20year%20in%20review%20music%20marketing%20report.png\" alt=\"linkfire 2022 year in review music marketing report\"/></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>From all of us at Linkfire, we hope you have a wonderful holiday season, and we look forward to seeing you in 2023!</p>\n<!-- /wp:paragraph -->', 'Linkfire: 2022 year in review', '', 'publish', 'open', 'open', '', 'linkfire-2022-year-in-review', '', '', '2022-12-15 14:58:06', '2022-12-15 07:58:06', '', 0, 'http://biolink.local/?p=533', 0, 'post', '', 0),
(534, 1, '2022-12-14 17:17:28', '2022-12-14 10:17:28', '<!-- wp:heading -->\n<h2 id=\"we-gave-bio-links-a-major-upgrade\"><strong>We gave bio links a major upgrade</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>We’re always looking for ways to help you level up your music marketing, and this year was no different with with the launch of our next-generation bio link.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.linkfire.com/blog/introducing-linkfires-next-generation-bio-link\" rel=\"noreferrer noopener\" target=\"_blank\">Linkfire\'s new bio link builder</a>&nbsp;is jam-packed with thoughtfully designed new features and customizations, so that you can elevate your landing pages without any coding or design skills.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.linkfire.com/blog/introducing-linkfires-next-generation-bio-link\" rel=\"noreferrer noopener\" target=\"_blank\">Learn all about our next-generation bio link.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"linkDestination\":\"custom\"} -->\n<figure class=\"wp-block-image\"><a href=\"https://www.linkfire.com/blog/introducing-linkfires-next-generation-bio-link\" target=\"_blank\" rel=\"noreferrer noopener\"><img src=\"https://www.linkfire.com/hs-fs/hubfs/Blog%20image%201%20bio%20link.png?width=500&amp;height=383&amp;name=Blog%20image%201%20bio%20link.png\" alt=\"Blog year in review bio link\"/></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><strong>Offline promotion got even easier with QR codes</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Whether you’re promoting a new release or an upcoming tour, QR codes make it easier than ever to reach more fans both online and offline.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Thanks to our new&nbsp;<a href=\"https://www.linkfire.com/blog/how-to-promote-your-music-with-qr-codes-in-2022\" rel=\"noreferrer noopener\" target=\"_blank\">QR code generator</a>, you can easily create QR codes for your Linkfire links and track invaluable marketing data for your campaigns—all in one platform.<a href=\"https://lnk.to/emailcaptureblogBl\"></a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.linkfire.com/blog/how-to-promote-your-music-with-qr-codes-in-2022\" rel=\"noreferrer noopener\" target=\"_blank\">Discover how to promote your music with QR codes in 2023.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 id=\"apple-music-streaming-data-became-more-accessible\"><a href=\"https://www.linkfire.com/blog/how-to-promote-your-music-with-qr-codes-in-2023\" rel=\"noreferrer noopener\" target=\"_blank\"></a>Apple Music streaming data became more accessible</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>As part of our mission to make music data more accessible and actionable, we partnered with Apple Music to give you better streaming insights, right from your Linkfire dashboard.<br><br>Now, you can find out which of your songs are being streamed on Apple Music, how much of your catalog is being listened to after a click-through, which tracks are being added to Apple Music libraries, and more. You can use data like this to better understand fan preferences, identify different levels of engagement, and make the most of your marketing budget.<br><br><a href=\"https://www.linkfire.com/blog/3-ways-to-use-apple-music-streaming-insights-to-improve-your-music-marketing\" rel=\"noreferrer noopener\" target=\"_blank\">Read up on our new Apple Music Streaming Insights.</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"linkDestination\":\"custom\"} -->\n<figure class=\"wp-block-image\"><a href=\"https://www.linkfire.com/blog/3-ways-to-use-apple-music-streaming-insights-to-improve-your-music-marketing\" target=\"_blank\" rel=\"noreferrer noopener\"><img src=\"https://www.linkfire.com/hs-fs/hubfs/Blog%20image%203%20Apple%20Music.png?width=500&amp;height=383&amp;name=Blog%20image%203%20Apple%20Music.png\" alt=\"Blog image Apple Music\"/></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:heading -->\n<h2 id=\" -1\">&nbsp;</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2 id=\"access-our-best-music-marketing-insights-and-predictions-in-a-free-report\">Access our best music marketing insights and predictions in a free report</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>With 2023 right around the corner, now is the perfect time to zoom out and reflect on everything we’ve learned this year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Linkfire is proud to present our&nbsp;<a href=\"https://lnk.to/musicmktreport22Bl\" rel=\"noreferrer noopener\" target=\"_blank\">2022 Music Marketing report</a>, which includes:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>The most successful music marketing strategies of 2022</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Regional insights, including top DSPs</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Social media trends</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>2023 music marketing predictions from label reps, artists, and industry experts</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://lnk.to/musicmktreport22Bl\" rel=\"noreferrer noopener\" target=\"_blank\"><strong>Get all the latest data, benchmarks, and insights you need to build a smarter music marketing strategy in 2023.</strong></a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"linkDestination\":\"custom\"} -->\n<figure class=\"wp-block-image\"><a href=\"https://lnk.to/musicmktreport22Bl\" target=\"_blank\" rel=\"noreferrer noopener\"><img src=\"https://www.linkfire.com/hs-fs/hubfs/linkfire%202022%20year%20in%20review%20music%20marketing%20report.png?width=500&amp;height=383&amp;name=linkfire%202022%20year%20in%20review%20music%20marketing%20report.png\" alt=\"linkfire 2022 year in review music marketing report\"/></a></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>From all of us at Linkfire, we hope you have a wonderful holiday season, and we look forward to seeing you in 2023!</p>\n<!-- /wp:paragraph -->', 'Linkfire: 2022 year in review', '', 'inherit', 'closed', 'closed', '', '533-revision-v1', '', '', '2022-12-14 17:17:28', '2022-12-14 10:17:28', '', 533, 'http://biolink.local/?p=534', 0, 'revision', '', 0),
(535, 1, '2022-12-14 17:17:36', '2022-12-14 10:17:36', '', 'Blog hero', '', 'inherit', 'open', 'closed', '', 'blog-hero', '', '', '2022-12-14 17:17:36', '2022-12-14 10:17:36', '', 533, 'http://biolink.local/wp-content/uploads/2022/12/Blog-hero.png', 0, 'attachment', 'image/png', 0),
(536, 4, '2022-12-14 17:33:29', '2022-12-14 10:33:29', '<!-- wp:acf/biolink-person {\n    \"id\": \"block_6392b11f96f2f\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": 483,\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp_0_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_0_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_0_bio1_rpText\": \"Facebook Group\",\n        \"_bio1_rp_0_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_0_bio1_rpLink\": \"\",\n        \"_bio1_rp_0_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_1_bio1_rpIcon\": \"bio1Yt\",\n        \"_bio1_rp_1_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_1_bio1_rpText\": \"Youtube Channer\",\n        \"_bio1_rp_1_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_1_bio1_rpLink\": \"\",\n        \"_bio1_rp_1_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_2_bio1_rpIcon\": \"bio1Tiktok\",\n        \"_bio1_rp_2_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_2_bio1_rpText\": \"Tiktok\",\n        \"_bio1_rp_2_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_2_bio1_rpLink\": \"\",\n        \"_bio1_rp_2_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_3_bio1_rpIcon\": \"bio1Zalo\",\n        \"_bio1_rp_3_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_3_bio1_rpText\": \"Zalo\",\n        \"_bio1_rp_3_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_3_bio1_rpLink\": \"\",\n        \"_bio1_rp_3_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_4_bio1_rpIcon\": \"bio1Shopee\",\n        \"_bio1_rp_4_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_4_bio1_rpText\": \"Shopee\",\n        \"_bio1_rp_4_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_4_bio1_rpLink\": \"\",\n        \"_bio1_rp_4_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_5_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_5_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_5_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_5_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_5_bio1_rpLink\": \"\",\n        \"_bio1_rp_5_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_6_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_6_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_6_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_6_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_6_bio1_rpLink\": \"\",\n        \"_bio1_rp_6_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_7_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_7_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_7_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_7_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_7_bio1_rpLink\": \"\",\n        \"_bio1_rp_7_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_8_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_8_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_8_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_8_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_8_bio1_rpLink\": \"\",\n        \"_bio1_rp_8_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_9_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_9_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_9_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_9_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_9_bio1_rpLink\": \"\",\n        \"_bio1_rp_9_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_10_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_10_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_10_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_10_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_10_bio1_rpLink\": \"\",\n        \"_bio1_rp_10_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_11_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_11_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_11_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_11_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_11_bio1_rpLink\": \"\",\n        \"_bio1_rp_11_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp\": 12,\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'BioLink', '', 'inherit', 'closed', 'closed', '', '334-revision-v1', '', '', '2022-12-14 17:33:29', '2022-12-14 10:33:29', '', 334, 'http://biolink.local/?p=536', 0, 'revision', '', 0),
(537, 4, '2022-12-14 17:33:30', '2022-12-14 10:33:30', '<!-- wp:acf/biolink-person {\n    \"id\": \"block_6392b11f96f2f\",\n    \"name\": \"acf\\/biolink-person\",\n    \"data\": {\n        \"bio1_img\": 483,\n        \"_bio1_img\": \"field_6388332af7587\",\n        \"bio1_name\": \"Official Website\",\n        \"_bio1_name\": \"field_6388650b16b68\",\n        \"bio1_desc\": \"Official Website\",\n        \"_bio1_desc\": \"field_638abe5c464b3\",\n        \"bio1_nameColor\": \"#000\",\n        \"_bio1_nameColor\": \"field_638ef260ef69a\",\n        \"bio1_descColor\": \"#000\",\n        \"_bio1_descColor\": \"field_638ef27fef69b\",\n        \"bio1_author_style\": \"bio1StyleNormal\",\n        \"_bio1_author_style\": \"field_638abe69464b4\",\n        \"bio1_border\": \"16\",\n        \"_bio1_border\": \"field_638ec42d177f9\",\n        \"bio1_rp_0_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_0_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_0_bio1_rpText\": \"Facebook Group\",\n        \"_bio1_rp_0_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_0_bio1_rpLink\": \"\",\n        \"_bio1_rp_0_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_1_bio1_rpIcon\": \"bio1Yt\",\n        \"_bio1_rp_1_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_1_bio1_rpText\": \"Youtube Channer\",\n        \"_bio1_rp_1_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_1_bio1_rpLink\": \"\",\n        \"_bio1_rp_1_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_2_bio1_rpIcon\": \"bio1Tiktok\",\n        \"_bio1_rp_2_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_2_bio1_rpText\": \"Tiktok\",\n        \"_bio1_rp_2_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_2_bio1_rpLink\": \"\",\n        \"_bio1_rp_2_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_3_bio1_rpIcon\": \"bio1Zalo\",\n        \"_bio1_rp_3_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_3_bio1_rpText\": \"Zalo\",\n        \"_bio1_rp_3_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_3_bio1_rpLink\": \"\",\n        \"_bio1_rp_3_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_4_bio1_rpIcon\": \"bio1Shopee\",\n        \"_bio1_rp_4_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_4_bio1_rpText\": \"Shopee\",\n        \"_bio1_rp_4_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_4_bio1_rpLink\": \"\",\n        \"_bio1_rp_4_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_5_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_5_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_5_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_5_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_5_bio1_rpLink\": \"\",\n        \"_bio1_rp_5_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_6_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_6_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_6_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_6_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_6_bio1_rpLink\": \"\",\n        \"_bio1_rp_6_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_7_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_7_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_7_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_7_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_7_bio1_rpLink\": \"\",\n        \"_bio1_rp_7_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_8_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_8_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_8_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_8_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_8_bio1_rpLink\": \"\",\n        \"_bio1_rp_8_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_9_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_9_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_9_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_9_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_9_bio1_rpLink\": \"\",\n        \"_bio1_rp_9_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_10_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_10_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_10_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_10_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_10_bio1_rpLink\": \"\",\n        \"_bio1_rp_10_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp_11_bio1_rpIcon\": \"bio1Fb\",\n        \"_bio1_rp_11_bio1_rpIcon\": \"field_638ad2342f2c8\",\n        \"bio1_rp_11_bio1_rpText\": \"Official Website\",\n        \"_bio1_rp_11_bio1_rpText\": \"field_638ad2a596f50\",\n        \"bio1_rp_11_bio1_rpLink\": \"\",\n        \"_bio1_rp_11_bio1_rpLink\": \"field_638ad2c896f51\",\n        \"bio1_rp\": 12,\n        \"_bio1_rp\": \"field_638ad21e2f2c7\"\n    },\n    \"align\": \"\",\n    \"mode\": \"preview\"\n} /-->', 'BioLink', '', 'inherit', 'closed', 'closed', '', '334-revision-v1', '', '', '2022-12-14 17:33:30', '2022-12-14 10:33:30', '', 334, 'http://biolink.local/?p=537', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(538, 1, '2022-12-15 09:28:00', '2022-12-15 02:28:00', '<!-- wp:paragraph -->\n<p>Let’s take the monotony out of music marketing. Here’s how the pros automate their release campaigns, eliminate repetitive tasks, and reclaim their time.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><img src=\"https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png?width=740&amp;height=395&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png\" alt=\"Linkfire time saving tips automations for music marketers - Hero\" width=\"740\" height=\"395\" srcset=\"https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png?width=370&amp;height=198&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png 370w, https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png?width=740&amp;height=395&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png 740w, https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png?width=1110&amp;height=593&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png 1110w, https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png?width=1480&amp;height=790&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png 1480w, https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png?width=1850&amp;height=988&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png 1850w, https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png?width=2220&amp;height=1185&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png 2220w\"></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you’ve ever run a&nbsp;<a href=\"https://www.linkfire.com/blog/the-ultimate-guide-to-music-marketing\" rel=\"noreferrer noopener\" target=\"_blank\">music marketing&nbsp;</a>campaign, you know just how much time and energy it consumes. It’s all too easy to feel like you’re being pulled in a million different directions, and there are never enough hours in the day to accomplish everything you think you should be doing.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>While many of those things are important to the success of your campaign, there are plenty of mundane, repetitive tasks that you may not have realized can be easily automated.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>After gathering insight from the experts on Linkfire’s customer success team,&nbsp;<strong>we’ve identified three crucial time-saving tips that will help you run more efficient music marketing campaigns.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Let’s get into it!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 id=\"1.-include-hyperlinked-images\">1. Link shortcuts</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Blog%20image%202%20link%20shortcuts.png?width=500&amp;height=404&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Blog%20image%202%20link%20shortcuts.png\" alt=\"Linkfire time saving tips automations for music marketers - Blog image 2 link shortcuts\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>“<a href=\"https://help.linkfire.com/hc/en-us/articles/360010291020-Linkfire-Shortcuts\" rel=\"noreferrer noopener\" target=\"_blank\">Linkfire shortcuts</a>&nbsp;are by far my favorite time-saving tip!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Do you have access to several Linkfire&nbsp;<a href=\"https://kb.linkfire.com/hc/en-us/articles/115002663773-What-Is-A-Board-\" rel=\"noreferrer noopener\" target=\"_blank\">boards</a>&nbsp;and don\'t know where a certain link lives? Don’t waste time endlessly scrolling and clicking around. Just add /board to the end of the URL, and you’ll immediately get taken to the correct board.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For example, let’s say you’ve created a smart link called&nbsp;<em>artist.lnk.to/albumname</em>. To find the Linkfire board where you created that link, all you need to do is type&nbsp;<em>artist.lnk.to/albumname/board&nbsp;</em>in your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Similarly, you can append the URL with /insights to get a quick look at your link performance. Or perhaps you’re managing a global release campaign and need to be sure all the territories are set up correctly. Add /lang/us, for example, and you’ll see what link visitors in the US will see, no matter where you are.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://help.linkfire.com/hc/en-us/articles/360010291020-Linkfire-Shortcuts\" rel=\"noreferrer noopener\" target=\"_blank\"><strong>These link shortcuts</strong></a><strong>&nbsp;save our customers so much time in their day-to-day work</strong>, and it makes managing Linkfire links effortless.”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>–&nbsp;Ligia Pereira, Customer Success Manager</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 id=\"2.-upcoming-shows-or-events\"><strong>2. Territory management</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Blog%20image%201%20Territory%20management.png?width=500&amp;height=404&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Blog%20image%201%20Territory%20management.png\" alt=\"Linkfire time saving tips automations for music marketers - Blog image 1 Territory management\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>“Big fan of&nbsp;<a href=\"https://help.linkfire.com/hc/en-us/articles/360002382913-Creating-Territory-Specific-Landing-Pages\" rel=\"noreferrer noopener\" target=\"_blank\">territory management</a>&nbsp;over here! By setting up multiple territories for your Linkfire links,&nbsp;<strong>you can give fans from different countries a customized experience that leads to more clicks and streams.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Want to feature regional streaming services on all your release links, but don’t want to do the tedious work of adding them one by one every time you create a new link? Do you want a set of custom call-to-action buttons as the default for all of your links? Or maybe you’d like to display different album artwork in different countries?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>All of this is possible with our territory management feature, which you can access from your board settings anytime.&nbsp;<a href=\"https://help.linkfire.com/hc/en-us/articles/360002382913-Creating-Territory-Specific-Landing-Pages\" rel=\"noreferrer noopener\" target=\"_blank\">Learn more about creating territory-specific landing pages here.</a>”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>– Aleks Balcerzak, Senior Customer Support Manager</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 id=\"3.-email-capture\"><strong>3. Scheduled rescans</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Blog%20image%203%20scheduled%20rescans.png?width=500&amp;height=404&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Blog%20image%203%20scheduled%20rescans.png\" alt=\"Linkfire time saving tips automations for music marketers - Blog image 3 scheduled rescans\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>“Are you ready for release night?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We all know it isn’t always possible to be in front of your computer waiting to manually rescan a release link right when your new music comes out.&nbsp;<strong>We developed our&nbsp;</strong><a href=\"https://help.linkfire.com/hc/en-us/articles/360002948854-Rescanning-your-links\" rel=\"noreferrer noopener\" target=\"_blank\">scheduled rescan</a><strong>&nbsp;feature to make release night a breeze for artists and labels.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Simply enter the URL, UPC, or ISRC code for your new single or album ahead of release night, and schedule a rescan for the exact time it comes out.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once you’ve scheduled it, the music services you selected will be rescanned repeatedly until a match is found, for up to 24 hours. If the result is a 95% match or higher, Linkfire will automatically add the service to your release landing page.&nbsp;<a href=\"https://help.linkfire.com/hc/en-us/articles/360002948854-Rescanning-your-links\" rel=\"noreferrer noopener\" target=\"_blank\">Learn more about rescanning your Linkfire links here.</a>”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>– Connor Boggs, Senior Customer Success Manager - Enterprise</em></p>\n<!-- /wp:paragraph -->', 'Linkfire’s top 3 time-saving tips for busy music marketers', '', 'publish', 'open', 'open', '', 'linkfires-top-3-time-saving-tips-for-busy-music-marketers', '', '', '2022-12-15 14:58:01', '2022-12-15 07:58:01', '', 0, 'http://biolink.local/?p=538', 0, 'post', '', 0),
(539, 1, '2022-12-15 09:27:56', '2022-12-15 02:27:56', '', 'Linkfire time saving tips automations for music marketers - Hero', '', 'inherit', 'open', 'closed', '', 'linkfire-time-saving-tips-automations-for-music-marketers-hero', '', '', '2022-12-15 09:27:56', '2022-12-15 02:27:56', '', 538, 'http://biolink.local/wp-content/uploads/2022/12/Linkfire-time-saving-tips-automations-for-music-marketers-Hero.png', 0, 'attachment', 'image/png', 0),
(540, 1, '2022-12-15 09:28:00', '2022-12-15 02:28:00', '<!-- wp:paragraph -->\n<p>Let’s take the monotony out of music marketing. Here’s how the pros automate their release campaigns, eliminate repetitive tasks, and reclaim their time.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><img src=\"https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png?width=740&amp;height=395&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png\" alt=\"Linkfire time saving tips automations for music marketers - Hero\" width=\"740\" height=\"395\" srcset=\"https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png?width=370&amp;height=198&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png 370w, https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png?width=740&amp;height=395&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png 740w, https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png?width=1110&amp;height=593&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png 1110w, https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png?width=1480&amp;height=790&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png 1480w, https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png?width=1850&amp;height=988&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png 1850w, https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png?width=2220&amp;height=1185&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Hero.png 2220w\"></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you’ve ever run a&nbsp;<a href=\"https://www.linkfire.com/blog/the-ultimate-guide-to-music-marketing\" rel=\"noreferrer noopener\" target=\"_blank\">music marketing&nbsp;</a>campaign, you know just how much time and energy it consumes. It’s all too easy to feel like you’re being pulled in a million different directions, and there are never enough hours in the day to accomplish everything you think you should be doing.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>While many of those things are important to the success of your campaign, there are plenty of mundane, repetitive tasks that you may not have realized can be easily automated.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>After gathering insight from the experts on Linkfire’s customer success team,&nbsp;<strong>we’ve identified three crucial time-saving tips that will help you run more efficient music marketing campaigns.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Let’s get into it!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 id=\"1.-include-hyperlinked-images\">1. Link shortcuts</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Blog%20image%202%20link%20shortcuts.png?width=500&amp;height=404&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Blog%20image%202%20link%20shortcuts.png\" alt=\"Linkfire time saving tips automations for music marketers - Blog image 2 link shortcuts\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>“<a href=\"https://help.linkfire.com/hc/en-us/articles/360010291020-Linkfire-Shortcuts\" rel=\"noreferrer noopener\" target=\"_blank\">Linkfire shortcuts</a>&nbsp;are by far my favorite time-saving tip!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Do you have access to several Linkfire&nbsp;<a href=\"https://kb.linkfire.com/hc/en-us/articles/115002663773-What-Is-A-Board-\" rel=\"noreferrer noopener\" target=\"_blank\">boards</a>&nbsp;and don\'t know where a certain link lives? Don’t waste time endlessly scrolling and clicking around. Just add /board to the end of the URL, and you’ll immediately get taken to the correct board.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For example, let’s say you’ve created a smart link called&nbsp;<em>artist.lnk.to/albumname</em>. To find the Linkfire board where you created that link, all you need to do is type&nbsp;<em>artist.lnk.to/albumname/board&nbsp;</em>in your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Similarly, you can append the URL with /insights to get a quick look at your link performance. Or perhaps you’re managing a global release campaign and need to be sure all the territories are set up correctly. Add /lang/us, for example, and you’ll see what link visitors in the US will see, no matter where you are.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://help.linkfire.com/hc/en-us/articles/360010291020-Linkfire-Shortcuts\" rel=\"noreferrer noopener\" target=\"_blank\"><strong>These link shortcuts</strong></a><strong>&nbsp;save our customers so much time in their day-to-day work</strong>, and it makes managing Linkfire links effortless.”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>–&nbsp;Ligia Pereira, Customer Success Manager</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 id=\"2.-upcoming-shows-or-events\"><strong>2. Territory management</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Blog%20image%201%20Territory%20management.png?width=500&amp;height=404&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Blog%20image%201%20Territory%20management.png\" alt=\"Linkfire time saving tips automations for music marketers - Blog image 1 Territory management\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>“Big fan of&nbsp;<a href=\"https://help.linkfire.com/hc/en-us/articles/360002382913-Creating-Territory-Specific-Landing-Pages\" rel=\"noreferrer noopener\" target=\"_blank\">territory management</a>&nbsp;over here! By setting up multiple territories for your Linkfire links,&nbsp;<strong>you can give fans from different countries a customized experience that leads to more clicks and streams.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Want to feature regional streaming services on all your release links, but don’t want to do the tedious work of adding them one by one every time you create a new link? Do you want a set of custom call-to-action buttons as the default for all of your links? Or maybe you’d like to display different album artwork in different countries?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>All of this is possible with our territory management feature, which you can access from your board settings anytime.&nbsp;<a href=\"https://help.linkfire.com/hc/en-us/articles/360002382913-Creating-Territory-Specific-Landing-Pages\" rel=\"noreferrer noopener\" target=\"_blank\">Learn more about creating territory-specific landing pages here.</a>”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>– Aleks Balcerzak, Senior Customer Support Manager</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 id=\"3.-email-capture\"><strong>3. Scheduled rescans</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://www.linkfire.com/hs-fs/hubfs/Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Blog%20image%203%20scheduled%20rescans.png?width=500&amp;height=404&amp;name=Linkfire%20time%20saving%20tips%20automations%20for%20music%20marketers%20-%20Blog%20image%203%20scheduled%20rescans.png\" alt=\"Linkfire time saving tips automations for music marketers - Blog image 3 scheduled rescans\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>“Are you ready for release night?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>We all know it isn’t always possible to be in front of your computer waiting to manually rescan a release link right when your new music comes out.&nbsp;<strong>We developed our&nbsp;</strong><a href=\"https://help.linkfire.com/hc/en-us/articles/360002948854-Rescanning-your-links\" rel=\"noreferrer noopener\" target=\"_blank\">scheduled rescan</a><strong>&nbsp;feature to make release night a breeze for artists and labels.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Simply enter the URL, UPC, or ISRC code for your new single or album ahead of release night, and schedule a rescan for the exact time it comes out.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Once you’ve scheduled it, the music services you selected will be rescanned repeatedly until a match is found, for up to 24 hours. If the result is a 95% match or higher, Linkfire will automatically add the service to your release landing page.&nbsp;<a href=\"https://help.linkfire.com/hc/en-us/articles/360002948854-Rescanning-your-links\" rel=\"noreferrer noopener\" target=\"_blank\">Learn more about rescanning your Linkfire links here.</a>”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>– Connor Boggs, Senior Customer Success Manager - Enterprise</em></p>\n<!-- /wp:paragraph -->', 'Linkfire’s top 3 time-saving tips for busy music marketers', '', 'inherit', 'closed', 'closed', '', '538-revision-v1', '', '', '2022-12-15 09:28:00', '2022-12-15 02:28:00', '', 538, 'http://biolink.local/?p=540', 0, 'revision', '', 0),
(541, 1, '2022-12-15 13:46:04', '2022-12-15 06:46:04', '<!-- wp:heading {\"level\":3} -->\n<h3><em>(Dân trí) – Những giải pháp công nghệ, từ “chat”, thanh toán điện tử đến CRM (quản lý quan hệ khách hàng) hay không gian làm việc số cho doanh nghiệp ra đời bởi startup Việt, đã có bước tiến, có thể cạnh tranh sòng phẳng với các “ông lớn” thế giới tại Việt Nam.</em></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Ứng dụng nhắn tin Zalo chiếm thị phần lớn trong nước</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Zalo là ứng dụng OTT do người Việt sáng tạo, ra mắt tháng 8/2012. Hiện nay, Zalo được sử dụng rộng rãi tại Việt Nam và được mệnh danh là phần mềm “quốc dân”, có mặt đa nền tảng, được nhiều nhóm khách hàng sử dụng không phân biệt độ tuổi, giới tính, thu nhập,…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Theo khảo sát từ Decision Lab, quý IV/2021, Zalo đứng thứ hai về số người sử dụng, đồng thời là ứng dụng được ưa chuộng nhất bởi Gen X tại Việt Nam, trở thành một phần trong cuộc sống hàng ngày của người Việt. Báo cáo “Thị trường quảng cáo số Việt Nam 2021 – Chiến lược đón đầu và đột phá” của Adsota cũng cho thấy Zalo là ứng dụng nhắn tin được yêu thích nhất tại Việt Nam, khiến nhiều ông lớn trong ngành dè chừng sau nhiều năm dẫn đầu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/11/01/final-dantri-gapo-nhung-giai-phap-cong-nghe-viet-1-1docx-1667277396249.jpeg\" alt=\"Giải pháp công nghệ nội cản bước các ông lớn thế giới tại Việt Nam - 1\" title=\"Giải pháp công nghệ nội cản bước các ông lớn thế giới tại Việt Nam - 1\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>Zalo trở thành ứng dụng nhắn tin được yêu thích Việt Nam (Ảnh: GapoWork).</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Khi được hỏi đâu là ứng dụng bạn thường sử dụng hằng ngày, 48% số người được hỏi lựa chọn Zalo. Trong báo cáo của Decision Lab và Quý IV/2021, Zalo lần đầu tiên trở thành ứng dụng nhắn tin được yêu thích nhất của Gen Z.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Cuộc đua công nghệ thanh toán – “chiến binh” Việt top đầu thị phần&nbsp;</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Thanh toán điện tử là một xu hướng phát triển tất yếu, nhất là khi ngành thương mại điện tử tăng trưởng mạnh mẽ với khoảng 40 ví điện tử được cấp phép và đi vào hoạt động. Chiếm 90% thị phần người dùng ví điện tử, cuộc đua tại các điểm bán hàng chủ yếu thuộc về 5 “người chơi” đến từ Việt Nam là Payoo, MoMo, Zalo, Moca, FPT.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/11/01/final-dantri-gapo-nhung-giai-phap-cong-nghe-viet-1-1docx-1667277396418.jpeg\" alt=\"Giải pháp công nghệ nội cản bước các ông lớn thế giới tại Việt Nam - 2\" title=\"Giải pháp công nghệ nội cản bước các ông lớn thế giới tại Việt Nam - 2\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>Momo vào top đầu công nghệ thanh toán (Ảnh: GapoWork).</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mỗi ví điện tử đều có tập khách hàng riêng. VnPay cung cấp giải pháp thanh toán thông qua liên kết với ngân hàng bằng tính năng QR Pay. Moca liên kết với ứng dụng gọi xe Grab để thanh toán cước phí xe, giao hàng nhanh, mua sắm trực tuyến trong hệ sinh thái Moca và Grab.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Theo số liệu thống kê của Ngân hàng Nhà nước, tính đến thời điểm này, Momo đã có hơn 23 triệu tài khoản – cao nhất trong thị phần các ví điện tử đang hoạt động trên thị trường. Ví điện tử này cho biết hiện có mặt tại 100.000 điểm chấp nhận thanh toán, giá trị giao dịch tại các điểm bán lên tới hàng nghìn tỷ đồng mỗi tháng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Giải pháp CRM Việt Calio – đối thủ “đáng gờm” của ông lớn ngoại nhập</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Theo mô hình SaaS (Software-as-a-Service), Calio – tổng đài thông minh tích hợp CRM – là giải pháp quản lý khách hàng được 10.000 doanh nghiệp sử dụng vì sở hữu nhiều tính năng thông minh.</p>\n<!-- /wp:paragraph -->', 'Kadence Theme Celebrates 200,000 Active Installations', '', 'publish', 'open', 'open', '', 'kadence-theme-celebrates-200000-active-installations', '', '', '2022-12-15 14:57:56', '2022-12-15 07:57:56', '', 0, 'http://biolink.local/?p=541', 0, 'post', '', 0),
(542, 1, '2022-12-15 13:46:00', '2022-12-15 06:46:00', '', 'kadence-200k-1024x535', '', 'inherit', 'open', 'closed', '', 'kadence-200k-1024x535', '', '', '2022-12-15 13:46:00', '2022-12-15 06:46:00', '', 541, 'http://biolink.local/wp-content/uploads/2022/12/kadence-200k-1024x535-1.webp', 0, 'attachment', 'image/webp', 0),
(543, 1, '2022-12-15 13:46:04', '2022-12-15 06:46:04', '<!-- wp:heading -->\n<h2>More than just a theme</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The growth of Kadence, not only as a theme, but as an entire ecosystem of WordPress solutions for any kind of WordPress site, has been dependent on members of the WordPress community who have given Kadence a try. We are so grateful to members of the Kadence community who have spurred this intense growth.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>2022: a year of growth&nbsp;</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>As we end 2022, we can see some signs of Kadence’s, and much to look forward to. In the last year, we’ve seen:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Kadence Blocks reached over 300,000 installations.&nbsp;</strong><a href=\"https://www.kadencewp.com/kadence-blocks/\">Kadence Blocks</a>, the companion plugin that supercharges building WordPress sites works in tandem with the Kadence Theme for powerful site building. Kadence Blocks can work with other themes, but with the Kadence theme, it has even more power.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>The release of Kadence Shop Kit 2.0.</strong>&nbsp;This&nbsp;<a href=\"https://www.kadencewp.com/kadence-shopkit/\">robust tool</a>&nbsp;helps WooCommerce store owners supercharge their storefronts and help them more easily create product pages that sell and connect with customers.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>The launch of Kadence Elements Templates.</strong>&nbsp;For site owners looking to create dynamic content,&nbsp;<a href=\"https://www.kadencewp.com/blog/introducing-kadence-elements-templates-design-your-site-your-way/\">Kadence Elements Templates</a>&nbsp;allows for powerful theme building on a per page, per post, or for a wide plethora of conditions. With support added for Advanced Custom Fields, Metabox, Pods, Toolset and many other custom post type tools, Kadence Elements Templates makes building sites with dynamic content incredibly easy.&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>The start of The Kadence Beat Podcast.&nbsp;</strong>Every other week, the&nbsp;<a href=\"https://www.kadencewp.com/podcast/\">Kadence team</a>&nbsp;takes a fun look at ways to use Kadence and other tools to create much more effective WordPress websites through user experiences that create brand loyalty and customer satisfaction.</p>\n<!-- /wp:paragraph -->', 'Kadence Theme Celebrates 200,000 Active Installations', '', 'inherit', 'closed', 'closed', '', '541-revision-v1', '', '', '2022-12-15 13:46:04', '2022-12-15 06:46:04', '', 541, 'http://biolink.local/?p=543', 0, 'revision', '', 0),
(544, 1, '2022-12-15 14:04:15', '2022-12-15 07:04:15', '<!-- wp:heading {\"level\":3} -->\n<h3><em>(Dân trí) – Những giải pháp công nghệ, từ “chat”, thanh toán điện tử đến CRM (quản lý quan hệ khách hàng) hay không gian làm việc số cho doanh nghiệp ra đời bởi startup Việt, đã có bước tiến, có thể cạnh tranh sòng phẳng với các “ông lớn” thế giới tại Việt Nam.</em></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong>Ứng dụng nhắn tin Zalo chiếm thị phần lớn trong nước</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Zalo là ứng dụng OTT do người Việt sáng tạo, ra mắt tháng 8/2012. Hiện nay, Zalo được sử dụng rộng rãi tại Việt Nam và được mệnh danh là phần mềm “quốc dân”, có mặt đa nền tảng, được nhiều nhóm khách hàng sử dụng không phân biệt độ tuổi, giới tính, thu nhập,…</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Theo khảo sát từ Decision Lab, quý IV/2021, Zalo đứng thứ hai về số người sử dụng, đồng thời là ứng dụng được ưa chuộng nhất bởi Gen X tại Việt Nam, trở thành một phần trong cuộc sống hàng ngày của người Việt. Báo cáo “Thị trường quảng cáo số Việt Nam 2021 – Chiến lược đón đầu và đột phá” của Adsota cũng cho thấy Zalo là ứng dụng nhắn tin được yêu thích nhất tại Việt Nam, khiến nhiều ông lớn trong ngành dè chừng sau nhiều năm dẫn đầu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/11/01/final-dantri-gapo-nhung-giai-phap-cong-nghe-viet-1-1docx-1667277396249.jpeg\" alt=\"Giải pháp công nghệ nội cản bước các ông lớn thế giới tại Việt Nam - 1\" title=\"Giải pháp công nghệ nội cản bước các ông lớn thế giới tại Việt Nam - 1\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>Zalo trở thành ứng dụng nhắn tin được yêu thích Việt Nam (Ảnh: GapoWork).</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Khi được hỏi đâu là ứng dụng bạn thường sử dụng hằng ngày, 48% số người được hỏi lựa chọn Zalo. Trong báo cáo của Decision Lab và Quý IV/2021, Zalo lần đầu tiên trở thành ứng dụng nhắn tin được yêu thích nhất của Gen Z.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Cuộc đua công nghệ thanh toán – “chiến binh” Việt top đầu thị phần&nbsp;</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Thanh toán điện tử là một xu hướng phát triển tất yếu, nhất là khi ngành thương mại điện tử tăng trưởng mạnh mẽ với khoảng 40 ví điện tử được cấp phép và đi vào hoạt động. Chiếm 90% thị phần người dùng ví điện tử, cuộc đua tại các điểm bán hàng chủ yếu thuộc về 5 “người chơi” đến từ Việt Nam là Payoo, MoMo, Zalo, Moca, FPT.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img src=\"https://icdn.dantri.com.vn/thumb_w/680/2022/11/01/final-dantri-gapo-nhung-giai-phap-cong-nghe-viet-1-1docx-1667277396418.jpeg\" alt=\"Giải pháp công nghệ nội cản bước các ông lớn thế giới tại Việt Nam - 2\" title=\"Giải pháp công nghệ nội cản bước các ông lớn thế giới tại Việt Nam - 2\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p><em>Momo vào top đầu công nghệ thanh toán (Ảnh: GapoWork).</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mỗi ví điện tử đều có tập khách hàng riêng. VnPay cung cấp giải pháp thanh toán thông qua liên kết với ngân hàng bằng tính năng QR Pay. Moca liên kết với ứng dụng gọi xe Grab để thanh toán cước phí xe, giao hàng nhanh, mua sắm trực tuyến trong hệ sinh thái Moca và Grab.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Theo số liệu thống kê của Ngân hàng Nhà nước, tính đến thời điểm này, Momo đã có hơn 23 triệu tài khoản – cao nhất trong thị phần các ví điện tử đang hoạt động trên thị trường. Ví điện tử này cho biết hiện có mặt tại 100.000 điểm chấp nhận thanh toán, giá trị giao dịch tại các điểm bán lên tới hàng nghìn tỷ đồng mỗi tháng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Giải pháp CRM Việt Calio – đối thủ “đáng gờm” của ông lớn ngoại nhập</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Theo mô hình SaaS (Software-as-a-Service), Calio – tổng đài thông minh tích hợp CRM – là giải pháp quản lý khách hàng được 10.000 doanh nghiệp sử dụng vì sở hữu nhiều tính năng thông minh.</p>\n<!-- /wp:paragraph -->', 'Kadence Theme Celebrates 200,000 Active Installations', '', 'inherit', 'closed', 'closed', '', '541-revision-v1', '', '', '2022-12-15 14:04:15', '2022-12-15 07:04:15', '', 541, 'http://biolink.local/?p=544', 0, 'revision', '', 0),
(545, 1, '2022-12-15 14:35:02', '2022-12-15 07:35:02', '<!-- wp:paragraph -->\n<p>Tài khoản dùng thử:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mỗi khách hàng được dùng thử gói dịch vụ Ultimate trong vòng 7 ngày với tối đa 100 users sử dụng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mỗi tài khoản dùng thử sẽ được cấp số dư 5,000đ để thực hiện các cuộc gọi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sau khi sử dụng hết 5,000đ được cấp sẵn, khách hàng có thể nạp tiền vào tài khoản để tiếp tục gọi điện theo nhu cầu trong thời gian dùng thử.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tài khoản dùng thử chỉ thực hiện được cuộc gọi ra, không nhận được cuộc gọi vào.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cách đăng ký tài khoản dùng thử:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cách 1: Truy cập đường link&nbsp;<a href=\"https://client.callio.vn/register\">https://client.callio.vn/register</a>&nbsp;và nhập các thông tin được yêu cầu. Sau khi nhập và gửi thông tin, hệ thống sẽ xác thực việc đăng ký bằng cách gửi voice OTP tới số điện thoại khách hàng đã cung cấp. Khách hàng có thể ngay lập tức trải nghiệm sử dụng Callio sau khi xác thực thành công.</p>\n<!-- /wp:paragraph -->', 'Tạo tài khoản dùng thử', '', 'publish', 'open', 'open', '', 'tao-tai-khoan-dung-thu', '', '', '2022-12-15 14:35:05', '2022-12-15 07:35:05', '', 0, 'http://biolink.local/?p=545', 0, 'post', '', 0),
(546, 1, '2022-12-15 14:35:02', '2022-12-15 07:35:02', '<!-- wp:paragraph -->\n<p>Tài khoản dùng thử:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mỗi khách hàng được dùng thử gói dịch vụ Ultimate trong vòng 7 ngày với tối đa 100 users sử dụng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mỗi tài khoản dùng thử sẽ được cấp số dư 5,000đ để thực hiện các cuộc gọi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sau khi sử dụng hết 5,000đ được cấp sẵn, khách hàng có thể nạp tiền vào tài khoản để tiếp tục gọi điện theo nhu cầu trong thời gian dùng thử.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tài khoản dùng thử chỉ thực hiện được cuộc gọi ra, không nhận được cuộc gọi vào.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cách đăng ký tài khoản dùng thử:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cách 1: Truy cập đường link&nbsp;<a href=\"https://client.callio.vn/register\">https://client.callio.vn/register</a>&nbsp;và nhập các thông tin được yêu cầu. Sau khi nhập và gửi thông tin, hệ thống sẽ xác thực việc đăng ký bằng cách gửi voice OTP tới số điện thoại khách hàng đã cung cấp. Khách hàng có thể ngay lập tức trải nghiệm sử dụng Callio sau khi xác thực thành công.</p>\n<!-- /wp:paragraph -->', 'Tạo tài khoản dùng thử', '', 'inherit', 'closed', 'closed', '', '545-revision-v1', '', '', '2022-12-15 14:35:02', '2022-12-15 07:35:02', '', 545, 'http://biolink.local/?p=546', 0, 'revision', '', 0),
(547, 1, '2022-12-15 14:55:22', '2022-12-15 07:35:35', ' ', '', '', 'publish', 'closed', 'closed', '', '547', '', '', '2022-12-15 14:55:22', '2022-12-15 07:55:22', '', 0, 'http://biolink.local/?p=547', 2, 'nav_menu_item', '', 0),
(548, 1, '2022-12-15 14:45:54', '2022-12-15 07:45:54', '<!-- wp:paragraph -->\n<p>Số tiền KH nạp sẽ được cộng vào số dư tài khoản. Số dư này sử dụng mua gói phần mềm/dịch vụ trong lần đầu sử dụng dịch vụ hoặc để sử dụng cho các dịch vụ: Gọi thoại, SMS, Email. Số dư này sẽ không được hoàn lại hay chuyển đổi sang tài khoản khác.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nội dung nạp tiền thể hiện đúng mục đích sử dụng.&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ví dụ: Domain/SĐT + Nap tien cuoc goi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Domain/SĐT + Mua goi dich vu</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Các hình thức nạp tiền: Visa/Master/ATM/Internet Banking/Chuyển khoản trực tiếp</p>\n<!-- /wp:paragraph -->', 'Số dư tài khoản', '', 'publish', 'open', 'open', '', 'so-du-tai-khoan', '', '', '2022-12-15 14:45:56', '2022-12-15 07:45:56', '', 0, 'http://biolink.local/?p=548', 0, 'post', '', 0),
(549, 1, '2022-12-15 14:45:54', '2022-12-15 07:45:54', '<!-- wp:paragraph -->\n<p>Số tiền KH nạp sẽ được cộng vào số dư tài khoản. Số dư này sử dụng mua gói phần mềm/dịch vụ trong lần đầu sử dụng dịch vụ hoặc để sử dụng cho các dịch vụ: Gọi thoại, SMS, Email. Số dư này sẽ không được hoàn lại hay chuyển đổi sang tài khoản khác.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nội dung nạp tiền thể hiện đúng mục đích sử dụng.&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ví dụ: Domain/SĐT + Nap tien cuoc goi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Domain/SĐT + Mua goi dich vu</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Các hình thức nạp tiền: Visa/Master/ATM/Internet Banking/Chuyển khoản trực tiếp</p>\n<!-- /wp:paragraph -->', 'Số dư tài khoản', '', 'inherit', 'closed', 'closed', '', '548-revision-v1', '', '', '2022-12-15 14:45:54', '2022-12-15 07:45:54', '', 548, 'http://biolink.local/?p=549', 0, 'revision', '', 0),
(550, 1, '2022-12-15 14:46:30', '2022-12-15 07:46:30', '<!-- wp:heading {\"level\":3} -->\n<h3 id=\"1-mua-moi\">1. Mua mới</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Người dùng tạo đơn hàng “Mua mới” để chuyển dịch vụ từ dùng thử sang dùng thật</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Các bước thực hiện:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vào menu Cài đặt / Thanh toán</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bấm nút Mua mới</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Chọn gói dịch vụ, số người dùng và số tháng muốn mua</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bấm Lưu đơn hàng để lưu lại đơn hàng và chưa thanh toán</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bấm Thanh toán ngay để áp dụng luôn đơn hàng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lưu ý: Để có thể thanh toán ngay, số tiền trong tài khoản của người dùng cần lớn hơn hoặc bằng giá trị đơn hàng. Nếu chưa có đủ tiền trong tài khoản, hãy&nbsp;<a href=\"https://docs.google.com/document/d/1QOW_qyX7we7Orub0Q7Z3eHEJ4Ism0FI0YcLyl7A-bfA/edit?usp=sharing\" rel=\"noreferrer noopener\" target=\"_blank\">nạp tiền</a>&nbsp;trước khi áp dụng đơn hàng</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sau khi mua gói dịch vụ thành công, người dùng bấm F5 / reload lại trang để sử dụng dịch vụ như bình thường</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mua thêm người dùng</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Người dùng có thể tạo đơn hàng “Mua thêm người dùng” sau khi đã Mua mới và sử dụng dịch vụ một thời gian và phát sinh thêm nhu cầu về số người dùng cho domain của mình</p>\n<!-- /wp:paragraph -->', 'Mua gói dịch vụ', '', 'publish', 'open', 'open', '', 'mua-goi-dich-vu', '', '', '2022-12-15 14:46:32', '2022-12-15 07:46:32', '', 0, 'http://biolink.local/?p=550', 0, 'post', '', 0),
(551, 1, '2022-12-15 14:46:30', '2022-12-15 07:46:30', '<!-- wp:heading {\"level\":3} -->\n<h3 id=\"1-mua-moi\">1. Mua mới</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Người dùng tạo đơn hàng “Mua mới” để chuyển dịch vụ từ dùng thử sang dùng thật</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Các bước thực hiện:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vào menu Cài đặt / Thanh toán</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bấm nút Mua mới</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Chọn gói dịch vụ, số người dùng và số tháng muốn mua</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bấm Lưu đơn hàng để lưu lại đơn hàng và chưa thanh toán</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bấm Thanh toán ngay để áp dụng luôn đơn hàng.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lưu ý: Để có thể thanh toán ngay, số tiền trong tài khoản của người dùng cần lớn hơn hoặc bằng giá trị đơn hàng. Nếu chưa có đủ tiền trong tài khoản, hãy&nbsp;<a href=\"https://docs.google.com/document/d/1QOW_qyX7we7Orub0Q7Z3eHEJ4Ism0FI0YcLyl7A-bfA/edit?usp=sharing\" rel=\"noreferrer noopener\" target=\"_blank\">nạp tiền</a>&nbsp;trước khi áp dụng đơn hàng</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sau khi mua gói dịch vụ thành công, người dùng bấm F5 / reload lại trang để sử dụng dịch vụ như bình thường</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mua thêm người dùng</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Người dùng có thể tạo đơn hàng “Mua thêm người dùng” sau khi đã Mua mới và sử dụng dịch vụ một thời gian và phát sinh thêm nhu cầu về số người dùng cho domain của mình</p>\n<!-- /wp:paragraph -->', 'Mua gói dịch vụ', '', 'inherit', 'closed', 'closed', '', '550-revision-v1', '', '', '2022-12-15 14:46:30', '2022-12-15 07:46:30', '', 550, 'http://biolink.local/?p=551', 0, 'revision', '', 0),
(552, 1, '2022-12-15 14:46:53', '2022-12-15 07:46:53', '<!-- wp:heading {\"level\":3} -->\n<h3 id=\"nap-tien\">Nạp tiền</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Khách hàng tạo lệnh Nạp tiền, sau đó thực hiện việc chuyển tiền vào tài khoản của công ty Gadget.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Số tiền khách hàng nạp sẽ được cộng vào số dư tài khoản. Số dư này sử dụng mua gói phần mềm/dịch vụ hoặc để sử dụng cho các dịch vụ: Gọi thoại, SMS, Email, ZNS, Viber. Số dư này sẽ không được hoàn lại hay chuyển đổi sang tài khoản khác.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Các bước thực hiện tạo lệnh nạp tiền: (tác vụ chỉ khả dụng với chủ tài khoản)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vào menu Cài đặt / Thanh toán</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bấm nút Nạp tiền</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":14637} -->\n<figure class=\"wp-block-image aligncenter\"><img src=\"https://callio.vn/wp-content/uploads/2021/06/Screenshot-206.png\" alt=\"Screenshot 206\" class=\"wp-image-14637\" title=\"Nạp tiền 1\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>+ Nhập số tiền muốn nạp</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>+ Chọn phương thức thanh toán có 3 phương thức thanh toán</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>VNPAY – QR Code / Thẻ ngân hàng / Internet banking</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Thanh toán MoMo</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Chuyển khoản thẻ ngân hàng</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>+ Nhập nội dung: “Nạp tiền Callio”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>+ Tên người nạp tiền</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>+ Email</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>+ Số điện thoại</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sau đó nhấn “Tiếp tục” để thanh toán nạp tiền</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Lưu ý: Đối với phương thức chuyển khoản qua thẻ ngân hàng được xác nhận qua kế toán nên sẽ chậm hơn các phương thức khác.</em></p>\n<!-- /wp:paragraph -->', 'Nạp tiền', '', 'publish', 'open', 'open', '', 'nap-tien', '', '', '2022-12-15 14:46:55', '2022-12-15 07:46:55', '', 0, 'http://biolink.local/?p=552', 0, 'post', '', 0),
(553, 1, '2022-12-15 14:46:53', '2022-12-15 07:46:53', '<!-- wp:heading {\"level\":3} -->\n<h3 id=\"nap-tien\">Nạp tiền</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Khách hàng tạo lệnh Nạp tiền, sau đó thực hiện việc chuyển tiền vào tài khoản của công ty Gadget.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Số tiền khách hàng nạp sẽ được cộng vào số dư tài khoản. Số dư này sử dụng mua gói phần mềm/dịch vụ hoặc để sử dụng cho các dịch vụ: Gọi thoại, SMS, Email, ZNS, Viber. Số dư này sẽ không được hoàn lại hay chuyển đổi sang tài khoản khác.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Các bước thực hiện tạo lệnh nạp tiền: (tác vụ chỉ khả dụng với chủ tài khoản)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vào menu Cài đặt / Thanh toán</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bấm nút Nạp tiền</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"id\":14637} -->\n<figure class=\"wp-block-image aligncenter\"><img src=\"https://callio.vn/wp-content/uploads/2021/06/Screenshot-206.png\" alt=\"Screenshot 206\" class=\"wp-image-14637\" title=\"Nạp tiền 1\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>+ Nhập số tiền muốn nạp</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>+ Chọn phương thức thanh toán có 3 phương thức thanh toán</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>VNPAY – QR Code / Thẻ ngân hàng / Internet banking</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Thanh toán MoMo</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Chuyển khoản thẻ ngân hàng</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>+ Nhập nội dung: “Nạp tiền Callio”</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>+ Tên người nạp tiền</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>+ Email</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>+ Số điện thoại</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sau đó nhấn “Tiếp tục” để thanh toán nạp tiền</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><em>Lưu ý: Đối với phương thức chuyển khoản qua thẻ ngân hàng được xác nhận qua kế toán nên sẽ chậm hơn các phương thức khác.</em></p>\n<!-- /wp:paragraph -->', 'Nạp tiền', '', 'inherit', 'closed', 'closed', '', '552-revision-v1', '', '', '2022-12-15 14:46:53', '2022-12-15 07:46:53', '', 552, 'http://biolink.local/?p=553', 0, 'revision', '', 0),
(554, 1, '2022-12-15 14:55:22', '2022-12-15 07:47:14', ' ', '', '', 'publish', 'closed', 'closed', '', '554', '', '', '2022-12-15 14:55:22', '2022-12-15 07:55:22', '', 0, 'http://biolink.local/?p=554', 3, 'nav_menu_item', '', 0),
(555, 1, '2022-12-15 14:55:22', '2022-12-15 07:47:15', ' ', '', '', 'publish', 'closed', 'closed', '', '555', '', '', '2022-12-15 14:55:22', '2022-12-15 07:55:22', '', 0, 'http://biolink.local/?p=555', 4, 'nav_menu_item', '', 0),
(556, 1, '2022-12-15 14:55:22', '2022-12-15 07:47:15', ' ', '', '', 'publish', 'closed', 'closed', '', '556', '', '', '2022-12-15 14:55:22', '2022-12-15 07:55:22', '', 0, 'http://biolink.local/?p=556', 5, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(557, 1, '2022-12-15 14:47:54', '2022-12-15 07:47:54', '<!-- wp:heading {\"level\":3} -->\n<h3 id=\"1-1-lich-su-giao-dich\">1.1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lịch sử giao dịch</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Để xem Lịch sử giao dịch, vào menu Thanh toán / Lịch sử giao dịch</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":12484} -->\n<figure class=\"wp-block-image\"><img src=\"http://beta.callio.vn/wp-content/uploads/2021/06/1-3-1024x347.png\" alt=\"1 3\" class=\"wp-image-12484\" title=\"Lịch sử giao dịch 1\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Mặc định hiển thị những giao dịch trong tháng hiện tại</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Người dùng có thể chọn khoảng thời gian mong muốn và xuất dữ liệu nếu cần</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 id=\"1-2-lich-su-nap-tien\">1.2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lịch sử nạp tiền</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Để xem Lịch sử giao dịch, vào menu Thanh toán / Lịch sử nạp tiền</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":12485} -->\n<figure class=\"wp-block-image\"><img src=\"http://beta.callio.vn/wp-content/uploads/2021/06/2-2-1024x333.png\" alt=\"2 2\" class=\"wp-image-12485\" title=\"Lịch sử giao dịch 2\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Mặc định hiển thị những lệnh nạp tiền trong tháng hiện tại</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Người dùng có thể chọn khoảng thời gian mong muốn và xuất dữ liệu nếu cần.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 id=\"1-3-lich-su-cuoc-goi\">1.3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lịch sử cước gọi</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Để xem Lịch sử giao dịch, vào menu Thanh toán / Lịch sử cước gọi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":12486} -->\n<figure class=\"wp-block-image\"><img src=\"http://beta.callio.vn/wp-content/uploads/2021/06/3-3-1024x417.png\" alt=\"3 3\" class=\"wp-image-12486\" title=\"Lịch sử giao dịch 3\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Mặc định hiển thị cước gọi trong tháng hiện tại</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Người dùng có thể chọn khoảng thời gian mong muốn, lọc theo số điện thoại và xuất dữ liệu nếu cần</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 id=\"1-4-danh-sach-don-hang\">1.4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Danh sách đơn hàng</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Để xem Danh sách đơn hàng gói dịch vụ, vào menu Thanh toán / Đơn hàng gói dịch vụ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":12487} -->\n<figure class=\"wp-block-image\"><img src=\"http://beta.callio.vn/wp-content/uploads/2021/06/4-3-1024x285.png\" alt=\"4 3\" class=\"wp-image-12487\" title=\"Lịch sử giao dịch 4\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Với những đơn hàng chưa xác nhận, người dùng có thể bấm nút X để huỷ hoặc nút tick để tiến hành xác nhận đơn hàng.</p>\n<!-- /wp:paragraph -->', 'Lịch sử giao dịch', '', 'publish', 'open', 'open', '', 'lich-su-giao-dich', '', '', '2022-12-15 14:47:56', '2022-12-15 07:47:56', '', 0, 'http://biolink.local/?p=557', 0, 'post', '', 0),
(558, 1, '2022-12-15 14:47:54', '2022-12-15 07:47:54', '<!-- wp:heading {\"level\":3} -->\n<h3 id=\"1-1-lich-su-giao-dich\">1.1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lịch sử giao dịch</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Để xem Lịch sử giao dịch, vào menu Thanh toán / Lịch sử giao dịch</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":12484} -->\n<figure class=\"wp-block-image\"><img src=\"http://beta.callio.vn/wp-content/uploads/2021/06/1-3-1024x347.png\" alt=\"1 3\" class=\"wp-image-12484\" title=\"Lịch sử giao dịch 1\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Mặc định hiển thị những giao dịch trong tháng hiện tại</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Người dùng có thể chọn khoảng thời gian mong muốn và xuất dữ liệu nếu cần</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 id=\"1-2-lich-su-nap-tien\">1.2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lịch sử nạp tiền</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Để xem Lịch sử giao dịch, vào menu Thanh toán / Lịch sử nạp tiền</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":12485} -->\n<figure class=\"wp-block-image\"><img src=\"http://beta.callio.vn/wp-content/uploads/2021/06/2-2-1024x333.png\" alt=\"2 2\" class=\"wp-image-12485\" title=\"Lịch sử giao dịch 2\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Mặc định hiển thị những lệnh nạp tiền trong tháng hiện tại</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Người dùng có thể chọn khoảng thời gian mong muốn và xuất dữ liệu nếu cần.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 id=\"1-3-lich-su-cuoc-goi\">1.3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Lịch sử cước gọi</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Để xem Lịch sử giao dịch, vào menu Thanh toán / Lịch sử cước gọi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":12486} -->\n<figure class=\"wp-block-image\"><img src=\"http://beta.callio.vn/wp-content/uploads/2021/06/3-3-1024x417.png\" alt=\"3 3\" class=\"wp-image-12486\" title=\"Lịch sử giao dịch 3\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Mặc định hiển thị cước gọi trong tháng hiện tại</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Người dùng có thể chọn khoảng thời gian mong muốn, lọc theo số điện thoại và xuất dữ liệu nếu cần</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 id=\"1-4-danh-sach-don-hang\">1.4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Danh sách đơn hàng</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Để xem Danh sách đơn hàng gói dịch vụ, vào menu Thanh toán / Đơn hàng gói dịch vụ</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":12487} -->\n<figure class=\"wp-block-image\"><img src=\"http://beta.callio.vn/wp-content/uploads/2021/06/4-3-1024x285.png\" alt=\"4 3\" class=\"wp-image-12487\" title=\"Lịch sử giao dịch 4\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Với những đơn hàng chưa xác nhận, người dùng có thể bấm nút X để huỷ hoặc nút tick để tiến hành xác nhận đơn hàng.</p>\n<!-- /wp:paragraph -->', 'Lịch sử giao dịch', '', 'inherit', 'closed', 'closed', '', '557-revision-v1', '', '', '2022-12-15 14:47:54', '2022-12-15 07:47:54', '', 557, 'http://biolink.local/?p=558', 0, 'revision', '', 0),
(559, 1, '2022-12-15 14:55:22', '2022-12-15 07:48:34', ' ', '', '', 'publish', 'closed', 'closed', '', '559', '', '', '2022-12-15 14:55:22', '2022-12-15 07:55:22', '', 0, 'http://biolink.local/?p=559', 1, 'nav_menu_item', '', 0),
(560, 1, '2022-12-15 14:55:22', '2022-12-15 07:55:22', ' ', '', '', 'publish', 'closed', 'closed', '', '560', '', '', '2022-12-15 14:55:22', '2022-12-15 07:55:22', '', 0, 'http://biolink.local/?p=560', 6, 'nav_menu_item', '', 0),
(561, 1, '2022-12-15 14:55:22', '2022-12-15 07:55:22', ' ', '', '', 'publish', 'closed', 'closed', '', '561', '', '', '2022-12-15 14:55:22', '2022-12-15 07:55:22', '', 0, 'http://biolink.local/?p=561', 7, 'nav_menu_item', '', 0),
(562, 1, '2022-12-15 14:55:22', '2022-12-15 07:55:22', ' ', '', '', 'publish', 'closed', 'closed', '', '562', '', '', '2022-12-15 14:55:22', '2022-12-15 07:55:22', '', 0, 'http://biolink.local/?p=562', 8, 'nav_menu_item', '', 0),
(563, 1, '2022-12-15 15:18:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-12-15 15:18:58', '0000-00-00 00:00:00', '', 0, 'http://biolink.local/?p=563', 1, 'nav_menu_item', '', 0),
(564, 1, '2022-12-15 15:19:55', '2022-12-15 08:19:17', '', 'Support', '', 'publish', 'closed', 'closed', '', '564', '', '', '2022-12-15 15:19:55', '2022-12-15 08:19:55', '', 0, 'http://biolink.local/?p=564', 2, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa phân loại', 'khong-phan-loai', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Footer Menu 2', 'footer-menu-2', 0),
(4, 'Footer Menu', 'footer-menu', 0),
(5, 'Footer Menu 3', 'footer-menu-3', 0),
(6, 'Hướng dẫn sản phẩm', 'huong-dan-san-pham', 0),
(7, 'Sidebar Hỗ trợ', 'sidebar-ho-tro', 0),
(8, 'Tin tức', 'tin-tuc', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 8, 0),
(6, 1, 0),
(36, 8, 0),
(62, 8, 0),
(83, 8, 0),
(88, 8, 0),
(433, 2, 0),
(435, 1, 0),
(437, 1, 0),
(439, 1, 0),
(457, 2, 0),
(458, 2, 0),
(466, 4, 0),
(467, 4, 0),
(468, 4, 0),
(469, 4, 0),
(470, 4, 0),
(471, 3, 0),
(472, 3, 0),
(473, 3, 0),
(474, 3, 0),
(475, 3, 0),
(476, 3, 0),
(477, 5, 0),
(478, 5, 0),
(479, 5, 0),
(480, 5, 0),
(533, 8, 0),
(538, 8, 0),
(541, 8, 0),
(545, 6, 0),
(547, 7, 0),
(548, 6, 0),
(550, 6, 0),
(552, 6, 0),
(554, 7, 0),
(555, 7, 0),
(556, 7, 0),
(557, 6, 0),
(559, 7, 0),
(560, 7, 0),
(561, 7, 0),
(562, 7, 0),
(564, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'nav_menu', '', 0, 5),
(5, 5, 'nav_menu', '', 0, 4),
(6, 6, 'category', '', 0, 5),
(7, 7, 'nav_menu', '', 0, 8),
(8, 8, 'category', '', 0, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'eztoc_subscribe_pointer'),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '405'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:8:{i:0;s:19:\"dashboard_right_now\";i:1;s:21:\"dashboard_site_health\";i:2;s:18:\"dashboard_activity\";i:3;s:32:\"wp_mail_smtp_reports_widget_lite\";i:4;s:32:\"wordfence_activity_report_widget\";i:5;s:21:\"dashboard_quick_press\";i:6;s:17:\"dashboard_primary\";i:7;s:22:\"wporg_dashboard_widget\";}'),
(20, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(21, 2, 'nickname', 'Toan1'),
(22, 2, 'first_name', 'Toan'),
(23, 2, 'last_name', 'Do'),
(24, 2, 'description', ''),
(25, 2, 'rich_editing', 'true'),
(26, 2, 'syntax_highlighting', 'true'),
(27, 2, 'comment_shortcuts', 'false'),
(28, 2, 'admin_color', 'fresh'),
(29, 2, 'use_ssl', '0'),
(30, 2, 'show_admin_bar_front', 'true'),
(31, 2, 'locale', ''),
(32, 2, 'wp_capabilities', 'a:1:{s:8:\"kol_user\";b:1;}'),
(33, 2, 'wp_user_level', '1'),
(34, 2, 'dismissed_wp_pointers', ''),
(36, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(37, 2, 'closedpostboxes_dashboard', 'a:2:{i:0;s:18:\"dashboard_activity\";i:1;s:17:\"dashboard_primary\";}'),
(38, 2, 'metaboxhidden_dashboard', 'a:0:{}'),
(39, 2, 'wp_dashboard_quick_press_last_post_id', '5'),
(40, 2, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:0;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:16:\"discussion-panel\";i:2;s:14:\"featured-image\";}}s:9:\"_modified\";s:24:\"2022-12-01T08:33:10.567Z\";}'),
(41, 2, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(42, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:7:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";}s:9:\"focusMode\";b:0;s:12:\"fixedToolbar\";b:1;s:10:\"editorMode\";s:6:\"visual\";s:14:\"inactivePanels\";a:0:{}}s:9:\"_modified\";s:24:\"2022-12-15T07:34:59.720Z\";}'),
(43, 1, 'closedpostboxes_post', 'a:2:{i:0;s:23:\"acf-group_638ec0f559280\";i:1;s:6:\"ez-toc\";}'),
(44, 1, 'metaboxhidden_post', 'a:0:{}'),
(45, 1, 'closedpostboxes_page', 'a:1:{i:0;s:23:\"acf-group_6389add458798\";}'),
(46, 1, 'metaboxhidden_page', 'a:0:{}'),
(47, 3, 'nickname', 't2'),
(48, 3, 'first_name', ''),
(49, 3, 'last_name', ''),
(50, 3, 'description', ''),
(51, 3, 'rich_editing', 'true'),
(52, 3, 'syntax_highlighting', 'true'),
(53, 3, 'comment_shortcuts', 'false'),
(54, 3, 'admin_color', 'fresh'),
(55, 3, 'use_ssl', '0'),
(56, 3, 'show_admin_bar_front', 'true'),
(57, 3, 'locale', ''),
(58, 3, 'wp_capabilities', 'a:1:{s:11:\"contributor\";b:1;}'),
(59, 3, 'wp_user_level', '1'),
(60, 3, 'tpost', ''),
(61, 3, '_tpost', 'field_63885bd00cd33'),
(62, 3, 'dismissed_wp_pointers', ''),
(63, 2, 'tpost', ''),
(64, 2, '_tpost', 'field_63885bd00cd33'),
(65, 4, 'nickname', 'Bio2'),
(66, 4, 'first_name', ''),
(67, 4, 'last_name', ''),
(68, 4, 'description', ''),
(69, 4, 'rich_editing', 'true'),
(70, 4, 'syntax_highlighting', 'true'),
(71, 4, 'comment_shortcuts', 'false'),
(72, 4, 'admin_color', 'fresh'),
(73, 4, 'use_ssl', '0'),
(74, 4, 'show_admin_bar_front', 'true'),
(75, 4, 'locale', ''),
(76, 4, 'wp_capabilities', 'a:1:{s:8:\"kol_user\";b:1;}'),
(77, 4, 'wp_user_level', '1'),
(78, 4, 'tpost', ''),
(79, 4, '_tpost', 'field_63885bd00cd33'),
(80, 4, 'dismissed_wp_pointers', ''),
(81, 4, 'session_tokens', 'a:2:{s:64:\"95a515b858270da288f53e50712f679dade9ecacd012aedfd70aab026a6b803c\";a:4:{s:10:\"expiration\";i:1671242514;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36\";s:5:\"login\";i:1670032914;}s:64:\"e8cfc6455fe0388f6a6b14a327e393985f332d11122da34c0ed839a2b6907a0f\";a:4:{s:10:\"expiration\";i:1672223575;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1671013975;}}'),
(82, 4, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:7:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:1:{i:0;s:11:\"post-status\";}s:10:\"editorMode\";s:6:\"visual\";s:16:\"hiddenBlockTypes\";a:1:{i:0;s:10:\"core/embed\";}s:14:\"inactivePanels\";a:1:{i:0;s:16:\"discussion-panel\";}s:9:\"focusMode\";b:0;}s:9:\"_modified\";s:24:\"2022-12-13T07:17:29.018Z\";}'),
(83, 4, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(84, 4, 'manageedit-postcolumnshidden', 'a:0:{}'),
(85, 4, 'wp_dashboard_quick_press_last_post_id', '82'),
(86, 4, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:22:\"wporg_dashboard_widget\";s:4:\"side\";s:0:\"\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(87, 4, 'closedpostboxes_dashboard', 'a:1:{i:0;s:22:\"wporg_dashboard_widget\";}'),
(88, 4, 'metaboxhidden_dashboard', 'a:0:{}'),
(89, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:60:\"dashboard_right_now,dashboard_site_health,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:22:\"wporg_dashboard_widget\";s:7:\"column4\";s:0:\"\";}'),
(90, 4, 'wp_media_library_mode', 'list'),
(91, 4, 'wp_user-settings', 'libraryContent=browse'),
(92, 4, 'wp_user-settings-time', '1670234983'),
(93, 4, 'closedpostboxes_page', 'a:0:{}'),
(94, 4, 'metaboxhidden_page', 'a:0:{}'),
(95, 4, 'meta-box-order_page', 'a:4:{s:6:\"normal\";s:23:\"acf-group_6389add458798\";s:8:\"advanced\";s:0:\"\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";}'),
(96, 1, 'edit_page_per_page', '20'),
(97, 1, 'wp_user-settings', 'posts_list_mode=list&libraryContent=browse'),
(98, 1, 'wp_user-settings-time', '1670986896'),
(99, 1, 'wp_media_library_mode', 'list'),
(100, 4, 'upload_count', '5'),
(101, 1, 'ame_show_hints', 'a:3:{s:17:\"ws_sidebar_pro_ad\";b:0;s:16:\"ws_whats_new_120\";b:0;s:24:\"ws_hint_menu_permissions\";b:0;}'),
(102, 4, 'ame_rui_first_login_done', '1'),
(103, 1, 'session_tokens', 'a:4:{s:64:\"c56b5cdfe2736a11a0a5ea1be421083497b41c6ed7c728872bec4cb26eb540e4\";a:4:{s:10:\"expiration\";i:1671531781;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36\";s:5:\"login\";i:1670322181;}s:64:\"75ccbe2dc55de948c1c84d4522fdb5146795b6135fec3d1674b2242accd6dce7\";a:4:{s:10:\"expiration\";i:1671088480;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1670915680;}s:64:\"952d565bec8264e078f4e9a03b12193094cf0403b440a5b8e2754e50669b9a1c\";a:4:{s:10:\"expiration\";i:1671158471;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1670985671;}s:64:\"418434c2a884b9f8b21cf94a67aa9597c62b80bd1afd98da8f76338361c38782\";a:4:{s:10:\"expiration\";i:1671243434;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1671070634;}}'),
(104, 1, 'ame_rui_first_login_done', '1'),
(105, 5, 'nickname', 'Bio3'),
(106, 5, 'first_name', ''),
(107, 5, 'last_name', ''),
(108, 5, 'description', ''),
(109, 5, 'rich_editing', 'true'),
(110, 5, 'syntax_highlighting', 'true'),
(111, 5, 'comment_shortcuts', 'false'),
(112, 5, 'admin_color', 'fresh'),
(113, 5, 'use_ssl', '0'),
(114, 5, 'show_admin_bar_front', 'true'),
(115, 5, 'locale', ''),
(116, 5, 'wp_capabilities', 'a:1:{s:8:\"kol_user\";b:1;}'),
(117, 5, 'wp_user_level', '1'),
(118, 5, 'tpost', ''),
(119, 5, '_tpost', 'field_63885bd00cd33'),
(120, 5, 'dismissed_wp_pointers', ''),
(121, 5, 'session_tokens', 'a:1:{s:64:\"eab3d773c56423ac5d26eb22097274c16a080177da5b58d50d04239c0c1aafe1\";a:4:{s:10:\"expiration\";i:1670560666;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1670387866;}}'),
(122, 5, 'ame_rui_first_login_done', '1'),
(123, 5, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:1:{i:0;s:11:\"post-status\";}}s:9:\"_modified\";s:24:\"2022-12-07T06:38:41.322Z\";}'),
(124, 5, 'wp_user-settings', 'libraryContent=browse'),
(125, 5, 'wp_user-settings-time', '1670397113'),
(126, 5, 'closedpostboxes_page', 'a:0:{}'),
(127, 5, 'metaboxhidden_page', 'a:0:{}'),
(128, 6, 'nickname', 'bio4'),
(129, 6, 'first_name', 'Toan'),
(130, 6, 'last_name', 'Do'),
(131, 6, 'description', ''),
(132, 6, 'rich_editing', 'true'),
(133, 6, 'syntax_highlighting', 'true'),
(134, 6, 'comment_shortcuts', 'false'),
(135, 6, 'admin_color', 'fresh'),
(136, 6, 'use_ssl', '0'),
(137, 6, 'show_admin_bar_front', 'true'),
(138, 6, 'locale', ''),
(139, 6, 'wp_capabilities', 'a:1:{s:8:\"kol_user\";b:1;}'),
(140, 6, 'wp_user_level', '1'),
(141, 6, 'dismissed_wp_pointers', ''),
(143, 7, 'nickname', 'bio44'),
(144, 7, 'first_name', 'Toan'),
(145, 7, 'last_name', 'Do'),
(146, 7, 'description', ''),
(147, 7, 'rich_editing', 'true'),
(148, 7, 'syntax_highlighting', 'true'),
(149, 7, 'comment_shortcuts', 'false'),
(150, 7, 'admin_color', 'fresh'),
(151, 7, 'use_ssl', '0'),
(152, 7, 'show_admin_bar_front', 'true'),
(153, 7, 'locale', ''),
(154, 7, 'wp_capabilities', 'a:1:{s:8:\"kol_user\";b:1;}'),
(155, 7, 'wp_user_level', '1'),
(156, 7, 'dismissed_wp_pointers', ''),
(158, 8, 'nickname', 'huongnguyen'),
(159, 8, 'first_name', 'Hương'),
(160, 8, 'last_name', 'Nguyễn'),
(161, 8, 'description', ''),
(162, 8, 'rich_editing', 'true'),
(163, 8, 'syntax_highlighting', 'true'),
(164, 8, 'comment_shortcuts', 'false'),
(165, 8, 'admin_color', 'fresh'),
(166, 8, 'use_ssl', '0'),
(167, 8, 'show_admin_bar_front', 'true'),
(168, 8, 'locale', ''),
(169, 8, 'wp_capabilities', 'a:1:{s:8:\"kol_user\";b:1;}'),
(170, 8, 'wp_user_level', '1'),
(171, 8, 'dismissed_wp_pointers', ''),
(173, 9, 'nickname', 'dohongson'),
(174, 9, 'first_name', 'Sơn'),
(175, 9, 'last_name', 'Đỗ'),
(176, 9, 'description', ''),
(177, 9, 'rich_editing', 'true'),
(178, 9, 'syntax_highlighting', 'true'),
(179, 9, 'comment_shortcuts', 'false'),
(180, 9, 'admin_color', 'fresh'),
(181, 9, 'use_ssl', '0'),
(182, 9, 'show_admin_bar_front', 'true'),
(183, 9, 'locale', ''),
(184, 9, 'wp_capabilities', 'a:1:{s:8:\"kol_user\";b:1;}'),
(185, 9, 'wp_user_level', '1'),
(186, 9, 'dismissed_wp_pointers', ''),
(188, 10, 'nickname', 'bio3'),
(189, 10, 'first_name', 'Toan'),
(190, 10, 'last_name', 'Do'),
(191, 10, 'description', ''),
(192, 10, 'rich_editing', 'true'),
(193, 10, 'syntax_highlighting', 'true'),
(194, 10, 'comment_shortcuts', 'false'),
(195, 10, 'admin_color', 'fresh'),
(196, 10, 'use_ssl', '0'),
(197, 10, 'show_admin_bar_front', 'true'),
(198, 10, 'locale', ''),
(199, 10, 'wp_capabilities', 'a:1:{s:8:\"kol_user\";b:1;}'),
(200, 10, 'wp_user_level', '1'),
(201, 10, 'dismissed_wp_pointers', ''),
(218, 12, 'nickname', 'bio3'),
(219, 12, 'first_name', 'Toan'),
(220, 12, 'last_name', 'Do'),
(221, 12, 'description', ''),
(222, 12, 'rich_editing', 'true'),
(223, 12, 'syntax_highlighting', 'true'),
(224, 12, 'comment_shortcuts', 'false'),
(225, 12, 'admin_color', 'fresh'),
(226, 12, 'use_ssl', '0'),
(227, 12, 'show_admin_bar_front', 'true'),
(228, 12, 'locale', ''),
(229, 12, 'wp_capabilities', 'a:1:{s:8:\"kol_user\";b:1;}'),
(230, 12, 'wp_user_level', '1'),
(231, 12, 'dismissed_wp_pointers', ''),
(232, 12, 'session_tokens', 'a:1:{s:64:\"d7db975a5a3ffdde95a59b8024828bf3c4a6e1c2aa828368a71d052193503456\";a:4:{s:10:\"expiration\";i:1670657394;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1670484594;}}'),
(233, 13, 'nickname', 'bio3'),
(234, 13, 'first_name', 'Toan'),
(235, 13, 'last_name', 'Do'),
(236, 13, 'description', ''),
(237, 13, 'rich_editing', 'true'),
(238, 13, 'syntax_highlighting', 'true'),
(239, 13, 'comment_shortcuts', 'false'),
(240, 13, 'admin_color', 'fresh'),
(241, 13, 'use_ssl', '0'),
(242, 13, 'show_admin_bar_front', 'true'),
(243, 13, 'locale', ''),
(244, 13, 'wp_capabilities', 'a:1:{s:8:\"kol_user\";b:1;}'),
(245, 13, 'wp_user_level', '1'),
(246, 13, 'dismissed_wp_pointers', ''),
(247, 13, 'session_tokens', 'a:1:{s:64:\"ee70e41162ac2228acf92ab5847aa7d68131c8810816c99f9918920a542dcfb1\";a:4:{s:10:\"expiration\";i:1670657491;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1670484691;}}'),
(248, 14, 'nickname', 'bio3'),
(249, 14, 'first_name', 'Toan'),
(250, 14, 'last_name', 'Do'),
(251, 14, 'description', ''),
(252, 14, 'rich_editing', 'true'),
(253, 14, 'syntax_highlighting', 'true'),
(254, 14, 'comment_shortcuts', 'false'),
(255, 14, 'admin_color', 'fresh'),
(256, 14, 'use_ssl', '0'),
(257, 14, 'show_admin_bar_front', 'true'),
(258, 14, 'locale', ''),
(259, 14, 'wp_capabilities', 'a:1:{s:8:\"kol_user\";b:1;}'),
(260, 14, 'wp_user_level', '1'),
(261, 14, 'dismissed_wp_pointers', ''),
(262, 14, 'session_tokens', 'a:1:{s:64:\"339fa1d73fa8f4e05b38e24a349d37622acdd5003edb809629540b1a0a1a1c88\";a:4:{s:10:\"expiration\";i:1670657678;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1670484878;}}'),
(343, 20, 'nickname', 'bio3'),
(344, 20, 'first_name', 'Toan'),
(345, 20, 'last_name', 'Do'),
(346, 20, 'description', ''),
(347, 20, 'rich_editing', 'true'),
(348, 20, 'syntax_highlighting', 'true'),
(349, 20, 'comment_shortcuts', 'false'),
(350, 20, 'admin_color', 'fresh'),
(351, 20, 'use_ssl', '0'),
(352, 20, 'show_admin_bar_front', 'true'),
(353, 20, 'locale', ''),
(354, 20, 'wp_capabilities', 'a:1:{s:8:\"kol_user\";b:1;}'),
(355, 20, 'wp_user_level', '1'),
(356, 20, 'dismissed_wp_pointers', ''),
(357, 20, 'session_tokens', 'a:1:{s:64:\"4b71b94080d8e95dd1ef79bb2155262b87f8fd612251afe807078ca6b2459c15\";a:4:{s:10:\"expiration\";i:1670659113;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1670486313;}}'),
(358, 21, 'nickname', 'bio4'),
(359, 21, 'first_name', 'Toan'),
(360, 21, 'last_name', 'Do'),
(361, 21, 'description', ''),
(362, 21, 'rich_editing', 'true'),
(363, 21, 'syntax_highlighting', 'true'),
(364, 21, 'comment_shortcuts', 'false'),
(365, 21, 'admin_color', 'fresh'),
(366, 21, 'use_ssl', '0'),
(367, 21, 'show_admin_bar_front', 'true'),
(368, 21, 'locale', ''),
(369, 21, 'wp_capabilities', 'a:1:{s:8:\"kol_user\";b:1;}'),
(370, 21, 'wp_user_level', '1'),
(371, 21, 'dismissed_wp_pointers', ''),
(372, 21, 'session_tokens', 'a:1:{s:64:\"b55aa368ea99603e2761cdf9affd4f2e686ef07902da395d44f8b5461a49c2f3\";a:4:{s:10:\"expiration\";i:1670659206;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1670486406;}}'),
(373, 22, 'nickname', 'toanheocay'),
(374, 22, 'first_name', 'Toan'),
(375, 22, 'last_name', 'Do'),
(376, 22, 'description', ''),
(377, 22, 'rich_editing', 'true'),
(378, 22, 'syntax_highlighting', 'true'),
(379, 22, 'comment_shortcuts', 'false'),
(380, 22, 'admin_color', 'fresh'),
(381, 22, 'use_ssl', '0'),
(382, 22, 'show_admin_bar_front', 'true'),
(383, 22, 'locale', ''),
(384, 22, 'wp_capabilities', 'a:1:{s:8:\"kol_user\";b:1;}'),
(385, 22, 'wp_user_level', '1'),
(386, 22, 'dismissed_wp_pointers', ''),
(388, 23, 'nickname', 'toanheocay123'),
(389, 23, 'first_name', 'toan'),
(390, 23, 'last_name', 'do'),
(391, 23, 'description', ''),
(392, 23, 'rich_editing', 'true'),
(393, 23, 'syntax_highlighting', 'true'),
(394, 23, 'comment_shortcuts', 'false'),
(395, 23, 'admin_color', 'fresh'),
(396, 23, 'use_ssl', '0'),
(397, 23, 'show_admin_bar_front', 'true'),
(398, 23, 'locale', ''),
(399, 23, 'wp_capabilities', 'a:1:{s:8:\"kol_user\";b:1;}'),
(400, 23, 'wp_user_level', '1'),
(401, 23, 'dismissed_wp_pointers', ''),
(403, 21, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2022-12-08T08:11:53.709Z\";}'),
(404, 24, 'nickname', 'bio5'),
(405, 24, 'first_name', 'Toan'),
(406, 24, 'last_name', 'Do'),
(407, 24, 'description', ''),
(408, 24, 'rich_editing', 'true'),
(409, 24, 'syntax_highlighting', 'true'),
(410, 24, 'comment_shortcuts', 'false'),
(411, 24, 'admin_color', 'fresh'),
(412, 24, 'use_ssl', '0'),
(413, 24, 'show_admin_bar_front', 'true'),
(414, 24, 'locale', ''),
(415, 24, 'wp_capabilities', 'a:1:{s:8:\"kol_user\";b:1;}'),
(416, 24, 'wp_user_level', '1'),
(417, 24, 'dismissed_wp_pointers', ''),
(419, 24, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2022-12-08T09:25:30.371Z\";}'),
(420, 24, 'closedpostboxes_page', 'a:1:{i:0;s:23:\"acf-group_6389add458798\";}'),
(421, 24, 'metaboxhidden_page', 'a:0:{}'),
(422, 1, 'default_password_nag', ''),
(423, 1, 'wfls-last-login', '1671070634'),
(424, 1, 'wfls_notices', 'a:0:{}'),
(425, 4, 'wfls-last-login', '1671069427'),
(443, 4, 'wfls_notices', 'a:0:{}'),
(444, 26, 'nickname', 'AnNguyen'),
(445, 26, 'first_name', 'An'),
(446, 26, 'last_name', 'Nguyên'),
(447, 26, 'description', ''),
(448, 26, 'rich_editing', 'true'),
(449, 26, 'syntax_highlighting', 'true'),
(450, 26, 'comment_shortcuts', 'false'),
(451, 26, 'admin_color', 'fresh'),
(452, 26, 'use_ssl', '0'),
(453, 26, 'show_admin_bar_front', 'true'),
(454, 26, 'locale', ''),
(455, 26, 'wp_capabilities', 'a:1:{s:8:\"kol_user\";b:1;}'),
(456, 26, 'wp_user_level', '1'),
(457, 26, 'dismissed_wp_pointers', ''),
(459, 26, 'wfls-last-login', '1670569330'),
(460, 26, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2022-12-09T07:02:55.798Z\";}'),
(461, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(462, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(463, 1, 'nav_menu_recently_edited', '2'),
(464, 1, 'closedpostboxes_toplevel_page_theme-general-settings', 'a:0:{}'),
(465, 1, 'metaboxhidden_toplevel_page_theme-general-settings', 'a:0:{}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BmfjUW4C52T/6RrKWFqfdntGFALr6P.', 'admin', 'itscompanydev@gmail.com', 'http://biolink.local', '2022-12-01 02:44:56', '', 0, 'admin'),
(4, 'Bio2', '$P$BYxvTNIVrD7yhE09iwMy1ERR/vEdGs1', 'bio2', 'bio2@gmail.com', '', '2022-12-01 08:49:09', '', 0, 'Bio2'),
(20, 'bio3', '$P$BUQqS8eYZBqh.84ZyzXve23/BIbL470', 'bio3', 'bio3@gmail.com', '', '2022-12-08 07:58:32', '', 0, 'Toan Do'),
(21, 'bio4', '$P$BdypdX6AGs8ArkwV4F0Pngo5bbXxZA1', 'bio4', 'bio4@gmail.com', '', '2022-12-08 08:00:06', '', 0, 'Toan Do'),
(22, 'toanheocay', '$P$BYbmtb.ctVdz/Ilg4e6B1IAA1lfyzU.', 'toanheocay', 'toanwp@gmail.com', '', '2022-12-08 08:02:14', '', 0, 'Toan Do'),
(23, 'toanheocay123', '$P$Bew6SfXtVZDjYAMtYLQblleqAhuqrg1', 'toanheocay123', 'toan@gmail.com', '', '2022-12-08 08:03:47', '', 0, 'toan do'),
(24, 'bio5', '$P$BzRtPLo09SYs1MHrTFvWNX9IR3204K0', 'bio5', 'bio5@gmail.com', '', '2022-12-08 09:25:23', '', 0, 'Toan Do'),
(26, 'AnNguyen', '$P$BexYXfHZoxWM1D0l2xj4pCvgASzvzH0', 'annguyen', 'toanwordpresstheme@gmail.com', '', '2022-12-09 07:02:10', '1670569422:$P$B0faHfdHKYihXm5TvkcIdDtB2nSu50.', 0, 'An Nguyên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wfblockediplog`
--

CREATE TABLE `wp_wfblockediplog` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `countryCode` varchar(2) NOT NULL,
  `blockCount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `unixday` int(10) UNSIGNED NOT NULL,
  `blockType` varchar(50) NOT NULL DEFAULT 'generic'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wfblocks7`
--

CREATE TABLE `wp_wfblocks7` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `blockedTime` bigint(20) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `lastAttempt` int(10) UNSIGNED DEFAULT 0,
  `blockedHits` int(10) UNSIGNED DEFAULT 0,
  `expiration` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wfconfig`
--

CREATE TABLE `wp_wfconfig` (
  `name` varchar(100) NOT NULL,
  `val` longblob DEFAULT NULL,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `wp_wfconfig`
--

INSERT INTO `wp_wfconfig` (`name`, `val`, `autoload`) VALUES
('activatingIP', 0x3132372e302e302e31, 'yes'),
('actUpdateInterval', 0x32, 'yes'),
('addCacheComment', 0x30, 'yes'),
('adminUserList', 0x613a313a7b693a313b693a313b7d, 'yes'),
('advancedCommentScanning', 0x31, 'yes'),
('ajaxWatcherDisabled_admin', 0x30, 'yes'),
('ajaxWatcherDisabled_front', 0x30, 'yes'),
('alertEmails', '', 'yes'),
('alertOn_adminLogin', 0x31, 'yes'),
('alertOn_block', 0x31, 'yes'),
('alertOn_breachLogin', 0x31, 'yes'),
('alertOn_firstAdminLoginOnly', 0x30, 'yes'),
('alertOn_firstNonAdminLoginOnly', 0x30, 'yes'),
('alertOn_loginLockout', 0x31, 'yes'),
('alertOn_lostPasswdForm', 0x31, 'yes'),
('alertOn_nonAdminLogin', 0x30, 'yes'),
('alertOn_scanIssues', 0x31, 'yes'),
('alertOn_severityLevel', 0x3235, 'yes'),
('alertOn_throttle', 0x30, 'yes'),
('alertOn_update', 0x30, 'yes'),
('alertOn_wafDeactivated', 0x31, 'yes'),
('alertOn_wordfenceDeactivated', 0x31, 'yes'),
('alert_maxHourly', 0x30, 'yes'),
('allowed404s', 0x2f66617669636f6e2e69636f0a2f6170706c652d746f7563682d69636f6e2a2e706e670a2f2a4032782e706e670a2f62726f77736572636f6e6669672e786d6c, 'yes'),
('allowed404s6116Migration', 0x31, 'yes'),
('allowHTTPSCaching', 0x30, 'yes'),
('allowLegacy2FA', 0x30, 'yes'),
('allowMySQLi', 0x31, 'yes'),
('allScansScheduled', 0x613a303a7b7d, 'yes'),
('apiKey', '', 'yes'),
('autoBlockScanners', 0x31, 'yes'),
('autoUpdate', 0x30, 'yes'),
('autoUpdateAttempts', 0x30, 'yes'),
('bannedURLs', '', 'yes'),
('blockCustomText', '', 'yes'),
('blockedTime', 0x333030, 'yes'),
('blocks702Migration', 0x31, 'yes'),
('cacheType', 0x64697361626c6564, 'yes'),
('cbl_action', 0x626c6f636b, 'yes'),
('cbl_bypassRedirDest', '', 'yes'),
('cbl_bypassRedirURL', '', 'yes'),
('cbl_bypassViewURL', '', 'yes'),
('cbl_cookieVal', 0x36333932396562343937306132, 'yes'),
('cbl_loggedInBlocked', '', 'yes'),
('cbl_redirURL', '', 'yes'),
('cbl_restOfSiteBlocked', 0x31, 'yes'),
('checkSpamIP', 0x31, 'yes'),
('config701Migration', 0x31, 'yes'),
('config720Migration', 0x31, 'yes'),
('dashboardData', 0x613a343a7b733a393a2267656e657261746564223b693a313637303535393936353b733a333a22746466223b613a333a7b733a393a22636f6d6d756e697479223b693a353232393b733a373a227072656d69756d223b693a353239363b733a393a22626c61636b6c697374223b693a31323136353b7d733a31303a2261747461636b64617461223b613a333a7b733a333a22323468223b613a32343a7b693a303b613a323a7b733a313a2274223b693a313637303437323030303b733a313a2263223b693a32303432333832393b7d693a313b613a323a7b733a313a2274223b693a313637303437353630303b733a313a2263223b693a31393630393932383b7d693a323b613a323a7b733a313a2274223b693a313637303437393230303b733a313a2263223b693a31383231393334353b7d693a333b613a323a7b733a313a2274223b693a313637303438323830303b733a313a2263223b693a31373039373335353b7d693a343b613a323a7b733a313a2274223b693a313637303438363430303b733a313a2263223b693a31363431333339393b7d693a353b613a323a7b733a313a2274223b693a313637303439303030303b733a313a2263223b693a31363233353532333b7d693a363b613a323a7b733a313a2274223b693a313637303439333630303b733a313a2263223b693a31353834353039353b7d693a373b613a323a7b733a313a2274223b693a313637303439373230303b733a313a2263223b693a31363038303933343b7d693a383b613a323a7b733a313a2274223b693a313637303530303830303b733a313a2263223b693a31383231333539313b7d693a393b613a323a7b733a313a2274223b693a313637303530343430303b733a313a2263223b693a31363031363039313b7d693a31303b613a323a7b733a313a2274223b693a313637303530383030303b733a313a2263223b693a31353738373538393b7d693a31313b613a323a7b733a313a2274223b693a313637303531313630303b733a313a2263223b693a31343134353133373b7d693a31323b613a323a7b733a313a2274223b693a313637303531353230303b733a313a2263223b693a31343132353932303b7d693a31333b613a323a7b733a313a2274223b693a313637303531383830303b733a313a2263223b693a31343132363238323b7d693a31343b613a323a7b733a313a2274223b693a313637303532323430303b733a313a2263223b693a31343339373238333b7d693a31353b613a323a7b733a313a2274223b693a313637303532363030303b733a313a2263223b693a31333939313531303b7d693a31363b613a323a7b733a313a2274223b693a313637303532393630303b733a313a2263223b693a31333838333030323b7d693a31373b613a323a7b733a313a2274223b693a313637303533333230303b733a313a2263223b693a31353437383039313b7d693a31383b613a323a7b733a313a2274223b693a313637303533363830303b733a313a2263223b693a31363038353432383b7d693a31393b613a323a7b733a313a2274223b693a313637303534303430303b733a313a2263223b693a31353834323331343b7d693a32303b613a323a7b733a313a2274223b693a313637303534343030303b733a313a2263223b693a31353133353331333b7d693a32313b613a323a7b733a313a2274223b693a313637303534373630303b733a313a2263223b693a31343433353038303b7d693a32323b613a323a7b733a313a2274223b693a313637303535313230303b733a313a2263223b693a31393837333733363b7d693a32333b613a323a7b733a313a2274223b693a313637303535343830303b733a313a2263223b693a32313737313836353b7d7d733a323a223764223b613a373a7b693a303b613a323a7b733a313a2274223b693a313636393933393230303b733a313a2263223b693a3435383438303432383b7d693a313b613a323a7b733a313a2274223b693a313637303032353630303b733a313a2263223b693a3436353831343133333b7d693a323b613a323a7b733a313a2274223b693a313637303131323030303b733a313a2263223b693a3337343137343139303b7d693a333b613a323a7b733a313a2274223b693a313637303139383430303b733a313a2263223b693a3433333639393537373b7d693a343b613a323a7b733a313a2274223b693a313637303238343830303b733a313a2263223b693a3436333636323430343b7d693a353b613a323a7b733a313a2274223b693a313637303337313230303b733a313a2263223b693a3435333539373334333b7d693a363b613a323a7b733a313a2274223b693a313637303435373630303b733a313a2263223b693a3337313938303733383b7d7d733a333a22333064223b613a33303a7b693a303b613a323a7b733a313a2274223b693a313636373935323030303b733a313a2263223b693a3432393633333633313b7d693a313b613a323a7b733a313a2274223b693a313636383033383430303b733a313a2263223b693a3432323339363037353b7d693a323b613a323a7b733a313a2274223b693a313636383132343830303b733a313a2263223b693a3337363839323138313b7d693a333b613a323a7b733a313a2274223b693a313636383231313230303b733a313a2263223b693a3336303138393039383b7d693a343b613a323a7b733a313a2274223b693a313636383239373630303b733a313a2263223b693a3332383031313032353b7d693a353b613a323a7b733a313a2274223b693a313636383338343030303b733a313a2263223b693a3334353838343039303b7d693a363b613a323a7b733a313a2274223b693a313636383437303430303b733a313a2263223b693a3333333033313534343b7d693a373b613a323a7b733a313a2274223b693a313636383535363830303b733a313a2263223b693a3332343234343635313b7d693a383b613a323a7b733a313a2274223b693a313636383634333230303b733a313a2263223b693a3333363930383235323b7d693a393b613a323a7b733a313a2274223b693a313636383732393630303b733a313a2263223b693a3334323531393332393b7d693a31303b613a323a7b733a313a2274223b693a313636383831363030303b733a313a2263223b693a3334393131353639373b7d693a31313b613a323a7b733a313a2274223b693a313636383930323430303b733a313a2263223b693a3335363332313631353b7d693a31323b613a323a7b733a313a2274223b693a313636383938383830303b733a313a2263223b693a3333333230373536393b7d693a31333b613a323a7b733a313a2274223b693a313636393037353230303b733a313a2263223b693a3332393539363533393b7d693a31343b613a323a7b733a313a2274223b693a313636393136313630303b733a313a2263223b693a3433353134353033393b7d693a31353b613a323a7b733a313a2274223b693a313636393234383030303b733a313a2263223b693a3336383934323932343b7d693a31363b613a323a7b733a313a2274223b693a313636393333343430303b733a313a2263223b693a3337343331303034323b7d693a31373b613a323a7b733a313a2274223b693a313636393432303830303b733a313a2263223b693a3333363538333430323b7d693a31383b613a323a7b733a313a2274223b693a313636393530373230303b733a313a2263223b693a3330343335313033343b7d693a31393b613a323a7b733a313a2274223b693a313636393539333630303b733a313a2263223b693a3331333833323831323b7d693a32303b613a323a7b733a313a2274223b693a313636393638303030303b733a313a2263223b693a3330333534303434323b7d693a32313b613a323a7b733a313a2274223b693a313636393736363430303b733a313a2263223b693a3336353037313237373b7d693a32323b613a323a7b733a313a2274223b693a313636393835323830303b733a313a2263223b693a3434323831353439313b7d693a32333b613a323a7b733a313a2274223b693a313636393933393230303b733a313a2263223b693a3435383438303432383b7d693a32343b613a323a7b733a313a2274223b693a313637303032353630303b733a313a2263223b693a3436353831343133333b7d693a32353b613a323a7b733a313a2274223b693a313637303131323030303b733a313a2263223b693a3337343137343139303b7d693a32363b613a323a7b733a313a2274223b693a313637303139383430303b733a313a2263223b693a3433333639393537373b7d693a32373b613a323a7b733a313a2274223b693a313637303238343830303b733a313a2263223b693a3436333636323430343b7d693a32383b613a323a7b733a313a2274223b693a313637303337313230303b733a313a2263223b693a3435333539373334333b7d693a32393b613a323a7b733a313a2274223b693a313637303435373630303b733a313a2263223b693a3337313938303733383b7d7d7d733a393a22636f756e7472696573223b613a313a7b733a323a223764223b613a31303a7b693a303b613a323a7b733a323a226364223b733a323a225553223b733a323a226374223b693a313032313937383836323b7d693a313b613a323a7b733a323a226364223b733a323a224445223b733a323a226374223b693a3235383239303133343b7d693a323b613a323a7b733a323a226364223b733a323a225347223b733a323a226374223b693a3231393331393836303b7d693a333b613a323a7b733a323a226364223b733a323a225452223b733a323a226374223b693a3231363138313636393b7d693a343b613a323a7b733a323a226364223b733a323a22494e223b733a323a226374223b693a3136363138333433343b7d693a353b613a323a7b733a323a226364223b733a323a224652223b733a323a226374223b693a3134343736383839313b7d693a363b613a323a7b733a323a226364223b733a323a22434e223b733a323a226374223b693a3130333636333531373b7d693a373b613a323a7b733a323a226364223b733a323a224742223b733a323a226374223b693a39393439353238323b7d693a383b613a323a7b733a323a226364223b733a323a225255223b733a323a226374223b693a38383236363234353b7d693a393b613a323a7b733a323a226364223b733a323a22564e223b733a323a226374223b693a38363831373333363b7d7d7d7d, 'yes'),
('dbTest', 0x613a313a7b733a353a226e6f6e6365223b733a36343a2235303639373064653463653866323438623235303936363264383661343933626238646566616132383661623436643466663930613264323138613035613637223b7d, 'no'),
('dbVersion', 0x31302e342e32342d4d617269614442, 'yes'),
('debugOn', 0x30, 'yes'),
('deleteTablesOnDeact', 0x30, 'yes'),
('detectProxyNextCheck', 0x31363731313538303637, 'no'),
('detectProxyNonce', 0x35366361643537376534613239313566386236633434306163366263363834363666373035303962366632303064333337643739653837376264303735313066, 'no'),
('detectProxyRecommendation', '', 'no'),
('diagnosticsWflogsRemovalHistory', 0x5b5d, 'no'),
('disableCodeExecutionUploads', 0x30, 'yes'),
('disableConfigCaching', 0x30, 'yes'),
('disableWAFIPBlocking', 0x30, 'yes'),
('disclosureStates', 0x613a313a7b733a32323a227761662d6f7074696f6e732d6272757465666f726365223b623a313b7d, 'yes'),
('dismissAutoPrependNotice', 0x30, 'yes'),
('displayAutomaticBlocks', 0x31, 'yes'),
('displayTopLevelBlocking', 0x30, 'yes'),
('displayTopLevelLiveTraffic', 0x30, 'yes'),
('displayTopLevelOptions', 0x31, 'yes'),
('email_summary_dashboard_widget_enabled', 0x31, 'yes'),
('email_summary_enabled', 0x31, 'yes'),
('email_summary_excluded_directories', 0x77702d636f6e74656e742f63616368652c77702d636f6e74656e742f77666c6f6773, 'yes'),
('email_summary_interval', 0x7765656b6c79, 'yes'),
('enableRemoteIpLookup', 0x31, 'yes'),
('encKey', 0x38353565343062623632303735633033, 'yes'),
('fileContentsGSB6315Migration', 0x31, 'yes'),
('firewallEnabled', 0x31, 'yes'),
('hasKeyConflict', 0x30, 'yes'),
('howGetIPs', '', 'yes'),
('howGetIPs_trusted_proxies', '', 'yes'),
('isPaid', '', 'yes'),
('keyType', 0x66726565, 'yes'),
('lastAdminLogin', 0x613a363a7b733a363a22757365724944223b693a313b733a383a22757365726e616d65223b733a353a2261646d696e223b733a393a2266697273744e616d65223b733a303a22223b733a383a226c6173744e616d65223b733a303a22223b733a343a2274696d65223b733a33303a22546875203135746820446563656d62657220402030393a31373a3134414d223b733a323a224950223b733a393a223132372e302e302e31223b7d, 'yes'),
('lastBlockAggregation', 0x31363731303731363832, 'yes'),
('lastDailyCron', 0x31363731303731363831, 'yes'),
('lastDashboardCheck', 0x31363730353630383039, 'yes'),
('lastNotificationID', 0x37, 'no'),
('lastPermissionsTemplateCheck', 0x31363731303731383033, 'yes'),
('liveActivityPauseEnabled', 0x31, 'yes'),
('liveTrafficEnabled', 0x30, 'yes'),
('liveTraf_displayExpandedRecords', 0x30, 'no'),
('liveTraf_ignoreIPs', '', 'yes'),
('liveTraf_ignorePublishers', 0x31, 'yes'),
('liveTraf_ignoreUA', '', 'yes'),
('liveTraf_ignoreUsers', '', 'yes'),
('liveTraf_maxAge', 0x3330, 'yes'),
('liveTraf_maxRows', 0x32303030, 'yes'),
('loginSecurityEnabled', 0x31, 'yes'),
('loginSec_blockAdminReg', 0x31, 'yes'),
('loginSec_breachPasswds', 0x61646d696e73, 'yes'),
('loginSec_breachPasswds_enabled', 0x31, 'yes'),
('loginSec_countFailMins', 0x323430, 'yes'),
('loginSec_disableApplicationPasswords', 0x31, 'yes'),
('loginSec_disableAuthorScan', 0x31, 'yes'),
('loginSec_disableOEmbedAuthor', 0x30, 'yes'),
('loginSec_enableSeparateTwoFactor', '', 'yes'),
('loginSec_lockInvalidUsers', 0x30, 'yes'),
('loginSec_lockoutMins', 0x323430, 'yes'),
('loginSec_maskLoginErrors', 0x31, 'yes'),
('loginSec_maxFailures', 0x3230, 'yes'),
('loginSec_maxForgotPasswd', 0x3230, 'yes'),
('loginSec_requireAdminTwoFactor', 0x30, 'yes'),
('loginSec_strongPasswds', 0x70756273, 'yes'),
('loginSec_strongPasswds_enabled', 0x31, 'yes'),
('loginSec_userBlacklist', '', 'yes'),
('longEncKey', 0x37383433323430336234623031306263623734333335653433373365333063623662363035323534653835623039376230643734636435663462356432613261, 'yes'),
('lowResourceScansEnabled', 0x30, 'yes'),
('manualScanType', 0x6f6e63654461696c79, 'yes'),
('max404Crawlers', 0x44495341424c4544, 'yes'),
('max404Crawlers_action', 0x7468726f74746c65, 'yes'),
('max404Humans', 0x44495341424c4544, 'yes'),
('max404Humans_action', 0x7468726f74746c65, 'yes'),
('maxExecutionTime', 0x30, 'yes'),
('maxGlobalRequests', 0x44495341424c4544, 'yes'),
('maxGlobalRequests_action', 0x7468726f74746c65, 'yes'),
('maxMem', 0x323536, 'yes'),
('maxRequestsCrawlers', 0x44495341424c4544, 'yes'),
('maxRequestsCrawlers_action', 0x7468726f74746c65, 'yes'),
('maxRequestsHumans', 0x44495341424c4544, 'yes'),
('maxRequestsHumans_action', 0x7468726f74746c65, 'yes'),
('migration636_email_summary_excluded_directories', 0x31, 'no'),
('needsNewTour_blocking', 0x31, 'yes'),
('needsNewTour_dashboard', 0x31, 'yes'),
('needsNewTour_firewall', 0x31, 'yes'),
('needsNewTour_livetraffic', 0x31, 'yes'),
('needsNewTour_loginsecurity', 0x31, 'yes'),
('needsNewTour_scan', 0x31, 'yes'),
('needsUpgradeTour_blocking', 0x30, 'yes'),
('needsUpgradeTour_dashboard', 0x30, 'yes'),
('needsUpgradeTour_firewall', 0x30, 'yes'),
('needsUpgradeTour_livetraffic', 0x30, 'yes'),
('needsUpgradeTour_loginsecurity', 0x30, 'yes'),
('needsUpgradeTour_scan', 0x30, 'yes'),
('neverBlockBG', 0x6e65766572426c6f636b5665726966696564, 'yes'),
('notification_blogHighlights', 0x31, 'yes'),
('notification_productUpdates', 0x31, 'yes'),
('notification_promotions', 0x31, 'yes'),
('notification_scanStatus', 0x31, 'yes'),
('notification_securityAlerts', 0x31, 'yes'),
('notification_updatesNeeded', 0x31, 'yes'),
('onboardingAttempt1', 0x736b6970706564, 'yes'),
('onboardingAttempt2', 0x736b6970706564, 'yes'),
('onboardingAttempt3', '', 'no'),
('onboardingAttempt3Initial', 0x31, 'yes'),
('onboardingDelayedAt', 0x31363731303730383632, 'yes'),
('other_blockBadPOST', 0x30, 'yes'),
('other_bypassLitespeedNoabort', 0x30, 'yes'),
('other_hideWPVersion', 0x30, 'yes'),
('other_pwStrengthOnUpdate', 0x31, 'yes'),
('other_scanComments', 0x31, 'yes'),
('other_scanOutside', 0x30, 'yes'),
('other_WFNet', 0x31, 'yes'),
('previousWflogsFileList', 0x5b222e6874616363657373222c2261747461636b2d646174612e706870222c22636f6e6669672d6c6976657761662e706870222c22636f6e6669672d73796e6365642e706870222c22636f6e6669672d7472616e7369656e742e706870222c22636f6e6669672e706870222c2247656f4c697465322d436f756e7472792e6d6d6462222c226970732e706870222c2272756c65732e706870222c2274656d706c6174652e706870225d, 'yes'),
('scansEnabled_checkGSB', 0x31, 'yes'),
('scansEnabled_checkHowGetIPs', 0x31, 'yes'),
('scansEnabled_checkReadableConfig', 0x31, 'yes'),
('scansEnabled_comments', 0x31, 'yes'),
('scansEnabled_core', 0x31, 'yes'),
('scansEnabled_coreUnknown', 0x31, 'yes'),
('scansEnabled_diskSpace', 0x31, 'yes'),
('scansEnabled_fileContents', 0x31, 'yes'),
('scansEnabled_fileContentsGSB', 0x31, 'yes'),
('scansEnabled_geoipSupport', 0x31, 'yes'),
('scansEnabled_highSense', 0x30, 'yes'),
('scansEnabled_malware', 0x31, 'yes'),
('scansEnabled_oldVersions', 0x31, 'yes'),
('scansEnabled_options', 0x31, 'yes'),
('scansEnabled_passwds', 0x31, 'yes'),
('scansEnabled_plugins', 0x30, 'yes'),
('scansEnabled_posts', 0x31, 'yes'),
('scansEnabled_scanImages', 0x30, 'yes'),
('scansEnabled_suspectedFiles', 0x31, 'yes'),
('scansEnabled_suspiciousAdminUsers', 0x31, 'yes'),
('scansEnabled_suspiciousOptions', 0x31, 'yes'),
('scansEnabled_themes', 0x30, 'yes'),
('scansEnabled_wafStatus', 0x31, 'yes'),
('scansEnabled_wpscan_directoryListingEnabled', 0x31, 'yes'),
('scansEnabled_wpscan_fullPathDisclosure', 0x31, 'yes'),
('scanType', 0x7374616e64617264, 'yes'),
('scan_exclude', '', 'yes'),
('scan_force_ipv4_start', 0x30, 'yes'),
('scan_include_extra', '', 'yes'),
('scan_maxDuration', '', 'yes'),
('scan_maxIssues', 0x31303030, 'yes'),
('scan_max_resume_attempts', 0x32, 'yes'),
('schedMode', 0x6175746f, 'yes'),
('schedStartHour', 0x37, 'yes'),
('scheduledScansEnabled', 0x31, 'yes'),
('serverDNS', 0x313637313038383337333b303b3132372e302e302e31, 'yes'),
('showAdminBarMenu', 0x31, 'yes'),
('spamvertizeCheck', 0x31, 'yes'),
('ssl_verify', 0x31, 'yes'),
('startScansRemotely', 0x30, 'yes'),
('supportContent', 0x7b7d, 'no'),
('supportHash', '', 'no'),
('timeoffset_wf', 0x2d31, 'yes'),
('timeoffset_wf_updated', 0x31363731303731343030, 'yes'),
('totalAlertsSent', 0x36, 'yes'),
('totalLoginHits', 0x3433, 'yes'),
('totalLogins', 0x3139, 'yes'),
('touppBypassNextCheck', 0x30, 'yes'),
('touppPromptNeeded', 0x31, 'yes'),
('vulnerabilities_plugin', 0x613a32303a7b693a303b613a343a7b733a343a22736c7567223b733a373a22616b69736d6574223b733a31313a2266726f6d56657273696f6e223b733a333a22352e30223b733a31303a2276756c6e657261626c65223b623a303b733a393a22746f56657273696f6e223b733a353a22352e302e32223b7d693a313b613a343a7b733a343a22736c7567223b733a32333a22616c6c2d696e2d6f6e652d77702d6d6967726174696f6e223b733a31313a2266726f6d56657273696f6e223b733a343a22372e3634223b733a31303a2276756c6e657261626c65223b623a303b733a393a22746f56657273696f6e223b733a343a22372e3638223b7d693a323b613a343a7b733a343a22736c7567223b733a31333a226d656469612d636c65616e6572223b733a31313a2266726f6d56657273696f6e223b733a353a22362e352e30223b733a31303a2276756c6e657261626c65223b623a303b733a393a22746f56657273696f6e223b733a353a22362e352e31223b7d693a333b613a343a7b733a343a22736c7567223b733a31363a22757365722d726f6c652d656469746f72223b733a31313a2266726f6d56657273696f6e223b733a343a22342e3633223b733a31303a2276756c6e657261626c65223b623a303b733a393a22746f56657273696f6e223b733a363a22342e36332e31223b7d693a343b613a343a7b733a343a22736c7567223b733a393a22776f726466656e6365223b733a31313a2266726f6d56657273696f6e223b733a353a22372e382e30223b733a31303a2276756c6e657261626c65223b623a303b733a393a22746f56657273696f6e223b733a353a22372e382e32223b7d693a353b613a343a7b733a343a22736c7567223b733a32363a22616476616e6365642d637573746f6d2d6669656c64732d70726f223b733a31313a2266726f6d56657273696f6e223b733a363a22352e31312e34223b733a31303a2276756c6e657261626c65223b623a303b733a393a22746f56657273696f6e223b733a353a22362e302e36223b7d693a363b613a333a7b733a343a22736c7567223b733a31373a2261646d696e2d6d656e752d656469746f72223b733a31313a2266726f6d56657273696f6e223b733a363a22312e31302e34223b733a31303a2276756c6e657261626c65223b623a303b7d693a373b613a333a7b733a343a22736c7567223b733a31343a22636c61737369632d656469746f72223b733a31313a2266726f6d56657273696f6e223b733a353a22312e362e32223b733a31303a2276756c6e657261626c65223b623a303b7d693a383b613a333a7b733a343a22736c7567223b733a31393a22637573746f6d2d706f73742d747970652d7569223b733a31313a2266726f6d56657273696f6e223b733a363a22312e31332e32223b733a31303a2276756c6e657261626c65223b623a303b7d693a393b613a333a7b733a343a22736c7567223b733a32323a22656173792d7461626c652d6f662d636f6e74656e7473223b733a31313a2266726f6d56657273696f6e223b733a363a22322e302e3430223b733a31303a2276756c6e657261626c65223b623a303b7d693a31303b613a333a7b733a343a22736c7567223b733a383a2266696c6562697264223b733a31313a2266726f6d56657273696f6e223b733a333a22352e31223b733a31303a2276756c6e657261626c65223b623a303b7d693a31313b613a333a7b733a343a22736c7567223b733a32313a2267656e657369732d637573746f6d2d626c6f636b73223b733a31313a2266726f6d56657273696f6e223b733a353a22312e352e31223b733a31303a2276756c6e657261626c65223b623a303b7d693a31323b613a333a7b733a343a22736c7567223b733a31313a2268656c6c6f2d646f6c6c79223b733a31313a2266726f6d56657273696f6e223b733a353a22312e372e32223b733a31303a2276756c6e657261626c65223b623a303b7d693a31333b613a333a7b733a343a22736c7567223b733a31333a2271756572792d6d6f6e69746f72223b733a31313a2266726f6d56657273696f6e223b733a363a22332e31302e31223b733a31303a2276756c6e657261626c65223b623a303b7d693a31343b613a333a7b733a343a22736c7567223b733a32343a22726573697a61626c652d656469746f722d73696465626172223b733a31313a2266726f6d56657273696f6e223b733a353a22312e302e31223b733a31303a2276756c6e657261626c65223b623a303b7d693a31353b613a333a7b733a343a22736c7567223b733a31373a2277702d6164642d6d696d652d7479706573223b733a31313a2266726f6d56657273696f6e223b733a353a22332e302e33223b733a31303a2276756c6e657261626c65223b623a303b7d693a31363b613a333a7b733a343a22736c7567223b733a32333a2277702d64656c6574652d757365722d6163636f756e7473223b733a31313a2266726f6d56657273696f6e223b733a353a22312e322e33223b733a31303a2276756c6e657261626c65223b623a303b7d693a31373b613a333a7b733a343a22736c7567223b733a31323a2277702d6d61696c2d736d7470223b733a31313a2266726f6d56657273696f6e223b733a353a22332e362e31223b733a31303a2276756c6e657261626c65223b623a303b7d693a31383b613a333a7b733a343a22736c7567223b733a31343a227770732d686964652d6c6f67696e223b733a31313a2266726f6d56657273696f6e223b733a353a22312e392e36223b733a31303a2276756c6e657261626c65223b623a303b7d693a31393b613a333a7b733a343a22736c7567223b733a33383a22616c6c2d696e2d6f6e652d77702d6d6967726174696f6e2d66696c652d657874656e73696f6e223b733a31313a2266726f6d56657273696f6e223b733a333a22312e38223b733a31303a2276756c6e657261626c65223b623a303b7d7d, 'yes'),
('vulnerabilities_theme', 0x613a313a7b693a303b613a343a7b733a343a22736c7567223b733a31353a227477656e74797477656e747974776f223b733a393a22746f56657273696f6e223b733a333a22312e33223b733a31313a2266726f6d56657273696f6e223b733a333a22312e32223b733a31303a2276756c6e657261626c65223b623a303b7d7d, 'yes'),
('wafAlertInterval', 0x363030, 'yes'),
('wafAlertOnAttacks', 0x31, 'yes'),
('wafAlertThreshold', 0x313030, 'yes'),
('wafAlertWhitelist', '', 'yes'),
('waf_status', 0x6c6561726e696e672d6d6f6465, 'yes'),
('whitelisted', '', 'yes'),
('whitelistedServices', 0x7b7d, 'yes'),
('whitelistHash', '', 'no'),
('whitelistPresets', 0x7b7d, 'no'),
('wordfenceI18n', 0x31, 'yes'),
('wordpressPluginVersions', 0x613a32303a7b733a31373a2261646d696e2d6d656e752d656469746f72223b733a363a22312e31302e34223b733a32363a22616476616e6365642d637573746f6d2d6669656c64732d70726f223b733a363a22352e31312e34223b733a373a22616b69736d6574223b733a333a22352e30223b733a32333a22616c6c2d696e2d6f6e652d77702d6d6967726174696f6e223b733a343a22372e3634223b733a33383a22616c6c2d696e2d6f6e652d77702d6d6967726174696f6e2d66696c652d657874656e73696f6e223b733a333a22312e38223b733a31343a22636c61737369632d656469746f72223b733a353a22312e362e32223b733a31393a22637573746f6d2d706f73742d747970652d7569223b733a363a22312e31332e32223b733a32323a22656173792d7461626c652d6f662d636f6e74656e7473223b733a363a22322e302e3430223b733a383a2266696c6562697264223b733a333a22352e31223b733a32313a2267656e657369732d637573746f6d2d626c6f636b73223b733a353a22312e352e31223b733a353a2268656c6c6f223b733a353a22312e372e32223b733a31333a226d656469612d636c65616e6572223b733a353a22362e352e30223b733a31333a2271756572792d6d6f6e69746f72223b733a363a22332e31302e31223b733a32343a22726573697a61626c652d656469746f722d73696465626172223b733a353a22312e302e31223b733a31363a22757365722d726f6c652d656469746f72223b733a343a22342e3633223b733a393a22776f726466656e6365223b733a353a22372e382e30223b733a31373a2277702d6164642d6d696d652d7479706573223b733a353a22332e302e33223b733a33303a2277702d64656c6574652d757365722d6163636f756e74732d6d6173746572223b733a353a22312e322e33223b733a31323a2277702d6d61696c2d736d7470223b733a353a22332e362e31223b733a31343a227770732d686964652d6c6f67696e223b733a353a22312e392e36223b7d, 'yes'),
('wordpressThemeVersions', 0x613a333a7b733a373a2262696f6c696e6b223b733a333a22312e31223b733a373a2267656e65736973223b733a353a22332e342e30223b733a31353a227477656e74797477656e747974776f223b733a333a22312e32223b7d, 'yes'),
('wordpressVersion', 0x362e312e31, 'yes'),
('wp_home_url', 0x687474703a2f2f62696f6c696e6b2e6c6f63616c, 'yes'),
('wp_site_url', 0x687474703a2f2f62696f6c696e6b2e6c6f63616c, 'yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wfcrawlers`
--

CREATE TABLE `wp_wfcrawlers` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `patternSig` binary(16) NOT NULL,
  `status` char(8) NOT NULL,
  `lastUpdate` int(10) UNSIGNED NOT NULL,
  `PTR` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wffilechanges`
--

CREATE TABLE `wp_wffilechanges` (
  `filenameHash` char(64) NOT NULL,
  `file` varchar(1000) NOT NULL,
  `md5` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wffilemods`
--

CREATE TABLE `wp_wffilemods` (
  `filenameMD5` binary(16) NOT NULL,
  `filename` varchar(1000) NOT NULL,
  `real_path` text NOT NULL,
  `knownFile` tinyint(3) UNSIGNED NOT NULL,
  `oldMD5` binary(16) NOT NULL,
  `newMD5` binary(16) NOT NULL,
  `SHAC` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `stoppedOnSignature` varchar(255) NOT NULL DEFAULT '',
  `stoppedOnPosition` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `isSafeFile` varchar(1) NOT NULL DEFAULT '?'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wfhits`
--

CREATE TABLE `wp_wfhits` (
  `id` int(10) UNSIGNED NOT NULL,
  `attackLogTime` double(17,6) UNSIGNED NOT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `jsRun` tinyint(4) DEFAULT 0,
  `statusCode` int(11) NOT NULL DEFAULT 200,
  `isGoogle` tinyint(4) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `newVisit` tinyint(3) UNSIGNED NOT NULL,
  `URL` text DEFAULT NULL,
  `referer` text DEFAULT NULL,
  `UA` text DEFAULT NULL,
  `action` varchar(64) NOT NULL DEFAULT '',
  `actionDescription` text DEFAULT NULL,
  `actionData` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `wp_wfhits`
--

INSERT INTO `wp_wfhits` (`id`, `attackLogTime`, `ctime`, `IP`, `jsRun`, `statusCode`, `isGoogle`, `userID`, `newVisit`, `URL`, `referer`, `UA`, `action`, `actionDescription`, `actionData`) VALUES
(1, 0.000000, 1670553405.263482, 0x00000000000000000000ffff7f000001, 1, 200, 0, 1, 0, 'http://biolink.local/ttw/?action=logout&_wpnonce=c65bf1cd8a', 'http://biolink.local/wp-admin/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'logout', NULL, NULL),
(2, 0.000000, 1670553853.338081, 0x00000000000000000000ffff7f000001, 0, 200, 0, 1, 0, 'http://biolink.local/wp-admin/admin-ajax.php', 'http://biolink.local/login/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(3, 0.000000, 1670553866.861884, 0x00000000000000000000ffff7f000001, 1, 200, 0, 1, 0, 'http://biolink.local/biotwlogin/?action=logout&_wpnonce=796a83aa66', 'http://biolink.local/wp-admin/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'logout', NULL, NULL),
(4, 0.000000, 1670554259.006054, 0x00000000000000000000ffff7f000001, 0, 200, 0, 4, 0, 'http://biolink.local/wp-admin/admin-ajax.php', 'http://biolink.local/login/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(5, 0.000000, 1670554321.875601, 0x00000000000000000000ffff7f000001, 1, 200, 0, 4, 0, 'http://biolink.local/biotwlogin/?action=logout&_wpnonce=257f209dd0', 'http://biolink.local/wp-admin/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'logout', NULL, NULL),
(6, 0.000000, 1670554364.447048, 0x00000000000000000000ffff7f000001, 0, 302, 0, 1, 0, 'http://biolink.local/biotwlogin/', 'http://biolink.local/biotwlogin/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(7, 0.000000, 1670554368.882785, 0x00000000000000000000ffff7f000001, 1, 200, 0, 1, 0, 'http://biolink.local/biotwlogin/?action=logout&_wpnonce=c89999b399', 'http://biolink.local/wp-admin/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'logout', NULL, NULL),
(8, 0.000000, 1670554477.743121, 0x00000000000000000000ffff7f000001, 0, 200, 0, 25, 0, 'http://biolink.local/wp-admin/admin-ajax.php', 'http://biolink.local/register/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(9, 0.000000, 1670555353.441935, 0x00000000000000000000ffff7f000001, 0, 200, 0, 4, 0, 'http://biolink.local/wp-admin/admin-ajax.php', 'http://biolink.local/login/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(10, 0.000000, 1670559420.337697, 0x00000000000000000000ffff7f000001, 1, 200, 0, 4, 0, 'http://biolink.local/biotwlogin/?action=logout&_wpnonce=1abc428972', 'http://biolink.local/wp-admin/profile.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'logout', NULL, NULL),
(11, 0.000000, 1670560864.213656, 0x00000000000000000000ffff7f000001, 0, 200, 0, 4, 0, 'http://biolink.local/wp-admin/admin-ajax.php', 'http://biolink.local/login/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(12, 0.000000, 1670560917.309057, 0x00000000000000000000ffff7f000001, 1, 200, 0, 4, 0, 'http://biolink.local/biotwlogin/?action=logout&_wpnonce=17d6f22fd6', 'http://biolink.local/wp-admin/edit.php?post_type=page', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'logout', NULL, NULL),
(13, 0.000000, 1670561194.375210, 0x00000000000000000000ffff7f000001, 0, 200, 0, 4, 0, 'http://biolink.local/wp-admin/admin-ajax.php', 'http://biolink.local/login/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(14, 0.000000, 1670561550.051821, 0x00000000000000000000ffff7f000001, 1, 200, 0, 4, 0, 'http://biolink.local/biotwlogin/?action=logout&_wpnonce=052fc082ec', 'http://biolink.local/wp-admin/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'logout', NULL, NULL),
(15, 0.000000, 1670569329.070490, 0x00000000000000000000ffff7f000001, 0, 200, 0, 26, 0, 'http://biolink.local/wp-admin/admin-ajax.php', 'http://biolink.local/register/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(16, 0.000000, 1670569406.971147, 0x00000000000000000000ffff7f000001, 1, 200, 0, 26, 0, 'http://biolink.local/biotwlogin/?action=logout&_wpnonce=0c7c1ce3f4', 'http://biolink.local/annguyen/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'logout', NULL, NULL),
(17, 0.000000, 1670578102.327316, 0x00000000000000000000ffff7f000001, 0, 200, 0, 4, 0, 'http://biolink.local/wp-admin/admin-ajax.php', 'http://biolink.local/login/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(18, 0.000000, 1670578273.955567, 0x00000000000000000000ffff7f000001, 1, 200, 0, 4, 0, 'http://biolink.local/biotwlogin/?action=logout&_wpnonce=76e76bda27', 'http://biolink.local/wp-admin/profile.php', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'logout', NULL, NULL),
(19, 0.000000, 1670810695.109471, 0x00000000000000000000ffff7f000001, 0, 200, 0, 4, 0, 'http://biolink.local/wp-admin/admin-ajax.php', 'http://biolink.local/login/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(20, 0.000000, 1670810793.474155, 0x00000000000000000000ffff7f000001, 1, 200, 0, 4, 0, 'http://biolink.local/biotwlogin/?action=logout&_wpnonce=636f37f0cc', 'http://biolink.local/wp-admin/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'logout', NULL, NULL),
(21, 0.000000, 1670812785.506151, 0x00000000000000000000ffff7f000001, 0, 302, 0, 1, 0, 'http://biolink.local/biotwlogin/', 'http://biolink.local/biotwlogin/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(22, 0.000000, 1670915552.176418, 0x00000000000000000000ffff7f000001, 0, 200, 0, 4, 0, 'http://biolink.local/wp-admin/admin-ajax.php', 'http://biolink.local/login/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(23, 0.000000, 1670915641.338596, 0x00000000000000000000ffff7f000001, 1, 200, 0, 4, 0, 'http://biolink.local/biotwlogin/?action=logout&_wpnonce=91905da4f4', 'http://biolink.local/wp-admin/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'logout', NULL, NULL),
(24, 0.000000, 1670915680.693920, 0x00000000000000000000ffff7f000001, 0, 302, 0, 1, 0, 'http://biolink.local/biotwlogin/', 'http://biolink.local/biotwlogin/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(25, 0.000000, 1670915821.715263, 0x00000000000000000000ffff7f000001, 0, 200, 0, 4, 0, 'http://biolink.local/wp-admin/admin-ajax.php', 'http://biolink.local/login/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(26, 0.000000, 1670916989.244083, 0x00000000000000000000ffff7f000001, 1, 200, 0, 4, 0, 'http://biolink.local/biotwlogin/?action=logout&_wpnonce=87e6fc71d9', 'http://biolink.local/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'logout', NULL, NULL),
(27, 0.000000, 1670985671.499061, 0x00000000000000000000ffff7f000001, 0, 302, 0, 1, 0, 'http://biolink.local/biotwlogin/', 'http://biolink.local/biotwlogin/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(28, 0.000000, 1671011486.532746, 0x00000000000000000000ffff7f000001, 0, 200, 0, 4, 0, 'http://biolink.local/wp-admin/admin-ajax.php', 'http://biolink.local/login/', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'loginOK', NULL, NULL),
(29, 0.000000, 1671011560.287852, 0x00000000000000000000ffff7f000001, 1, 200, 0, 4, 0, 'http://biolink.local/biotwlogin/?action=logout&_wpnonce=c520e4d7e7', 'http://biolink.local/', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'logout', NULL, NULL),
(30, 0.000000, 1671013975.255138, 0x00000000000000000000ffff7f000001, 0, 200, 0, 4, 0, 'http://biolink.local/wp-admin/admin-ajax.php', 'http://biolink.local/login/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(31, 0.000000, 1671069427.197999, 0x00000000000000000000ffff7f000001, 0, 200, 0, 4, 0, 'http://biolink.local/wp-admin/admin-ajax.php', 'http://biolink.local/login/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'loginOK', NULL, NULL),
(32, 0.000000, 1671069689.937315, 0x00000000000000000000ffff7f000001, 1, 200, 0, 4, 0, 'http://biolink.local/biotwlogin/?action=logout&_wpnonce=474f1b92cf', 'http://biolink.local/wp-admin/edit.php?post_type=page', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'logout', NULL, NULL),
(33, 0.000000, 1671070634.497717, 0x00000000000000000000ffff7f000001, 0, 302, 0, 1, 0, 'http://biolink.local/biotwlogin/', 'http://biolink.local/biotwlogin/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'loginOK', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wfhoover`
--

CREATE TABLE `wp_wfhoover` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner` text DEFAULT NULL,
  `host` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `hostKey` varbinary(124) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wfissues`
--

CREATE TABLE `wp_wfissues` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `lastUpdated` int(10) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) UNSIGNED NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wfknownfilelist`
--

CREATE TABLE `wp_wfknownfilelist` (
  `id` int(11) UNSIGNED NOT NULL,
  `path` text NOT NULL,
  `wordpress_path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wflivetraffichuman`
--

CREATE TABLE `wp_wflivetraffichuman` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `identifier` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `expiration` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wflocs`
--

CREATE TABLE `wp_wflocs` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `ctime` int(10) UNSIGNED NOT NULL,
  `failed` tinyint(3) UNSIGNED NOT NULL,
  `city` varchar(255) DEFAULT '',
  `region` varchar(255) DEFAULT '',
  `countryName` varchar(255) DEFAULT '',
  `countryCode` char(2) DEFAULT '',
  `lat` float(10,7) DEFAULT 0.0000000,
  `lon` float(10,7) DEFAULT 0.0000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wflogins`
--

CREATE TABLE `wp_wflogins` (
  `id` int(10) UNSIGNED NOT NULL,
  `hitID` int(11) DEFAULT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `fail` tinyint(3) UNSIGNED NOT NULL,
  `action` varchar(40) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userID` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) DEFAULT NULL,
  `UA` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `wp_wflogins`
--

INSERT INTO `wp_wflogins` (`id`, `hitID`, `ctime`, `fail`, `action`, `username`, `userID`, `IP`, `UA`) VALUES
(1, 1, 1670553405.557369, 0, 'logout', 'admin', 1, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(2, 2, 1670553853.514412, 0, 'loginOK', 'admin', 1, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(3, 3, 1670553866.969615, 0, 'logout', 'admin', 1, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(4, 4, 1670554259.173793, 0, 'loginOK', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(5, 5, 1670554322.076433, 0, 'logout', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(6, 6, 1670554364.626336, 0, 'loginOK', 'admin', 1, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(7, 7, 1670554368.989753, 0, 'logout', 'admin', 1, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(8, 8, 1670554477.950483, 0, 'loginOK', 'bio6', 25, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(9, 9, 1670555354.124013, 0, 'loginOK', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(10, 10, 1670559420.456153, 0, 'logout', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(11, 11, 1670560864.854924, 0, 'loginOK', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(12, 12, 1670560917.429114, 0, 'logout', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(13, 13, 1670561194.532230, 0, 'loginOK', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(14, 14, 1670561550.202533, 0, 'logout', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(15, 15, 1670569330.397501, 0, 'loginOK', 'AnNguyen', 26, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(16, 16, 1670569407.082329, 0, 'logout', 'AnNguyen', 26, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(17, 17, 1670578102.607641, 0, 'loginOK', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(18, 18, 1670578274.071243, 0, 'logout', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(19, 19, 1670810695.392877, 0, 'loginOK', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(20, 20, 1670810793.822750, 0, 'logout', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(21, 21, 1670812785.702235, 0, 'loginOK', 'admin', 1, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(22, 22, 1670915553.376200, 0, 'loginOK', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(23, 23, 1670915641.659106, 0, 'logout', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(24, 24, 1670915680.884341, 0, 'loginOK', 'admin', 1, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(25, 25, 1670915821.921533, 0, 'loginOK', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(26, 26, 1670916989.365371, 0, 'logout', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(27, 27, 1670985671.664500, 0, 'loginOK', 'admin', 1, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(28, 28, 1671011486.771691, 0, 'loginOK', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1'),
(29, 29, 1671011560.651269, 0, 'logout', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1'),
(30, 30, 1671013975.420644, 0, 'loginOK', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(31, 31, 1671069427.845894, 0, 'loginOK', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(32, 32, 1671069690.054731, 0, 'logout', 'Bio2', 4, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36'),
(33, 33, 1671070634.714393, 0, 'loginOK', 'admin', 1, 0x00000000000000000000ffff7f000001, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wfls_2fa_secrets`
--

CREATE TABLE `wp_wfls_2fa_secrets` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `secret` tinyblob NOT NULL,
  `recovery` blob NOT NULL,
  `ctime` int(10) UNSIGNED NOT NULL,
  `vtime` int(10) UNSIGNED NOT NULL,
  `mode` enum('authenticator') NOT NULL DEFAULT 'authenticator'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `wp_wfls_2fa_secrets`
--

INSERT INTO `wp_wfls_2fa_secrets` (`id`, `user_id`, `secret`, `recovery`, `ctime`, `vtime`, `mode`) VALUES
(1, 1, 0xa588eac162315748730f4bc67d3cdf0f7748842d, 0xaffbabd08d9d267ba6ec908d339f1b04eb9f4cd3cd6c08fe380a104aab53654523413199c13097b7, 1670554226, 1671070620, 'authenticator'),
(2, 4, 0xaac88a4d9a98a449670b8792801ba2377e165526, 0x1646cb7945d13e3429811721b54a653bdd9ce7bc65b7f52d40373fb6d6bc6ec684fbb76557ac6648, 1670560905, 1, 'authenticator');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wfls_settings`
--

CREATE TABLE `wp_wfls_settings` (
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` longblob DEFAULT NULL,
  `autoload` enum('no','yes') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `wp_wfls_settings`
--

INSERT INTO `wp_wfls_settings` (`name`, `value`, `autoload`) VALUES
('2fa-user-grace-period', 0x3130, 'yes'),
('allow-disabling-ntp', 0x31, 'yes'),
('allow-xml-rpc', '', 'yes'),
('captcha-stats', 0x7b22636f756e7473223a5b302c302c302c302c302c302c302c302c302c302c305d2c22617667223a307d, 'yes'),
('delete-deactivation', '', 'yes'),
('enable-auth-captcha', '', 'yes'),
('enable-login-history-columns', 0x31, 'yes'),
('enable-woocommerce-integration', '', 'yes'),
('global-notices', 0x5b5d, 'yes'),
('ip-source', '', 'yes'),
('ip-trusted-proxies', '', 'yes'),
('last-secret-refresh', 0x31363730353533323635, 'yes'),
('ntp-failure-count', 0x30, 'yes'),
('ntp-offset', 0x2d312e333230333033343430303934, 'yes'),
('recaptcha-threshold', 0x302e35, 'yes'),
('remember-device', '', 'yes'),
('remember-device-duration', 0x32353932303030, 'yes'),
('require-2fa-grace-period-enabled', '', 'yes'),
('require-2fa.administrator', '', 'yes'),
('required-2fa-role.kol_user', 0x2d31, 'yes'),
('shared-hash-secret', 0x62653463633437393334333662373632363365643562333037616637333632373732396162373364366263656435616164646534326465623939346433623739, 'yes'),
('shared-symmetric-secret', 0x35343965666363336434643431663338333163333265393733616632306165663435346262386665613163396165613565626331373639386335353639366161, 'yes'),
('use-ntp', 0x31, 'yes'),
('whitelisted', '', 'yes'),
('xmlrpc-enabled', 0x31, 'yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wfnotifications`
--

CREATE TABLE `wp_wfnotifications` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `new` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `category` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 1000,
  `ctime` int(10) UNSIGNED NOT NULL,
  `html` text NOT NULL,
  `links` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `wp_wfnotifications`
--

INSERT INTO `wp_wfnotifications` (`id`, `new`, `category`, `priority`, `ctime`, `html`, `links`) VALUES
('site-AEAAAAA', 1, 'wfplugin_updates', 502, 1671071686, '<a href=\"http://biolink.local/wp-admin/update-core.php\">Updates are available for 6 plugins and 1 theme</a>', '[]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wfpendingissues`
--

CREATE TABLE `wp_wfpendingissues` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `lastUpdated` int(10) UNSIGNED NOT NULL,
  `status` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `severity` tinyint(3) UNSIGNED NOT NULL,
  `ignoreP` char(32) NOT NULL,
  `ignoreC` char(32) NOT NULL,
  `shortMsg` varchar(255) NOT NULL,
  `longMsg` text DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wfreversecache`
--

CREATE TABLE `wp_wfreversecache` (
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `host` varchar(255) NOT NULL,
  `lastUpdate` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wfsnipcache`
--

CREATE TABLE `wp_wfsnipcache` (
  `id` int(10) UNSIGNED NOT NULL,
  `IP` varchar(45) NOT NULL DEFAULT '',
  `expiration` timestamp NOT NULL DEFAULT current_timestamp(),
  `body` varchar(255) NOT NULL DEFAULT '',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wfstatus`
--

CREATE TABLE `wp_wfstatus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ctime` double(17,6) UNSIGNED NOT NULL,
  `level` tinyint(3) UNSIGNED NOT NULL,
  `type` char(5) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `wp_wfstatus`
--

INSERT INTO `wp_wfstatus` (`id`, `ctime`, `level`, `type`, `msg`) VALUES
(1, 1670560811.589233, 2, 'error', 'Call to Wordfence API to resolve IPs failed: Wordfence API error: Your site did not send an API key when contacting the Wordfence servers.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wftrafficrates`
--

CREATE TABLE `wp_wftrafficrates` (
  `eMin` int(10) UNSIGNED NOT NULL,
  `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  `hitType` enum('hit','404') NOT NULL DEFAULT 'hit',
  `hits` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wpmailsmtp_debug_events`
--

CREATE TABLE `wp_wpmailsmtp_debug_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `initiator` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `event_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wp_wpmailsmtp_tasks_meta`
--

CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `wp_wpmailsmtp_tasks_meta`
--

INSERT INTO `wp_wpmailsmtp_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wp_mail_smtp_summary_report_email', 'W10=', '2022-12-08 09:02:08');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Chỉ mục cho bảng `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Chỉ mục cho bảng `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Chỉ mục cho bảng `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Chỉ mục cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `wp_fbv`
--
ALTER TABLE `wp_fbv`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Chỉ mục cho bảng `wp_fbv_attachment_folder`
--
ALTER TABLE `wp_fbv_attachment_folder`
  ADD UNIQUE KEY `folder_id` (`folder_id`,`attachment_id`);

--
-- Chỉ mục cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `wp_mclean_refs`
--
ALTER TABLE `wp_mclean_refs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wp_mclean_scan`
--
ALTER TABLE `wp_mclean_scan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IgnoredIndex` (`ignored`) USING BTREE;

--
-- Chỉ mục cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Chỉ mục cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Chỉ mục cho bảng `wp_wfblockediplog`
--
ALTER TABLE `wp_wfblockediplog`
  ADD PRIMARY KEY (`IP`,`unixday`,`blockType`);

--
-- Chỉ mục cho bảng `wp_wfblocks7`
--
ALTER TABLE `wp_wfblocks7`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `IP` (`IP`),
  ADD KEY `expiration` (`expiration`);

--
-- Chỉ mục cho bảng `wp_wfconfig`
--
ALTER TABLE `wp_wfconfig`
  ADD PRIMARY KEY (`name`);

--
-- Chỉ mục cho bảng `wp_wfcrawlers`
--
ALTER TABLE `wp_wfcrawlers`
  ADD PRIMARY KEY (`IP`,`patternSig`);

--
-- Chỉ mục cho bảng `wp_wffilechanges`
--
ALTER TABLE `wp_wffilechanges`
  ADD PRIMARY KEY (`filenameHash`);

--
-- Chỉ mục cho bảng `wp_wffilemods`
--
ALTER TABLE `wp_wffilemods`
  ADD PRIMARY KEY (`filenameMD5`);

--
-- Chỉ mục cho bảng `wp_wfhits`
--
ALTER TABLE `wp_wfhits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`IP`,`ctime`),
  ADD KEY `attackLogTime` (`attackLogTime`);

--
-- Chỉ mục cho bảng `wp_wfhoover`
--
ALTER TABLE `wp_wfhoover`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k2` (`hostKey`);

--
-- Chỉ mục cho bảng `wp_wfissues`
--
ALTER TABLE `wp_wfissues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastUpdated` (`lastUpdated`),
  ADD KEY `status` (`status`),
  ADD KEY `ignoreP` (`ignoreP`),
  ADD KEY `ignoreC` (`ignoreC`);

--
-- Chỉ mục cho bảng `wp_wfknownfilelist`
--
ALTER TABLE `wp_wfknownfilelist`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wp_wflivetraffichuman`
--
ALTER TABLE `wp_wflivetraffichuman`
  ADD PRIMARY KEY (`IP`,`identifier`),
  ADD KEY `expiration` (`expiration`);

--
-- Chỉ mục cho bảng `wp_wflocs`
--
ALTER TABLE `wp_wflocs`
  ADD PRIMARY KEY (`IP`);

--
-- Chỉ mục cho bảng `wp_wflogins`
--
ALTER TABLE `wp_wflogins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`IP`,`fail`),
  ADD KEY `hitID` (`hitID`);

--
-- Chỉ mục cho bảng `wp_wfls_2fa_secrets`
--
ALTER TABLE `wp_wfls_2fa_secrets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `wp_wfls_settings`
--
ALTER TABLE `wp_wfls_settings`
  ADD PRIMARY KEY (`name`);

--
-- Chỉ mục cho bảng `wp_wfnotifications`
--
ALTER TABLE `wp_wfnotifications`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wp_wfpendingissues`
--
ALTER TABLE `wp_wfpendingissues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastUpdated` (`lastUpdated`),
  ADD KEY `status` (`status`),
  ADD KEY `ignoreP` (`ignoreP`),
  ADD KEY `ignoreC` (`ignoreC`);

--
-- Chỉ mục cho bảng `wp_wfreversecache`
--
ALTER TABLE `wp_wfreversecache`
  ADD PRIMARY KEY (`IP`);

--
-- Chỉ mục cho bảng `wp_wfsnipcache`
--
ALTER TABLE `wp_wfsnipcache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expiration` (`expiration`),
  ADD KEY `IP` (`IP`),
  ADD KEY `type` (`type`);

--
-- Chỉ mục cho bảng `wp_wfstatus`
--
ALTER TABLE `wp_wfstatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `k1` (`ctime`),
  ADD KEY `k2` (`type`);

--
-- Chỉ mục cho bảng `wp_wftrafficrates`
--
ALTER TABLE `wp_wftrafficrates`
  ADD PRIMARY KEY (`eMin`,`IP`,`hitType`);

--
-- Chỉ mục cho bảng `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=416;

--
-- AUTO_INCREMENT cho bảng `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=948;

--
-- AUTO_INCREMENT cho bảng `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_fbv`
--
ALTER TABLE `wp_fbv`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_mclean_refs`
--
ALTER TABLE `wp_mclean_refs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_mclean_scan`
--
ALTER TABLE `wp_mclean_scan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4742;

--
-- AUTO_INCREMENT cho bảng `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2527;

--
-- AUTO_INCREMENT cho bảng `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=565;

--
-- AUTO_INCREMENT cho bảng `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=466;

--
-- AUTO_INCREMENT cho bảng `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `wp_wfblocks7`
--
ALTER TABLE `wp_wfblocks7`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_wfhits`
--
ALTER TABLE `wp_wfhits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `wp_wfhoover`
--
ALTER TABLE `wp_wfhoover`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_wfissues`
--
ALTER TABLE `wp_wfissues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_wfknownfilelist`
--
ALTER TABLE `wp_wfknownfilelist`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_wflogins`
--
ALTER TABLE `wp_wflogins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `wp_wfls_2fa_secrets`
--
ALTER TABLE `wp_wfls_2fa_secrets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `wp_wfpendingissues`
--
ALTER TABLE `wp_wfpendingissues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_wfsnipcache`
--
ALTER TABLE `wp_wfsnipcache`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_wfstatus`
--
ALTER TABLE `wp_wfstatus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
