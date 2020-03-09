-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-03-2020 a las 16:18:20
-- Versión del servidor: 10.3.22-MariaDB-0+deb10u1
-- Versión de PHP: 7.3.14-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wordpress`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-02-11 21:34:05', '2020-02-11 21:34:05', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
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
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://localhost/wordpress', 'yes'),
(2, 'home', 'https://localhost/wordpress', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'root@localhost.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1597008845', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'es_ES', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:5:{i:1583771646;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1583787739;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1583789646;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1583790588;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(129, 'can_compress_scripts', '1', 'no'),
(135, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1583704082;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(142, '_site_transient_timeout_browser_ef27660e9f11b103d569aefbef1fd260', '1584306140', 'no'),
(143, '_site_transient_browser_ef27660e9f11b103d569aefbef1fd260', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.122\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(144, '_site_transient_timeout_php_check_d3bbd98fd236355d6f7265d1a70b5a6f', '1584306141', 'no'),
(145, '_site_transient_php_check_d3bbd98fd236355d6f7265d1a70b5a6f', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(158, 'category_children', 'a:0:{}', 'yes'),
(159, 'theme_mods_twentyseventeen', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:86:\"https://localhost/wordpress/wp-content/themes/twentyseventeen/assets/images/header.jpg\";s:17:\"header_image_data\";a:3:{s:3:\"url\";s:86:\"https://localhost/wordpress/wp-content/themes/twentyseventeen/assets/images/header.jpg\";s:13:\"thumbnail_url\";s:86:\"https://localhost/wordpress/wp-content/themes/twentyseventeen/assets/images/header.jpg\";s:11:\"description\";s:30:\"Imagen de cabecera por defecto\";}s:16:\"header_textcolor\";s:0:\"\";}', 'yes'),
(163, 'current_theme', 'Twenty Seventeen', 'yes'),
(164, 'theme_switched', '', 'yes'),
(165, 'theme_switched_via_customizer', '', 'yes'),
(166, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(202, '_site_transient_timeout_browser_4d525878488cf1315a64350d37529fba', '1584371003', 'no'),
(203, '_site_transient_browser_4d525878488cf1315a64350d37529fba', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.132\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(204, '_transient_timeout_dash_v2_c05853b002c443ec8e57ff884f56cdde', '1583809405', 'no'),
(205, '_site_transient_timeout_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', '1583809406', 'no'),
(206, '_transient_dash_v2_c05853b002c443ec8e57ff884f56cdde', '<div class=\"rss-widget\"><ul><li>Ha ocurrido un error que, probablemente, implique que se ha caído el feed. Prueba de nuevo más tarde.</li></ul></div><div class=\"rss-widget\"><ul><li>Ha ocurrido un error que, probablemente, implique que se ha caído el feed. Prueba de nuevo más tarde.</li></ul></div>', 'no'),
(207, '_site_transient_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}s:6:\"events\";a:5:{i:0;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:27:\"Mama quiero ser Youtuber!!!\";s:3:\"url\";s:57:\"https://www.meetup.com/Toledo-WordPress/events/268756863/\";s:6:\"meetup\";s:16:\"Toledo WordPress\";s:10:\"meetup_url\";s:40:\"https://www.meetup.com/Toledo-WordPress/\";s:4:\"date\";s:19:\"2020-03-10 19:00:00\";s:8:\"end_date\";s:19:\"2020-03-10 21:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:13:\"Toledo, Spain\";s:7:\"country\";s:2:\"es\";s:8:\"latitude\";d:39.857501983643;s:9:\"longitude\";d:-4.0205159187317;}}i:1;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:37:\"Tratamiento de imágenes para tu Web \";s:3:\"url\";s:57:\"https://www.meetup.com/Wordpress-Grinon/events/269145098/\";s:6:\"meetup\";s:17:\"WordPress Griñon\";s:10:\"meetup_url\";s:40:\"https://www.meetup.com/Wordpress-Grinon/\";s:4:\"date\";s:19:\"2020-03-19 19:30:00\";s:8:\"end_date\";s:19:\"2020-03-19 21:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:15:\"Griñón, Spain\";s:7:\"country\";s:2:\"es\";s:8:\"latitude\";d:40.210269927979;s:9:\"longitude\";d:-3.8533699512482;}}i:2;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:61:\"Un año vendiendo online: mi experiencia con la Tienda Bonica\";s:3:\"url\";s:70:\"https://www.meetup.com/Torrelodones-WordPress-Meetup/events/268831583/\";s:6:\"meetup\";s:29:\"Torrelodones WordPress Meetup\";s:10:\"meetup_url\";s:53:\"https://www.meetup.com/Torrelodones-WordPress-Meetup/\";s:4:\"date\";s:19:\"2020-03-24 12:30:00\";s:8:\"end_date\";s:19:\"2020-03-24 14:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:19:\"Torrelodones, Spain\";s:7:\"country\";s:2:\"es\";s:8:\"latitude\";d:40.575698852539;s:9:\"longitude\";d:-3.9501080513;}}i:3;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:65:\"Qué escribir en tu blog cuando no sabes qué escribir en tu blog\";s:3:\"url\";s:74:\"https://www.meetup.com/WordPress-Collado-Villalba-Meetup/events/269008206/\";s:6:\"meetup\";s:26:\"WordPress Collado Villalba\";s:10:\"meetup_url\";s:57:\"https://www.meetup.com/WordPress-Collado-Villalba-Meetup/\";s:4:\"date\";s:19:\"2020-03-24 19:00:00\";s:8:\"end_date\";s:19:\"2020-03-24 21:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:23:\"Collado Villalba, Spain\";s:7:\"country\";s:2:\"es\";s:8:\"latitude\";d:40.623344421387;s:9:\"longitude\";d:-4.015814781189;}}i:4;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:22:\"WordPress Multilingual\";s:3:\"url\";s:57:\"https://www.meetup.com/WordPress-Madrid/events/268878674/\";s:6:\"meetup\";s:16:\"WordPress Madrid\";s:10:\"meetup_url\";s:40:\"https://www.meetup.com/WordPress-Madrid/\";s:4:\"date\";s:19:\"2020-03-25 19:00:00\";s:8:\"end_date\";s:19:\"2020-03-25 21:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:13:\"Madrid, Spain\";s:7:\"country\";s:2:\"es\";s:8:\"latitude\";d:40.412384033203;s:9:\"longitude\";d:-3.718211889267;}}}}', 'no'),
(212, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1583766471;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(213, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1583766471;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(215, '_transient_timeout_cust_notice_plugin_info_popularis-extra', '1583768273', 'no'),
(216, '_transient_cust_notice_plugin_info_popularis-extra', 'O:8:\"stdClass\":19:{s:4:\"name\";s:15:\"Popularis Extra\";s:4:\"slug\";s:15:\"popularis-extra\";s:7:\"version\";s:5:\"1.0.8\";s:6:\"author\";s:46:\"<a href=\"https://themes4wp.com/\">Themes4WP</a>\";s:14:\"author_profile\";s:40:\"https://profiles.wordpress.org/themes4wp\";s:12:\"contributors\";a:1:{s:9:\"themes4wp\";a:3:{s:7:\"profile\";s:40:\"https://profiles.wordpress.org/themes4wp\";s:6:\"avatar\";s:88:\"https://secure.gravatar.com/avatar/f7a351cd9185cfe5919a8e02911929d8?s=96&d=monsterid&r=g\";s:12:\"display_name\";s:9:\"Themes4WP\";}}s:12:\"requires_php\";s:3:\"5.4\";s:7:\"ratings\";a:5:{i:5;i:0;i:4;i:0;i:3;i:0;i:2;i:0;i:1;i:0;}s:11:\"num_ratings\";i:0;s:15:\"support_threads\";i:0;s:24:\"support_threads_resolved\";i:0;s:15:\"active_installs\";i:5000;s:17:\"short_description\";s:113:\"Popularis Extra add extra features to Popularis theme like demo import, widgets, shortcodes or Elementor widgets.\";s:13:\"download_link\";s:64:\"https://downloads.wordpress.org/plugin/popularis-extra.1.0.8.zip\";s:11:\"screenshots\";a:0:{}s:8:\"versions\";a:10:{s:3:\"1.0\";s:62:\"https://downloads.wordpress.org/plugin/popularis-extra.1.0.zip\";s:5:\"1.0.1\";s:64:\"https://downloads.wordpress.org/plugin/popularis-extra.1.0.1.zip\";s:5:\"1.0.2\";s:64:\"https://downloads.wordpress.org/plugin/popularis-extra.1.0.2.zip\";s:5:\"1.0.3\";s:64:\"https://downloads.wordpress.org/plugin/popularis-extra.1.0.3.zip\";s:5:\"1.0.4\";s:64:\"https://downloads.wordpress.org/plugin/popularis-extra.1.0.4.zip\";s:5:\"1.0.5\";s:64:\"https://downloads.wordpress.org/plugin/popularis-extra.1.0.5.zip\";s:5:\"1.0.6\";s:64:\"https://downloads.wordpress.org/plugin/popularis-extra.1.0.6.zip\";s:5:\"1.0.7\";s:64:\"https://downloads.wordpress.org/plugin/popularis-extra.1.0.7.zip\";s:5:\"1.0.8\";s:64:\"https://downloads.wordpress.org/plugin/popularis-extra.1.0.8.zip\";s:5:\"trunk\";s:58:\"https://downloads.wordpress.org/plugin/popularis-extra.zip\";}s:7:\"banners\";a:2:{s:3:\"low\";s:70:\"https://ps.w.org/popularis-extra/assets/banner-772x250.png?rev=2190550\";s:4:\"high\";s:71:\"https://ps.w.org/popularis-extra/assets/banner-1544x500.png?rev=2190550\";}s:18:\"author_block_count\";i:0;s:19:\"author_block_rating\";i:0;}', 'no'),
(217, 'theme_mods_popularis-hub', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(224, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1583768825;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(226, '_site_transient_timeout_theme_roots', '1583772481', 'no'),
(227, '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(228, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1583701283:1'),
(4, 1, '_edit_lock', '1583704039:1'),
(7, 6, '_edit_lock', '1583704037:1'),
(8, 6, '_wp_trash_meta_status', 'publish'),
(9, 6, '_wp_trash_meta_time', '1583704083'),
(10, 1, '_wp_trash_meta_status', 'publish'),
(11, 1, '_wp_trash_meta_time', '1583704183'),
(12, 1, '_wp_desired_post_slug', 'hola-mundo'),
(13, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(14, 7, '_edit_lock', '1583707277:1'),
(19, 18, '_wp_attached_file', '2020/03/YOUNG-FRANKENSTEIN-100.jpg'),
(20, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:964;s:4:\"file\";s:34:\"2020/03/YOUNG-FRANKENSTEIN-100.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:6:\"Picasa\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 18, '_edit_lock', '1583766129:1'),
(22, 18, '_edit_last', '1'),
(23, 18, '_wp_attachment_custom_header_last_used_twentyseventeen', '1583766350'),
(24, 18, '_wp_attachment_is_custom_header', 'twentyseventeen'),
(25, 19, '_wp_trash_meta_status', 'publish'),
(26, 19, '_wp_trash_meta_time', '1583766350'),
(27, 20, '_edit_lock', '1583766488:1'),
(28, 20, '_wp_trash_meta_status', 'publish'),
(29, 20, '_wp_trash_meta_time', '1583766497'),
(30, 21, '_edit_lock', '1583766723:1'),
(31, 21, '_wp_trash_meta_status', 'publish'),
(32, 21, '_wp_trash_meta_time', '1583766728'),
(33, 22, '_wp_attached_file', '2020/03/YOUNG-FRANKENSTEIN-100-1.jpg'),
(34, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:964;s:4:\"file\";s:36:\"2020/03/YOUNG-FRANKENSTEIN-100-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:6:\"Picasa\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 22, '_wp_attachment_custom_header_last_used_twentyseventeen', '1583768896'),
(36, 22, '_wp_attachment_is_custom_header', 'twentyseventeen'),
(37, 23, '_wp_trash_meta_status', 'publish'),
(38, 23, '_wp_trash_meta_time', '1583768896'),
(39, 24, '_edit_lock', '1583770656:1'),
(40, 24, '_wp_trash_meta_status', 'publish'),
(41, 24, '_wp_trash_meta_time', '1583770678');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
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
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-02-11 21:34:05', '2020-02-11 21:34:05', '<!-- wp:paragraph -->\n<p>Para acceder a PhPMyAdmin:<a href=\"https://localhost/phpmyadmin/index.php\">https://localhost/phpmyadmin/index.php</a></p>\n<!-- /wp:paragraph -->', 'ft_server', '', 'trash', 'open', 'open', '', 'hola-mundo__trashed', '', '', '2020-03-08 21:49:44', '2020-03-08 21:49:44', '', 0, 'https://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2020-02-11 21:34:05', '2020-02-11 21:34:05', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"https://localhost/wordpress/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2020-02-11 21:34:05', '2020-02-11 21:34:05', '', 0, 'https://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-02-11 21:34:05', '2020-02-11 21:34:05', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: https://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué los recogemos</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de tu comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Medios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subes imágenes a la web, deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de ubicación de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando accedas, también instalaremos varias cookies para guardar tu información de acceso y tus opciones de visualización de pantalla. Las cookies de acceso duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas «Recuérdarme», tu acceso perdurará durante dos semanas. Si sales de tu cuenta, las cookies de acceso se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido incrustado de otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analítica</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente, en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De qué terceros recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requerimientos regulatorios de revelación de información del sector</h3><!-- /wp:heading -->', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2020-02-11 21:34:05', '2020-02-11 21:34:05', '', 0, 'https://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-03-08 21:05:40', '2020-03-08 21:05:40', '<!-- wp:paragraph -->\n<p>Para acceder a PhPMyAdmin:<a href=\"https://localhost/phpmyadmin/index.php\">https://localhost/phpmyadmin/index.php</a></p>\n<!-- /wp:paragraph -->', 'ft_server', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-03-08 21:05:40', '2020-03-08 21:05:40', '', 1, 'https://localhost/wordpress/?p=5', 0, 'revision', '', 0),
(6, 1, '2020-03-08 21:48:03', '2020-03-08 21:48:03', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\"\n            ],\n            \"sidebar-2\": [\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-08 21:45:38\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-08 21:45:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cffc5a7c-7fde-4851-bb6d-b475ef059fad', '', '', '2020-03-08 21:48:03', '2020-03-08 21:48:03', '', 0, 'https://localhost/wordpress/?p=6', 0, 'customize_changeset', '', 0),
(7, 1, '2020-03-08 22:04:54', '2020-03-08 22:04:54', '<!-- wp:paragraph -->\n<p>Servidor Nginx corriendo Wordpress, phpMyAdmin y MySQL dentro de un contenedor Docker.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"backgroundColor\":\"luminous-vivid-amber\",\"textColor\":\"very-dark-gray\",\"borderRadius\":39,\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link has-text-color has-very-dark-gray-color has-background has-luminous-vivid-amber-background-color\" href=\"https://localhost/phpmyadmin/\" style=\"border-radius:39px\">phpMyAdmin</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://localhost/wordpress/wp-login.php\">Worpress-Admin</a></div>\n<!-- /wp:button -->', 'FT_Server', '', 'publish', 'open', 'open', '', 'ft_server', '', '', '2020-03-08 22:43:39', '2020-03-08 22:43:39', '', 0, 'https://localhost/wordpress/?p=7', 0, 'post', '', 0),
(8, 1, '2020-03-08 21:51:05', '2020-03-08 21:51:05', '', 'Servidor web Nginx dentro de un solo contenedor Docker.', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-03-08 21:51:05', '2020-03-08 21:51:05', '', 7, 'https://localhost/wordpress/?p=8', 0, 'revision', '', 0),
(9, 1, '2020-03-08 21:52:48', '2020-03-08 21:52:48', '', '----------------------FT_Server------------------------------', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-03-08 21:52:48', '2020-03-08 21:52:48', '', 7, 'https://localhost/wordpress/?p=9', 0, 'revision', '', 0),
(10, 1, '2020-03-08 21:54:31', '2020-03-08 21:54:31', '<!-- wp:paragraph -->\n<p>Servidor Nginx corriendo Wordpress, phpMyAdmin y MySQL dentro de un contenedor Docker.</p>\n<!-- /wp:paragraph -->', '----------------------FT_Server------------------------------', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-03-08 21:54:31', '2020-03-08 21:54:31', '', 7, 'https://localhost/wordpress/?p=10', 0, 'revision', '', 0),
(11, 1, '2020-03-08 22:00:30', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-03-08 22:00:30', '0000-00-00 00:00:00', '', 0, 'https://localhost/wordpress/?p=11', 0, 'post', '', 0),
(12, 1, '2020-03-08 22:00:46', '2020-03-08 22:00:46', '<!-- wp:paragraph -->\n<p>Servidor Nginx corriendo Wordpress, phpMyAdmin y MySQL dentro de un contenedor Docker.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"backgroundColor\":\"luminous-vivid-amber\",\"textColor\":\"very-dark-gray\",\"borderRadius\":39} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-text-color has-very-dark-gray-color has-background has-luminous-vivid-amber-background-color\" href=\"https://localhost/phpmyadmin/\" style=\"border-radius:39px\">phpMyAdmin</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\">Worpress-Admin</a></div>\n<!-- /wp:button -->', '----------------------FT_Server------------------------------', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-03-08 22:00:46', '2020-03-08 22:00:46', '', 7, 'https://localhost/wordpress/?p=12', 0, 'revision', '', 0),
(13, 1, '2020-03-08 22:02:06', '2020-03-08 22:02:06', '<!-- wp:paragraph -->\n<p>Servidor Nginx corriendo Wordpress, phpMyAdmin y MySQL dentro de un contenedor Docker.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"backgroundColor\":\"luminous-vivid-amber\",\"textColor\":\"very-dark-gray\",\"borderRadius\":39} -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link has-text-color has-very-dark-gray-color has-background has-luminous-vivid-amber-background-color\" href=\"https://localhost/phpmyadmin/\" style=\"border-radius:39px\">phpMyAdmin</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button -->\n<div class=\"wp-block-button\"><a class=\"wp-block-button__link\" href=\"https://localhost/wordpress/wp-login.php\">Worpress-Admin</a></div>\n<!-- /wp:button -->', '----------------------FT_Server------------------------------', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-03-08 22:02:06', '2020-03-08 22:02:06', '', 7, 'https://localhost/wordpress/?p=13', 0, 'revision', '', 0),
(14, 1, '2020-03-08 22:03:20', '2020-03-08 22:03:20', '<!-- wp:paragraph -->\n<p>Servidor Nginx corriendo Wordpress, phpMyAdmin y MySQL dentro de un contenedor Docker.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://localhost/wordpress/wp-login.php\">Worpress-Admin</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"backgroundColor\":\"luminous-vivid-amber\",\"textColor\":\"very-dark-gray\",\"borderRadius\":39,\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link has-text-color has-very-dark-gray-color has-background has-luminous-vivid-amber-background-color\" href=\"https://localhost/phpmyadmin/\" style=\"border-radius:39px\">phpMyAdmin</a></div>\n<!-- /wp:button -->', '----------------------FT_Server------------------------------', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-03-08 22:03:20', '2020-03-08 22:03:20', '', 7, 'https://localhost/wordpress/?p=14', 0, 'revision', '', 0),
(15, 1, '2020-03-08 22:03:38', '2020-03-08 22:03:38', '<!-- wp:paragraph -->\n<p>Servidor Nginx corriendo Wordpress, phpMyAdmin y MySQL dentro de un contenedor Docker.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://localhost/wordpress/wp-login.php\">Worpress-Admin</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"backgroundColor\":\"luminous-vivid-amber\",\"textColor\":\"very-dark-gray\",\"borderRadius\":39,\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link has-text-color has-very-dark-gray-color has-background has-luminous-vivid-amber-background-color\" href=\"https://localhost/phpmyadmin/\" style=\"border-radius:39px\">phpMyAdmin</a></div>\n<!-- /wp:button -->', '----------------------FT_Server----------------------------------', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-03-08 22:03:38', '2020-03-08 22:03:38', '', 7, 'https://localhost/wordpress/?p=15', 0, 'revision', '', 0),
(16, 1, '2020-03-08 22:03:53', '2020-03-08 22:03:53', '<!-- wp:paragraph -->\n<p>Servidor Nginx corriendo Wordpress, phpMyAdmin y MySQL dentro de un contenedor Docker.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://localhost/wordpress/wp-login.php\">Worpress-Admin</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"backgroundColor\":\"luminous-vivid-amber\",\"textColor\":\"very-dark-gray\",\"borderRadius\":39,\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link has-text-color has-very-dark-gray-color has-background has-luminous-vivid-amber-background-color\" href=\"https://localhost/phpmyadmin/\" style=\"border-radius:39px\">phpMyAdmin</a></div>\n<!-- /wp:button -->', 'FT_Server', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-03-08 22:03:53', '2020-03-08 22:03:53', '', 7, 'https://localhost/wordpress/?p=16', 0, 'revision', '', 0),
(17, 1, '2020-03-08 22:43:39', '2020-03-08 22:43:39', '<!-- wp:paragraph -->\n<p>Servidor Nginx corriendo Wordpress, phpMyAdmin y MySQL dentro de un contenedor Docker.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"backgroundColor\":\"luminous-vivid-amber\",\"textColor\":\"very-dark-gray\",\"borderRadius\":39,\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link has-text-color has-very-dark-gray-color has-background has-luminous-vivid-amber-background-color\" href=\"https://localhost/phpmyadmin/\" style=\"border-radius:39px\">phpMyAdmin</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://localhost/wordpress/wp-login.php\">Worpress-Admin</a></div>\n<!-- /wp:button -->', 'FT_Server', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-03-08 22:43:39', '2020-03-08 22:43:39', '', 7, 'https://localhost/wordpress/?p=17', 0, 'revision', '', 0),
(18, 1, '2020-03-09 15:04:09', '2020-03-09 15:04:09', '', 'YOUNG-FRANKENSTEIN-100', '', 'inherit', 'open', 'closed', '', 'young-frankenstein-100', '', '', '2020-03-09 15:04:27', '2020-03-09 15:04:27', '', 0, 'https://localhost/wordpress/wp-content/uploads/2020/03/YOUNG-FRANKENSTEIN-100.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2020-03-09 15:05:49', '2020-03-09 15:05:49', '{\n    \"blogname\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 15:05:49\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 15:05:49\"\n    },\n    \"twentyseventeen::header_image\": {\n        \"value\": \"https://localhost/wordpress/wp-content/uploads/2020/03/YOUNG-FRANKENSTEIN-100.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 15:05:49\"\n    },\n    \"twentyseventeen::header_image_data\": {\n        \"value\": {\n            \"url\": \"https://localhost/wordpress/wp-content/uploads/2020/03/YOUNG-FRANKENSTEIN-100.jpg\",\n            \"thumbnail_url\": \"https://localhost/wordpress/wp-content/uploads/2020/03/YOUNG-FRANKENSTEIN-100.jpg\",\n            \"timestamp\": 1583766328055,\n            \"attachment_id\": 18,\n            \"width\": 1600,\n            \"height\": 964\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 15:05:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dc3296b9-a4b7-4726-a90d-5c12d9c58765', '', '', '2020-03-09 15:05:49', '2020-03-09 15:05:49', '', 0, 'https://localhost/wordpress/?p=19', 0, 'customize_changeset', '', 0),
(20, 1, '2020-03-09 15:08:17', '2020-03-09 15:08:17', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [],\n            \"sidebar-2\": [\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 15:08:08\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ca1e8257-7b41-42a9-b997-2bfb4752a286', '', '', '2020-03-09 15:08:17', '2020-03-09 15:08:17', '', 0, 'https://localhost/wordpress/?p=20', 0, 'customize_changeset', '', 0),
(21, 1, '2020-03-09 15:12:08', '2020-03-09 15:12:08', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 15:10:41\"\n    },\n    \"blogname\": {\n        \"value\": \"FT_SERVER!!\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 15:12:03\"\n    },\n    \"twentyseventeen::header_textcolor\": {\n        \"value\": \"blank\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 15:12:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd60a5f6a-8f8d-4102-a9a7-c8401ae75841', '', '', '2020-03-09 15:12:08', '2020-03-09 15:12:08', '', 0, 'https://localhost/wordpress/?p=21', 0, 'customize_changeset', '', 0),
(22, 1, '2020-03-09 15:48:02', '2020-03-09 15:48:02', '', 'YOUNG-FRANKENSTEIN-100 (1)', '', 'inherit', 'open', 'closed', '', 'young-frankenstein-100-1', '', '', '2020-03-09 15:48:02', '2020-03-09 15:48:02', '', 0, 'https://localhost/wordpress/wp-content/uploads/2020/03/YOUNG-FRANKENSTEIN-100-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2020-03-09 15:48:16', '2020-03-09 15:48:16', '{\n    \"blogname\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 15:48:16\"\n    },\n    \"twentyseventeen::header_textcolor\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 15:48:16\"\n    },\n    \"twentyseventeen::header_image\": {\n        \"value\": \"https://localhost/wordpress/wp-content/uploads/2020/03/YOUNG-FRANKENSTEIN-100-1.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 15:48:16\"\n    },\n    \"twentyseventeen::header_image_data\": {\n        \"value\": {\n            \"url\": \"https://localhost/wordpress/wp-content/uploads/2020/03/YOUNG-FRANKENSTEIN-100-1.jpg\",\n            \"thumbnail_url\": \"https://localhost/wordpress/wp-content/uploads/2020/03/YOUNG-FRANKENSTEIN-100-1.jpg\",\n            \"timestamp\": 1583768891156,\n            \"attachment_id\": 22,\n            \"width\": 1600,\n            \"height\": 964\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 15:48:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6da098e8-823a-4d77-9bc0-e17f7dbe5cd9', '', '', '2020-03-09 15:48:16', '2020-03-09 15:48:16', '', 0, 'https://localhost/wordpress/?p=23', 0, 'customize_changeset', '', 0),
(24, 1, '2020-03-09 16:17:58', '2020-03-09 16:17:58', '{\n    \"twentyseventeen::header_image\": {\n        \"value\": \"https://localhost/wordpress/wp-content/themes/twentyseventeen/assets/images/header.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 16:16:06\"\n    },\n    \"twentyseventeen::header_image_data\": {\n        \"value\": \"default-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-03-09 16:16:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ac01d54f-1fb0-40b3-981a-6b2ce15ccb2a', '', '', '2020-03-09 16:17:58', '2020-03-09 16:17:58', '', 0, 'https://localhost/wordpress/?p=24', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
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
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:7:{s:64:\"24dcc7be62c4eefbda457607d5d728d2767ee17ec35e673601a211e964b3a66f\";a:4:{s:10:\"expiration\";i:1583874139;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36\";s:5:\"login\";i:1583701339;}s:64:\"eea87ce65f5b5a4f057d55eea7c0f8ceec1d81888114b2a999eb0275bb9543fc\";a:4:{s:10:\"expiration\";i:1583876657;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36\";s:5:\"login\";i:1583703857;}s:64:\"68f090163a599fe9e233368935608ceb883830de61a3fa5ec8a75c583285633e\";a:4:{s:10:\"expiration\";i:1583877630;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36\";s:5:\"login\";i:1583704830;}s:64:\"b0c28ce0ee8ce8189351086745994ca6be1784a22e375c83832c9adb7d044d24\";a:4:{s:10:\"expiration\";i:1583880184;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.122 Safari/537.36\";s:5:\"login\";i:1583707384;}s:64:\"23a77cd846d4f8c9072611569cc480dd75feaf379de82d556d2c3080693852d5\";a:4:{s:10:\"expiration\";i:1583939002;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36\";s:5:\"login\";i:1583766202;}s:64:\"7f6c0969d85fd5e8432c40154e4092b37b4ee684d07aa468985d0714fd8f8429\";a:4:{s:10:\"expiration\";i:1583941624;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36\";s:5:\"login\";i:1583768824;}s:64:\"603b80abb33923bce309df8180f3777489617c7ed3f2f30d25aec0340748ec23\";a:4:{s:10:\"expiration\";i:1583942993;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36\";s:5:\"login\";i:1583770193;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '11'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse'),
(20, 1, 'wp_user-settings-time', '1583768893');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
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
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$BhLzHT1BQNGK7YgD1XQBaUOs2YCDz8/', 'root', 'root@localhost.com', '', '2020-02-11 21:34:05', '', 0, 'root');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
