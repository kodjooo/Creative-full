/* DUPLICATOR-LITE (PHP BUILD MODE) MYSQL SCRIPT CREATED ON : 2017-12-04 20:06:30 */

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` mediumblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=396 DEFAULT CHARSET=utf8;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=547 DEFAULT CHARSET=utf8;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


/* INSERT TABLE DATA: wp_comments */
INSERT INTO `wp_comments` VALUES("1", "1", "Автор комментария", "wapuu@wordpress.example", "https://wordpress.org/", "", "2017-11-25 21:50:21", "2017-11-25 18:50:21", "Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.", "0", "1", "", "", "0", "0");

/* INSERT TABLE DATA: wp_duplicator_packages */
INSERT INTO `wp_duplicator_packages` VALUES("1", "20171204_creative", "8835051b2ddce7608082171204195733", "20", "2017-12-04 20:06:30", "main-admin", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2017-12-04 19:57:33\";s:7:\"Version\";s:6:\"1.2.30\";s:9:\"VersionWP\";s:3:\"4.9\";s:9:\"VersionDB\";s:6:\"5.5.50\";s:10:\"VersionPHP\";s:6:\"5.3.29\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";i:1;s:4:\"Name\";s:17:\"20171204_creative\";s:4:\"Hash\";s:32:\"8835051b2ddce7608082171204195733\";s:8:\"NameHash\";s:50:\"20171204_creative_8835051b2ddce7608082171204195733\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:38:\"W:/domains/cr.loc/app/wp-snapshots/tmp\";s:8:\"StoreURL\";s:27:\"http://cr.loc/wp-snapshots/\";s:8:\"ScanFile\";s:60:\"20171204_creative_8835051b2ddce7608082171204195733_scan.json\";s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";s:10:\"main-admin\";s:7:\"Archive\";O:11:\"DUP_Archive\":18:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:67:\"W:/domains/cr.loc/app/wp-content/themes/main-theme/Òàñêè.todo;\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:1;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:62:\"20171204_creative_8835051b2ddce7608082171204195733_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:21:\"W:/domains/cr.loc/app\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":4:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":5:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":2:{s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2017-12-04 19:57:33\";s:7:\"Version\";s:6:\"1.2.30\";s:9:\"VersionWP\";s:3:\"4.9\";s:9:\"VersionDB\";s:6:\"5.5.50\";s:10:\"VersionPHP\";s:6:\"5.3.29\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:17:\"20171204_creative\";s:4:\"Hash\";s:32:\"8835051b2ddce7608082171204195733\";s:8:\"NameHash\";s:50:\"20171204_creative_8835051b2ddce7608082171204195733\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:38:\"W:/domains/cr.loc/app/wp-snapshots/tmp\";s:8:\"StoreURL\";s:27:\"http://cr.loc/wp-snapshots/\";s:8:\"ScanFile\";N;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";N;s:7:\"Archive\";r:22;s:9:\"Installer\";O:13:\"DUP_Installer\":7:{s:4:\"File\";s:64:\"20171204_creative_8835051b2ddce7608082171204195733_installer.php\";s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:10:\"\0*\0Package\";r:57;}s:8:\"Database\";O:12:\"DUP_Database\":13:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";s:63:\"20171204_creative_8835051b2ddce7608082171204195733_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:10:\"\0*\0Package\";r:1;s:25:\"\0DUP_Database\0dbStorePath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:6:{i:0;s:30:\"W:/domains/cr.loc/app/wp-admin\";i:1;s:40:\"W:/domains/cr.loc/app/wp-content/uploads\";i:2;s:42:\"W:/domains/cr.loc/app/wp-content/languages\";i:3;s:40:\"W:/domains/cr.loc/app/wp-content/plugins\";i:4;s:39:\"W:/domains/cr.loc/app/wp-content/themes\";i:5;s:33:\"W:/domains/cr.loc/app/wp-includes\";}}s:9:\"Installer\";r:79;s:8:\"Database\";r:87;}");

/* INSERT TABLE DATA: wp_options */
INSERT INTO `wp_options` VALUES("1", "siteurl", "http://cr.loc", "yes");
INSERT INTO `wp_options` VALUES("2", "home", "http://cr.loc", "yes");
INSERT INTO `wp_options` VALUES("3", "blogname", "creative", "yes");
INSERT INTO `wp_options` VALUES("4", "blogdescription", "Ещё один сайт на WordPress", "yes");
INSERT INTO `wp_options` VALUES("5", "users_can_register", "0", "yes");
INSERT INTO `wp_options` VALUES("6", "admin_email", "mark.aborchie@gmail.com", "yes");
INSERT INTO `wp_options` VALUES("7", "start_of_week", "1", "yes");
INSERT INTO `wp_options` VALUES("8", "use_balanceTags", "0", "yes");
INSERT INTO `wp_options` VALUES("9", "use_smilies", "1", "yes");
INSERT INTO `wp_options` VALUES("10", "require_name_email", "1", "yes");
INSERT INTO `wp_options` VALUES("11", "comments_notify", "1", "yes");
INSERT INTO `wp_options` VALUES("12", "posts_per_rss", "10", "yes");
INSERT INTO `wp_options` VALUES("13", "rss_use_excerpt", "0", "yes");
INSERT INTO `wp_options` VALUES("14", "mailserver_url", "mail.example.com", "yes");
INSERT INTO `wp_options` VALUES("15", "mailserver_login", "login@example.com", "yes");
INSERT INTO `wp_options` VALUES("16", "mailserver_pass", "password", "yes");
INSERT INTO `wp_options` VALUES("17", "mailserver_port", "110", "yes");
INSERT INTO `wp_options` VALUES("18", "default_category", "1", "yes");
INSERT INTO `wp_options` VALUES("19", "default_comment_status", "open", "yes");
INSERT INTO `wp_options` VALUES("20", "default_ping_status", "open", "yes");
INSERT INTO `wp_options` VALUES("21", "default_pingback_flag", "1", "yes");
INSERT INTO `wp_options` VALUES("22", "posts_per_page", "10", "yes");
INSERT INTO `wp_options` VALUES("23", "date_format", "d.m.Y", "yes");
INSERT INTO `wp_options` VALUES("24", "time_format", "H:i", "yes");
INSERT INTO `wp_options` VALUES("25", "links_updated_date_format", "d.m.Y H:i", "yes");
INSERT INTO `wp_options` VALUES("26", "comment_moderation", "0", "yes");
INSERT INTO `wp_options` VALUES("27", "moderation_notify", "1", "yes");
INSERT INTO `wp_options` VALUES("28", "permalink_structure", "/%year%/%monthnum%/%day%/%postname%/", "yes");
INSERT INTO `wp_options` VALUES("29", "rewrite_rules", "a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}", "yes");
INSERT INTO `wp_options` VALUES("30", "hack_file", "0", "yes");
INSERT INTO `wp_options` VALUES("31", "blog_charset", "UTF-8", "yes");
INSERT INTO `wp_options` VALUES("32", "moderation_keys", "", "no");
INSERT INTO `wp_options` VALUES("33", "active_plugins", "a:7:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:22:\"cyr3lat/cyr-to-lat.php\";i:4;s:25:\"duplicator/duplicator.php\";i:5;s:31:\"easy-fancybox/easy-fancybox.php\";i:6;s:21:\"flamingo/flamingo.php\";}", "yes");
INSERT INTO `wp_options` VALUES("34", "category_base", "", "yes");
INSERT INTO `wp_options` VALUES("35", "ping_sites", "http://rpc.pingomatic.com/", "yes");
INSERT INTO `wp_options` VALUES("36", "comment_max_links", "2", "yes");
INSERT INTO `wp_options` VALUES("37", "gmt_offset", "3", "yes");
INSERT INTO `wp_options` VALUES("38", "default_email_category", "1", "yes");
INSERT INTO `wp_options` VALUES("39", "recently_edited", "", "no");
INSERT INTO `wp_options` VALUES("40", "template", "main-theme", "yes");
INSERT INTO `wp_options` VALUES("41", "stylesheet", "main-theme", "yes");
INSERT INTO `wp_options` VALUES("42", "comment_whitelist", "1", "yes");
INSERT INTO `wp_options` VALUES("43", "blacklist_keys", "", "no");
INSERT INTO `wp_options` VALUES("44", "comment_registration", "0", "yes");
INSERT INTO `wp_options` VALUES("45", "html_type", "text/html", "yes");
INSERT INTO `wp_options` VALUES("46", "use_trackback", "0", "yes");
INSERT INTO `wp_options` VALUES("47", "default_role", "subscriber", "yes");
INSERT INTO `wp_options` VALUES("48", "db_version", "38590", "yes");
INSERT INTO `wp_options` VALUES("49", "uploads_use_yearmonth_folders", "1", "yes");
INSERT INTO `wp_options` VALUES("50", "upload_path", "", "yes");
INSERT INTO `wp_options` VALUES("51", "blog_public", "1", "yes");
INSERT INTO `wp_options` VALUES("52", "default_link_category", "2", "yes");
INSERT INTO `wp_options` VALUES("53", "show_on_front", "page", "yes");
INSERT INTO `wp_options` VALUES("54", "tag_base", "", "yes");
INSERT INTO `wp_options` VALUES("55", "show_avatars", "1", "yes");
INSERT INTO `wp_options` VALUES("56", "avatar_rating", "G", "yes");
INSERT INTO `wp_options` VALUES("57", "upload_url_path", "", "yes");
INSERT INTO `wp_options` VALUES("58", "thumbnail_size_w", "150", "yes");
INSERT INTO `wp_options` VALUES("59", "thumbnail_size_h", "150", "yes");
INSERT INTO `wp_options` VALUES("60", "thumbnail_crop", "1", "yes");
INSERT INTO `wp_options` VALUES("61", "medium_size_w", "300", "yes");
INSERT INTO `wp_options` VALUES("62", "medium_size_h", "300", "yes");
INSERT INTO `wp_options` VALUES("63", "avatar_default", "mystery", "yes");
INSERT INTO `wp_options` VALUES("64", "large_size_w", "1024", "yes");
INSERT INTO `wp_options` VALUES("65", "large_size_h", "1024", "yes");
INSERT INTO `wp_options` VALUES("66", "image_default_link_type", "none", "yes");
INSERT INTO `wp_options` VALUES("67", "image_default_size", "", "yes");
INSERT INTO `wp_options` VALUES("68", "image_default_align", "", "yes");
INSERT INTO `wp_options` VALUES("69", "close_comments_for_old_posts", "0", "yes");
INSERT INTO `wp_options` VALUES("70", "close_comments_days_old", "14", "yes");
INSERT INTO `wp_options` VALUES("71", "thread_comments", "1", "yes");
INSERT INTO `wp_options` VALUES("72", "thread_comments_depth", "5", "yes");
INSERT INTO `wp_options` VALUES("73", "page_comments", "0", "yes");
INSERT INTO `wp_options` VALUES("74", "comments_per_page", "50", "yes");
INSERT INTO `wp_options` VALUES("75", "default_comments_page", "newest", "yes");
INSERT INTO `wp_options` VALUES("76", "comment_order", "asc", "yes");
INSERT INTO `wp_options` VALUES("77", "sticky_posts", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("78", "widget_categories", "a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("79", "widget_text", "a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("80", "widget_rss", "a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("81", "uninstall_plugins", "a:0:{}", "no");
INSERT INTO `wp_options` VALUES("82", "timezone_string", "", "yes");
INSERT INTO `wp_options` VALUES("83", "page_for_posts", "0", "yes");
INSERT INTO `wp_options` VALUES("84", "page_on_front", "5", "yes");
INSERT INTO `wp_options` VALUES("85", "default_post_format", "0", "yes");
INSERT INTO `wp_options` VALUES("86", "link_manager_enabled", "0", "yes");
INSERT INTO `wp_options` VALUES("87", "finished_splitting_shared_terms", "1", "yes");
INSERT INTO `wp_options` VALUES("88", "site_icon", "0", "yes");
INSERT INTO `wp_options` VALUES("89", "medium_large_size_w", "768", "yes");
INSERT INTO `wp_options` VALUES("90", "medium_large_size_h", "0", "yes");
INSERT INTO `wp_options` VALUES("91", "initial_db_version", "38590", "yes");
INSERT INTO `wp_options` VALUES("92", "wp_user_roles", "a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}", "yes");
INSERT INTO `wp_options` VALUES("93", "fresh_site", "0", "yes");
INSERT INTO `wp_options` VALUES("94", "WPLANG", "ru_RU", "yes");
INSERT INTO `wp_options` VALUES("95", "widget_search", "a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("96", "widget_recent-posts", "a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("97", "widget_recent-comments", "a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("98", "widget_archives", "a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("99", "widget_meta", "a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("100", "sidebars_widgets", "a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}", "yes");
INSERT INTO `wp_options` VALUES("101", "widget_pages", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("102", "widget_calendar", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("103", "widget_media_audio", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("104", "widget_media_image", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("105", "widget_media_gallery", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("106", "widget_media_video", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("107", "widget_tag_cloud", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("108", "widget_nav_menu", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("109", "widget_custom_html", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("110", "cron", "a:4:{i:1512456622;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1512499853;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1512499978;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}", "yes");
INSERT INTO `wp_options` VALUES("111", "theme_mods_twentyseventeen", "a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1511635873;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}", "yes");
INSERT INTO `wp_options` VALUES("129", "can_compress_scripts", "1", "no");
INSERT INTO `wp_options` VALUES("130", "_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca", "1511679049", "no");
INSERT INTO `wp_options` VALUES("133", "_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9", "1511679051", "no");
INSERT INTO `wp_options` VALUES("141", "theme_mods_main-theme", "a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:9:\"main-menu\";i:2;s:12:\"sidebar-menu\";i:3;}s:11:\"custom_logo\";i:34;}", "yes");
INSERT INTO `wp_options` VALUES("142", "current_theme", "", "yes");
INSERT INTO `wp_options` VALUES("143", "theme_switched", "", "yes");
INSERT INTO `wp_options` VALUES("144", "theme_switched_via_customizer", "", "yes");
INSERT INTO `wp_options` VALUES("145", "customize_stashed_theme_mods", "a:0:{}", "no");
INSERT INTO `wp_options` VALUES("192", "recently_activated", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("227", "acf_version", "5.5.14", "yes");
INSERT INTO `wp_options` VALUES("228", "widget_bcn_widget", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("229", "wpcf7", "a:2:{s:7:\"version\";s:5:\"4.9.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1511955370;s:7:\"version\";s:5:\"4.9.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}", "yes");
INSERT INTO `wp_options` VALUES("231", "options_back_footer", "14", "no");
INSERT INTO `wp_options` VALUES("232", "_options_back_footer", "field_5a1e73412c473", "no");
INSERT INTO `wp_options` VALUES("233", "options_heading_footer", "We Are  Ready To Work With You!", "no");
INSERT INTO `wp_options` VALUES("234", "_options_heading_footer", "field_5a1e73ba2c474", "no");
INSERT INTO `wp_options` VALUES("235", "options_tel-first_footer", "(050) 456 85 12", "no");
INSERT INTO `wp_options` VALUES("236", "_options_tel-first_footer", "field_5a1e7d60dbc25", "no");
INSERT INTO `wp_options` VALUES("237", "options_tel-second_footer", "(066) 63 56 856", "no");
INSERT INTO `wp_options` VALUES("238", "_options_tel-second_footer", "field_5a1e7daddbc26", "no");
INSERT INTO `wp_options` VALUES("239", "options_location_footer", "We are located in 24th South Street, London UK. ", "no");
INSERT INTO `wp_options` VALUES("240", "_options_location_footer", "field_5a1e7dd6dbc27", "no");
INSERT INTO `wp_options` VALUES("241", "options_email_footer", "info@creative.com", "no");
INSERT INTO `wp_options` VALUES("242", "_options_email_footer", "field_5a1e7df2dbc28", "no");
INSERT INTO `wp_options` VALUES("297", "nav_menu_options", "a:1:{s:8:\"auto_add\";a:0:{}}", "yes");
INSERT INTO `wp_options` VALUES("317", "options_main-logo-header", "33", "no");
INSERT INTO `wp_options` VALUES("318", "_options_main-logo-header", "field_5a21209733ae0", "no");
INSERT INTO `wp_options` VALUES("319", "options_sub-main-logo-header", "45", "no");
INSERT INTO `wp_options` VALUES("320", "_options_sub-main-logo-header", "field_5a2120c633ae1", "no");
INSERT INTO `wp_options` VALUES("354", "options_text_for_touch_to_contact", "get in touch", "no");
INSERT INTO `wp_options` VALUES("355", "_options_text_for_touch_to_contact", "field_5a2443bc1f340", "no");
INSERT INTO `wp_options` VALUES("375", "_transient_timeout_files_bcd954144fb25e94fe9cb3d4c9d0fc363fef04f96d418f665ae0e1f", "1512414936", "no");
INSERT INTO `wp_options` VALUES("376", "category_children", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("382", "_site_transient_update_core", "O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.1-partial-0.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:3:\"4.9\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-4.9.1-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.1-rollback-0.zip\";}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:3:\"4.9\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1512417259;s:15:\"version_checked\";s:3:\"4.9\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"4.9\";s:7:\"updated\";s:19:\"2017-11-29 17:32:14\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}}", "no");
INSERT INTO `wp_options` VALUES("383", "_site_transient_update_themes", "O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1512417263;s:7:\"checked\";a:4:{s:10:\"main-theme\";s:0:\"\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:13:\"twentyfifteen\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.9\";s:7:\"updated\";s:19:\"2017-11-26 13:28:14\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/translation/theme/twentyfifteen/1.9/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}}", "no");
INSERT INTO `wp_options` VALUES("387", "_transient_timeout_plugin_slugs", "1512503722", "no");
INSERT INTO `wp_options` VALUES("388", "_transient_plugin_slugs", "a:9:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:22:\"cyr3lat/cyr-to-lat.php\";i:5;s:25:\"duplicator/duplicator.php\";i:6;s:31:\"easy-fancybox/easy-fancybox.php\";i:7;s:21:\"flamingo/flamingo.php\";i:8;s:9:\"hello.php\";}", "no");
INSERT INTO `wp_options` VALUES("390", "_site_transient_timeout_theme_roots", "1512419062", "no");
INSERT INTO `wp_options` VALUES("391", "_site_transient_theme_roots", "a:4:{s:10:\"main-theme\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}", "no");
INSERT INTO `wp_options` VALUES("392", "_site_transient_update_plugins", "O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1512417319;s:7:\"checked\";a:9:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:6:\"5.5.14\";s:19:\"akismet/akismet.php\";s:5:\"4.0.1\";s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";s:5:\"5.7.1\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"4.9.1\";s:22:\"cyr3lat/cyr-to-lat.php\";s:3:\"3.5\";s:25:\"duplicator/duplicator.php\";s:6:\"1.2.30\";s:31:\"easy-fancybox/easy-fancybox.php\";s:5:\"1.6.2\";s:21:\"flamingo/flamingo.php\";s:3:\"1.7\";s:9:\"hello.php\";s:3:\"1.6\";}s:8:\"response\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.6.7\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:16:\"breadcrumb-navxt\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.3.1\";s:7:\"updated\";s:19:\"2015-09-15 20:27:55\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/translation/plugin/breadcrumb-navxt/5.3.1/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.9.1\";s:7:\"updated\";s:19:\"2017-11-26 13:15:51\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/4.9.1/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:10:\"duplicator\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:6:\"1.2.30\";s:7:\"updated\";s:19:\"2017-07-25 21:55:37\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/duplicator/1.2.30/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:8:\"flamingo\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.7\";s:7:\"updated\";s:19:\"2017-11-04 09:29:34\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/plugin/flamingo/1.7/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:8:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/breadcrumb-navxt\";s:4:\"slug\";s:16:\"breadcrumb-navxt\";s:6:\"plugin\";s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";s:11:\"new_version\";s:5:\"5.7.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/breadcrumb-navxt/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/breadcrumb-navxt.5.7.1.zip\";s:5:\"icons\";a:4:{s:2:\"1x\";s:68:\"https://ps.w.org/breadcrumb-navxt/assets/icon-128x128.png?rev=971477\";s:2:\"2x\";s:68:\"https://ps.w.org/breadcrumb-navxt/assets/icon-256x256.png?rev=971477\";s:3:\"svg\";s:60:\"https://ps.w.org/breadcrumb-navxt/assets/icon.svg?rev=971477\";s:7:\"default\";s:60:\"https://ps.w.org/breadcrumb-navxt/assets/icon.svg?rev=971477\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:70:\"https://ps.w.org/breadcrumb-navxt/assets/banner-772x250.jpg?rev=479408\";s:7:\"default\";s:70:\"https://ps.w.org/breadcrumb-navxt/assets/banner-772x250.jpg?rev=479408\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"4.9.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.4.9.1.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:7:\"default\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";s:7:\"default\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";}s:11:\"banners_rtl\";a:0:{}}s:22:\"cyr3lat/cyr-to-lat.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/cyr3lat\";s:4:\"slug\";s:7:\"cyr3lat\";s:6:\"plugin\";s:22:\"cyr3lat/cyr-to-lat.php\";s:11:\"new_version\";s:3:\"3.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr3lat/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/cyr3lat.3.5.zip\";s:5:\"icons\";a:0:{}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:6:\"1.2.30\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/duplicator.1.2.30.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=1298463\";s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=1298463\";s:7:\"default\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=1298463\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=1645055\";s:7:\"default\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=1645055\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"easy-fancybox/easy-fancybox.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/easy-fancybox\";s:4:\"slug\";s:13:\"easy-fancybox\";s:6:\"plugin\";s:31:\"easy-fancybox/easy-fancybox.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/easy-fancybox/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/easy-fancybox.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:66:\"https://ps.w.org/easy-fancybox/assets/icon-128x128.png?rev=1112136\";s:7:\"default\";s:66:\"https://ps.w.org/easy-fancybox/assets/icon-128x128.png?rev=1112136\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:68:\"https://ps.w.org/easy-fancybox/assets/banner-772x250.jpg?rev=1112136\";s:7:\"default\";s:68:\"https://ps.w.org/easy-fancybox/assets/banner-772x250.jpg?rev=1112136\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"flamingo/flamingo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/flamingo\";s:4:\"slug\";s:8:\"flamingo\";s:6:\"plugin\";s:21:\"flamingo/flamingo.php\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/flamingo/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/flamingo.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/flamingo/assets/icon-128x128.png?rev=1540977\";s:7:\"default\";s:61:\"https://ps.w.org/flamingo/assets/icon-128x128.png?rev=1540977\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:62:\"https://ps.w.org/flamingo/assets/banner-772x250.png?rev=544829\";s:7:\"default\";s:62:\"https://ps.w.org/flamingo/assets/banner-772x250.png?rev=544829\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}", "no");
INSERT INTO `wp_options` VALUES("393", "duplicator_settings", "a:10:{s:7:\"version\";s:6:\"1.2.30\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:20:\"storage_htaccess_off\";b:0;}", "yes");
INSERT INTO `wp_options` VALUES("394", "duplicator_version_plugin", "1.2.30", "yes");
INSERT INTO `wp_options` VALUES("395", "duplicator_package_active", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2017-12-04 19:57:33\";s:7:\"Version\";s:6:\"1.2.30\";s:9:\"VersionWP\";s:3:\"4.9\";s:9:\"VersionDB\";s:6:\"5.5.50\";s:10:\"VersionPHP\";s:6:\"5.3.29\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:17:\"20171204_creative\";s:4:\"Hash\";s:32:\"8835051b2ddce7608082171204195733\";s:8:\"NameHash\";s:50:\"20171204_creative_8835051b2ddce7608082171204195733\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:38:\"W:/domains/cr.loc/app/wp-snapshots/tmp\";s:8:\"StoreURL\";s:27:\"http://cr.loc/wp-snapshots/\";s:8:\"ScanFile\";s:60:\"20171204_creative_8835051b2ddce7608082171204195733_scan.json\";s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":18:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:67:\"W:/domains/cr.loc/app/wp-content/themes/main-theme/Òàñêè.todo;\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:1;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:21:\"W:/domains/cr.loc/app\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":4:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":5:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":2:{s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2017-12-04 19:57:33\";s:7:\"Version\";s:6:\"1.2.30\";s:9:\"VersionWP\";s:3:\"4.9\";s:9:\"VersionDB\";s:6:\"5.5.50\";s:10:\"VersionPHP\";s:6:\"5.3.29\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:17:\"20171204_creative\";s:4:\"Hash\";s:32:\"8835051b2ddce7608082171204195733\";s:8:\"NameHash\";s:50:\"20171204_creative_8835051b2ddce7608082171204195733\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:38:\"W:/domains/cr.loc/app/wp-snapshots/tmp\";s:8:\"StoreURL\";s:27:\"http://cr.loc/wp-snapshots/\";s:8:\"ScanFile\";N;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";N;s:7:\"Archive\";r:22;s:9:\"Installer\";O:13:\"DUP_Installer\":7:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:10:\"\0*\0Package\";r:57;}s:8:\"Database\";O:12:\"DUP_Database\":13:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:10:\"\0*\0Package\";r:57;s:25:\"\0DUP_Database\0dbStorePath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:6:{i:0;s:30:\"W:/domains/cr.loc/app/wp-admin\";i:1;s:40:\"W:/domains/cr.loc/app/wp-content/uploads\";i:2;s:42:\"W:/domains/cr.loc/app/wp-content/languages\";i:3;s:40:\"W:/domains/cr.loc/app/wp-content/plugins\";i:4;s:39:\"W:/domains/cr.loc/app/wp-content/themes\";i:5;s:33:\"W:/domains/cr.loc/app/wp-includes\";}}s:9:\"Installer\";r:79;s:8:\"Database\";r:87;}", "yes");

/* INSERT TABLE DATA: wp_postmeta */
INSERT INTO `wp_postmeta` VALUES("1", "2", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("2", "4", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("3", "4", "_wp_trash_meta_time", "1511635874");
INSERT INTO `wp_postmeta` VALUES("4", "5", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("5", "5", "_edit_lock", "1512412874:1");
INSERT INTO `wp_postmeta` VALUES("6", "5", "_wp_page_template", "main-page.php");
INSERT INTO `wp_postmeta` VALUES("9", "8", "_form", "<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]");
INSERT INTO `wp_postmeta` VALUES("10", "8", "_mail", "a:8:{s:7:\"subject\";s:25:\"creative \"[your-subject]\"\";s:6:\"sender\";s:30:\"[your-name] <wordpress@cr.loc>\";s:4:\"body\";s:160:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on creative (http://cr.loc)\";s:9:\"recipient\";s:23:\"mark.aborchie@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}");
INSERT INTO `wp_postmeta` VALUES("11", "8", "_mail_2", "a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:25:\"creative \"[your-subject]\"\";s:6:\"sender\";s:27:\"creative <wordpress@cr.loc>\";s:4:\"body\";s:102:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on creative (http://cr.loc)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:33:\"Reply-To: mark.aborchie@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}");
INSERT INTO `wp_postmeta` VALUES("12", "8", "_messages", "a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}");
INSERT INTO `wp_postmeta` VALUES("13", "8", "_additional_settings", NULL);
INSERT INTO `wp_postmeta` VALUES("14", "8", "_locale", "ru_RU");
INSERT INTO `wp_postmeta` VALUES("15", "1", "_wp_old_slug", "%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80");
INSERT INTO `wp_postmeta` VALUES("16", "9", "_email", "mark.aborchie@gmail.com");
INSERT INTO `wp_postmeta` VALUES("17", "9", "_name", "main-admin");
INSERT INTO `wp_postmeta` VALUES("18", "9", "_props", "a:2:{s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("19", "9", "_last_contacted", "2017-11-29 11:36:24");
INSERT INTO `wp_postmeta` VALUES("20", "10", "_email", "wapuu@wordpress.example");
INSERT INTO `wp_postmeta` VALUES("21", "10", "_name", "Автор комментария");
INSERT INTO `wp_postmeta` VALUES("22", "10", "_props", "a:0:{}");
INSERT INTO `wp_postmeta` VALUES("23", "10", "_last_contacted", "2017-11-29 11:36:24");
INSERT INTO `wp_postmeta` VALUES("24", "11", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("25", "11", "_edit_lock", "1512224561:1");
INSERT INTO `wp_postmeta` VALUES("26", "14", "_wp_attached_file", "2017/11/living-room-flooring-tismsle-stone-look-fosil-ng-kutahya-thumb-1600xauto-56248-living-room-tile-ideas-36.jpg");
INSERT INTO `wp_postmeta` VALUES("27", "14", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1000;s:4:\"file\";s:116:\"2017/11/living-room-flooring-tismsle-stone-look-fosil-ng-kutahya-thumb-1600xauto-56248-living-room-tile-ideas-36.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:116:\"living-room-flooring-tismsle-stone-look-fosil-ng-kutahya-thumb-1600xauto-56248-living-room-tile-ideas-36-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:116:\"living-room-flooring-tismsle-stone-look-fosil-ng-kutahya-thumb-1600xauto-56248-living-room-tile-ideas-36-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:116:\"living-room-flooring-tismsle-stone-look-fosil-ng-kutahya-thumb-1600xauto-56248-living-room-tile-ideas-36-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:117:\"living-room-flooring-tismsle-stone-look-fosil-ng-kutahya-thumb-1600xauto-56248-living-room-tile-ideas-36-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"calc-thumb\";a:4:{s:4:\"file\";s:116:\"living-room-flooring-tismsle-stone-look-fosil-ng-kutahya-thumb-1600xauto-56248-living-room-tile-ideas-36-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("28", "19", "_form", "<div class=\"row footer-form justify-content-md-end\">\n<div class=\"col-4\">[text* Name class:main-footer-form placeholder \"Your Name\"]</div>\n\n<div class=\"col-4\">[email* Email class:main-footer-form placeholder \"Your Email\"]</div>\n\n<div class=\"col-4\">[select* Subject class:main-footer-form include_blank \"Subject-1\" \"Subject-2\"]</div>\n\n<div class=\"col-12\">[textarea* Textarea class:main-footer-form-textarea placeholder \"Your Message\"]</div>\n\n<div class=\"col-3\">[submit \"Send Request\"]</div>\n</div>");
INSERT INTO `wp_postmeta` VALUES("29", "19", "_mail", "a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:25:\"creative \"[your-subject]\"\";s:6:\"sender\";s:30:\"[your-name] <wordpress@cr.loc>\";s:9:\"recipient\";s:23:\"mark.aborchie@gmail.com\";s:4:\"body\";s:160:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on creative (http://cr.loc)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}");
INSERT INTO `wp_postmeta` VALUES("30", "19", "_mail_2", "a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:25:\"creative \"[your-subject]\"\";s:6:\"sender\";s:27:\"creative <wordpress@cr.loc>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:102:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on creative (http://cr.loc)\";s:18:\"additional_headers\";s:33:\"Reply-To: mark.aborchie@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}");
INSERT INTO `wp_postmeta` VALUES("31", "19", "_messages", "a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}");
INSERT INTO `wp_postmeta` VALUES("32", "19", "_additional_settings", "");
INSERT INTO `wp_postmeta` VALUES("33", "19", "_locale", "ru_RU");
INSERT INTO `wp_postmeta` VALUES("34", "20", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("35", "20", "_wp_trash_meta_time", "1512057384");
INSERT INTO `wp_postmeta` VALUES("41", "23", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("42", "23", "_wp_trash_meta_time", "1512057921");
INSERT INTO `wp_postmeta` VALUES("43", "24", "_edit_lock", "1512059543:1");
INSERT INTO `wp_postmeta` VALUES("92", "24", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("93", "24", "_wp_trash_meta_time", "1512059546");
INSERT INTO `wp_postmeta` VALUES("98", "33", "_wp_attached_file", "2017/11/logo.png");
INSERT INTO `wp_postmeta` VALUES("99", "33", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:505;s:6:\"height\";i:193;s:4:\"file\";s:16:\"2017/11/logo.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"logo-300x115.png\";s:5:\"width\";i:300;s:6:\"height\";i:115;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"calc-thumb\";a:4:{s:4:\"file\";s:16:\"logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("100", "34", "_wp_attached_file", "2017/11/cropped-logo.png");
INSERT INTO `wp_postmeta` VALUES("101", "34", "_wp_attachment_context", "custom-logo");
INSERT INTO `wp_postmeta` VALUES("102", "34", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:505;s:6:\"height\";i:193;s:4:\"file\";s:24:\"2017/11/cropped-logo.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x115.png\";s:5:\"width\";i:300;s:6:\"height\";i:115;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"calc-thumb\";a:4:{s:4:\"file\";s:24:\"cropped-logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("103", "35", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("104", "35", "_wp_trash_meta_time", "1512061483");
INSERT INTO `wp_postmeta` VALUES("105", "36", "_edit_lock", "1512327290:1");
INSERT INTO `wp_postmeta` VALUES("106", "36", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("107", "45", "_wp_attached_file", "2017/12/logo-mini.png");
INSERT INTO `wp_postmeta` VALUES("108", "45", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:464;s:6:\"height\";i:51;s:4:\"file\";s:21:\"2017/12/logo-mini.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"logo-mini-150x51.png\";s:5:\"width\";i:150;s:6:\"height\";i:51;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"logo-mini-300x33.png\";s:5:\"width\";i:300;s:6:\"height\";i:33;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"calc-thumb\";a:4:{s:4:\"file\";s:20:\"logo-mini-100x51.png\";s:5:\"width\";i:100;s:6:\"height\";i:51;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("109", "46", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("110", "46", "_edit_lock", "1512411625:1");
INSERT INTO `wp_postmeta` VALUES("111", "48", "_wp_attached_file", "2017/12/Wooden-walls-designed-for-luxury-living-room.jpg");
INSERT INTO `wp_postmeta` VALUES("112", "48", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:1169;s:6:\"height\";i:766;s:4:\"file\";s:56:\"2017/12/Wooden-walls-designed-for-luxury-living-room.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"Wooden-walls-designed-for-luxury-living-room-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"Wooden-walls-designed-for-luxury-living-room-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:56:\"Wooden-walls-designed-for-luxury-living-room-768x503.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:503;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:57:\"Wooden-walls-designed-for-luxury-living-room-1024x671.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:671;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"calc-thumb\";a:4:{s:4:\"file\";s:56:\"Wooden-walls-designed-for-luxury-living-room-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("113", "5", "mail_top_image", "48");
INSERT INTO `wp_postmeta` VALUES("114", "5", "_mail_top_image", "field_5a22b7fd490c4");
INSERT INTO `wp_postmeta` VALUES("115", "49", "mail_top_image", "48");
INSERT INTO `wp_postmeta` VALUES("116", "49", "_mail_top_image", "field_5a22b7fd490c4");
INSERT INTO `wp_postmeta` VALUES("117", "5", "main_top_image", "48");
INSERT INTO `wp_postmeta` VALUES("118", "5", "_main_top_image", "field_5a22b7fd490c4");
INSERT INTO `wp_postmeta` VALUES("119", "50", "mail_top_image", "48");
INSERT INTO `wp_postmeta` VALUES("120", "50", "_mail_top_image", "field_5a22b7fd490c4");
INSERT INTO `wp_postmeta` VALUES("121", "50", "main_top_image", "48");
INSERT INTO `wp_postmeta` VALUES("122", "50", "_main_top_image", "field_5a22b7fd490c4");
INSERT INTO `wp_postmeta` VALUES("123", "5", "text_in_top_1", "We provide");
INSERT INTO `wp_postmeta` VALUES("124", "5", "_text_in_top_1", "field_5a22c1029ea79");
INSERT INTO `wp_postmeta` VALUES("125", "5", "text_in_top_2", "remodeling services");
INSERT INTO `wp_postmeta` VALUES("126", "5", "_text_in_top_2", "field_5a22c13d9ea7a");
INSERT INTO `wp_postmeta` VALUES("127", "5", "text_in_top_3", "in SW Florida");
INSERT INTO `wp_postmeta` VALUES("128", "5", "_text_in_top_3", "field_5a22c1619ea7b");
INSERT INTO `wp_postmeta` VALUES("129", "5", "text_in_top_button", "learn more");
INSERT INTO `wp_postmeta` VALUES("130", "5", "_text_in_top_button", "field_5a22c16c9ea7c");
INSERT INTO `wp_postmeta` VALUES("131", "55", "mail_top_image", "48");
INSERT INTO `wp_postmeta` VALUES("132", "55", "_mail_top_image", "field_5a22b7fd490c4");
INSERT INTO `wp_postmeta` VALUES("133", "55", "main_top_image", "48");
INSERT INTO `wp_postmeta` VALUES("134", "55", "_main_top_image", "field_5a22b7fd490c4");
INSERT INTO `wp_postmeta` VALUES("135", "55", "text_in_top_1", "We provide");
INSERT INTO `wp_postmeta` VALUES("136", "55", "_text_in_top_1", "field_5a22c1029ea79");
INSERT INTO `wp_postmeta` VALUES("137", "55", "text_in_top_2", "remodeling services");
INSERT INTO `wp_postmeta` VALUES("138", "55", "_text_in_top_2", "field_5a22c13d9ea7a");
INSERT INTO `wp_postmeta` VALUES("139", "55", "text_in_top_3", "in SW Florida");
INSERT INTO `wp_postmeta` VALUES("140", "55", "_text_in_top_3", "field_5a22c1619ea7b");
INSERT INTO `wp_postmeta` VALUES("141", "55", "text_in_top_button", "learn more");
INSERT INTO `wp_postmeta` VALUES("142", "55", "_text_in_top_button", "field_5a22c16c9ea7c");
INSERT INTO `wp_postmeta` VALUES("143", "5", "how_much_complete_project", "157");
INSERT INTO `wp_postmeta` VALUES("144", "5", "_how_much_complete_project", "field_5a22f3f659648");
INSERT INTO `wp_postmeta` VALUES("145", "5", "description_completed_projects", "Hardwood is a beautiful hard surface finish  with more species.");
INSERT INTO `wp_postmeta` VALUES("146", "5", "_description_completed_projects", "field_5a23d049b6f13");
INSERT INTO `wp_postmeta` VALUES("147", "5", "text_description_for_button_in_top_section", "Looking For Quality And  Affordable Contractor For Your Next Project?");
INSERT INTO `wp_postmeta` VALUES("148", "5", "_text_description_for_button_in_top_section", "field_5a23d1aeb6f14");
INSERT INTO `wp_postmeta` VALUES("149", "5", "text_for_button_in_top_section", "request a quote");
INSERT INTO `wp_postmeta` VALUES("150", "5", "_text_for_button_in_top_section", "field_5a23d1d6b6f15");
INSERT INTO `wp_postmeta` VALUES("151", "62", "mail_top_image", "48");
INSERT INTO `wp_postmeta` VALUES("152", "62", "_mail_top_image", "field_5a22b7fd490c4");
INSERT INTO `wp_postmeta` VALUES("153", "62", "main_top_image", "48");
INSERT INTO `wp_postmeta` VALUES("154", "62", "_main_top_image", "field_5a22b7fd490c4");
INSERT INTO `wp_postmeta` VALUES("155", "62", "text_in_top_1", "We provide");
INSERT INTO `wp_postmeta` VALUES("156", "62", "_text_in_top_1", "field_5a22c1029ea79");
INSERT INTO `wp_postmeta` VALUES("157", "62", "text_in_top_2", "remodeling services");
INSERT INTO `wp_postmeta` VALUES("158", "62", "_text_in_top_2", "field_5a22c13d9ea7a");
INSERT INTO `wp_postmeta` VALUES("159", "62", "text_in_top_3", "in SW Florida");
INSERT INTO `wp_postmeta` VALUES("160", "62", "_text_in_top_3", "field_5a22c1619ea7b");
INSERT INTO `wp_postmeta` VALUES("161", "62", "text_in_top_button", "learn more");
INSERT INTO `wp_postmeta` VALUES("162", "62", "_text_in_top_button", "field_5a22c16c9ea7c");
INSERT INTO `wp_postmeta` VALUES("163", "62", "how_much_complete_project", "157");
INSERT INTO `wp_postmeta` VALUES("164", "62", "_how_much_complete_project", "field_5a22f3f659648");
INSERT INTO `wp_postmeta` VALUES("165", "62", "description_completed_projects", "Hardwood is a beautiful hard surface finish  with more species. ");
INSERT INTO `wp_postmeta` VALUES("166", "62", "_description_completed_projects", "field_5a23d049b6f13");
INSERT INTO `wp_postmeta` VALUES("167", "62", "text_description_for_button_in_top_section", "Looking For Quality And  Affordable Contractor For Your Next Project?");
INSERT INTO `wp_postmeta` VALUES("168", "62", "_text_description_for_button_in_top_section", "field_5a23d1aeb6f14");
INSERT INTO `wp_postmeta` VALUES("169", "62", "text_for_button_in_top_section", "request a quote");
INSERT INTO `wp_postmeta` VALUES("170", "62", "_text_for_button_in_top_section", "field_5a23d1d6b6f15");
INSERT INTO `wp_postmeta` VALUES("171", "64", "_wp_attached_file", "2017/12/2017-12-03_14-51-17.png");
INSERT INTO `wp_postmeta` VALUES("172", "64", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:177;s:6:\"height\";i:144;s:4:\"file\";s:31:\"2017/12/2017-12-03_14-51-17.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"2017-12-03_14-51-17-150x144.png\";s:5:\"width\";i:150;s:6:\"height\";i:144;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"calc-thumb\";a:4:{s:4:\"file\";s:31:\"2017-12-03_14-51-17-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("173", "5", "image_for_completed_project", "64");
INSERT INTO `wp_postmeta` VALUES("174", "5", "_image_for_completed_project", "field_5a23e56ad103b");
INSERT INTO `wp_postmeta` VALUES("175", "65", "mail_top_image", "48");
INSERT INTO `wp_postmeta` VALUES("176", "65", "_mail_top_image", "field_5a22b7fd490c4");
INSERT INTO `wp_postmeta` VALUES("177", "65", "main_top_image", "48");
INSERT INTO `wp_postmeta` VALUES("178", "65", "_main_top_image", "field_5a22b7fd490c4");
INSERT INTO `wp_postmeta` VALUES("179", "65", "text_in_top_1", "We provide");
INSERT INTO `wp_postmeta` VALUES("180", "65", "_text_in_top_1", "field_5a22c1029ea79");
INSERT INTO `wp_postmeta` VALUES("181", "65", "text_in_top_2", "remodeling services");
INSERT INTO `wp_postmeta` VALUES("182", "65", "_text_in_top_2", "field_5a22c13d9ea7a");
INSERT INTO `wp_postmeta` VALUES("183", "65", "text_in_top_3", "in SW Florida");
INSERT INTO `wp_postmeta` VALUES("184", "65", "_text_in_top_3", "field_5a22c1619ea7b");
INSERT INTO `wp_postmeta` VALUES("185", "65", "text_in_top_button", "learn more");
INSERT INTO `wp_postmeta` VALUES("186", "65", "_text_in_top_button", "field_5a22c16c9ea7c");
INSERT INTO `wp_postmeta` VALUES("187", "65", "how_much_complete_project", "157");
INSERT INTO `wp_postmeta` VALUES("188", "65", "_how_much_complete_project", "field_5a22f3f659648");
INSERT INTO `wp_postmeta` VALUES("189", "65", "description_completed_projects", "Hardwood is a beautiful hard surface finish  with more species.");
INSERT INTO `wp_postmeta` VALUES("190", "65", "_description_completed_projects", "field_5a23d049b6f13");
INSERT INTO `wp_postmeta` VALUES("191", "65", "text_description_for_button_in_top_section", "Looking For Quality And  Affordable Contractor For Your Next Project?");
INSERT INTO `wp_postmeta` VALUES("192", "65", "_text_description_for_button_in_top_section", "field_5a23d1aeb6f14");
INSERT INTO `wp_postmeta` VALUES("193", "65", "text_for_button_in_top_section", "request a quote");
INSERT INTO `wp_postmeta` VALUES("194", "65", "_text_for_button_in_top_section", "field_5a23d1d6b6f15");
INSERT INTO `wp_postmeta` VALUES("195", "65", "image_for_completed_project", "64");
INSERT INTO `wp_postmeta` VALUES("196", "65", "_image_for_completed_project", "field_5a23e56ad103b");
INSERT INTO `wp_postmeta` VALUES("197", "2", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("198", "2", "_wp_trash_meta_time", "1512305163");
INSERT INTO `wp_postmeta` VALUES("199", "2", "_wp_desired_post_slug", "sample-page");
INSERT INTO `wp_postmeta` VALUES("200", "67", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("201", "67", "_edit_lock", "1512416911:1");
INSERT INTO `wp_postmeta` VALUES("202", "67", "_wp_page_template", "partnets.php");
INSERT INTO `wp_postmeta` VALUES("203", "69", "mail_top_image", "48");
INSERT INTO `wp_postmeta` VALUES("204", "69", "_mail_top_image", "field_5a22b7fd490c4");
INSERT INTO `wp_postmeta` VALUES("205", "69", "main_top_image", "48");
INSERT INTO `wp_postmeta` VALUES("206", "69", "_main_top_image", "field_5a22b7fd490c4");
INSERT INTO `wp_postmeta` VALUES("207", "69", "text_in_top_1", "We provide");
INSERT INTO `wp_postmeta` VALUES("208", "69", "_text_in_top_1", "field_5a22c1029ea79");
INSERT INTO `wp_postmeta` VALUES("209", "69", "text_in_top_2", "remodeling services");
INSERT INTO `wp_postmeta` VALUES("210", "69", "_text_in_top_2", "field_5a22c13d9ea7a");
INSERT INTO `wp_postmeta` VALUES("211", "69", "text_in_top_3", "in SW Florida");
INSERT INTO `wp_postmeta` VALUES("212", "69", "_text_in_top_3", "field_5a22c1619ea7b");
INSERT INTO `wp_postmeta` VALUES("213", "69", "text_in_top_button", "learn more");
INSERT INTO `wp_postmeta` VALUES("214", "69", "_text_in_top_button", "field_5a22c16c9ea7c");
INSERT INTO `wp_postmeta` VALUES("215", "69", "how_much_complete_project", "157");
INSERT INTO `wp_postmeta` VALUES("216", "69", "_how_much_complete_project", "field_5a22f3f659648");
INSERT INTO `wp_postmeta` VALUES("217", "69", "description_completed_projects", "Hardwood is a beautiful hard surface finish  with more species.");
INSERT INTO `wp_postmeta` VALUES("218", "69", "_description_completed_projects", "field_5a23d049b6f13");
INSERT INTO `wp_postmeta` VALUES("219", "69", "text_description_for_button_in_top_section", "Looking For Quality And  Affordable Contractor For Your Next Project?");
INSERT INTO `wp_postmeta` VALUES("220", "69", "_text_description_for_button_in_top_section", "field_5a23d1aeb6f14");
INSERT INTO `wp_postmeta` VALUES("221", "69", "text_for_button_in_top_section", "request a quote");
INSERT INTO `wp_postmeta` VALUES("222", "69", "_text_for_button_in_top_section", "field_5a23d1d6b6f15");
INSERT INTO `wp_postmeta` VALUES("223", "69", "image_for_completed_project", "64");
INSERT INTO `wp_postmeta` VALUES("224", "69", "_image_for_completed_project", "field_5a23e56ad103b");
INSERT INTO `wp_postmeta` VALUES("225", "70", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("226", "70", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("227", "70", "_edit_lock", "1512305671:1");
INSERT INTO `wp_postmeta` VALUES("228", "72", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("229", "72", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("230", "72", "_edit_lock", "1512305590:1");
INSERT INTO `wp_postmeta` VALUES("231", "74", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("232", "74", "_wp_page_template", "services.php");
INSERT INTO `wp_postmeta` VALUES("233", "74", "_edit_lock", "1512411228:1");
INSERT INTO `wp_postmeta` VALUES("234", "76", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("235", "76", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("236", "76", "_menu_item_object_id", "74");
INSERT INTO `wp_postmeta` VALUES("237", "76", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("238", "76", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("239", "76", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("240", "76", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("241", "76", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("243", "77", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("244", "77", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("245", "77", "_menu_item_object_id", "72");
INSERT INTO `wp_postmeta` VALUES("246", "77", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("247", "77", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("248", "77", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("249", "77", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("250", "77", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("252", "78", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("253", "78", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("254", "78", "_menu_item_object_id", "70");
INSERT INTO `wp_postmeta` VALUES("255", "78", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("256", "78", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("257", "78", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("258", "78", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("259", "78", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("261", "79", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("262", "79", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("263", "79", "_menu_item_object_id", "67");
INSERT INTO `wp_postmeta` VALUES("264", "79", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("265", "79", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("266", "79", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("267", "79", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("268", "79", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("269", "79", "_menu_item_orphaned", "1512305809");
INSERT INTO `wp_postmeta` VALUES("270", "83", "_wp_attached_file", "2017/12/e6b8924906d74cdfbbc1ac8f21ec4e50.jpg");
INSERT INTO `wp_postmeta` VALUES("271", "83", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:2990;s:6:\"height\";i:1990;s:4:\"file\";s:44:\"2017/12/e6b8924906d74cdfbbc1ac8f21ec4e50.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"e6b8924906d74cdfbbc1ac8f21ec4e50-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"e6b8924906d74cdfbbc1ac8f21ec4e50-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"e6b8924906d74cdfbbc1ac8f21ec4e50-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"e6b8924906d74cdfbbc1ac8f21ec4e50-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"calc-thumb\";a:4:{s:4:\"file\";s:44:\"e6b8924906d74cdfbbc1ac8f21ec4e50-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:12:\"Getty Images\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark II\";s:7:\"caption\";s:126:\"A worker installing hardwood floor in an American upscale home.A worker installing hardwood floor in an American upscale home.\";s:17:\"created_timestamp\";s:10:\"1327065907\";s:9:\"copyright\";s:5:\"slobo\";s:12:\"focal_length\";s:3:\"105\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:4:\"0.04\";s:5:\"title\";s:25:\"Installing Hardwood Floor\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:27:{i:0;s:8:\"Hardwood\";i:1;s:9:\"Brazilian\";i:2;s:5:\"Plank\";i:3;s:10:\"Installing\";i:4;s:3:\"Tar\";i:5;s:16:\"Home Improvement\";i:6;s:10:\"Insulation\";i:7;s:14:\"Hardwood Floor\";i:8;s:17:\"Brazilian Culture\";i:9;s:10:\"One Person\";i:10;s:3:\"Red\";i:11;s:4:\"Wood\";i:12;s:9:\"Inside Of\";i:13;s:12:\"Construction\";i:14;s:7:\"Indoors\";i:15;s:10:\"Horizontal\";i:16;s:13:\"Manual Worker\";i:17;s:10:\"California\";i:18;s:3:\"USA\";i:19;s:6:\"Brazil\";i:20;s:5:\"Floor\";i:21;s:9:\"Work Tool\";i:22;s:8:\"Mahogany\";i:23;s:8:\"Business\";i:24;s:26:\"Architecture And Buildings\";i:25;s:12:\"Construction\";i:26;s:8:\"Industry\";}}}");
INSERT INTO `wp_postmeta` VALUES("272", "67", "_thumbnail_id", "83");
INSERT INTO `wp_postmeta` VALUES("273", "84", "_wp_attached_file", "2017/12/ukladka-mramornoj-plitki-2.jpg");
INSERT INTO `wp_postmeta` VALUES("274", "84", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:479;s:6:\"height\";i:314;s:4:\"file\";s:38:\"2017/12/ukladka-mramornoj-plitki-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"ukladka-mramornoj-plitki-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"ukladka-mramornoj-plitki-2-300x197.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"calc-thumb\";a:4:{s:4:\"file\";s:38:\"ukladka-mramornoj-plitki-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("275", "85", "_wp_attached_file", "2017/12/ukladka-plitki-elochkoi2.jpg");
INSERT INTO `wp_postmeta` VALUES("276", "85", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:595;s:6:\"height\";i:374;s:4:\"file\";s:36:\"2017/12/ukladka-plitki-elochkoi2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"ukladka-plitki-elochkoi2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"ukladka-plitki-elochkoi2-300x189.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:189;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"calc-thumb\";a:4:{s:4:\"file\";s:36:\"ukladka-plitki-elochkoi2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("277", "86", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("278", "86", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("279", "86", "_edit_lock", "1512328955:1");
INSERT INTO `wp_postmeta` VALUES("280", "88", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("281", "88", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("282", "88", "_edit_lock", "1512328986:1");
INSERT INTO `wp_postmeta` VALUES("283", "90", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("284", "90", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("285", "90", "_edit_lock", "1512329003:1");
INSERT INTO `wp_postmeta` VALUES("286", "92", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("287", "92", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("288", "92", "_edit_lock", "1512329025:1");
INSERT INTO `wp_postmeta` VALUES("289", "94", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("290", "94", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("291", "94", "_edit_lock", "1512329047:1");
INSERT INTO `wp_postmeta` VALUES("292", "96", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("293", "96", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("294", "96", "_edit_lock", "1512329073:1");
INSERT INTO `wp_postmeta` VALUES("295", "98", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("296", "98", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("297", "98", "_edit_lock", "1512333060:1");
INSERT INTO `wp_postmeta` VALUES("298", "100", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("299", "100", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("300", "100", "_menu_item_object_id", "98");
INSERT INTO `wp_postmeta` VALUES("301", "100", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("302", "100", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("303", "100", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("304", "100", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("305", "100", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("307", "101", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("308", "101", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("309", "101", "_menu_item_object_id", "96");
INSERT INTO `wp_postmeta` VALUES("310", "101", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("311", "101", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("312", "101", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("313", "101", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("314", "101", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("316", "102", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("317", "102", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("318", "102", "_menu_item_object_id", "94");
INSERT INTO `wp_postmeta` VALUES("319", "102", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("320", "102", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("321", "102", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("322", "102", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("323", "102", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("325", "103", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("326", "103", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("327", "103", "_menu_item_object_id", "92");
INSERT INTO `wp_postmeta` VALUES("328", "103", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("329", "103", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("330", "103", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("331", "103", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("332", "103", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("334", "104", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("335", "104", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("336", "104", "_menu_item_object_id", "67");
INSERT INTO `wp_postmeta` VALUES("337", "104", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("338", "104", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("339", "104", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("340", "104", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("341", "104", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("343", "105", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("344", "105", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("345", "105", "_menu_item_object_id", "90");
INSERT INTO `wp_postmeta` VALUES("346", "105", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("347", "105", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("348", "105", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("349", "105", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("350", "105", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("352", "106", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("353", "106", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("354", "106", "_menu_item_object_id", "86");
INSERT INTO `wp_postmeta` VALUES("355", "106", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("356", "106", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("357", "106", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("358", "106", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("359", "106", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("361", "107", "_menu_item_type", "post_type");
INSERT INTO `wp_postmeta` VALUES("362", "107", "_menu_item_menu_item_parent", "0");
INSERT INTO `wp_postmeta` VALUES("363", "107", "_menu_item_object_id", "5");
INSERT INTO `wp_postmeta` VALUES("364", "107", "_menu_item_object", "page");
INSERT INTO `wp_postmeta` VALUES("365", "107", "_menu_item_target", "");
INSERT INTO `wp_postmeta` VALUES("366", "107", "_menu_item_classes", "a:1:{i:0;s:0:\"\";}");
INSERT INTO `wp_postmeta` VALUES("367", "107", "_menu_item_xfn", "");
INSERT INTO `wp_postmeta` VALUES("368", "107", "_menu_item_url", "");
INSERT INTO `wp_postmeta` VALUES("370", "82", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("371", "82", "_edit_lock", "1512411468:1");
INSERT INTO `wp_postmeta` VALUES("372", "67", "heading_for_the_page", "We work with the best partners");
INSERT INTO `wp_postmeta` VALUES("373", "67", "_heading_for_the_page", "field_5a2457d55bdd7");
INSERT INTO `wp_postmeta` VALUES("374", "67", "description_of_the_page", "Our company is based on a family tradition of superior floor covering and ceramic tile installation services. My family began a store much like today’s decorator stores back in the early 60’s.   Working in the family business from an early age, I was always reminded of that and I believe that has helped shape our business of today.");
INSERT INTO `wp_postmeta` VALUES("375", "67", "_description_of_the_page", "field_5a2458165bdd8");
INSERT INTO `wp_postmeta` VALUES("376", "110", "heading_for_the_page", "We work with the best partners");
INSERT INTO `wp_postmeta` VALUES("377", "110", "_heading_for_the_page", "field_5a2457d55bdd7");
INSERT INTO `wp_postmeta` VALUES("378", "110", "description_of_the_page", "Our company is based on a family tradition of superior floor covering and ceramic tile installation services. My family began a store much like today’s decorator stores back in the early 60’s.   Working in the family business from an early age, I was always reminded of that and I believe that has helped shape our business of today.");
INSERT INTO `wp_postmeta` VALUES("379", "110", "_description_of_the_page", "field_5a2458165bdd8");
INSERT INTO `wp_postmeta` VALUES("380", "111", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("381", "111", "_edit_lock", "1512335251:1");
INSERT INTO `wp_postmeta` VALUES("382", "116", "_wp_attached_file", "2017/12/AO_Logo_V_4C_Tag-copy.png");
INSERT INTO `wp_postmeta` VALUES("383", "116", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:1302;s:6:\"height\";i:593;s:4:\"file\";s:33:\"2017/12/AO_Logo_V_4C_Tag-copy.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"AO_Logo_V_4C_Tag-copy-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"AO_Logo_V_4C_Tag-copy-300x137.png\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"AO_Logo_V_4C_Tag-copy-768x350.png\";s:5:\"width\";i:768;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"AO_Logo_V_4C_Tag-copy-1024x466.png\";s:5:\"width\";i:1024;s:6:\"height\";i:466;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"calc-thumb\";a:4:{s:4:\"file\";s:33:\"AO_Logo_V_4C_Tag-copy-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("384", "117", "_wp_attached_file", "2017/12/logo_address.png");
INSERT INTO `wp_postmeta` VALUES("385", "117", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:612;s:6:\"height\";i:323;s:4:\"file\";s:24:\"2017/12/logo_address.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"logo_address-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"logo_address-300x158.png\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"calc-thumb\";a:4:{s:4:\"file\";s:24:\"logo_address-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("386", "118", "_wp_attached_file", "2017/12/Nuvelle_Logo_TM.jpg");
INSERT INTO `wp_postmeta` VALUES("387", "118", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:800;s:6:\"height\";i:170;s:4:\"file\";s:27:\"2017/12/Nuvelle_Logo_TM.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Nuvelle_Logo_TM-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"Nuvelle_Logo_TM-300x64.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:64;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Nuvelle_Logo_TM-768x163.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:163;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"calc-thumb\";a:4:{s:4:\"file\";s:27:\"Nuvelle_Logo_TM-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("388", "119", "_wp_attached_file", "2017/12/quick-step.jpg");
INSERT INTO `wp_postmeta` VALUES("389", "119", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:1181;s:6:\"height\";i:354;s:4:\"file\";s:22:\"2017/12/quick-step.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"quick-step-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"quick-step-300x90.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"quick-step-768x230.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:230;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"quick-step-1024x307.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:307;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"calc-thumb\";a:4:{s:4:\"file\";s:22:\"quick-step-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("390", "67", "partners_repeater_0_name", "QUICK STEP");
INSERT INTO `wp_postmeta` VALUES("391", "67", "_partners_repeater_0_name", "field_5a245e30a4be4");
INSERT INTO `wp_postmeta` VALUES("392", "67", "partners_repeater_0_image", "119");
INSERT INTO `wp_postmeta` VALUES("393", "67", "_partners_repeater_0_image", "field_5a245e5fa4be5");
INSERT INTO `wp_postmeta` VALUES("394", "67", "partners_repeater_0_description", "Our company is based on a family tradition of superior floor covering and ceramic tile installation services. My family began a store much like today’s decorator stores back in the early 60’s.");
INSERT INTO `wp_postmeta` VALUES("395", "67", "_partners_repeater_0_description", "field_5a245e77a4be6");
INSERT INTO `wp_postmeta` VALUES("396", "67", "partners_repeater_1_name", "NUVELLE");
INSERT INTO `wp_postmeta` VALUES("397", "67", "_partners_repeater_1_name", "field_5a245e30a4be4");
INSERT INTO `wp_postmeta` VALUES("398", "67", "partners_repeater_1_image", "118");
INSERT INTO `wp_postmeta` VALUES("399", "67", "_partners_repeater_1_image", "field_5a245e5fa4be5");
INSERT INTO `wp_postmeta` VALUES("400", "67", "partners_repeater_1_description", "Our company is based on a family tradition of superior floor covering and ceramic tile installation services. My family began a store much like today’s decorator stores back in the early 60’s.");
INSERT INTO `wp_postmeta` VALUES("401", "67", "_partners_repeater_1_description", "field_5a245e77a4be6");
INSERT INTO `wp_postmeta` VALUES("402", "67", "partners_repeater_2_name", "AMERICAN OLEAN");
INSERT INTO `wp_postmeta` VALUES("403", "67", "_partners_repeater_2_name", "field_5a245e30a4be4");
INSERT INTO `wp_postmeta` VALUES("404", "67", "partners_repeater_2_image", "116");
INSERT INTO `wp_postmeta` VALUES("405", "67", "_partners_repeater_2_image", "field_5a245e5fa4be5");
INSERT INTO `wp_postmeta` VALUES("406", "67", "partners_repeater_2_description", "Our company is based on a family tradition of superior floor covering and ceramic tile installation services. My family began a store much like today’s decorator stores back in the early 60’s.");
INSERT INTO `wp_postmeta` VALUES("407", "67", "_partners_repeater_2_description", "field_5a245e77a4be6");
INSERT INTO `wp_postmeta` VALUES("408", "67", "partners_repeater_3_name", "FLOORSCAPES");
INSERT INTO `wp_postmeta` VALUES("409", "67", "_partners_repeater_3_name", "field_5a245e30a4be4");
INSERT INTO `wp_postmeta` VALUES("410", "67", "partners_repeater_3_image", "117");
INSERT INTO `wp_postmeta` VALUES("411", "67", "_partners_repeater_3_image", "field_5a245e5fa4be5");
INSERT INTO `wp_postmeta` VALUES("412", "67", "partners_repeater_3_description", "Our company is based on a family tradition of superior floor covering and ceramic tile installation services. My family began a store much like today’s decorator stores back in the early 60’s.");
INSERT INTO `wp_postmeta` VALUES("413", "67", "_partners_repeater_3_description", "field_5a245e77a4be6");
INSERT INTO `wp_postmeta` VALUES("414", "67", "partners_repeater", "4");
INSERT INTO `wp_postmeta` VALUES("415", "67", "_partners_repeater", "field_5a245e00a4be3");
INSERT INTO `wp_postmeta` VALUES("416", "120", "heading_for_the_page", "We work with the best partners");
INSERT INTO `wp_postmeta` VALUES("417", "120", "_heading_for_the_page", "field_5a2457d55bdd7");
INSERT INTO `wp_postmeta` VALUES("418", "120", "description_of_the_page", "Our company is based on a family tradition of superior floor covering and ceramic tile installation services. My family began a store much like today’s decorator stores back in the early 60’s.   Working in the family business from an early age, I was always reminded of that and I believe that has helped shape our business of today.");
INSERT INTO `wp_postmeta` VALUES("419", "120", "_description_of_the_page", "field_5a2458165bdd8");
INSERT INTO `wp_postmeta` VALUES("420", "120", "partners_repeater_0_name", "QUICK STEP");
INSERT INTO `wp_postmeta` VALUES("421", "120", "_partners_repeater_0_name", "field_5a245e30a4be4");
INSERT INTO `wp_postmeta` VALUES("422", "120", "partners_repeater_0_image", "119");
INSERT INTO `wp_postmeta` VALUES("423", "120", "_partners_repeater_0_image", "field_5a245e5fa4be5");
INSERT INTO `wp_postmeta` VALUES("424", "120", "partners_repeater_0_description", "Our company is based on a family tradition of superior floor covering and ceramic tile installation services. My family began a store much like today’s decorator stores back in the early 60’s.");
INSERT INTO `wp_postmeta` VALUES("425", "120", "_partners_repeater_0_description", "field_5a245e77a4be6");
INSERT INTO `wp_postmeta` VALUES("426", "120", "partners_repeater_1_name", "NUVELLE");
INSERT INTO `wp_postmeta` VALUES("427", "120", "_partners_repeater_1_name", "field_5a245e30a4be4");
INSERT INTO `wp_postmeta` VALUES("428", "120", "partners_repeater_1_image", "118");
INSERT INTO `wp_postmeta` VALUES("429", "120", "_partners_repeater_1_image", "field_5a245e5fa4be5");
INSERT INTO `wp_postmeta` VALUES("430", "120", "partners_repeater_1_description", "Our company is based on a family tradition of superior floor covering and ceramic tile installation services. My family began a store much like today’s decorator stores back in the early 60’s.");
INSERT INTO `wp_postmeta` VALUES("431", "120", "_partners_repeater_1_description", "field_5a245e77a4be6");
INSERT INTO `wp_postmeta` VALUES("432", "120", "partners_repeater_2_name", "AMERICAN OLEAN");
INSERT INTO `wp_postmeta` VALUES("433", "120", "_partners_repeater_2_name", "field_5a245e30a4be4");
INSERT INTO `wp_postmeta` VALUES("434", "120", "partners_repeater_2_image", "116");
INSERT INTO `wp_postmeta` VALUES("435", "120", "_partners_repeater_2_image", "field_5a245e5fa4be5");
INSERT INTO `wp_postmeta` VALUES("436", "120", "partners_repeater_2_description", "Our company is based on a family tradition of superior floor covering and ceramic tile installation services. My family began a store much like today’s decorator stores back in the early 60’s.");
INSERT INTO `wp_postmeta` VALUES("437", "120", "_partners_repeater_2_description", "field_5a245e77a4be6");
INSERT INTO `wp_postmeta` VALUES("438", "120", "partners_repeater_3_name", "FLOORSCAPES");
INSERT INTO `wp_postmeta` VALUES("439", "120", "_partners_repeater_3_name", "field_5a245e30a4be4");
INSERT INTO `wp_postmeta` VALUES("440", "120", "partners_repeater_3_image", "117");
INSERT INTO `wp_postmeta` VALUES("441", "120", "_partners_repeater_3_image", "field_5a245e5fa4be5");
INSERT INTO `wp_postmeta` VALUES("442", "120", "partners_repeater_3_description", "Our company is based on a family tradition of superior floor covering and ceramic tile installation services. My family began a store much like today’s decorator stores back in the early 60’s.");
INSERT INTO `wp_postmeta` VALUES("443", "120", "_partners_repeater_3_description", "field_5a245e77a4be6");
INSERT INTO `wp_postmeta` VALUES("444", "120", "partners_repeater", "4");
INSERT INTO `wp_postmeta` VALUES("445", "120", "_partners_repeater", "field_5a245e00a4be3");
INSERT INTO `wp_postmeta` VALUES("446", "121", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("447", "121", "_edit_lock", "1512335361:1");
INSERT INTO `wp_postmeta` VALUES("448", "122", "_wp_attached_file", "2017/12/Dark-Hardwood-Floor-Luxury-Nice-Interior-Design-Designer-Architecture.jpg");
INSERT INTO `wp_postmeta` VALUES("449", "122", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:2232;s:6:\"height\";i:1484;s:4:\"file\";s:81:\"2017/12/Dark-Hardwood-Floor-Luxury-Nice-Interior-Design-Designer-Architecture.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:81:\"Dark-Hardwood-Floor-Luxury-Nice-Interior-Design-Designer-Architecture-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:81:\"Dark-Hardwood-Floor-Luxury-Nice-Interior-Design-Designer-Architecture-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:81:\"Dark-Hardwood-Floor-Luxury-Nice-Interior-Design-Designer-Architecture-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:82:\"Dark-Hardwood-Floor-Luxury-Nice-Interior-Design-Designer-Architecture-1024x681.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:681;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"calc-thumb\";a:4:{s:4:\"file\";s:81:\"Dark-Hardwood-Floor-Luxury-Nice-Interior-Design-Designer-Architecture-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("450", "121", "_thumbnail_id", "122");
INSERT INTO `wp_postmeta` VALUES("451", "121", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("452", "121", "heading_for_the_page", "");
INSERT INTO `wp_postmeta` VALUES("453", "121", "_heading_for_the_page", "field_5a2457d55bdd7");
INSERT INTO `wp_postmeta` VALUES("454", "121", "description_of_the_page", "");
INSERT INTO `wp_postmeta` VALUES("455", "121", "_description_of_the_page", "field_5a2458165bdd8");
INSERT INTO `wp_postmeta` VALUES("456", "123", "heading_for_the_page", "");
INSERT INTO `wp_postmeta` VALUES("457", "123", "_heading_for_the_page", "field_5a2457d55bdd7");
INSERT INTO `wp_postmeta` VALUES("458", "123", "description_of_the_page", "");
INSERT INTO `wp_postmeta` VALUES("459", "123", "_description_of_the_page", "field_5a2458165bdd8");
INSERT INTO `wp_postmeta` VALUES("460", "125", "_wp_attached_file", "2017/12/gvp55.jpg");
INSERT INTO `wp_postmeta` VALUES("461", "125", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:499;s:6:\"height\";i:370;s:4:\"file\";s:17:\"2017/12/gvp55.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"gvp55-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"gvp55-300x222.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"calc-thumb\";a:4:{s:4:\"file\";s:17:\"gvp55-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("462", "124", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("463", "124", "_thumbnail_id", "125");
INSERT INTO `wp_postmeta` VALUES("464", "124", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("465", "124", "heading_for_the_page", "");
INSERT INTO `wp_postmeta` VALUES("466", "124", "_heading_for_the_page", "field_5a2457d55bdd7");
INSERT INTO `wp_postmeta` VALUES("467", "124", "description_of_the_page", "");
INSERT INTO `wp_postmeta` VALUES("468", "124", "_description_of_the_page", "field_5a2458165bdd8");
INSERT INTO `wp_postmeta` VALUES("469", "126", "heading_for_the_page", "");
INSERT INTO `wp_postmeta` VALUES("470", "126", "_heading_for_the_page", "field_5a2457d55bdd7");
INSERT INTO `wp_postmeta` VALUES("471", "126", "description_of_the_page", "");
INSERT INTO `wp_postmeta` VALUES("472", "126", "_description_of_the_page", "field_5a2458165bdd8");
INSERT INTO `wp_postmeta` VALUES("473", "124", "_edit_lock", "1512335404:1");
INSERT INTO `wp_postmeta` VALUES("474", "127", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("475", "127", "_edit_lock", "1512335453:1");
INSERT INTO `wp_postmeta` VALUES("476", "128", "_wp_attached_file", "2017/12/5780532_large_55527.jpeg");
INSERT INTO `wp_postmeta` VALUES("477", "128", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:4:\"file\";s:32:\"2017/12/5780532_large_55527.jpeg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"5780532_large_55527-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"5780532_large_55527-300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"5780532_large_55527-768x576.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"5780532_large_55527-1024x768.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"calc-thumb\";a:4:{s:4:\"file\";s:32:\"5780532_large_55527-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("478", "127", "_thumbnail_id", "128");
INSERT INTO `wp_postmeta` VALUES("479", "127", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("480", "127", "heading_for_the_page", "");
INSERT INTO `wp_postmeta` VALUES("481", "127", "_heading_for_the_page", "field_5a2457d55bdd7");
INSERT INTO `wp_postmeta` VALUES("482", "127", "description_of_the_page", "");
INSERT INTO `wp_postmeta` VALUES("483", "127", "_description_of_the_page", "field_5a2458165bdd8");
INSERT INTO `wp_postmeta` VALUES("484", "129", "heading_for_the_page", "");
INSERT INTO `wp_postmeta` VALUES("485", "129", "_heading_for_the_page", "field_5a2457d55bdd7");
INSERT INTO `wp_postmeta` VALUES("486", "129", "description_of_the_page", "");
INSERT INTO `wp_postmeta` VALUES("487", "129", "_description_of_the_page", "field_5a2458165bdd8");
INSERT INTO `wp_postmeta` VALUES("488", "131", "_wp_attached_file", "2017/12/yorkchocolaterev_small.jpg");
INSERT INTO `wp_postmeta` VALUES("489", "131", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:34:\"2017/12/yorkchocolaterev_small.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"yorkchocolaterev_small-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"yorkchocolaterev_small-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"yorkchocolaterev_small-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"calc-thumb\";a:4:{s:4:\"file\";s:34:\"yorkchocolaterev_small-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:957:\"VRimg File Description\r\r=Attributes=\rVersion: 1.3\rCompressed: true\rResolution { width: 3400  height: 2267  pixelAspectRatio: 1 }\rRender Region { renderRegion: false  xmin: 0  ymin: 0  width: 3400  height: 2267 }\rRegions Info { regWidth: 32  regHeight: 32  whatsXY: MaxSize }\rCamera Info { transform: matrix  projection: perspective  aperture: 36  fov: 45.0744  targetDistance: 172.913  nearRange: 0  nearClip: 85.59  farClip: 1000  focalLength: 42.952  fNumber: 4 }\rScene { renderTime: 3358015  name: \"yorkchocolate03.max\" }\r\r=Channels=\rAlpha (float3)\rRGB color (float3)\rVRayDiffuseFilter (float3)\rVRayExtraTex_Map #2070303410 (float3)\rVRayExtraTex_VRayDirt (float3)\rVRayGlobalIllumination (float3)\rVRayGlobalIllumination2 (float3)\rVRayLighting (float3)\rVRayRawGlobalIllumination (float3)\rVRayRawLighting (float3)\rVRayRawReflection (float3)\rVRayReflection (float3)\rVRayRefraction (float3)\rVRaySampleRate (float3)\rVRaySpecular (float3)\rVRayWireColor (float3)\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("490", "130", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("491", "130", "_thumbnail_id", "131");
INSERT INTO `wp_postmeta` VALUES("492", "130", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("493", "130", "heading_for_the_page", "");
INSERT INTO `wp_postmeta` VALUES("494", "130", "_heading_for_the_page", "field_5a2457d55bdd7");
INSERT INTO `wp_postmeta` VALUES("495", "130", "description_of_the_page", "");
INSERT INTO `wp_postmeta` VALUES("496", "130", "_description_of_the_page", "field_5a2458165bdd8");
INSERT INTO `wp_postmeta` VALUES("497", "132", "heading_for_the_page", "");
INSERT INTO `wp_postmeta` VALUES("498", "132", "_heading_for_the_page", "field_5a2457d55bdd7");
INSERT INTO `wp_postmeta` VALUES("499", "132", "description_of_the_page", "");
INSERT INTO `wp_postmeta` VALUES("500", "132", "_description_of_the_page", "field_5a2458165bdd8");
INSERT INTO `wp_postmeta` VALUES("501", "130", "_edit_lock", "1512335505:1");
INSERT INTO `wp_postmeta` VALUES("502", "74", "_thumbnail_id", "85");
INSERT INTO `wp_postmeta` VALUES("503", "74", "heading_for_the_page", "Our Services");
INSERT INTO `wp_postmeta` VALUES("504", "74", "_heading_for_the_page", "field_5a2457d55bdd7");
INSERT INTO `wp_postmeta` VALUES("505", "74", "description_of_the_page", "Our company is based on a family tradition of superior floor covering and ceramic tile installation services. My family began a store much like today’s decorator stores back in the early 60’s.   Working in the family business from an early age, I was always reminded of that and I believe that has helped shape our business of today.\r\n\r\n\r\n      ");
INSERT INTO `wp_postmeta` VALUES("506", "74", "_description_of_the_page", "field_5a2458165bdd8");
INSERT INTO `wp_postmeta` VALUES("507", "133", "heading_for_the_page", "Our Services");
INSERT INTO `wp_postmeta` VALUES("508", "133", "_heading_for_the_page", "field_5a2457d55bdd7");
INSERT INTO `wp_postmeta` VALUES("509", "133", "description_of_the_page", "Our company is based on a family tradition of superior floor covering and ceramic tile installation services. My family began a store much like today’s decorator stores back in the early 60’s.   Working in the family business from an early age, I was always reminded of that and I believe that has helped shape our business of today.\r\n\r\n\r\n      ");
INSERT INTO `wp_postmeta` VALUES("510", "133", "_description_of_the_page", "field_5a2458165bdd8");
INSERT INTO `wp_postmeta` VALUES("511", "134", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("512", "134", "_edit_lock", "1512412182:1");
INSERT INTO `wp_postmeta` VALUES("513", "5", "link_to_the_page_our_services", "74");
INSERT INTO `wp_postmeta` VALUES("514", "5", "_link_to_the_page_our_services", "field_5a2591f125fda");
INSERT INTO `wp_postmeta` VALUES("515", "5", "link_to_the_page_latest-projects", "72");
INSERT INTO `wp_postmeta` VALUES("516", "5", "_link_to_the_page_latest-projects", "field_5a25928d15e2b");
INSERT INTO `wp_postmeta` VALUES("517", "5", "link_to_the_page_our_partners", "67");
INSERT INTO `wp_postmeta` VALUES("518", "5", "_link_to_the_page_our_partners", "field_5a2592ac15e2c");
INSERT INTO `wp_postmeta` VALUES("519", "138", "mail_top_image", "48");
INSERT INTO `wp_postmeta` VALUES("520", "138", "_mail_top_image", "field_5a22b7fd490c4");
INSERT INTO `wp_postmeta` VALUES("521", "138", "main_top_image", "48");
INSERT INTO `wp_postmeta` VALUES("522", "138", "_main_top_image", "field_5a22b7fd490c4");
INSERT INTO `wp_postmeta` VALUES("523", "138", "text_in_top_1", "We provide");
INSERT INTO `wp_postmeta` VALUES("524", "138", "_text_in_top_1", "field_5a22c1029ea79");
INSERT INTO `wp_postmeta` VALUES("525", "138", "text_in_top_2", "remodeling services");
INSERT INTO `wp_postmeta` VALUES("526", "138", "_text_in_top_2", "field_5a22c13d9ea7a");
INSERT INTO `wp_postmeta` VALUES("527", "138", "text_in_top_3", "in SW Florida");
INSERT INTO `wp_postmeta` VALUES("528", "138", "_text_in_top_3", "field_5a22c1619ea7b");
INSERT INTO `wp_postmeta` VALUES("529", "138", "text_in_top_button", "learn more");
INSERT INTO `wp_postmeta` VALUES("530", "138", "_text_in_top_button", "field_5a22c16c9ea7c");
INSERT INTO `wp_postmeta` VALUES("531", "138", "how_much_complete_project", "157");
INSERT INTO `wp_postmeta` VALUES("532", "138", "_how_much_complete_project", "field_5a22f3f659648");
INSERT INTO `wp_postmeta` VALUES("533", "138", "description_completed_projects", "Hardwood is a beautiful hard surface finish  with more species.");
INSERT INTO `wp_postmeta` VALUES("534", "138", "_description_completed_projects", "field_5a23d049b6f13");
INSERT INTO `wp_postmeta` VALUES("535", "138", "text_description_for_button_in_top_section", "Looking For Quality And  Affordable Contractor For Your Next Project?");
INSERT INTO `wp_postmeta` VALUES("536", "138", "_text_description_for_button_in_top_section", "field_5a23d1aeb6f14");
INSERT INTO `wp_postmeta` VALUES("537", "138", "text_for_button_in_top_section", "request a quote");
INSERT INTO `wp_postmeta` VALUES("538", "138", "_text_for_button_in_top_section", "field_5a23d1d6b6f15");
INSERT INTO `wp_postmeta` VALUES("539", "138", "image_for_completed_project", "64");
INSERT INTO `wp_postmeta` VALUES("540", "138", "_image_for_completed_project", "field_5a23e56ad103b");
INSERT INTO `wp_postmeta` VALUES("541", "138", "link_to_the_page_our_services", "74");
INSERT INTO `wp_postmeta` VALUES("542", "138", "_link_to_the_page_our_services", "field_5a2591f125fda");
INSERT INTO `wp_postmeta` VALUES("543", "138", "link_to_the_page_latest-projects", "72");
INSERT INTO `wp_postmeta` VALUES("544", "138", "_link_to_the_page_latest-projects", "field_5a25928d15e2b");
INSERT INTO `wp_postmeta` VALUES("545", "138", "link_to_the_page_our_partners", "67");
INSERT INTO `wp_postmeta` VALUES("546", "138", "_link_to_the_page_our_partners", "field_5a2592ac15e2c");

/* INSERT TABLE DATA: wp_posts */
INSERT INTO `wp_posts` VALUES("1", "1", "2017-11-25 21:50:21", "2017-11-25 18:50:21", "Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!", "Привет, мир!", "", "publish", "open", "open", "", "privet-mir", "", "", "2017-11-25 21:50:21", "2017-11-25 18:50:21", "", "0", "http://cr.loc/?p=1", "0", "post", "", "1");
INSERT INTO `wp_posts` VALUES("2", "1", "2017-11-25 21:50:21", "2017-11-25 18:50:21", "Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://cr.loc/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!", "Пример страницы", "", "trash", "closed", "open", "", "sample-page__trashed", "", "", "2017-12-03 15:46:03", "2017-12-03 12:46:03", "", "0", "http://cr.loc/?page_id=2", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("4", "1", "2017-11-25 21:51:13", "2017-11-25 18:51:13", "{\"old_sidebars_widgets_data\":{\"value\":{\"wp_inactive_widgets\":[],\"sidebar-1\":[\"search-2\",\"recent-posts-2\",\"recent-comments-2\",\"archives-2\",\"categories-2\",\"meta-2\"],\"sidebar-2\":[],\"sidebar-3\":[]},\"type\":\"global_variable\",\"user_id\":1,\"date_modified_gmt\":\"2017-11-25 18:51:13\"}}", "", "", "trash", "closed", "closed", "", "d4b20cba-1368-4fe8-aaaa-bf38e1f17657", "", "", "2017-11-25 21:51:13", "2017-11-25 18:51:13", "", "0", "http://cr.loc/2017/11/25/d4b20cba-1368-4fe8-aaaa-bf38e1f17657/", "0", "customize_changeset", "", "0");
INSERT INTO `wp_posts` VALUES("5", "1", "2017-11-25 21:53:14", "2017-11-25 18:53:14", "", "Main page", "", "publish", "closed", "closed", "", "glavnaya", "", "", "2017-12-04 21:30:15", "2017-12-04 18:30:15", "", "0", "http://cr.loc/?page_id=5", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("6", "1", "2017-11-25 21:53:14", "2017-11-25 18:53:14", "", "Главная", "", "inherit", "closed", "closed", "", "5-revision-v1", "", "", "2017-11-25 21:53:14", "2017-11-25 18:53:14", "", "5", "http://cr.loc/2017/11/25/5-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("8", "1", "2017-11-29 11:36:10", "2017-11-29 08:36:10", "<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\ncreative \"[your-subject]\"\n[your-name] <wordpress@cr.loc>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on creative (http://cr.loc)\nmark.aborchie@gmail.com\nReply-To: [your-email]\n\n0\n0\n\ncreative \"[your-subject]\"\ncreative <wordpress@cr.loc>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on creative (http://cr.loc)\n[your-email]\nReply-To: mark.aborchie@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.", "Contact form 1", "", "publish", "closed", "closed", "", "contact-form-1", "", "", "2017-11-29 11:36:10", "2017-11-29 08:36:10", "", "0", "http://cr.loc/?post_type=wpcf7_contact_form&p=8", "0", "wpcf7_contact_form", "", "0");
INSERT INTO `wp_posts` VALUES("9", "1", "2017-11-29 11:36:24", "2017-11-29 08:36:24", "mark.aborchie@gmail.com\nmain-admin", "mark.aborchie@gmail.com", "", "publish", "closed", "closed", "", "mark-aborchie-gmail-com", "", "", "2017-11-29 11:36:24", "2017-11-29 08:36:24", "", "0", "http://cr.loc/2017/11/29/mark-aborchie-gmail-com/", "0", "flamingo_contact", "", "0");
INSERT INTO `wp_posts` VALUES("10", "1", "2017-11-29 11:36:24", "2017-11-29 08:36:24", "wapuu@wordpress.example\nАвтор комментария", "wapuu@wordpress.example", "", "publish", "closed", "closed", "", "wapuu-wordpress-example", "", "", "2017-11-29 11:36:24", "2017-11-29 08:36:24", "", "0", "http://cr.loc/2017/11/29/wapuu-wordpress-example/", "0", "flamingo_contact", "", "0");
INSERT INTO `wp_posts` VALUES("11", "1", "2017-11-29 11:43:40", "2017-11-29 08:43:40", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"footer-setting\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}", "Настройка подвала сайта", "nastrojka-podvala-sajta", "publish", "closed", "closed", "", "group_5a1e732625b8c", "", "", "2017-11-29 12:30:22", "2017-11-29 09:30:22", "", "0", "http://cr.loc/?post_type=acf-field-group&#038;p=11", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("12", "1", "2017-11-29 11:46:44", "2017-11-29 08:46:44", "a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Фон для подвала (контактной формы)", "back_footer", "publish", "closed", "closed", "", "field_5a1e73412c473", "", "", "2017-11-29 11:46:44", "2017-11-29 08:46:44", "", "11", "http://cr.loc/?post_type=acf-field&p=12", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("13", "1", "2017-11-29 11:46:44", "2017-11-29 08:46:44", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Заголовок подвала", "heading_footer", "publish", "closed", "closed", "", "field_5a1e73ba2c474", "", "", "2017-11-29 11:46:44", "2017-11-29 08:46:44", "", "11", "http://cr.loc/?post_type=acf-field&p=13", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("14", "1", "2017-11-29 11:55:13", "2017-11-29 08:55:13", "", "living-room-flooring-tiсмсle-stone-look-fosil-ng-kutahya-thumb-1600xauto-56248-living-room-tile-ideas-36", "", "inherit", "open", "closed", "", "living-room-flooring-tismsle-stone-look-fosil-ng-kutahya-thumb-1600xauto-56248-living-room-tile-ideas-36", "", "", "2017-11-29 11:55:21", "2017-11-29 08:55:21", "", "0", "http://cr.loc/wp-content/uploads/2017/11/living-room-flooring-tismsle-stone-look-fosil-ng-kutahya-thumb-1600xauto-56248-living-room-tile-ideas-36.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("15", "1", "2017-11-29 12:30:21", "2017-11-29 09:30:21", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Телефон (первый)", "tel-first_footer", "publish", "closed", "closed", "", "field_5a1e7d60dbc25", "", "", "2017-11-29 12:30:21", "2017-11-29 09:30:21", "", "11", "http://cr.loc/?post_type=acf-field&p=15", "2", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("16", "1", "2017-11-29 12:30:22", "2017-11-29 09:30:22", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Телефон (второй)", "tel-second_footer", "publish", "closed", "closed", "", "field_5a1e7daddbc26", "", "", "2017-11-29 12:30:22", "2017-11-29 09:30:22", "", "11", "http://cr.loc/?post_type=acf-field&p=16", "3", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("17", "1", "2017-11-29 12:30:22", "2017-11-29 09:30:22", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Местоположение", "location_footer", "publish", "closed", "closed", "", "field_5a1e7dd6dbc27", "", "", "2017-11-29 12:30:22", "2017-11-29 09:30:22", "", "11", "http://cr.loc/?post_type=acf-field&p=17", "4", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("18", "1", "2017-11-29 12:30:22", "2017-11-29 09:30:22", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "E-mail", "email_footer", "publish", "closed", "closed", "", "field_5a1e7df2dbc28", "", "", "2017-11-29 12:30:22", "2017-11-29 09:30:22", "", "11", "http://cr.loc/?post_type=acf-field&p=18", "5", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("19", "1", "2017-11-29 12:36:45", "2017-11-29 09:36:45", "<div class=\"row footer-form justify-content-md-end\">\r\n<div class=\"col-4\">[text* Name class:main-footer-form placeholder \"Your Name\"]</div>\r\n\r\n<div class=\"col-4\">[email* Email class:main-footer-form placeholder \"Your Email\"]</div>\r\n\r\n<div class=\"col-4\">[select* Subject class:main-footer-form include_blank \"Subject-1\" \"Subject-2\"]</div>\r\n\r\n<div class=\"col-12\">[textarea* Textarea class:main-footer-form-textarea placeholder \"Your Message\"]</div>\r\n\r\n<div class=\"col-3\">[submit \"Send Request\"]</div>\r\n</div>\n1\ncreative \"[your-subject]\"\n[your-name] <wordpress@cr.loc>\nmark.aborchie@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on creative (http://cr.loc)\n\n\n\n\n\ncreative \"[your-subject]\"\ncreative <wordpress@cr.loc>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on creative (http://cr.loc)\nReply-To: mark.aborchie@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.", "Main contact-form", "", "publish", "closed", "closed", "", "untitled", "", "", "2017-11-29 18:20:33", "2017-11-29 15:20:33", "", "0", "http://cr.loc/?post_type=wpcf7_contact_form&#038;p=19", "0", "wpcf7_contact_form", "", "0");
INSERT INTO `wp_posts` VALUES("20", "1", "2017-11-30 18:56:24", "2017-11-30 15:56:24", "{\"show_on_front\":{\"value\":\"page\",\"type\":\"option\",\"user_id\":1,\"date_modified_gmt\":\"2017-11-30 15:56:24\"},\"page_on_front\":{\"value\":\"5\",\"type\":\"option\",\"user_id\":1,\"date_modified_gmt\":\"2017-11-30 15:56:24\"}}", "", "", "trash", "closed", "closed", "", "5114b774-bdae-46d1-804f-4b73bb3426e3", "", "", "2017-11-30 18:56:24", "2017-11-30 15:56:24", "", "0", "http://cr.loc/2017/11/30/5114b774-bdae-46d1-804f-4b73bb3426e3/", "0", "customize_changeset", "", "0");
INSERT INTO `wp_posts` VALUES("23", "1", "2017-11-30 19:05:21", "2017-11-30 16:05:21", "{\"main-theme::custom_logo\":{\"value\":22,\"type\":\"theme_mod\",\"user_id\":1,\"date_modified_gmt\":\"2017-11-30 16:05:21\"}}", "", "", "trash", "closed", "closed", "", "8e928e61-c8b6-4334-8c14-d25cd5dbb455", "", "", "2017-11-30 19:05:21", "2017-11-30 16:05:21", "", "0", "http://cr.loc/2017/11/30/8e928e61-c8b6-4334-8c14-d25cd5dbb455/", "0", "customize_changeset", "", "0");
INSERT INTO `wp_posts` VALUES("24", "1", "2017-11-30 19:32:24", "2017-11-30 16:32:24", "{\"nav_menu[-2001235592]\":{\"value\":{\"name\":\"main-menu\",\"description\":\"\",\"parent\":0,\"auto_add\":false},\"type\":\"nav_menu\",\"user_id\":1,\"date_modified_gmt\":\"2017-11-30 16:31:34\"},\"nav_menu_item[-2044478740]\":{\"value\":{\"object_id\":0,\"object\":\"custom\",\"menu_item_parent\":0,\"position\":1,\"type\":\"custom\",\"title\":\"Home\",\"url\":\"#\",\"target\":\"\",\"attr_title\":\"\",\"description\":\"\",\"classes\":\"\",\"xfn\":\"\",\"status\":\"publish\",\"original_title\":\"Home\",\"nav_menu_term_id\":-2001235592,\"_invalid\":false,\"type_label\":\"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"},\"type\":\"nav_menu_item\",\"user_id\":1,\"date_modified_gmt\":\"2017-11-30 16:31:34\"},\"nav_menu_item[-1922125736]\":{\"value\":{\"object_id\":0,\"object\":\"custom\",\"menu_item_parent\":0,\"position\":2,\"type\":\"custom\",\"title\":\"Company\",\"url\":\"#\",\"target\":\"\",\"attr_title\":\"\",\"description\":\"\",\"classes\":\"\",\"xfn\":\"\",\"status\":\"publish\",\"original_title\":\"Company\",\"nav_menu_term_id\":-2001235592,\"_invalid\":false,\"type_label\":\"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"},\"type\":\"nav_menu_item\",\"user_id\":1,\"date_modified_gmt\":\"2017-11-30 16:31:34\"},\"nav_menu_item[-1369700663]\":{\"value\":{\"object_id\":0,\"object\":\"custom\",\"menu_item_parent\":0,\"position\":3,\"type\":\"custom\",\"title\":\"Servises\",\"url\":\"#\",\"target\":\"\",\"attr_title\":\"\",\"description\":\"\",\"classes\":\"\",\"xfn\":\"\",\"status\":\"publish\",\"original_title\":\"Servises\",\"nav_menu_term_id\":-2001235592,\"_invalid\":false,\"type_label\":\"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"},\"type\":\"nav_menu_item\",\"user_id\":1,\"date_modified_gmt\":\"2017-11-30 16:32:24\"},\"nav_menu_item[-54403655]\":{\"value\":{\"object_id\":0,\"object\":\"custom\",\"menu_item_parent\":0,\"position\":4,\"type\":\"custom\",\"title\":\"Materials\",\"url\":\"#\",\"target\":\"\",\"attr_title\":\"\",\"description\":\"\",\"classes\":\"\",\"xfn\":\"\",\"status\":\"publish\",\"original_title\":\"Materials\",\"nav_menu_term_id\":-2001235592,\"_invalid\":false,\"type_label\":\"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"},\"type\":\"nav_menu_item\",\"user_id\":1,\"date_modified_gmt\":\"2017-11-30 16:32:24\"},\"nav_menu_item[-539253029]\":{\"value\":{\"object_id\":0,\"object\":\"custom\",\"menu_item_parent\":0,\"position\":5,\"type\":\"custom\",\"title\":\"Project\",\"url\":\"#\",\"target\":\"\",\"attr_title\":\"\",\"description\":\"\",\"classes\":\"\",\"xfn\":\"\",\"status\":\"publish\",\"original_title\":\"Project\",\"nav_menu_term_id\":-2001235592,\"_invalid\":false,\"type_label\":\"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"},\"type\":\"nav_menu_item\",\"user_id\":1,\"date_modified_gmt\":\"2017-11-30 16:32:24\"},\"nav_menu_item[-1902724303]\":{\"value\":{\"object_id\":0,\"object\":\"custom\",\"menu_item_parent\":0,\"position\":6,\"type\":\"custom\",\"title\":\"Contact\",\"url\":\"#\",\"target\":\"\",\"attr_title\":\"\",\"description\":\"\",\"classes\":\"\",\"xfn\":\"\",\"status\":\"publish\",\"original_title\":\"Contact\",\"nav_menu_term_id\":-2001235592,\"_invalid\":false,\"type_label\":\"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"},\"type\":\"nav_menu_item\",\"user_id\":1,\"date_modified_gmt\":\"2017-11-30 16:32:24\"}}", "", "", "trash", "closed", "closed", "", "80b3a6a4-51a6-4f99-b244-63eb13785e6c", "", "", "2017-11-30 19:32:24", "2017-11-30 16:32:24", "", "0", "http://cr.loc/?p=24", "0", "customize_changeset", "", "0");
INSERT INTO `wp_posts` VALUES("33", "1", "2017-11-30 20:04:27", "2017-11-30 17:04:27", "", "logo", "", "inherit", "open", "closed", "", "logo", "", "", "2017-12-01 12:29:17", "2017-12-01 09:29:17", "", "0", "http://cr.loc/wp-content/uploads/2017/11/logo.png", "0", "attachment", "image/png", "0");
INSERT INTO `wp_posts` VALUES("34", "1", "2017-11-30 20:04:39", "2017-11-30 17:04:39", "http://cr.loc/wp-content/uploads/2017/11/cropped-logo.png", "cropped-logo.png", "", "inherit", "open", "closed", "", "cropped-logo-png", "", "", "2017-11-30 20:04:39", "2017-11-30 17:04:39", "", "0", "http://cr.loc/wp-content/uploads/2017/11/cropped-logo.png", "0", "attachment", "image/png", "0");
INSERT INTO `wp_posts` VALUES("35", "1", "2017-11-30 20:04:43", "2017-11-30 17:04:43", "{\"main-theme::custom_logo\":{\"value\":34,\"type\":\"theme_mod\",\"user_id\":1,\"date_modified_gmt\":\"2017-11-30 17:04:43\"}}", "", "", "trash", "closed", "closed", "", "4a43c35c-261c-462a-b4d9-852dd93b1959", "", "", "2017-11-30 20:04:43", "2017-11-30 17:04:43", "", "0", "http://cr.loc/2017/11/30/4a43c35c-261c-462a-b4d9-852dd93b1959/", "0", "customize_changeset", "", "0");
INSERT INTO `wp_posts` VALUES("36", "1", "2017-12-01 12:27:07", "2017-12-01 09:27:07", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"header-setting\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}", "Настройка шапки сайта", "nastrojka-shapki-sajta", "publish", "closed", "closed", "", "group_5a21206beaec1", "", "", "2017-12-03 21:36:03", "2017-12-03 18:36:03", "", "0", "http://cr.loc/?post_type=acf-field-group&#038;p=36", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("43", "1", "2017-12-01 12:29:03", "2017-12-01 09:29:03", "a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Main-logo", "main-logo-header", "publish", "closed", "closed", "", "field_5a21209733ae0", "", "", "2017-12-01 12:29:03", "2017-12-01 09:29:03", "", "36", "http://cr.loc/?post_type=acf-field&p=43", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("44", "1", "2017-12-01 12:29:04", "2017-12-01 09:29:04", "a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Sub-main-logo", "sub-main-logo-header", "publish", "closed", "closed", "", "field_5a2120c633ae1", "", "", "2017-12-01 12:29:04", "2017-12-01 09:29:04", "", "36", "http://cr.loc/?post_type=acf-field&p=44", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("45", "1", "2017-12-01 12:29:27", "2017-12-01 09:29:27", "", "logo-mini", "", "inherit", "open", "closed", "", "logo-mini", "", "", "2017-12-01 12:29:34", "2017-12-01 09:29:34", "", "0", "http://cr.loc/wp-content/uploads/2017/12/logo-mini.png", "0", "attachment", "image/png", "0");
INSERT INTO `wp_posts` VALUES("46", "1", "2017-12-02 17:27:00", "2017-12-02 14:27:00", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"main-page.php\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}", "Верхний блок на главной", "verhnij-blok-na-glavnoj", "publish", "closed", "closed", "", "group_5a22b7c628f9c", "", "", "2017-12-04 21:20:24", "2017-12-04 18:20:24", "", "0", "http://cr.loc/?post_type=acf-field-group&#038;p=46", "1", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("47", "1", "2017-12-02 17:27:00", "2017-12-02 14:27:00", "a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Основное изображение в верхней части страницы", "main_top_image", "publish", "closed", "closed", "", "field_5a22b7fd490c4", "", "", "2017-12-02 21:53:26", "2017-12-02 18:53:26", "", "46", "http://cr.loc/?post_type=acf-field&#038;p=47", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("48", "1", "2017-12-02 17:30:07", "2017-12-02 14:30:07", "", "Wooden-walls-designed-for-luxury-living-room", "", "inherit", "open", "closed", "", "wooden-walls-designed-for-luxury-living-room", "", "", "2017-12-02 17:32:49", "2017-12-02 14:32:49", "", "5", "http://cr.loc/wp-content/uploads/2017/12/Wooden-walls-designed-for-luxury-living-room.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("49", "1", "2017-12-02 17:30:31", "2017-12-02 14:30:31", "", "Главная", "", "inherit", "closed", "closed", "", "5-revision-v1", "", "", "2017-12-02 17:30:31", "2017-12-02 14:30:31", "", "5", "http://cr.loc/2017/12/02/5-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("50", "1", "2017-12-02 17:32:51", "2017-12-02 14:32:51", "", "Главная", "", "inherit", "closed", "closed", "", "5-revision-v1", "", "", "2017-12-02 17:32:51", "2017-12-02 14:32:51", "", "5", "http://cr.loc/2017/12/02/5-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("51", "1", "2017-12-02 18:07:53", "2017-12-02 15:07:53", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Надпись в верхней части 1 (малая)", "text_in_top_1", "publish", "closed", "closed", "", "field_5a22c1029ea79", "", "", "2017-12-02 21:53:27", "2017-12-02 18:53:27", "", "46", "http://cr.loc/?post_type=acf-field&#038;p=51", "2", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("52", "1", "2017-12-02 18:07:54", "2017-12-02 15:07:54", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Надпись в верхней части 2 (крупная)", "text_in_top_2", "publish", "closed", "closed", "", "field_5a22c13d9ea7a", "", "", "2017-12-02 21:53:27", "2017-12-02 18:53:27", "", "46", "http://cr.loc/?post_type=acf-field&#038;p=52", "3", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("53", "1", "2017-12-02 18:07:54", "2017-12-02 15:07:54", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Надпись в верхней части 3", "text_in_top_3", "publish", "closed", "closed", "", "field_5a22c1619ea7b", "", "", "2017-12-02 21:53:27", "2017-12-02 18:53:27", "", "46", "http://cr.loc/?post_type=acf-field&#038;p=53", "4", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("54", "1", "2017-12-02 18:07:54", "2017-12-02 15:07:54", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Текст на кнопке в верхней части", "text_in_top_button", "publish", "closed", "closed", "", "field_5a22c16c9ea7c", "", "", "2017-12-02 21:53:28", "2017-12-02 18:53:28", "", "46", "http://cr.loc/?post_type=acf-field&#038;p=54", "5", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("55", "1", "2017-12-02 18:09:11", "2017-12-02 15:09:11", "", "Главная", "", "inherit", "closed", "closed", "", "5-revision-v1", "", "", "2017-12-02 18:09:11", "2017-12-02 15:09:11", "", "5", "http://cr.loc/2017/12/02/5-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("56", "1", "2017-12-02 21:53:26", "2017-12-02 18:53:26", "a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;s:17:\"conditional_logic\";i:0;}", "Images block", "images_block", "publish", "closed", "closed", "", "field_5a22f32a59646", "", "", "2017-12-02 21:53:26", "2017-12-02 18:53:26", "", "46", "http://cr.loc/?post_type=acf-field&p=56", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("57", "1", "2017-12-02 21:53:28", "2017-12-02 18:53:28", "a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;s:17:\"conditional_logic\";i:0;}", "Comlete project block", "comlete_project_block", "publish", "closed", "closed", "", "field_5a22f3a859647", "", "", "2017-12-02 21:53:28", "2017-12-02 18:53:28", "", "46", "http://cr.loc/?post_type=acf-field&p=57", "6", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("58", "1", "2017-12-02 21:53:28", "2017-12-02 18:53:28", "a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "How much did you complete project?", "how_much_complete_project", "publish", "closed", "closed", "", "field_5a22f3f659648", "", "", "2017-12-03 14:53:01", "2017-12-03 11:53:01", "", "46", "http://cr.loc/?post_type=acf-field&#038;p=58", "8", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("59", "1", "2017-12-03 13:30:04", "2017-12-03 10:30:04", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Text description completed projects", "description_completed_projects", "publish", "closed", "closed", "", "field_5a23d049b6f13", "", "", "2017-12-03 14:53:02", "2017-12-03 11:53:02", "", "46", "http://cr.loc/?post_type=acf-field&#038;p=59", "9", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("60", "1", "2017-12-03 13:30:04", "2017-12-03 10:30:04", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Text description for button", "text_description_for_button_in_top_section", "publish", "closed", "closed", "", "field_5a23d1aeb6f14", "", "", "2017-12-03 14:53:02", "2017-12-03 11:53:02", "", "46", "http://cr.loc/?post_type=acf-field&#038;p=60", "10", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("61", "1", "2017-12-03 13:30:04", "2017-12-03 10:30:04", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Text for button", "text_for_button_in_top_section", "publish", "closed", "closed", "", "field_5a23d1d6b6f15", "", "", "2017-12-03 14:53:02", "2017-12-03 11:53:02", "", "46", "http://cr.loc/?post_type=acf-field&#038;p=61", "11", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("62", "1", "2017-12-03 13:31:20", "2017-12-03 10:31:20", "", "Главная", "", "inherit", "closed", "closed", "", "5-revision-v1", "", "", "2017-12-03 13:31:20", "2017-12-03 10:31:20", "", "5", "http://cr.loc/2017/12/03/5-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("63", "1", "2017-12-03 14:53:01", "2017-12-03 11:53:01", "a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Image for completed project", "image_for_completed_project", "publish", "closed", "closed", "", "field_5a23e56ad103b", "", "", "2017-12-03 14:53:01", "2017-12-03 11:53:01", "", "46", "http://cr.loc/?post_type=acf-field&p=63", "7", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("64", "1", "2017-12-03 14:53:25", "2017-12-03 11:53:25", "", "2017-12-03_14-51-17", "", "inherit", "open", "closed", "", "2017-12-03_14-51-17", "", "", "2017-12-03 14:53:29", "2017-12-03 11:53:29", "", "5", "http://cr.loc/wp-content/uploads/2017/12/2017-12-03_14-51-17.png", "0", "attachment", "image/png", "0");
INSERT INTO `wp_posts` VALUES("65", "1", "2017-12-03 14:53:33", "2017-12-03 11:53:33", "", "Главная", "", "inherit", "closed", "closed", "", "5-revision-v1", "", "", "2017-12-03 14:53:33", "2017-12-03 11:53:33", "", "5", "http://cr.loc/2017/12/03/5-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("66", "1", "2017-12-03 15:46:03", "2017-12-03 12:46:03", "Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://cr.loc/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!", "Пример страницы", "", "inherit", "closed", "closed", "", "2-revision-v1", "", "", "2017-12-03 15:46:03", "2017-12-03 12:46:03", "", "2", "http://cr.loc/2017/12/03/2-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("67", "1", "2017-12-03 15:47:06", "2017-12-03 12:47:06", "", "Partners", "", "publish", "closed", "closed", "", "partners", "", "", "2017-12-03 23:34:33", "2017-12-03 20:34:33", "", "0", "http://cr.loc/?page_id=67", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("68", "1", "2017-12-03 15:47:06", "2017-12-03 12:47:06", "", "Partners", "", "inherit", "closed", "closed", "", "67-revision-v1", "", "", "2017-12-03 15:47:06", "2017-12-03 12:47:06", "", "67", "http://cr.loc/2017/12/03/67-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("69", "1", "2017-12-03 15:53:45", "2017-12-03 12:53:45", "", "Main page", "", "inherit", "closed", "closed", "", "5-revision-v1", "", "", "2017-12-03 15:53:45", "2017-12-03 12:53:45", "", "5", "http://cr.loc/2017/12/03/5-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("70", "1", "2017-12-03 15:54:29", "2017-12-03 12:54:29", "", "Materials catalog", "", "publish", "closed", "closed", "", "materials-catalog", "", "", "2017-12-03 15:54:29", "2017-12-03 12:54:29", "", "0", "http://cr.loc/?page_id=70", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("71", "1", "2017-12-03 15:54:29", "2017-12-03 12:54:29", "", "Materials catalog", "", "inherit", "closed", "closed", "", "70-revision-v1", "", "", "2017-12-03 15:54:29", "2017-12-03 12:54:29", "", "70", "http://cr.loc/2017/12/03/70-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("72", "1", "2017-12-03 15:55:00", "2017-12-03 12:55:00", "", "Projects", "", "publish", "closed", "closed", "", "projects", "", "", "2017-12-03 15:55:00", "2017-12-03 12:55:00", "", "0", "http://cr.loc/?page_id=72", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("73", "1", "2017-12-03 15:55:00", "2017-12-03 12:55:00", "", "Projects", "", "inherit", "closed", "closed", "", "72-revision-v1", "", "", "2017-12-03 15:55:00", "2017-12-03 12:55:00", "", "72", "http://cr.loc/2017/12/03/72-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("74", "1", "2017-12-03 15:55:48", "2017-12-03 12:55:48", "", "Services", "", "publish", "closed", "closed", "", "services", "", "", "2017-12-04 00:16:35", "2017-12-03 21:16:35", "", "0", "http://cr.loc/?page_id=74", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("75", "1", "2017-12-03 15:55:48", "2017-12-03 12:55:48", "", "Services", "", "inherit", "closed", "closed", "", "74-revision-v1", "", "", "2017-12-03 15:55:48", "2017-12-03 12:55:48", "", "74", "http://cr.loc/2017/12/03/74-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("76", "1", "2017-12-03 15:58:12", "2017-12-03 12:58:12", " ", "", "", "publish", "closed", "closed", "", "76", "", "", "2017-12-03 22:29:49", "2017-12-03 19:29:49", "", "0", "http://cr.loc/?p=76", "3", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("77", "1", "2017-12-03 15:58:12", "2017-12-03 12:58:12", "", "Project", "", "publish", "closed", "closed", "", "project-2", "", "", "2017-12-03 22:29:49", "2017-12-03 19:29:49", "", "0", "http://cr.loc/?p=77", "5", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("78", "1", "2017-12-03 15:58:12", "2017-12-03 12:58:12", "", "Materials", "", "publish", "closed", "closed", "", "materials-2", "", "", "2017-12-03 22:29:49", "2017-12-03 19:29:49", "", "0", "http://cr.loc/?p=78", "4", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("79", "1", "2017-12-03 15:56:49", "0000-00-00 00:00:00", " ", "", "", "draft", "closed", "closed", "", "", "", "", "2017-12-03 15:56:49", "0000-00-00 00:00:00", "", "0", "http://cr.loc/?p=79", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("81", "1", "2017-12-03 21:36:03", "2017-12-03 18:36:03", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Text for touch to contact", "text_for_touch_to_contact", "publish", "closed", "closed", "", "field_5a2443bc1f340", "", "", "2017-12-03 21:36:03", "2017-12-03 18:36:03", "", "36", "http://cr.loc/?post_type=acf-field&p=81", "2", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("82", "1", "2017-12-03 23:02:09", "2017-12-03 20:02:09", "a:7:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}i:1;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:1:\"5\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}", "Text of the page", "text-of-the-page", "publish", "closed", "closed", "", "group_5a24490dea1fc", "", "", "2017-12-04 21:20:00", "2017-12-04 18:20:00", "", "0", "http://cr.loc/?post_type=acf-field-group&#038;p=82", "0", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("83", "1", "2017-12-03 22:03:59", "2017-12-03 19:03:59", "", "Installing Hardwood Floor", "A worker installing hardwood floor in an American upscale home.A worker installing hardwood floor in an American upscale home.", "inherit", "open", "closed", "", "installing-hardwood-floor", "", "", "2017-12-03 22:03:59", "2017-12-03 19:03:59", "", "67", "http://cr.loc/wp-content/uploads/2017/12/e6b8924906d74cdfbbc1ac8f21ec4e50.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("84", "1", "2017-12-03 22:04:43", "2017-12-03 19:04:43", "", "ukladka-mramornoj-plitki-2", "", "inherit", "open", "closed", "", "ukladka-mramornoj-plitki-2", "", "", "2017-12-03 22:04:43", "2017-12-03 19:04:43", "", "74", "http://cr.loc/wp-content/uploads/2017/12/ukladka-mramornoj-plitki-2.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("85", "1", "2017-12-03 22:04:45", "2017-12-03 19:04:45", "", "ukladka-plitki-elochkoi2", "", "inherit", "open", "closed", "", "ukladka-plitki-elochkoi2", "", "", "2017-12-03 22:04:45", "2017-12-03 19:04:45", "", "74", "http://cr.loc/wp-content/uploads/2017/12/ukladka-plitki-elochkoi2.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("86", "1", "2017-12-03 22:24:50", "2017-12-03 19:24:50", "", "Company", "", "publish", "closed", "closed", "", "company", "", "", "2017-12-03 22:24:50", "2017-12-03 19:24:50", "", "0", "http://cr.loc/?page_id=86", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("87", "1", "2017-12-03 22:24:50", "2017-12-03 19:24:50", "", "Company", "", "inherit", "closed", "closed", "", "86-revision-v1", "", "", "2017-12-03 22:24:50", "2017-12-03 19:24:50", "", "86", "http://cr.loc/2017/12/03/86-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("88", "1", "2017-12-03 22:25:15", "2017-12-03 19:25:15", "", "Materials", "", "publish", "closed", "closed", "", "materials", "", "", "2017-12-03 22:25:15", "2017-12-03 19:25:15", "", "0", "http://cr.loc/?page_id=88", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("89", "1", "2017-12-03 22:25:15", "2017-12-03 19:25:15", "", "Materials", "", "inherit", "closed", "closed", "", "88-revision-v1", "", "", "2017-12-03 22:25:15", "2017-12-03 19:25:15", "", "88", "http://cr.loc/2017/12/03/88-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("90", "1", "2017-12-03 22:25:40", "2017-12-03 19:25:40", "", "Contact", "", "publish", "closed", "closed", "", "contact", "", "", "2017-12-03 22:25:40", "2017-12-03 19:25:40", "", "0", "http://cr.loc/?page_id=90", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("91", "1", "2017-12-03 22:25:40", "2017-12-03 19:25:40", "", "Contact", "", "inherit", "closed", "closed", "", "90-revision-v1", "", "", "2017-12-03 22:25:40", "2017-12-03 19:25:40", "", "90", "http://cr.loc/2017/12/03/90-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("92", "1", "2017-12-03 22:26:02", "2017-12-03 19:26:02", "", "About us", "", "publish", "closed", "closed", "", "about-us", "", "", "2017-12-03 22:26:02", "2017-12-03 19:26:02", "", "0", "http://cr.loc/?page_id=92", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("93", "1", "2017-12-03 22:26:02", "2017-12-03 19:26:02", "", "About us", "", "inherit", "closed", "closed", "", "92-revision-v1", "", "", "2017-12-03 22:26:02", "2017-12-03 19:26:02", "", "92", "http://cr.loc/2017/12/03/92-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("94", "1", "2017-12-03 22:26:22", "2017-12-03 19:26:22", "", "History", "", "publish", "closed", "closed", "", "history", "", "", "2017-12-03 22:26:22", "2017-12-03 19:26:22", "", "0", "http://cr.loc/?page_id=94", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("95", "1", "2017-12-03 22:26:22", "2017-12-03 19:26:22", "", "History", "", "inherit", "closed", "closed", "", "94-revision-v1", "", "", "2017-12-03 22:26:22", "2017-12-03 19:26:22", "", "94", "http://cr.loc/2017/12/03/94-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("96", "1", "2017-12-03 22:26:46", "2017-12-03 19:26:46", "", "How we work", "", "publish", "closed", "closed", "", "how-we-work", "", "", "2017-12-03 22:26:46", "2017-12-03 19:26:46", "", "0", "http://cr.loc/?page_id=96", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("97", "1", "2017-12-03 22:26:46", "2017-12-03 19:26:46", "", "How we work", "", "inherit", "closed", "closed", "", "96-revision-v1", "", "", "2017-12-03 22:26:46", "2017-12-03 19:26:46", "", "96", "http://cr.loc/2017/12/03/96-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("98", "1", "2017-12-03 22:27:11", "2017-12-03 19:27:11", "", "Pricing", "", "publish", "closed", "closed", "", "pricing", "", "", "2017-12-03 22:27:11", "2017-12-03 19:27:11", "", "0", "http://cr.loc/?page_id=98", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("99", "1", "2017-12-03 22:27:11", "2017-12-03 19:27:11", "", "Pricing", "", "inherit", "closed", "closed", "", "98-revision-v1", "", "", "2017-12-03 22:27:11", "2017-12-03 19:27:11", "", "98", "http://cr.loc/2017/12/03/98-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("100", "1", "2017-12-03 22:28:09", "2017-12-03 19:28:09", " ", "", "", "publish", "closed", "closed", "", "100", "", "", "2017-12-03 22:28:20", "2017-12-03 19:28:20", "", "0", "http://cr.loc/?p=100", "4", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("101", "1", "2017-12-03 22:28:09", "2017-12-03 19:28:09", " ", "", "", "publish", "closed", "closed", "", "101", "", "", "2017-12-03 22:28:20", "2017-12-03 19:28:20", "", "0", "http://cr.loc/?p=101", "3", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("102", "1", "2017-12-03 22:28:09", "2017-12-03 19:28:09", " ", "", "", "publish", "closed", "closed", "", "102", "", "", "2017-12-03 22:28:20", "2017-12-03 19:28:20", "", "0", "http://cr.loc/?p=102", "2", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("103", "1", "2017-12-03 22:28:09", "2017-12-03 19:28:09", " ", "", "", "publish", "closed", "closed", "", "103", "", "", "2017-12-03 22:28:19", "2017-12-03 19:28:19", "", "0", "http://cr.loc/?p=103", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("104", "1", "2017-12-03 22:28:10", "2017-12-03 19:28:10", " ", "", "", "publish", "closed", "closed", "", "104", "", "", "2017-12-03 22:28:20", "2017-12-03 19:28:20", "", "0", "http://cr.loc/?p=104", "5", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("105", "1", "2017-12-03 22:29:49", "2017-12-03 19:29:49", " ", "", "", "publish", "closed", "closed", "", "105", "", "", "2017-12-03 22:29:49", "2017-12-03 19:29:49", "", "0", "http://cr.loc/?p=105", "6", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("106", "1", "2017-12-03 22:29:48", "2017-12-03 19:29:48", " ", "", "", "publish", "closed", "closed", "", "106", "", "", "2017-12-03 22:29:48", "2017-12-03 19:29:48", "", "0", "http://cr.loc/?p=106", "2", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("107", "1", "2017-12-03 22:29:48", "2017-12-03 19:29:48", "", "Home", "", "publish", "closed", "closed", "", "home-2", "", "", "2017-12-03 22:29:48", "2017-12-03 19:29:48", "", "0", "http://cr.loc/?p=107", "1", "nav_menu_item", "", "0");
INSERT INTO `wp_posts` VALUES("108", "1", "2017-12-03 23:02:10", "2017-12-03 20:02:10", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Heading for the page", "heading_for_the_page", "publish", "closed", "closed", "", "field_5a2457d55bdd7", "", "", "2017-12-03 23:02:10", "2017-12-03 20:02:10", "", "82", "http://cr.loc/?post_type=acf-field&p=108", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("109", "1", "2017-12-03 23:02:10", "2017-12-03 20:02:10", "a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:7:\"wpautop\";s:17:\"conditional_logic\";i:0;}", "Description of the page", "description_of_the_page", "publish", "closed", "closed", "", "field_5a2458165bdd8", "", "", "2017-12-03 23:02:10", "2017-12-03 20:02:10", "", "82", "http://cr.loc/?post_type=acf-field&p=109", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("110", "1", "2017-12-03 23:03:32", "2017-12-03 20:03:32", "", "Partners", "", "inherit", "closed", "closed", "", "67-revision-v1", "", "", "2017-12-03 23:03:32", "2017-12-03 20:03:32", "", "67", "http://cr.loc/2017/12/03/67-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("111", "1", "2017-12-03 23:29:14", "2017-12-03 20:29:14", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"67\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}", "\"PARTNERS\" content", "partners-content", "publish", "closed", "closed", "", "group_5a245dcd3f1d8", "", "", "2017-12-03 23:29:53", "2017-12-03 20:29:53", "", "0", "http://cr.loc/?post_type=acf-field-group&#038;p=111", "3", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("112", "1", "2017-12-03 23:29:14", "2017-12-03 20:29:14", "a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Partners", "partners_repeater", "publish", "closed", "closed", "", "field_5a245e00a4be3", "", "", "2017-12-03 23:29:14", "2017-12-03 20:29:14", "", "111", "http://cr.loc/?post_type=acf-field&p=112", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("113", "1", "2017-12-03 23:29:15", "2017-12-03 20:29:15", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Name", "name", "publish", "closed", "closed", "", "field_5a245e30a4be4", "", "", "2017-12-03 23:29:15", "2017-12-03 20:29:15", "", "112", "http://cr.loc/?post_type=acf-field&p=113", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("114", "1", "2017-12-03 23:29:15", "2017-12-03 20:29:15", "a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Image", "image", "publish", "closed", "closed", "", "field_5a245e5fa4be5", "", "", "2017-12-03 23:29:15", "2017-12-03 20:29:15", "", "112", "http://cr.loc/?post_type=acf-field&p=114", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("115", "1", "2017-12-03 23:29:15", "2017-12-03 20:29:15", "a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";i:0;}", "Description", "description", "publish", "closed", "closed", "", "field_5a245e77a4be6", "", "", "2017-12-03 23:29:15", "2017-12-03 20:29:15", "", "112", "http://cr.loc/?post_type=acf-field&p=115", "2", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("116", "1", "2017-12-03 23:33:46", "2017-12-03 20:33:46", "", "AO_Logo_V_4C_Tag copy", "", "inherit", "open", "closed", "", "ao_logo_v_4c_tag-copy", "", "", "2017-12-03 23:34:21", "2017-12-03 20:34:21", "", "67", "http://cr.loc/wp-content/uploads/2017/12/AO_Logo_V_4C_Tag-copy.png", "0", "attachment", "image/png", "0");
INSERT INTO `wp_posts` VALUES("117", "1", "2017-12-03 23:33:49", "2017-12-03 20:33:49", "", "logo_address", "", "inherit", "open", "closed", "", "logo_address", "", "", "2017-12-03 23:34:29", "2017-12-03 20:34:29", "", "67", "http://cr.loc/wp-content/uploads/2017/12/logo_address.png", "0", "attachment", "image/png", "0");
INSERT INTO `wp_posts` VALUES("118", "1", "2017-12-03 23:33:51", "2017-12-03 20:33:51", "", "Nuvelle_Logo_TM", "", "inherit", "open", "closed", "", "nuvelle_logo_tm", "", "", "2017-12-03 23:34:14", "2017-12-03 20:34:14", "", "67", "http://cr.loc/wp-content/uploads/2017/12/Nuvelle_Logo_TM.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("119", "1", "2017-12-03 23:33:52", "2017-12-03 20:33:52", "", "quick-step", "", "inherit", "open", "closed", "", "quick-step", "", "", "2017-12-03 23:34:07", "2017-12-03 20:34:07", "", "67", "http://cr.loc/wp-content/uploads/2017/12/quick-step.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("120", "1", "2017-12-03 23:34:33", "2017-12-03 20:34:33", "", "Partners", "", "inherit", "closed", "closed", "", "67-revision-v1", "", "", "2017-12-03 23:34:33", "2017-12-03 20:34:33", "", "67", "http://cr.loc/2017/12/03/67-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("121", "1", "2017-12-04 00:11:31", "2017-12-03 21:11:31", "", "Flooring Installation", "", "publish", "closed", "closed", "", "flooring-installation", "", "", "2017-12-04 00:11:31", "2017-12-03 21:11:31", "", "74", "http://cr.loc/?page_id=121", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("122", "1", "2017-12-04 00:11:21", "2017-12-03 21:11:21", "", "Dark-Hardwood-Floor-Luxury-Nice-Interior-Design-Designer-Architecture", "", "inherit", "open", "closed", "", "dark-hardwood-floor-luxury-nice-interior-design-designer-architecture", "", "", "2017-12-04 00:11:21", "2017-12-03 21:11:21", "", "121", "http://cr.loc/wp-content/uploads/2017/12/Dark-Hardwood-Floor-Luxury-Nice-Interior-Design-Designer-Architecture.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("123", "1", "2017-12-04 00:11:31", "2017-12-03 21:11:31", "", "Flooring Installation", "", "inherit", "closed", "closed", "", "121-revision-v1", "", "", "2017-12-04 00:11:31", "2017-12-03 21:11:31", "", "121", "http://cr.loc/2017/12/04/121-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("124", "1", "2017-12-04 00:12:19", "2017-12-03 21:12:19", "", "Kitchen & Bathroom Remodeling", "", "publish", "closed", "closed", "", "kitchen-bathroom-remodeling", "", "", "2017-12-04 00:12:19", "2017-12-03 21:12:19", "", "74", "http://cr.loc/?page_id=124", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("125", "1", "2017-12-04 00:12:09", "2017-12-03 21:12:09", "", "gvp55", "", "inherit", "open", "closed", "", "gvp55", "", "", "2017-12-04 00:12:09", "2017-12-03 21:12:09", "", "124", "http://cr.loc/wp-content/uploads/2017/12/gvp55.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("126", "1", "2017-12-04 00:12:19", "2017-12-03 21:12:19", "", "Kitchen & Bathroom Remodeling", "", "inherit", "closed", "closed", "", "124-revision-v1", "", "", "2017-12-04 00:12:19", "2017-12-03 21:12:19", "", "124", "http://cr.loc/2017/12/04/124-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("127", "1", "2017-12-04 00:13:03", "2017-12-03 21:13:03", "", "Making & Installation Granite Countertops", "", "publish", "closed", "closed", "", "making-installation-granite-countertops", "", "", "2017-12-04 00:13:03", "2017-12-03 21:13:03", "", "74", "http://cr.loc/?page_id=127", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("128", "1", "2017-12-04 00:12:55", "2017-12-03 21:12:55", "", "5780532_large_55527", "", "inherit", "open", "closed", "", "5780532_large_55527", "", "", "2017-12-04 00:12:55", "2017-12-03 21:12:55", "", "127", "http://cr.loc/wp-content/uploads/2017/12/5780532_large_55527.jpeg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("129", "1", "2017-12-04 00:13:03", "2017-12-03 21:13:03", "", "Making & Installation Granite Countertops", "", "inherit", "closed", "closed", "", "127-revision-v1", "", "", "2017-12-04 00:13:03", "2017-12-03 21:13:03", "", "127", "http://cr.loc/2017/12/04/127-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("130", "1", "2017-12-04 00:13:58", "2017-12-03 21:13:58", "", "Installation  Kitchen & Bathroom Cabinets", "", "publish", "closed", "closed", "", "installation-kitchen-bathroom-cabinets", "", "", "2017-12-04 00:13:58", "2017-12-03 21:13:58", "", "74", "http://cr.loc/?page_id=130", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("131", "1", "2017-12-04 00:13:43", "2017-12-03 21:13:43", "", "yorkchocolaterev_small", "VRimg File Description\n\n=Attributes=\nVersion: 1.3\nCompressed: true\nResolution { width: 3400  height: 2267  pixelAspectRatio: 1 }\nRender Region { renderRegion: false  xmin: 0  ymin: 0  width: 3400  height: 2267 }\nRegions Info { regWidth: 32  regHeight: 32  whatsXY: MaxSize }\nCamera Info { transform: matrix  projection: perspective  aperture: 36  fov: 45.0744  targetDistance: 172.913  nearRange: 0  nearClip: 85.59  farClip: 1000  focalLength: 42.952  fNumber: 4 }\nScene { renderTime: 3358015  name: \"yorkchocolate03.max\" }\n\n=Channels=\nAlpha (float3)\nRGB color (float3)\nVRayDiffuseFilter (float3)\nVRayExtraTex_Map #2070303410 (float3)\nVRayExtraTex_VRayDirt (float3)\nVRayGlobalIllumination (float3)\nVRayGlobalIllumination2 (float3)\nVRayLighting (float3)\nVRayRawGlobalIllumination (float3)\nVRayRawLighting (float3)\nVRayRawReflection (float3)\nVRayReflection (float3)\nVRayRefraction (float3)\nVRaySampleRate (float3)\nVRaySpecular (float3)\nVRayWireColor (float3)", "inherit", "open", "closed", "", "yorkchocolaterev_small", "", "", "2017-12-04 00:13:48", "2017-12-03 21:13:48", "", "130", "http://cr.loc/wp-content/uploads/2017/12/yorkchocolaterev_small.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("132", "1", "2017-12-04 00:13:58", "2017-12-03 21:13:58", "", "Installation  Kitchen & Bathroom Cabinets", "", "inherit", "closed", "closed", "", "130-revision-v1", "", "", "2017-12-04 00:13:58", "2017-12-03 21:13:58", "", "130", "http://cr.loc/2017/12/04/130-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("133", "1", "2017-12-04 00:14:47", "2017-12-03 21:14:47", "", "Services", "", "inherit", "closed", "closed", "", "74-revision-v1", "", "", "2017-12-04 00:14:47", "2017-12-03 21:14:47", "", "74", "http://cr.loc/2017/12/04/74-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("134", "1", "2017-12-04 21:20:29", "2017-12-04 18:20:29", "a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"5\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}", "Display Pages", "display-pages", "publish", "closed", "closed", "", "group_5a2590f22f337", "", "", "2017-12-04 21:29:41", "2017-12-04 18:29:41", "", "0", "http://cr.loc/?post_type=acf-field-group&#038;p=134", "2", "acf-field-group", "", "0");
INSERT INTO `wp_posts` VALUES("135", "1", "2017-12-04 21:21:09", "2017-12-04 18:21:09", "a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:2:\"id\";s:17:\"conditional_logic\";i:0;s:2:\"ui\";i:1;}", "Link to the page \'Our Services\'", "link_to_the_page_our_services", "publish", "closed", "closed", "", "field_5a2591f125fda", "", "", "2017-12-04 21:28:12", "2017-12-04 18:28:12", "", "134", "http://cr.loc/?post_type=acf-field&#038;p=135", "0", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("136", "1", "2017-12-04 21:24:30", "2017-12-04 18:24:30", "a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:2:\"id\";s:17:\"conditional_logic\";i:0;s:2:\"ui\";i:1;}", "Link to the page \'Latest Projects\'", "link_to_the_page_latest-projects", "publish", "closed", "closed", "", "field_5a25928d15e2b", "", "", "2017-12-04 21:29:41", "2017-12-04 18:29:41", "", "134", "http://cr.loc/?post_type=acf-field&#038;p=136", "1", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("137", "1", "2017-12-04 21:24:31", "2017-12-04 18:24:31", "a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"page\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:13:\"return_format\";s:2:\"id\";s:17:\"conditional_logic\";i:0;s:2:\"ui\";i:1;}", "Link to the page \'Our Partners\'", "link_to_the_page_our_partners", "publish", "closed", "closed", "", "field_5a2592ac15e2c", "", "", "2017-12-04 21:29:41", "2017-12-04 18:29:41", "", "134", "http://cr.loc/?post_type=acf-field&#038;p=137", "2", "acf-field", "", "0");
INSERT INTO `wp_posts` VALUES("138", "1", "2017-12-04 21:30:15", "2017-12-04 18:30:15", "", "Main page", "", "inherit", "closed", "closed", "", "5-revision-v1", "", "", "2017-12-04 21:30:15", "2017-12-04 18:30:15", "", "5", "http://cr.loc/2017/12/04/5-revision-v1/", "0", "revision", "", "0");

/* INSERT TABLE DATA: wp_term_relationships */
INSERT INTO `wp_term_relationships` VALUES("1", "1", "0");
INSERT INTO `wp_term_relationships` VALUES("76", "2", "0");
INSERT INTO `wp_term_relationships` VALUES("77", "2", "0");
INSERT INTO `wp_term_relationships` VALUES("78", "2", "0");
INSERT INTO `wp_term_relationships` VALUES("100", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("101", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("102", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("103", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("104", "3", "0");
INSERT INTO `wp_term_relationships` VALUES("105", "2", "0");
INSERT INTO `wp_term_relationships` VALUES("106", "2", "0");
INSERT INTO `wp_term_relationships` VALUES("107", "2", "0");

/* INSERT TABLE DATA: wp_term_taxonomy */
INSERT INTO `wp_term_taxonomy` VALUES("1", "1", "category", "", "0", "1");
INSERT INTO `wp_term_taxonomy` VALUES("2", "2", "nav_menu", "", "0", "6");
INSERT INTO `wp_term_taxonomy` VALUES("3", "3", "nav_menu", "", "0", "5");

/* INSERT TABLE DATA: wp_terms */
INSERT INTO `wp_terms` VALUES("1", "Без рубрики", "bez-rubriki", "0");
INSERT INTO `wp_terms` VALUES("2", "Osn-menu", "osn-menu", "0");
INSERT INTO `wp_terms` VALUES("3", "Sidebar menu", "sidebar-menu", "0");

/* INSERT TABLE DATA: wp_usermeta */
INSERT INTO `wp_usermeta` VALUES("1", "1", "nickname", "main-admin");
INSERT INTO `wp_usermeta` VALUES("2", "1", "first_name", "");
INSERT INTO `wp_usermeta` VALUES("3", "1", "last_name", "");
INSERT INTO `wp_usermeta` VALUES("4", "1", "description", "");
INSERT INTO `wp_usermeta` VALUES("5", "1", "rich_editing", "true");
INSERT INTO `wp_usermeta` VALUES("6", "1", "syntax_highlighting", "true");
INSERT INTO `wp_usermeta` VALUES("7", "1", "comment_shortcuts", "false");
INSERT INTO `wp_usermeta` VALUES("8", "1", "admin_color", "fresh");
INSERT INTO `wp_usermeta` VALUES("9", "1", "use_ssl", "0");
INSERT INTO `wp_usermeta` VALUES("10", "1", "show_admin_bar_front", "true");
INSERT INTO `wp_usermeta` VALUES("11", "1", "locale", "");
INSERT INTO `wp_usermeta` VALUES("12", "1", "wp_capabilities", "a:1:{s:13:\"administrator\";b:1;}");
INSERT INTO `wp_usermeta` VALUES("13", "1", "wp_user_level", "10");
INSERT INTO `wp_usermeta` VALUES("14", "1", "dismissed_wp_pointers", "");
INSERT INTO `wp_usermeta` VALUES("15", "1", "show_welcome_panel", "1");
INSERT INTO `wp_usermeta` VALUES("16", "1", "session_tokens", "a:3:{s:64:\"15789b55f7e0d0874a12ed1125a110dba101807728dbe6d7cecc339862b6eb3a\";a:4:{s:10:\"expiration\";i:1512845439;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1511635839;}s:64:\"fd23f90192b22b727657d0610bdcd8b225f6c4e036d7d7d9587b98b5b3fcc732\";a:4:{s:10:\"expiration\";i:1511808770;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36\";s:5:\"login\";i:1511635970;}s:64:\"de00ffd8fa5e089eaf8f3c09a6e513773ae95f772a55ca154fb8612c32414fad\";a:4:{s:10:\"expiration\";i:1512851939;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:125:\"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.89 Safari/537.36 OPR/49.0.2725.47\";s:5:\"login\";i:1511642339;}}");
INSERT INTO `wp_usermeta` VALUES("17", "1", "wp_dashboard_quick_press_last_post_id", "3");
INSERT INTO `wp_usermeta` VALUES("18", "1", "community-events-location", "a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}");
INSERT INTO `wp_usermeta` VALUES("19", "1", "wp_user-settings", "libraryContent=browse");
INSERT INTO `wp_usermeta` VALUES("20", "1", "wp_user-settings-time", "1511945794");
INSERT INTO `wp_usermeta` VALUES("21", "1", "nav_menu_recently_edited", "2");
INSERT INTO `wp_usermeta` VALUES("22", "1", "managenav-menuscolumnshidden", "a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}");
INSERT INTO `wp_usermeta` VALUES("23", "1", "metaboxhidden_nav-menus", "a:1:{i:0;s:12:\"add-post_tag\";}");
INSERT INTO `wp_usermeta` VALUES("24", "1", "meta-box-order_page", "a:4:{s:15:\"acf_after_title\";s:108:\"postimagediv,acf-group_5a24490dea1fc,acf-group_5a245dcd3f1d8,acf-group_5a22b7c628f9c,acf-group_5a2590f22f337\";s:4:\"side\";s:23:\"submitdiv,pageparentdiv\";s:6:\"normal\";s:118:\"acf-group_5a1e732625b8c,acf-group_5a21206beaec1,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv,revisionsdiv\";s:8:\"advanced\";s:0:\"\";}");
INSERT INTO `wp_usermeta` VALUES("25", "1", "screen_layout_page", "2");
INSERT INTO `wp_usermeta` VALUES("26", "1", "acf_user_settings", "a:0:{}");
INSERT INTO `wp_usermeta` VALUES("27", "1", "closedpostboxes_page", "a:1:{i:0;s:23:\"acf-group_5a22b7c628f9c\";}");
INSERT INTO `wp_usermeta` VALUES("28", "1", "metaboxhidden_page", "a:10:{i:0;s:23:\"acf-group_5a24490dea1fc\";i:1;s:23:\"acf-group_5a245dcd3f1d8\";i:2;s:23:\"acf-group_5a1e732625b8c\";i:3;s:23:\"acf-group_5a21206beaec1\";i:4;s:10:\"postcustom\";i:5;s:16:\"commentstatusdiv\";i:6;s:11:\"commentsdiv\";i:7;s:7:\"slugdiv\";i:8;s:9:\"authordiv\";i:9;s:12:\"revisionsdiv\";}");

/* INSERT TABLE DATA: wp_users */
INSERT INTO `wp_users` VALUES("1", "main-admin", "$P$Bi0XhucoznR6lBR8tGjmmUGX2PGaTP.", "main-admin", "mark.aborchie@gmail.com", "", "2017-11-25 18:50:21", "", "0", "main-admin");

SET FOREIGN_KEY_CHECKS = 1; 

/* Duplicator WordPress Timestamp: 2017-12-04 20:06:31*/
/* DUPLICATOR_MYSQLDUMP_EOF */
