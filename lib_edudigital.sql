-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th5 28, 2024 lúc 06:00 AM
-- Phiên bản máy phục vụ: 5.7.39
-- Phiên bản PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lib_edudigital`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `backup_log`
--

CREATE TABLE `backup_log` (
  `backup_log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `backup_time` datetime NOT NULL,
  `backup_file` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `backup_log`
--

INSERT INTO `backup_log` (`backup_log_id`, `user_id`, `backup_time`, `backup_file`) VALUES
(1, 1, '2024-05-03 10:38:08', 'D:\\OSPanel\\domains\\lib.edudigital\\files\\backup\\backup_20240503_103808.sql');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `biblio`
--

CREATE TABLE `biblio` (
  `biblio_id` int(11) NOT NULL,
  `gmd_id` int(3) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `sor` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edition` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn_issn` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `publish_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `collation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `series_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` char(5) COLLATE utf8_unicode_ci DEFAULT 'en',
  `source` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_place_id` int(11) DEFAULT NULL,
  `classification` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_att` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opac_hide` smallint(1) DEFAULT '0',
  `promoted` smallint(1) DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `frequency_id` int(11) NOT NULL DEFAULT '0',
  `spec_detail_info` text COLLATE utf8_unicode_ci,
  `content_type_id` int(11) DEFAULT NULL,
  `media_type_id` int(11) DEFAULT NULL,
  `carrier_type_id` int(11) DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `biblio`
--

INSERT INTO `biblio` (`biblio_id`, `gmd_id`, `title`, `sor`, `edition`, `isbn_issn`, `publisher_id`, `publish_year`, `collation`, `series_title`, `call_number`, `language_id`, `source`, `publish_place_id`, `classification`, `notes`, `image`, `file_att`, `opac_hide`, `promoted`, `labels`, `frequency_id`, `spec_detail_info`, `content_type_id`, `media_type_id`, `carrier_type_id`, `input_date`, `last_update`, `uid`) VALUES
(1, 1, 'PHP 5 for dummies', NULL, NULL, '0764541668', 1, '2004', 'xiv, 392 p. : ill. ; 24 cm.', 'For dummies', '005.13/3-22 Jan p', 'en', NULL, 1, '005.13/3 22', NULL, 'php5_dummies.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 15:36:50', '2007-11-29 16:26:59', NULL),
(2, 1, 'Linux In a Nutshell', NULL, 'Fifth Edition', '9780596009304', 2, '2005', 'xiv, 925 p. : ill. ; 23 cm.', 'In a Nutshell', '005.4/32-22 Ell l', 'en', NULL, 2, '005.4/32 22', NULL, 'linux_in_a_nutshell.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 15:53:35', '2007-11-29 16:26:10', NULL),
(3, 1, 'The Definitive Guide to MySQL 5', NULL, NULL, '9781590595350', 3, '2005', '784p.', 'Definitive Guide Series', '005.75/85-22 Kof d', 'en', NULL, NULL, '005.75/85 22', NULL, 'mysql_def_guide.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:01:08', '2007-11-29 16:26:33', NULL),
(4, 1, 'Cathedral and the Bazaar: Musings on Linux and Open Source by an Accidental Revolutionary', NULL, NULL, '0-596-00108-8', 2, '2001', '208p.', NULL, '005.4/3222 Ray c', 'en', NULL, 2, '005.4/32 22', 'The Cathedral & the Bazaar is a must for anyone who cares about the future of the computer industry or the dynamics of the information economy. This revised and expanded paperback edition includes new material on open source developments in 1999 and 2000. Raymond\'s clear and effective writing style accurately describing the benefits of open source software has been key to its success. (Source: http://safari.oreilly.com/0596001088)', 'cathedral_bazaar.jpg', 'cathedral-bazaar.pdf', 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:14:44', '2007-11-29 16:25:43', NULL),
(5, 1, 'Producing open source software : how to run a successful free software project', NULL, '1st ed.', '9780596007591', 2, '2005', 'xx, 279 p. ; 24 cm.', NULL, '005.1-22 Fog p', 'en', NULL, 2, '005.1 22', 'Includes index.', 'producing_oss.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:20:45', '2007-11-29 16:31:21', NULL),
(6, 1, 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', NULL, '1st ed.', '0735712573', 4, '2003', 'xvii, 790 p. : ill. ; 23cm.', 'DeveloperÃ¢â‚¬â„¢s library', '005.75/85-22 Kor p', 'en', NULL, 3, '005.75/85 22', 'PostgreSQL is the world\'s most advanced open-source database. PostgreSQL is the most comprehensive, in-depth, and easy-to-read guide to this award-winning database. This book starts with a thorough overview of SQL, a description of all PostgreSQL data types, and a complete explanation of PostgreSQL commands.', 'postgresql.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:29:33', '2024-04-25 12:35:38', NULL),
(7, 1, 'Web application architecture : principles, protocols, and practices', NULL, NULL, '0471486566', 5, '2003', 'xi, 357 p. : ill. ; 23 cm.', NULL, '005.7/2-21 Leo w', 'en', NULL, 1, '005.7/2 21', 'An in-depth examination of the core concepts and general principles of Web application development.\r\nThis book uses examples from specific technologies (e.g., servlet API or XSL), without promoting or endorsing particular platforms or APIs. Such knowledge is critical when designing and debugging complex systems. This conceptual understanding makes it easier to learn new APIs that arise in the rapidly changing Internet environment.', 'webapp_arch.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:41:57', '2007-11-29 16:32:46', NULL),
(8, 1, 'Ajax : creating Web pages with asynchronous JavaScript and XML', NULL, NULL, '9780132272674', 6, '2007', 'xxii, 384 p. : ill. ; 24 cm.', 'Bruce PerensÃ¢â‚¬â„¢ Open Source series', '006.7/86-22 Woy a', 'en', NULL, 4, '006.7/86 22', 'Using Ajax, you can build Web applications with the sophistication and usability of traditional desktop applications and you can do it using standards and open source software. Now, for the first time, there\'s an easy, example-driven guide to Ajax for every Web and open source developer, regardless of experience.', 'ajax.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:47:20', '2024-04-25 12:35:38', NULL),
(9, 1, 'The organization of information', NULL, '2nd ed.', '1563089769', 7, '2004', 'xxvii, 417 p. : ill. ; 27 cm.', 'Library and information science text series', '025-22 Tay o', 'en', NULL, 5, '025 22', 'A basic textbook for students of library and information studies, and a guide for practicing school library media specialists. Describes the impact of global forces and the school district on the development and operation of a media center, the technical and human side of management, programmatic activities, supportive services to students, and the quality and quantity of resources available to support programs.', 'organization_information.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:54:12', '2007-11-29 16:27:20', NULL),
(10, 1, 'Library and Information Center Management', NULL, '7th ed.', '9781591584063', 7, '2007', 'xxviii, 492 p. : ill. ; 27 cm.', 'Library and information science text series', '025.1-22 Stu l', 'en', NULL, 5, '025.1 22', NULL, 'library_info_center.JPG', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 16:58:51', '2007-11-29 16:27:40', NULL),
(11, 1, 'Information Architecture for the World Wide Web: Designing Large-Scale Web Sites', NULL, '2nd ed.', '9780596000356', 2, '2002', '500p.', NULL, '006.7-22 Mor i', 'en', NULL, 6, '006.7 22', 'Information Architecture for the World Wide Web is about applying the principles of architecture and library science to web site design. Each website is like a public building, available for tourists and regulars alike to breeze through at their leisure. The job of the architect is to set up the framework for the site to make it comfortable and inviting for people to visit, relax in, and perhaps even return to someday.', 'information_arch.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 17:26:14', '2007-11-29 16:32:25', NULL),
(12, 1, 'Corruption and development', NULL, NULL, '9780714649023', 8, '1998', '166 p. : ill. ; 22 cm.', NULL, '364.1 Rob c', 'en', NULL, 7, '364.1/322/091724 21', 'The articles assembled in this volume offer a fresh approach to analysing the problem of corruption in developing countries and the k means to tackle the phenomenon.', 'corruption_development.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 17:45:30', '2007-11-29 16:20:53', NULL),
(13, 1, 'Corruption and development : the anti-corruption campaigns', NULL, NULL, '0230525504', 9, '2007', '310p.', NULL, '364.1 Bra c', 'en', NULL, 8, '364.1/323091724 22', 'This book provides a multidisciplinary interrogation of the global anti-corruption campaigns of the last ten years, arguing that while some positive change is observable, the period is also replete with perverse consequences and unintended outcomes', 'corruption_development_anti_campaign.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 17:49:49', '2007-11-29 16:19:48', NULL),
(14, 1, 'Pigs at the trough : how corporate greed and political corruption are undermining America', NULL, NULL, '1400047714', 10, '2003', '275 p. ; 22 cm.', NULL, '364.1323 Huf p', 'en', NULL, 8, '364.1323', NULL, 'pigs_at_trough.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 17:56:00', '2007-11-29 16:18:33', NULL),
(15, 1, 'Lords of poverty : the power, prestige, and corruption of the international aid business', NULL, NULL, '9780871134691', 11, '1994', 'xvi, 234 p. ; 22 cm.', NULL, '338.9 Han l', 'en', NULL, 8, '338.9/1/091724 20', 'Lords of Poverty is a case study in betrayals of a public trust. The shortcomings of aid are numerous, and serious enough to raise questions about the viability of the practice at its most fundamental levels. Hancocks report is thorough, deeply shocking, and certain to cause critical reevaluation of the governments motives in giving foreign aid, and of the true needs of our intended beneficiaries.', 'lords_of_poverty.jpg', NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, '2007-11-29 18:08:13', '2007-11-29 16:13:11', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `biblio_attachment`
--

CREATE TABLE `biblio_attachment` (
  `biblio_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `placement` enum('link','popup','embed') COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_type` enum('public','private') COLLATE utf8_unicode_ci NOT NULL,
  `access_limit` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `biblio_author`
--

CREATE TABLE `biblio_author` (
  `biblio_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `biblio_author`
--

INSERT INTO `biblio_author` (`biblio_id`, `author_id`, `level`) VALUES
(1, 1, 1),
(2, 2, 1),
(2, 3, 2),
(2, 4, 2),
(2, 5, 2),
(2, 6, 2),
(3, 7, 1),
(3, 8, 2),
(4, 9, 1),
(5, 10, 1),
(6, 11, 1),
(6, 12, 2),
(7, 13, 1),
(7, 14, 2),
(8, 15, 1),
(9, 16, 1),
(10, 17, 1),
(10, 18, 2),
(11, 19, 1),
(11, 20, 2),
(12, 21, 1),
(13, 22, 1),
(14, 23, 1),
(15, 24, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `biblio_custom`
--

CREATE TABLE `biblio_custom` (
  `biblio_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='one to one relation with real biblio table';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `biblio_log`
--

CREATE TABLE `biblio_log` (
  `biblio_log_id` int(11) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `realname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `affectedrow` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rawdata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `biblio_mark`
--

CREATE TABLE `biblio_mark` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `biblio_relation`
--

CREATE TABLE `biblio_relation` (
  `biblio_id` int(11) NOT NULL DEFAULT '0',
  `rel_biblio_id` int(11) NOT NULL DEFAULT '0',
  `rel_type` int(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `biblio_topic`
--

CREATE TABLE `biblio_topic` (
  `biblio_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `biblio_topic`
--

INSERT INTO `biblio_topic` (`biblio_id`, `topic_id`, `level`) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(2, 4, 2),
(2, 5, 2),
(3, 1, 1),
(3, 6, 2),
(3, 7, 2),
(4, 4, 1),
(4, 8, 2),
(5, 8, 1),
(5, 9, 2),
(6, 1, 1),
(6, 7, 2),
(7, 2, 1),
(7, 10, 2),
(8, 1, 1),
(8, 2, 2),
(9, 11, 1),
(9, 12, 2),
(9, 13, 2),
(10, 11, 1),
(10, 14, 2),
(12, 15, 1),
(12, 16, 2),
(13, 15, 1),
(14, 15, 1),
(15, 15, 1),
(15, 17, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contents` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `expired_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`comment_id`, `biblio_id`, `member_id`, `comment`, `input_date`, `last_update`) VALUES
(1, 7, '221001781', 'Sách hay lắm', '2024-04-26 15:45:21', '2024-04-26 15:45:21'),
(2, 6, '221001781', 'Một quyển sách tuyệt vời !', '2024-04-26 15:45:42', '2024-04-26 15:45:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `content_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `content_path` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `is_news` smallint(1) DEFAULT NULL,
  `is_draft` smallint(1) DEFAULT '0',
  `publish_date` date DEFAULT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `content_ownpage` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `content`
--

INSERT INTO `content` (`content_id`, `content_title`, `content_desc`, `content_path`, `is_news`, `is_draft`, `publish_date`, `input_date`, `last_update`, `content_ownpage`) VALUES
(1, 'Library Information', '<h3>Contact Information</h3>\n<p><strong>Address :</strong> <br /> Jenderal Sudirman Road, Senayan, Jakarta, Indonesia - Postal Code : 10270 <br /> <strong>Phone Number :</strong> <br /> (021) 5711144 <br /> <strong>Fax Number :</strong> <br /> (021) 5711144</p>\n<h3>Opening Hours</h3>\n<p><strong>Monday - Friday :</strong> <br /> Open : 08.00 AM<br /> Break : 12.00 - 13.00 PM<br /> Close : 20.00 PM <br /> <strong>Saturday  :</strong> <br /> Open : 08.00 AM<br /> Break : 12.00 - 13.00 PM<br /> Close : 17.00 PM</p>\n<h3>Collections</h3>\n<p>We have many types of collections in our library, range from Fictions to Sciences Material, from printed material to digital collections such CD-ROM, CD, VCD and DVD. We also collect daily serials publications such as newspaper and also monthly serials such as magazines.</p>\n<h3>Library Membership</h3>\n<p>To be able to loan our library collections, you must first become library member. There is terms and conditions that you must obey.</p>', 'libinfo', NULL, 0, NULL, '2009-09-13 19:48:16', '2009-09-13 19:48:16', '1'),
(2, 'Help On Usage', '<h3>Searching</h3>\r\n<p>There are 2 methods available on searching library catalog. The first one is <strong>SIMPLE SEARCH</strong>, which is the simplest method on searching catalog. You just enter any keyword, either it containes in titles, author(s) names or subjects. You can supply more than one keywords in Simple Search method and it will expanding your search results.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>ADVANCED SEARCH</strong>, lets you define keywords in more specific fields. If you want your keywords only contained in title field, then type your keyword in Title field and the system will limit its search within <strong>Title</strong> fields only, not in other fields. Location field lets you narrowing search results by specific location, so only collection that exists in selected location get fetched by system.</p>', 'help', NULL, 0, NULL, '2009-09-13 19:48:16', '2009-09-13 19:48:16', '1'),
(3, 'Welcome To Admin Page', '<div class=\"container admin_home\">\r\n<div class=\"row\">\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Bibliography</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon biblioIcon notAJAX\" href=\"index.php?mod=bibliography\"></a></div>\r\n<div class=\"col-sm-8\">The Bibliography module lets you manage your library bibliographical data. It also include collection items management to manage a copies of your library collection so it can be used in library circulation.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Circulation</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon circulationIcon notAJAX\" href=\"index.php?mod=circulation\"></a></div>\r\n<div class=\"col-sm-8\">The Circulation module is used for doing library circulation transaction such as collection loans and return. In this module you can also create loan rules that will be used in loan transaction proccess.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Membership</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon memberIcon notAJAX\" href=\"index.php?mod=membership\"></a></div>\r\n<div class=\"col-sm-8\">The Membership module lets you manage library members such adding, updating and also removing. You can also manage membership type in this module.</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Stock Take</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon stockTakeIcon notAJAX\" href=\"index.php?mod=stock_take\"></a></div>\r\n<div class=\"col-sm-8\">The Stock Take module is the easy way to do Stock Opname for your library collections. Follow several steps that ease your pain in Stock Opname proccess.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Serial Control</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon serialIcon notAJAX\" href=\"index.php?mod=serial_control\"></a></div>\r\n<div class=\"col-sm-8\">Serial Control module help you manage library\'s serial publication subscription. You can track issues for each subscription.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Reporting</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon reportIcon notAJAX\" href=\"index.php?mod=reporting\"></a></div>\r\n<div class=\"col-sm-8\">Reporting lets you view various type of reports regardings membership data, circulation data and bibliographic data. All compiled on-the-fly from current library database.</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>Master File</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon masterFileIcon notAJAX\" href=\"index.php?mod=master_file\"></a></div>\r\n<div class=\"col-sm-8\">The Master File modules lets you manage referential data that will be used by another modules. It include Authority File management such as Authority, Subject/Topic List, GMD and other data.</div>\r\n</div>\r\n</div>\r\n<div class=\"col-xs-6 col-md-4\">\r\n<h3>System</h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-2\"><a class=\"icon systemIcon notAJAX\" href=\"index.php?mod=system\"></a></div>\r\n<div class=\"col-sm-8\">The System module is used to configure application globally, manage index, manage librarian, and also backup database.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'adminhome', NULL, 0, NULL, '2009-09-13 19:48:16', '2009-09-13 22:02:11', '1'),
(4, 'Homepage Info', '<p>Welcome To <strong>SLiMS Library</strong> Online Public Access Catalog (OPAC). Use OPAC to search collection in our library.</p>', 'headerinfo', NULL, 0, NULL, '2009-09-13 19:48:16', '2009-09-13 19:48:16', '1'),
(5, 'Tentang SLiMS', '<p><!--intro_awal--><strong>SLiMS</strong> adalah akronim dari Senayan Library Management System. Awalnya dikembangkan oleh Perpustakaan Kementerian Pendidikan Nasional untuk menggantikan Alice (http://www2.softlinkint.com). Tujuan utamanya agar Perpustakaan Kemdiknas mempunyai kebebasan untuk menggunakan, mempelajari, memodifikasi dan mendistribusikan perangkat lunak yang digunakan. SLiMS, maka dirilis dengan lisensi GPL dan sekarang pengembangan SLiMS dilakukan oleh komunitas penggunanya.<!--intro_akhir--></p>\r\n<p><strong>Asal Mula</strong></p>\r\n<p>Setelah beroperasi 50 tahun lebih, karena beberapa alasan Perpustakaan BC Indonesia yang telah selama bertahun-tahun menjadi andalan layanan BC di Indonesia harus ditutup. Pengelola BC Indonesia kemudian berinisiatif untuk menghibahkan pengelolaan aset perpustakaanya ke tangan institusi pemerintah. Dalam hal ini, institusi pemerintah yang dianggap sesuai bidangnya dan strategis tempatnya, adalah Departemen Pendidikan Nasional (Depdiknas). Yang dihibahkan tidak hanya koleksi, tetapi juga rak koleksi, hardware (server dan workstation) serta sistem termasuk untuk aplikasi manajemen administrasi perpustakaan (Alice).</p>\r\n<p>Seiring dengan berjalannya waktu, manajemen Perpustakaan Depdiknas mulai menghadapi beberapa kendala dalam penggunaan sistem Alice. Pertama, keterbatasan dalam menambahkan fitur-fitur baru. Antara lain: kebutuhan manajemen serial, meng-online-kan katalog di web dan kustomisasi report yang sering berubah-ubah kebutuhannya. Penambahan fitur jika harus meminta modul resmi dari developer Alice, berarti membutuhkan dana tambahan yang tidak kecil. Apalagi tidak ada distributor resminya di Indonesia sehingga harus mengharapkan support dari Inggris. Ditambah lagi beberapa persyaratan yang membutuhkan infrastruktur biaya mahal seperti dedicated public IP agar bisa meng-online-kan Alice di web.<br /><br />Saat itu untuk mengatasi sebagian kebutuhan (utamanya kustomisasi report), dilakukan dengan ujicoba mengakses langsung database yang disimpan dalam format DBase. Terkadang berhasil terkadang tidak karena struktur datanya proprietary dan kompleks serta jumlah rekodnya banyak. Untuk mempelajari struktur database, dicoba melakukan kontak via email ke developer Alice. Tetapi tidak ada respon sama sekali. Disini muncul masalah kedua. Sulitnya mempelajari lebih mendalam cara kerja perangkat lunak Alice. Karena Alice merupakan sistem proprietary yang serba tertutup, segala sesuatunya sangat tergantung vendor. Dibutuhkan sejumlah uang untuk mendapatkan layanan resmi untuk kustomisasi.<br /><br />Perpustakaan Depdiknas salah satu tupoksinya adalah melakukan koordinasi pengelolaan perpustakaan unit kerja dibawah lingkungan Depdiknas. Dalam implementasinya, seringkali muncul kebutuhan untuk bisa mendistribusikan perangkat lunak sistem perpustakaan ke berbagai unit kerja tersebut. Disini masalah ketiga: sulit (atau tidak mungkin) untuk melakukan redistribusi sistem Alice. Alice merupakan perangkat lunak yang secara lisensi tidak memungkinkan diredistribusi oleh pengelola Perpustakaan Depdiknas secara bebas. Semuanya harus ijin dan membutuhkan biaya.<br /><br />November 2006, perpustakaan dihadapkan oleh sebuah masalah mendasar. Sistem Alice tiba-tiba tidak bisa digunakan. Ternyata Alice yang digunakan selama ini diimplementasikan dengan sistem sewa. Pantas saja biayanya relatif murah. Tiap tahun pengguna harus membayar kembali untuk memperpanjang masa sewa pakainya. Tetapi yang mengkhawatirkan adalah fakta bahwa perpustakaan harus menyimpan semua informasi penting dan kritikal di sebuah sistem yang tidak pernah dimiliki. Yang kalau lupa atau tidak mau membayar sewa lagi, hilanglah akses terhadap data kita sendiri. Konyol sekali. Itu sama saja dengan bunuh diri kalau masih tergantung dengan sistem berlisensi seperti itu.<br /><br />Akhirnya pengelola Perpustakaan Depdiknas me-review kembali penggunaan sistem Alice di perpustakaan Depdiknas. Beberapa poin pentingnya antara lain:<br />&bull;&nbsp;&nbsp;&nbsp; Alice memang handal (reliable), tapi punya banyak keterbatasan. Biaya sewanya memang relatif murah, tetapi kalau membutuhkan support tambahan, baik sederhana ataupun kompleks, sangat tergantung dengan developer Alice yang berpusat di Inggris. Butuh biaya yang kalau di total juga tidak murah.<br />&bull;&nbsp;&nbsp;&nbsp; Model lisensi proprietary yang digunakan developer Alice tidak cocok dengan kondisi kebanyakan perpustakaan di Indonesia. Padahal pengelola Perpustakaan Depdiknas sebagai koordinator banyak perpustakaan di lingkungan Depdiknas, punya kepentingan untuk bisa dengan bebas melakukan banyak hal terhadap software yang digunakan.<br />&bull;&nbsp;&nbsp;&nbsp; Menyimpan data penting dan kritikal untuk operasional perpustakaan di suatu software yang proprietary dan menggunakan sistem sewa, dianggap sesuatu yang konyol dan mengancam independensi dan keberlangsungan perpustakaan itu sendiri.<br />&bull;&nbsp;&nbsp;&nbsp; Alice berjalan diatas sistem operasi Windows yang juga proprietary padahal pengelola Perpustakaan Depdiknas ingin beralih menggunakan Sistem Operasi open source (seperti GNU/Linux dan FreeBSD).<br />&bull;&nbsp;&nbsp;&nbsp; Masalah devisa negara yang terbuang untuk membayar software yang tidak pernah dimiliki.<br />&bull;&nbsp;&nbsp;&nbsp; Intinya: pengelola Perpustakaan Depdiknas ingin menggunakan software yang memberikan dan menjamin kebebasan untuk: menggunakan, mempelajari, memodifikasi dan melakukan redistribusi. Lisensi Alice tidak memungkinkan untuk itu.<br /><br />Setelah memutuskan untuk hijrah menggunakan sistem yang lain, maka langkah berikutnya adalah mencari sistem yang ada untuk digunakan atau mengembangkan sendiri sistem yang dibutuhkan. Beberapa pertimbangan yang harus dipenuhi:<br />&bull;&nbsp;&nbsp;&nbsp; Dirilis dibawah lisensi yang menjamin kebebasan untuk: menggunakan, mempelajari, memodifikasi dan melakukan redistribusi. Model lisensi open source (www.openosurce.org) dianggap sebagai model yang paling ideal dan sesuai.<br />&bull;&nbsp;&nbsp;&nbsp; Teknologi yang digunakan untuk membangun sistem juga harus berlisensi open source.<br />&bull;&nbsp;&nbsp;&nbsp; Teknologi yang digunakan haruslah teknologi yang relatif mudah dipelajari oleh pengelola perpustakaan Depdiknas yang berlatarbelakang pendidiknas pustakawan, seperti PHP (scripting language) dan MySQL (database). Jika tidak menguasai sisi teknis teknologi, maka akan terjebak kembali terhadap ketergantungan pada developer.<br /><br />Langkah berikutnya adalah melakukan banding software sistem perpustakaan open source yang bisa diperoleh di internet. Beberapa software yang dicoba antara lain: phpMyLibrary, OpenBiblio, KOHA, EverGreen. Pengelola perpustakaan Depdiknas merasa tidak cocok dengan software yang ada, dengan beberapa alasan:<br />&bull;&nbsp;&nbsp;&nbsp; Desain aplikasi dan database yang tidak baik atau kurang menerapkan secara serius prinsip-prinsip pengembangan aplikasi dan database yang baik sesuai dengan teori yang ada (PHPMyLibrary, OpenBiblio).<br />&bull;&nbsp;&nbsp;&nbsp; Menggunakan teknologi yang sulit dikuasai oleh pengelola perpustakaan Depdiknas (KOHA dan EverGreen dikembangkan menggunakan Perl dan C++ Language yang relatif lebih sulit dipelajari).<br />&bull;&nbsp;&nbsp;&nbsp; Beberapa sudah tidak aktif atau lama sekali tidak di rilis versi terbarunya (PHPMyLibrary dan OpenBiblio).<br /><br />Karena tidak menemukan sistem yang dibutuhkan, maka diputuskan untuk mengembangkan sendiri aplikasi sistem perpustakaan yang dibutuhkan. Dalam dunia pengembangan software, salah satu best practice-nya adalah memberikan nama kode (codename) pengembangan. Nama kode berbeda dengan nama aplikasinya itu sendiri. Nama kode biasanya berbeda-beda tiap versi. Misalnya kode nama &ldquo;Hardy Heron&rdquo; untuk Ubuntu Linux 8.04 dan &ldquo;Jaunty Jackalope&rdquo; untuk Ubuntu Linux 9.04. Pengelola perpustakaan Depdiknas Untuk versi awal (1.0) aplikasi yang akan dikembangkan, memberikan nama kode &ldquo;Senayan&rdquo;. Alasannya sederhana, karena awal dikembangkan di perpustakaan Depdiknas yang berlokasi di Senayan. Apalagi Perpustakaan Depdiknas mempunyai brand sebagai library@senayan. Belakangan karena dirasa nama &ldquo;Senayan&rdquo; dirasa cocok dan punya nilai marketing yang bagus, maka nama &ldquo;Senayan&rdquo; dijadikan nama resmi aplikasi sistem perpustakaan yang dikembangkan.<br /><br />Mengembangkan Senayan<br /><br />Sebelum mulai mengembangkan Senayan, ada beberapa keputusan desain aplikasi yang harus dibuat. Aspek desain ini penting diantaranya untuk pengambilankeputusan dari berbagai masukan yang datang dari komunitas. Antara lain:<br /><br />Pertama,&nbsp; Senayan adalah aplikasi untuk kebutuhan administrasi dan konten perpustakaan (Library Automation System). Senayan didesain untuk kebutuhan skala menengah maupun besar. Cocok untuk perpustakaan yang memiliki koleksi, anggota dan staf banyak di lingkungan jaringan, baik itu lokal (intranet) dan internet.<br /><br />Kedua, Senayan dibangun dengan memperhatikan best practice dalam pengembangan software seperti dalam hal penulisan source code, dokumentasi, dan desain database.<br /><br />Ketiga, Senayan dirancang untuk compliant dengan standar pengelolaan koleksi di perpustakaan. Untuk standar pengatalogan minimal memenuhi syarat AACR 2 level 2 (Anglo-American Cataloging Rules). Kebutuhan untuk kesesuaian dengan standar di perpustakaan terus berkembang dan pengelola perpustakaan Depdiknas dan developer Senayan berkomitmen untuk terus mengembangkan Senayan agar mengikuti standar-standar tersebut.<br /><br />Keempat, Senayan didesain agar bisa juga menjadi middleware bagi aplikasi lain untuk menggunakan data yang ada didalam Senayan. Untuk itu Senayan akan menyediakan API (application programming Interface) yang berbasis web service.<br /><br />Kelima, Senayan merupakan aplikasi yang cross-platform, baik dari sisi aplikasinya itu sendiri dan akses terhadap aplikasi. Untuk itu basis yang paling tepat ada basis web.<br /><br />Keenam, teknologi yang digunakan untuk membangun Senayan, haruslah terbukti bisa diinstall di banyak platform sistem operasi, berlisensi open source dan mudah dipelajari oleh pengelola perpustakaan Depdiknas. Diputuskan untuk menggunakan PHP (www.php.net) untuk web scripting languange dan MySQL (www.mysql.com) untuk server database.<br /><br />Ketujuh, diputuskan untuk mengembangkan library PHP sendiri yang didesain spesifik untuk kebutuhan membangun library automation system. Tidak menggunakan library PHP yang sudah terkenal seperti PEAR (pear.php.net) karena alasan penguasaan terhadap teknologi dan kesederhanaan. Library tersebut diberinama &ldquo;simbio&rdquo;.<br /><br />Kedelapan, untuk mempercepat proses pengembangan, beberapa modul atau fungsi yang dibutuhkan yang dirasa terlalu lama dan rumit untuk dikembangkan sendiri, akan menggunakan software open source yang berlisensi open source juga. Misalnya: flowplayer untuk dukungan multimedia, jQuery untuk dukungan AJAX (Asynchronous Javascript and XML), genbarcode untuk dukungan pembuatan barcode, PHPThumb untuk dukungan generate image on-the-fly, tinyMCE untuk web-based text editor, dan lain-lain.<br /><br />Kesembilan, untuk menjaga spirit open source, proses pengembangan Senayan dilakukan dengan infrastruktur yang berbasis open source. Misalnya: server web menggunakan Apache, server produksi menggunakan OS Linux Centos dan OpenSuse, para developer melakukan pengembangan dengan OS Ubuntu Linux, manajemen source code menggunakan software git, dan lain-lain.<br /><br />Kesepuluh, Senayan dirilis ke masyarakat umum dengan lisensi GNU/GPL versi 3 yang menjamin kebebasan penggunanya untuk mempelajari, menggunakan, memodifikasi dan redistribusi Senayan.<br /><br />Kesebelas, para developer dan pengelola perpustakaan Depdiknas berkomitmen untuk terus mengembangkan Senayan dan menjadikannya salah satu contoh software perpustakaan yang open source, berbasis di indonesia dan menjadi salah satu contoh bagi model pengembangan open source yang terbukti berjalan dengan baik.<br /><br />Keduabelas, model pengembangan Senayan adalah open source yang artinya setiap orang dipersilahkan memberikan kontribusinya. Baik dari sisi pemrogaman, template, dokumentasi, dan lain-lain. Tentu saja ada mekanisme mana kontribusi yang bagus untuk dimasukkan dalam rilis resmi, mana yang tidak. Mengacu ke dokumen &hellip; (TAMBAHKAN DENGAN TULISAN ERIC S RAYMOND)<br /><br />Model pengembangan senayan<br /><br />Pengembangan Senayan awalnya diinisiasi oleh pengelola Perpustakaan Depdiknas. Tetapi sekarang komunitas pengembang Senayan (Senayan Developer Community) yang lebih banyak mengambil peran dalam mengembangkan Senayan. Beberapa hal dibawah ini merupakan kultur yang dibangun dalam mengembangkan Senayan:<br />1.&nbsp;&nbsp;&nbsp; Meritokrasi. Siapa saja bisa berkontribusi. Mereka yang banyak memberikan kontribusi, akan mendapatkan privilege lebih dibandingkan yang lain.<br />2.&nbsp;&nbsp;&nbsp; Minimal punya concern terhadap pengembangan perpustakaan. Contoh lain: berlatar belakang pendidikan ilmu perpustakaan dan informasi, bekerja di perpustakaan, mengelola perpustakaan, dan lain-lain. Diharapkan dengan kondisi ini, sense of librarianship melekat di tiap developer/pengguna Senayan. Sejauh ini, semua developer senayan merupakan pustakawan atau berlatarbelakang pendidikan kepustakawanan (Information and Librarianship).<br />3.&nbsp;&nbsp;&nbsp; Release early, release often, and listen to your customer. Release early artinya setiap perbaikan dan penambahan fitur, secepat mungkin dirilis ke publik. Diharapkan bugs yang ada, bisa cepat ditemukan oleh komunitas, dilaporkan ke developer, untuk kemudian dirilis perbaikannya. Release often, artinya sesering mungkin memberikan update perbaikan bugs dan penambahan fitur. Ini &ldquo;memaksa&rdquo; developer Senayan untuk terus kreatif menambahkan fitur Senayan. Release often juga membuat pengguna berkeyakinan bahwa Senayan punya sustainability yang baik dan terus aktif dikembangkan. Selain itu, release often juga mempunyai dampak pemasaran. Pengguna dan calon pengguna, selalu diingatkan tentang keberadaan Senayan. Tentunya dengan cara yang elegan, yaitu rilis-rilis Senayan. Sejak dirilis ke publi pertama kali November 2007 sampai Juli 2009 (kurang lebih 20 bulan) telah dirilis 18 rilis resmi Senayan. Listen to your customer. Developer Senayan selalu berusaha mengakomodasi kebutuhan pengguna baik yang masuk melalui report di mailing list, ataupun melalui bugs tracking system. Tentu tidak semua masukan diakomodasi, harus disesuaikan dengan desain dan roadmap pengembangan Senayan.<br />4.&nbsp;&nbsp;&nbsp; Dokumentasi. Developer Senayan meyakini pentingnya dokumentasi yang baik dalam mensukseskan implementasi Senayan dibanyak tempat. Karena itu pengembang Senayan mempunyai tim khusus yang bertanggungjawab yang mengembangkan dokumentasi Senayan agar terus uo-to-date mengikuti rilis terbaru.<br />5.&nbsp;&nbsp;&nbsp; Agar ada percepatan dalam pengembangan dan untuk mengakrabkan antar pengembang Senayan, minimal setahun sekali diadakan Senayan Developers Day yang mengumpulkan para developer Senayan dari berbagai kota, dan melakukan coding bersama-sama.<br />Fitur Senayan<br />Sebagai sebuah Sistem Automasi Perpustakaan yang terintergrasi, modul-modul yang telah terdapat di SENAYAN adalah sebagai berikut:<br />Modul Pengatalogan (Cataloging Module)<br />1)&nbsp;&nbsp;&nbsp; Compliance dengan standar AACR2 (Anglo-American Cataloging Rules).<br />2)&nbsp;&nbsp;&nbsp; Fitur untuk membuat, mengedit, dan menghapus data bibliografi sesuai dengan standar deskripsi bibliografi AACR2 level ke dua.<br />3)&nbsp;&nbsp;&nbsp; Mendukung pengelolaan koleksi dalam berbagai macam format seperti monograph, terbitan berseri, audio visual, dsb.<br />4)&nbsp;&nbsp;&nbsp; Mendukung penyimpanan data bibliografi dari situs di Internet.<br />5)&nbsp;&nbsp;&nbsp; Mendukung penggunaan Barcode.<br />6)&nbsp;&nbsp;&nbsp; Manajemen item koleksi untuk dokumen dengan banyak kopi dan format yang berbeda.<br />7)&nbsp;&nbsp;&nbsp; Mendukung format XML untuk pertukaran data dengan menggunakan standar metadata MODS (Metadata Object Description Schema).<br />8)&nbsp;&nbsp;&nbsp; Pencetakan Barcode item/kopi koleksi Built-in.<br />9)&nbsp;&nbsp;&nbsp; Pencetakan Label Punggung koleksi Built-in.<br />10)&nbsp;&nbsp;&nbsp; Pengambilan data katalog melalui protokol Z3950 ke database koleksi Library of Congress.<br />11)&nbsp;&nbsp;&nbsp; Pengelolaan koleksi yang hilang, dalam perbaikan, dan rusak serta pencatatan statusnya untuk dilakukan pergantian/perbaikan terhadap koleksi.<br />12)&nbsp;&nbsp;&nbsp; Daftar kendali untuk pengarang (baik pengarang orang, badan/lembaga, dan pertemuan) sebagai standar konsistensi penuliasn<br />13)&nbsp;&nbsp;&nbsp; Pengaturan hak akses pengelolaan data bibliografi hanya untuk staf yang berhak.<br /><br />Modul Penelusuran (OPAC/Online Public Access catalog Module)<br />1)&nbsp;&nbsp;&nbsp; Pencarian sederhana.<br />2)&nbsp;&nbsp;&nbsp; Pencarian tingkat lanjut (Advanced).<br />3)&nbsp;&nbsp;&nbsp; Dukungan penggunaan Boolean\'s Logic dan implementasi CQL (Common Query Language).<br />4)&nbsp;&nbsp;&nbsp; OPAC Web Services berbasis XML.<br />5)&nbsp;&nbsp;&nbsp; Mendukung akses OPAC melalui peralatan portabel (mobile device)<br />6)&nbsp;&nbsp;&nbsp; Menampilkan informasi lengkap tetang status koleksi di perpustakaan, tanggal pengembalian, dan pemesanan item/koleksi<br />7)&nbsp;&nbsp;&nbsp; Detil informasi juga menampilkan gambar sampul buku, lampiran dalam format elektronik yang tersedia (jika ada) serta fasilitas menampilkan koleksi audio dan visual.<br />8)&nbsp;&nbsp;&nbsp; Menyediakan hyperlink tambahan untuk pencarian lanjutan berdasarkan penulis, dan subjek.<br /><br />Modul Sirkulasi (Circulation Module)<br />1)&nbsp;&nbsp;&nbsp; Mampu memproses peminjaman dan pengembalian koleksi secara efisien, efektif dan aman.<br />2)&nbsp;&nbsp;&nbsp; Mendukung fitur reservasi koleksi yang sedang dipinjam, termasuk reminder/pemberitahuan-nya.<br />3)&nbsp;&nbsp;&nbsp; Mendukung fitur manajemen denda. Dilengkapi fleksibilitas untuk pemakai membayar denda secara cicilan.<br />4)&nbsp;&nbsp;&nbsp; Mendukung fitur reminder untuk berbagai keperluan seperti melakukan black list terhadap pemakai yang bermasalah atau habis keanggotaannya.<br />5)&nbsp;&nbsp;&nbsp; Mendukung fitur pengkalenderan (calendaring) untuk diintegrasikan dengan penghitungan masa peminjaman, denda, dan lain-lain.<br />6)&nbsp;&nbsp;&nbsp; Memungkinkan penentuan hari-hari libur non-standar yang spesifik.<br />7)&nbsp;&nbsp;&nbsp; Dukungan terhadap ragam jenis tipe pemakai dengan masa pinjam beragam untuk berbagai jenis keanggotaan.<br />8)&nbsp;&nbsp;&nbsp; Menyimpan histori peminjaman anggota.<br />9)&nbsp;&nbsp;&nbsp; Mendukung pembuatan peraturan peminjaman yang sangat rinci dengan mengkombinasikan parameter keanggotaan, jenis koleksi, dan gmd selain aturan peminjaman standar berdasarkan jenis keanggotaan<br /><br />Modul Manajemen Keanggotaan (Membership Management Module)<br />1)&nbsp;&nbsp;&nbsp; Memungkinkan beragam tipe pemakai dengan ragam jenis kategori peminjaman, ragam jenis keanggotaan dan pembedaan setiap layanan sirkulasi dalam jumlah koleksi serta lama peminjaman untuk jenis koleksi untuk setiap jenis/kategori.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap input menggunakan barcode reader<br />3)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi preferensi pemakai atau subject interest.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi tambahan untuk keperluan reminder pada saat transaksi.<br />5)&nbsp;&nbsp;&nbsp; Memungkinkan menyimpan informasi detail pemakai yang lebih lengkap.<br />6)&nbsp;&nbsp;&nbsp; Pencarian informasi anggota minimal berdasarkan nomor dan nama anggota.<br />7)&nbsp;&nbsp;&nbsp; Pembuatan kartu anggota yang dilengkapi dengan barcode untuk transaksi peminjaman.<br /><br />Modul Inventarisasi Koleksi (Stocktaking Module)<br />1)&nbsp;&nbsp;&nbsp; Proses inventarisasi koleksi bisa dilakukan secara bertahap dan parsial tanpa harus menutup layanan perpustakaan secara keseluruhan.<br />2)&nbsp;&nbsp;&nbsp; Proses inventarisasi bisa dilakukan secara efisien dan efektif.<br />3)&nbsp;&nbsp;&nbsp; Terdapat pilihan untuk menghapus data secara otomatis pada saat akhir proses inventarisasi terhadap koleksi yang dianggap hilang.<br /><br />Modul Statistik/Pelaporan (Report Module)<br />1)&nbsp;&nbsp;&nbsp; Meliputi pelaporan untuk semua modul-modul yang tersedia di Senayan.<br />2)&nbsp;&nbsp;&nbsp; Laporan Judul.<br />3)&nbsp;&nbsp;&nbsp; Laporan Items/Kopi koleksi.<br />4)&nbsp;&nbsp;&nbsp; Laporan Keanggotaan.<br />5)&nbsp;&nbsp;&nbsp; Laporan jumlah koleksi berdasarkan klasifikasi.<br />6)&nbsp;&nbsp;&nbsp; Laporan Keterlambatan.<br />7)&nbsp;&nbsp;&nbsp; Berbagai macam statistik seperti statistik koleksi, peminjaman, keanggotaan, keterpakaian koleksi.<br />8)&nbsp;&nbsp;&nbsp; Tampilan laporan yang sudah didesain printer-friendly, sehingga memudahkan untuk dicetak.<br />9)&nbsp;&nbsp;&nbsp; Filter data yang lengkap untuk setiap laporan.<br />10)&nbsp;&nbsp;&nbsp; API untuk pelaporan yang relatif mudah dipelajari untuk membuat custom report baru.<br /><br />Modul Manajemen Terbitan Berseri (Serial Control)<br />1)&nbsp;&nbsp;&nbsp; Manajemen data langganan.<br />2)&nbsp;&nbsp;&nbsp; Manajemen data Kardex.<br />3)&nbsp;&nbsp;&nbsp; Manajemen tracking data terbitan yang akan terbit dan yang sudah ada.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan tracking data terbitan berseri yang jadwal terbitnya tidak teratur (pengaturan yang fleksibel).<br /><br />Modul Lain-lain<br />1)&nbsp;&nbsp;&nbsp; Dukungan antar muka yang multi bahasa (internasionalisasi) dengan Gettext.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap penggunaan huruf bukan latin untuk pengisian data dan pencarian.<br /><br />Roadmap Pengembangan Senayan<br />SENAYAN akan terus dikembangkan oleh para pengembangnya beserta komunitas pengguna SENAYAN lainnya. Berikut adalah Roadmap pengembangan SENAYAN ke depannya:<br /><br />Pengembangan aplikasi:<br />1.&nbsp;&nbsp;&nbsp; Kompatibilitas dengan MARC dan standar pertukaran data yang komplit. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; Memastikan bahwa format data bibliografi kompatibel dengan MARC secara lebih baik (minimal MARC light).<br />&bull;&nbsp;&nbsp;&nbsp; Dukungan terhadap RFID.<br />&bull;&nbsp;&nbsp;&nbsp; Fitur untuk impor / ekspor rekod dari The Online Computer Library Centre (OCLC), Research Libraries Information Network (RLIN), vendor sistem lain yang compliant dengan MARC.<br />&bull;&nbsp;&nbsp;&nbsp; Validasi data ISBN menggunakan modulus seven.<br />&bull;&nbsp;&nbsp;&nbsp; Dukungan terhadap standar di perpustakaan, seperti: Library of Congress Subject Headings, Library of Congress Classification, ALA filing rules, International Standard Bibliographic Description, ANSI Standard for Bibliographic Information Exchange on magnetic tape, Common communication format (ISO 2709).<br />2.&nbsp;&nbsp;&nbsp; Katalog induk/bersama (union catalog)<br />3.&nbsp;&nbsp;&nbsp; Implementasi Thesaurus. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; Pemanfaatan tesaurus untuk proses pengatalogan.<br />&bull;&nbsp;&nbsp;&nbsp; Pemanfaatan tesaurus untuk proses pencarian, misalnya memberikan advis pencarian menggunakan knowledge base yang dibangun dengan sistem tesaurus.<br />4.&nbsp;&nbsp;&nbsp; Implementasi Library 2.0. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; User bisa login dan mempunyai halaman personalisasi.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan reservasi koleksi dan memperpanjang peminjaman.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan komunikasi dengan pustakawan via messaging system.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan tagging, rekomendasi koleksi dan menyimpannya didalam daftar koleksi favoritnya.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa memberikan komentar terhadap koleksi.<br />&bull;&nbsp;&nbsp;&nbsp; Pustakawan bisa memasukkan preferensi pemakai didalam data keanggotaan. Preferensi tersebut bisa dimanfaatkan salah satunya untuk men-generate semacam daftar koleksi terpilih untuk dicetak atau ditampilkan ketika user login.<br />5.&nbsp;&nbsp;&nbsp; Peningkatan dukungan manajemen konten digital dan entri analitikal<br /><br />Pengembangan basis komunitas pengguna:<br />&bull;&nbsp;&nbsp;&nbsp; Membangun komunitas pengguna di berbagai kota <br />&bull;&nbsp;&nbsp;&nbsp; Mengadakan Senayan Developers Day untuk silaturahmi antar developer Senayan, update dokumentasi, penambahan fitur baru dan bug fixing dan mencari bibit pengembang yang baru.<br />&bull;&nbsp;&nbsp;&nbsp; Workshop/Seminar Nasional Tahunan<br />&bull;&nbsp;&nbsp;&nbsp; Jam Sessions rutin setiap 3 bulan</p>', 'about_slims', NULL, 0, NULL, '2010-08-28 23:29:55', '2010-11-12 18:21:01', '1'),
(6, 'Modul yang Tersedia', '<p><!--intro_awal-->Sebagai sebuah Sistem Automasi Perpustakaan yang terintergrasi, modul-modul yang telah terdapat di SENAYAN antara lain: pengatalogan/bibliografi, keanggotaan, sirkulasi, masterfile, stock opname (inventarisasi koleksi), pelaporan/reporting, manajemen kontrol serial, digital library, dan lain-lain.<!--intro_akhir--></p>\r\n<p>Modul Pengatalogan (Cataloging Module)<br />1)&nbsp;&nbsp;&nbsp; Compliance dengan standar AACR2 (Anglo-American Cataloging Rules).<br />2)&nbsp;&nbsp;&nbsp; Fitur untuk membuat, mengedit, dan menghapus data bibliografi sesuai dengan standar deskripsi bibliografi AACR2 level ke dua.<br />3)&nbsp;&nbsp;&nbsp; Mendukung pengelolaan koleksi dalam berbagai macam format seperti monograph, terbitan berseri, audio visual, dsb.<br />4)&nbsp;&nbsp;&nbsp; Mendukung penyimpanan data bibliografi dari situs di Internet.<br />5)&nbsp;&nbsp;&nbsp; Mendukung penggunaan Barcode.<br />6)&nbsp;&nbsp;&nbsp; Manajemen item koleksi untuk dokumen dengan banyak kopi dan format yang berbeda.<br />7)&nbsp;&nbsp;&nbsp; Mendukung format XML untuk pertukaran data dengan menggunakan standar metadata MODS (Metadata Object Description Schema).<br />8)&nbsp;&nbsp;&nbsp; Pencetakan Barcode item/kopi koleksi Built-in.<br />9)&nbsp;&nbsp;&nbsp; Pencetakan Label Punggung koleksi Built-in.<br />10)&nbsp;&nbsp;&nbsp; Pengambilan data katalog melalui protokol Z3950 ke database koleksi Library of Congress.<br />11)&nbsp;&nbsp;&nbsp; Pengelolaan koleksi yang hilang, dalam perbaikan, dan rusak serta pencatatan statusnya untuk dilakukan pergantian/perbaikan terhadap koleksi.<br />12)&nbsp;&nbsp;&nbsp; Daftar kendali untuk pengarang (baik pengarang orang, badan/lembaga, dan pertemuan) sebagai standar konsistensi penuliasn<br />13)&nbsp;&nbsp;&nbsp; Pengaturan hak akses pengelolaan data bibliografi hanya untuk staf yang berhak.<br /><br />Modul Penelusuran (OPAC/Online Public Access catalog Module)<br />1)&nbsp;&nbsp;&nbsp; Pencarian sederhana.<br />2)&nbsp;&nbsp;&nbsp; Pencarian tingkat lanjut (Advanced).<br />3)&nbsp;&nbsp;&nbsp; Dukungan penggunaan Boolean\'s Logic dan implementasi CQL (Common Query Language).<br />4)&nbsp;&nbsp;&nbsp; OPAC Web Services berbasis XML.<br />5)&nbsp;&nbsp;&nbsp; Mendukung akses OPAC melalui peralatan portabel (mobile device)<br />6)&nbsp;&nbsp;&nbsp; Menampilkan informasi lengkap tetang status koleksi di perpustakaan, tanggal pengembalian, dan pemesanan item/koleksi<br />7)&nbsp;&nbsp;&nbsp; Detil informasi juga menampilkan gambar sampul buku, lampiran dalam format elektronik yang tersedia (jika ada) serta fasilitas menampilkan koleksi audio dan visual.<br />8)&nbsp;&nbsp;&nbsp; Menyediakan hyperlink tambahan untuk pencarian lanjutan berdasarkan penulis, dan subjek.<br /><br />Modul Sirkulasi (Circulation Module)<br />1)&nbsp;&nbsp;&nbsp; Mampu memproses peminjaman dan pengembalian koleksi secara efisien, efektif dan aman.<br />2)&nbsp;&nbsp;&nbsp; Mendukung fitur reservasi koleksi yang sedang dipinjam, termasuk reminder/pemberitahuan-nya.<br />3)&nbsp;&nbsp;&nbsp; Mendukung fitur manajemen denda. Dilengkapi fleksibilitas untuk pemakai membayar denda secara cicilan.<br />4)&nbsp;&nbsp;&nbsp; Mendukung fitur reminder untuk berbagai keperluan seperti melakukan black list terhadap pemakai yang bermasalah atau habis keanggotaannya.<br />5)&nbsp;&nbsp;&nbsp; Mendukung fitur pengkalenderan (calendaring) untuk diintegrasikan dengan penghitungan masa peminjaman, denda, dan lain-lain.<br />6)&nbsp;&nbsp;&nbsp; Memungkinkan penentuan hari-hari libur non-standar yang spesifik.<br />7)&nbsp;&nbsp;&nbsp; Dukungan terhadap ragam jenis tipe pemakai dengan masa pinjam beragam untuk berbagai jenis keanggotaan.<br />8)&nbsp;&nbsp;&nbsp; Menyimpan histori peminjaman anggota.<br />9)&nbsp;&nbsp;&nbsp; Mendukung pembuatan peraturan peminjaman yang sangat rinci dengan mengkombinasikan parameter keanggotaan, jenis koleksi, dan gmd selain aturan peminjaman standar berdasarkan jenis keanggotaan<br /><br />Modul Manajemen Keanggotaan (Membership Management Module)<br />1)&nbsp;&nbsp;&nbsp; Memungkinkan beragam tipe pemakai dengan ragam jenis kategori peminjaman, ragam jenis keanggotaan dan pembedaan setiap layanan sirkulasi dalam jumlah koleksi serta lama peminjaman untuk jenis koleksi untuk setiap jenis/kategori.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap input menggunakan barcode reader<br />3)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi preferensi pemakai atau subject interest.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi tambahan untuk keperluan reminder pada saat transaksi.<br />5)&nbsp;&nbsp;&nbsp; Memungkinkan menyimpan informasi detail pemakai yang lebih lengkap.<br />6)&nbsp;&nbsp;&nbsp; Pencarian informasi anggota minimal berdasarkan nomor dan nama anggota.<br />7)&nbsp;&nbsp;&nbsp; Pembuatan kartu anggota yang dilengkapi dengan barcode untuk transaksi peminjaman.<br /><br />Modul Inventarisasi Koleksi (Stocktaking Module)<br />1)&nbsp;&nbsp;&nbsp; Proses inventarisasi koleksi bisa dilakukan secara bertahap dan parsial tanpa harus menutup layanan perpustakaan secara keseluruhan.<br />2)&nbsp;&nbsp;&nbsp; Proses inventarisasi bisa dilakukan secara efisien dan efektif.<br />3)&nbsp;&nbsp;&nbsp; Terdapat pilihan untuk menghapus data secara otomatis pada saat akhir proses inventarisasi terhadap koleksi yang dianggap hilang.<br /><br />Modul Statistik/Pelaporan (Report Module)<br />1)&nbsp;&nbsp;&nbsp; Meliputi pelaporan untuk semua modul-modul yang tersedia di Senayan.<br />2)&nbsp;&nbsp;&nbsp; Laporan Judul.<br />3)&nbsp;&nbsp;&nbsp; Laporan Items/Kopi koleksi.<br />4)&nbsp;&nbsp;&nbsp; Laporan Keanggotaan.<br />5)&nbsp;&nbsp;&nbsp; Laporan jumlah koleksi berdasarkan klasifikasi.<br />6)&nbsp;&nbsp;&nbsp; Laporan Keterlambatan.<br />7)&nbsp;&nbsp;&nbsp; Berbagai macam statistik seperti statistik koleksi, peminjaman, keanggotaan, keterpakaian koleksi.<br />8)&nbsp;&nbsp;&nbsp; Tampilan laporan yang sudah didesain printer-friendly, sehingga memudahkan untuk dicetak.<br />9)&nbsp;&nbsp;&nbsp; Filter data yang lengkap untuk setiap laporan.<br />10)&nbsp;&nbsp;&nbsp; API untuk pelaporan yang relatif mudah dipelajari untuk membuat custom report baru.<br /><br />Modul Manajemen Terbitan Berseri (Serial Control)<br />1)&nbsp;&nbsp;&nbsp; Manajemen data langganan.<br />2)&nbsp;&nbsp;&nbsp; Manajemen data Kardex.<br />3)&nbsp;&nbsp;&nbsp; Manajemen tracking data terbitan yang akan terbit dan yang sudah ada.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan tracking data terbitan berseri yang jadwal terbitnya tidak teratur (pengaturan yang fleksibel).<br /><br />Modul Lain-lain<br />1)&nbsp;&nbsp;&nbsp; Dukungan antar muka yang multi bahasa (internasionalisasi) dengan Gettext.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap penggunaan huruf bukan latin untuk pengisian data dan pencarian.</p>', 'modul_tersedia', NULL, 0, NULL, '2010-08-29 04:03:09', '2010-08-29 04:05:49', '1'),
(7, 'Lisensi SLiMS', '<p><strong>SLiMS</strong> dilisensikan dibawah GNU/GPL (http://www.gnu.org/licenses/gpl.html) untuk menjamin kebebasan pengguna dalam menggunakannya. GNU General Public License (disingkat GNU GPL atau cukup GPL) merupakan suatu lisensi perangkat lunak bebas yang aslinya ditulis oleh Richard Stallman untuk proyek GNU. Lisensi GPL memberikan penerima salinan perangkat lunak hak dari perangkat lunak bebas dan menggunakan copyleft  untuk memastikan kebebasan yang sama diterapkan pada versi berikutnya dari karya tersebut.</p><p> GNU LESSER GENERAL PUBLIC LICENSE<br>                       Version 3, 29 June 2007<br><br> Copyright (C) 2007 Free Software Foundation, Inc. <http://fsf.org/><br> Everyone is permitted to copy and distribute verbatim copies<br> of this license document, but changing it is not allowed.<br><br><br>  This version of the GNU Lesser General Public License incorporates<br>the terms and conditions of version 3 of the GNU General Public<br>License, supplemented by the additional permissions listed below.<br><br>  0. Additional Definitions.<br><br>  As used herein, \"this License\" refers to version 3 of the GNU Lesser<br>General Public License, and the \"GNU GPL\" refers to version 3 of the GNU<br>General Public License.<br><br>  \"The Library\" refers to a covered work governed by this License,<br>other than an Application or a Combined Work as defined below.<br><br>  An \"Application\" is any work that makes use of an interface provided<br>by the Library, but which is not otherwise based on the Library.<br>Defining a subclass of a class defined by the Library is deemed a mode<br>of using an interface provided by the Library.<br><br>  A \"Combined Work\" is a work produced by combining or linking an<br>Application with the Library.  The particular version of the Library<br>with which the Combined Work was made is also called the \"Linked<br>Version\".<br><br>  The \"Minimal Corresponding Source\" for a Combined Work means the<br>Corresponding Source for the Combined Work, excluding any source code<br>for portions of the Combined Work that, considered in isolation, are<br>based on the Application, and not on the Linked Version.<br><br>  The \"Corresponding Application Code\" for a Combined Work means the<br>object code and/or source code for the Application, including any data<br>and utility programs needed for reproducing the Combined Work from the<br>Application, but excluding the System Libraries of the Combined Work.<br><br>  1. Exception to Section 3 of the GNU GPL.<br><br>  You may convey a covered work under sections 3 and 4 of this License<br>without being bound by section 3 of the GNU GPL.<br><br>  2. Conveying Modified Versions.<br><br>  If you modify a copy of the Library, and, in your modifications, a<br>facility refers to a function or data to be supplied by an Application<br>that uses the facility (other than as an argument passed when the<br>facility is invoked), then you may convey a copy of the modified<br>version:<br><br>   a) under this License, provided that you make a good faith effort to<br>   ensure that, in the event an Application does not supply the<br>   function or data, the facility still operates, and performs<br>   whatever part of its purpose remains meaningful, or<br><br>   b) under the GNU GPL, with none of the additional permissions of<br>   this License applicable to that copy.<br><br>  3. Object Code Incorporating Material from Library Header Files.<br><br>  The object code form of an Application may incorporate material from<br>a header file that is part of the Library.  You may convey such object<br>code under terms of your choice, provided that, if the incorporated<br>material is not limited to numerical parameters, data structure<br>layouts and accessors, or small macros, inline functions and templates<br>(ten or fewer lines in length), you do both of the following:<br><br>   a) Give prominent notice with each copy of the object code that the<br>   Library is used in it and that the Library and its use are<br>   covered by this License.<br><br>   b) Accompany the object code with a copy of the GNU GPL and this license<br>   document.<br><br>  4. Combined Works.<br><br>  You may convey a Combined Work under terms of your choice that,<br>taken together, effectively do not restrict modification of the<br>portions of the Library contained in the Combined Work and reverse<br>engineering for debugging such modifications, if you also do each of<br>the following:<br><br>   a) Give prominent notice with each copy of the Combined Work that<br>   the Library is used in it and that the Library and its use are<br>   covered by this License.<br><br>   b) Accompany the Combined Work with a copy of the GNU GPL and this license<br>   document.<br><br>   c) For a Combined Work that displays copyright notices during<br>   execution, include the copyright notice for the Library among<br>   these notices, as well as a reference directing the user to the<br>   copies of the GNU GPL and this license document.<br><br>   d) Do one of the following:<br><br>       0) Convey the Minimal Corresponding Source under the terms of this<br>       License, and the Corresponding Application Code in a form<br>       suitable for, and under terms that permit, the user to<br>       recombine or relink the Application with a modified version of<br>       the Linked Version to produce a modified Combined Work, in the<br>       manner specified by section 6 of the GNU GPL for conveying<br>       Corresponding Source.<br><br>       1) Use a suitable shared library mechanism for linking with the<br>       Library.  A suitable mechanism is one that (a) uses at run time<br>       a copy of the Library already present on the user\'s computer<br>       system, and (b) will operate properly with a modified version<br>       of the Library that is interface-compatible with the Linked<br>       Version.<br><br>   e) Provide Installation Information, but only if you would otherwise<br>   be required to provide such information under section 6 of the<br>   GNU GPL, and only to the extent that such information is<br>   necessary to install and execute a modified version of the<br>   Combined Work produced by recombining or relinking the<br>   Application with a modified version of the Linked Version. (If<br>   you use option 4d0, the Installation Information must accompany<br>   the Minimal Corresponding Source and Corresponding Application<br>   Code. If you use option 4d1, you must provide the Installation<br>   Information in the manner specified by section 6 of the GNU GPL<br>   for conveying Corresponding Source.)<br><br>  5. Combined Libraries.<br><br>  You may place library facilities that are a work based on the<br>Library side by side in a single library together with other library<br>facilities that are not Applications and are not covered by this<br>License, and convey such a combined library under terms of your<br>choice, if you do both of the following:<br><br>   a) Accompany the combined library with a copy of the same work based<br>   on the Library, uncombined with any other library facilities,<br>   conveyed under the terms of this License.<br><br>   b) Give prominent notice with the combined library that part of it<br>   is a work based on the Library, and explaining where to find the<br>   accompanying uncombined form of the same work.<br><br>  6. Revised Versions of the GNU Lesser General Public License.<br><br>  The Free Software Foundation may publish revised and/or new versions<br>of the GNU Lesser General Public License from time to time. Such new<br>versions will be similar in spirit to the present version, but may<br>differ in detail to address new problems or concerns.<br><br>  Each version is given a distinguishing version number. If the<br>Library as you received it specifies that a certain numbered version<br>of the GNU Lesser General Public License \"or any later version\"<br>applies to it, you have the option of following the terms and<br>conditions either of that published version or of any later version<br>published by the Free Software Foundation. If the Library as you<br>received it does not specify a version number of the GNU Lesser<br>General Public License, you may choose any version of the GNU Lesser<br>General Public License ever published by the Free Software Foundation.<br><br>  If the Library as you received it specifies that a proxy can decide<br>whether future versions of the GNU Lesser General Public License shall<br>apply, that proxy\'s public statement of acceptance of any version is<br>permanent authorization for you to choose that version for the<br>Library.</p>', 'lisensi_slims', 1, 0, NULL, '2010-08-29 04:04:33', '2024-05-05 13:58:48', '1');
INSERT INTO `content` (`content_id`, `content_title`, `content_desc`, `content_path`, `is_news`, `is_draft`, `publish_date`, `input_date`, `last_update`, `content_ownpage`) VALUES
(8, 'Model Pengembangan Open Source', '<p><!--intro_awal-->Sumber terbuka (Inggris: open source) adalah sistem pengembangan yang tidak dikoordinasi oleh suatu individu / lembaga pusat, tetapi oleh para pelaku yang bekerja sama dengan memanfaatkan kode sumber (source-code) yang tersebar dan tersedia bebas (biasanya menggunakan fasilitas komunikasi internet). Pola pengembangan ini mengambil model ala bazaar, sehingga pola Open Source ini memiliki ciri bagi komunitasnya yaitu adanya dorongan yang bersumber dari budaya memberi.<!--intro_akhir--><br /><br />Pola Open Source lahir karena kebebasan berkarya, tanpa intervensi berpikir dan mengungkapkan apa yang diinginkan dengan menggunakan pengetahuan dan produk yang cocok. Kebebasan menjadi pertimbangan utama ketika dilepas ke publik. Komunitas yang lain mendapat kebebasan untuk belajar, mengutak-ngatik, merevisi ulang, membenarkan ataupun bahkan menyalahkan, tetapi kebebasan ini juga datang bersama dengan tanggung jawab, bukan bebas tanpa tanggung jawab.<br /><br />Pada intinya konsep sumber terbuka adalah membuka \"kode sumber\" dari sebuah perangkat lunak. Konsep ini terasa aneh pada awalnya dikarenakan kode sumber merupakan kunci dari sebuah perangkat lunak. Dengan diketahui logika yang ada di kode sumber, maka orang lain semestinya dapat membuat perangkat lunak yang sama fungsinya. Sumber terbuka hanya sebatas itu. Artinya, dia tidak harus gratis. Definisi sumber terbuka yang asli adalah seperti tertuang dalam OSD (Open Source Definition)/Definisi sumber terbuka.</p>\r\n<p>Pengembangan Senayan awalnya diinisiasi oleh pengelola Perpustakaan Depdiknas. Tetapi sekarang komunitas pengembang Senayan (Senayan Developer Community) yang lebih banyak mengambil peran dalam mengembangkan Senayan. Beberapa hal dibawah ini merupakan kultur yang dibangun dalam mengembangkan Senayan:<br />1.&nbsp;&nbsp;&nbsp; Meritokrasi. Siapa saja bisa berkontribusi. Mereka yang banyak memberikan kontribusi, akan mendapatkan privilege lebih dibandingkan yang lain.<br />2.&nbsp;&nbsp;&nbsp; Minimal punya concern terhadap pengembangan perpustakaan. Contoh lain: berlatar belakang pendidikan ilmu perpustakaan dan informasi, bekerja di perpustakaan, mengelola perpustakaan, dan lain-lain. Diharapkan dengan kondisi ini, sense of librarianship melekat di tiap developer/pengguna Senayan. Sejauh ini, semua developer senayan merupakan pustakawan atau berlatarbelakang pendidikan kepustakawanan (Information and Librarianship).<br />3.&nbsp;&nbsp;&nbsp; Release early, release often, and listen to your customer. Release early artinya setiap perbaikan dan penambahan fitur, secepat mungkin dirilis ke publik. Diharapkan bugs yang ada, bisa cepat ditemukan oleh komunitas, dilaporkan ke developer, untuk kemudian dirilis perbaikannya. Release often, artinya sesering mungkin memberikan update perbaikan bugs dan penambahan fitur. Ini &ldquo;memaksa&rdquo; developer Senayan untuk terus kreatif menambahkan fitur Senayan. Release often juga membuat pengguna berkeyakinan bahwa Senayan punya sustainability yang baik dan terus aktif dikembangkan. Selain itu, release often juga mempunyai dampak pemasaran. Pengguna dan calon pengguna, selalu diingatkan tentang keberadaan Senayan. Tentunya dengan cara yang elegan, yaitu rilis-rilis Senayan. Sejak dirilis ke publi pertama kali November 2007 sampai Juli 2009 (kurang lebih 20 bulan) telah dirilis 18 rilis resmi Senayan. Listen to your customer. Developer Senayan selalu berusaha mengakomodasi kebutuhan pengguna baik yang masuk melalui report di mailing list, ataupun melalui bugs tracking system. Tentu tidak semua masukan diakomodasi, harus disesuaikan dengan desain dan roadmap pengembangan Senayan.<br />4.&nbsp;&nbsp;&nbsp; Dokumentasi. Developer Senayan meyakini pentingnya dokumentasi yang baik dalam mensukseskan implementasi Senayan dibanyak tempat. Karena itu pengembang Senayan mempunyai tim khusus yang bertanggungjawab yang mengembangkan dokumentasi Senayan agar terus uo-to-date mengikuti rilis terbaru.<br />5.&nbsp;&nbsp;&nbsp; Agar ada percepatan dalam pengembangan dan untuk mengakrabkan antar pengembang Senayan, minimal setahun sekali diadakan Senayan Developers Day yang mengumpulkan para developer Senayan dari berbagai kota, dan melakukan coding bersama-sama.</p>', 'opensource', NULL, 0, NULL, '2010-08-29 04:05:16', '2010-08-29 04:34:04', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `file_title` text COLLATE utf8_unicode_ci NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_url` text COLLATE utf8_unicode_ci,
  `file_dir` text COLLATE utf8_unicode_ci,
  `mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_desc` text COLLATE utf8_unicode_ci,
  `file_key` text COLLATE utf8_unicode_ci,
  `uploader_id` int(11) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `files_read`
--

CREATE TABLE `files_read` (
  `filelog_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `date_read` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fines`
--

CREATE TABLE `fines` (
  `fines_id` int(11) NOT NULL,
  `fines_date` date NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `debet` int(11) DEFAULT '0',
  `credit` int(11) DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_access`
--

CREATE TABLE `group_access` (
  `group_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `menus` json DEFAULT NULL,
  `r` int(1) NOT NULL DEFAULT '0',
  `w` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `group_access`
--

INSERT INTO `group_access` (`group_id`, `module_id`, `menus`, `r`, `w`) VALUES
(1, 1, NULL, 1, 1),
(1, 2, NULL, 1, 1),
(1, 3, NULL, 1, 1),
(1, 4, NULL, 1, 1),
(1, 5, NULL, 1, 1),
(1, 6, NULL, 1, 1),
(1, 7, NULL, 1, 1),
(1, 8, NULL, 1, 1),
(2, 1, '[\"b11c824339dd1297d54b6548c33ce053\", \"e4fda0589987ea91e1fb5e256364b811\", \"f6673f6e9740595dc62a6c4e0c5a040d\", \"2a4c1e5d643c6e0144d2bddaf8733ecb\", \"dfc574c61cb217483431bececeefc2ec\", \"024d0c2a250036b813c9176906092ab0\", \"15e2eaaf39b4a1af27679c32d96a7492\", \"38023c48a2f71ae1a715c4934ad47135\", \"1a119074075fb82479f7dbb5d62d0200\", \"446269bd9e6c865c8d3b5688ddc70cb9\", \"3fb7b344a149e5b6659ab803f88fafca\", \"b1062390c7f38123df684ae55d9bc0fe\", \"0e5b4e20ba3b3f4f68188dbe5b2c4fc7\", \"dc00529580961c013ea1f7732d7fc42f\", \"ad103eee6b7a3d379ea0149b6e3df054\", \"e0fb22d9bbb23d2e585156b9ef9f5cf8\"]', 1, 1),
(2, 2, NULL, 1, 1),
(2, 3, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `holiday`
--

CREATE TABLE `holiday` (
  `holiday_id` int(11) NOT NULL,
  `holiday_dayname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `holiday_date` date DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `holiday`
--

INSERT INTO `holiday` (`holiday_id`, `holiday_dayname`, `holiday_date`, `description`) VALUES
(1, 'Mon', '2009-06-01', 'Tes Libur'),
(2, 'Tue', '2009-06-02', 'Tes Libur'),
(3, 'Wed', '2009-06-03', 'Tes Libur'),
(4, 'Thu', '2009-06-04', 'Tes Libur'),
(5, 'Fri', '2009-06-05', 'Tes Libur'),
(6, 'Sat', '2009-06-06', 'Tes Libur');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `index_documents`
--

CREATE TABLE `index_documents` (
  `document_id` int(11) NOT NULL,
  `word_id` bigint(20) NOT NULL,
  `location` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit_count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `index_words`
--

CREATE TABLE `index_words` (
  `id` bigint(20) NOT NULL,
  `word` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_hits` int(11) NOT NULL,
  `doc_hits` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `biblio_id` int(11) DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coll_type_id` int(3) DEFAULT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inventory_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `supplier_id` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_id` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `item_status_id` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` int(1) NOT NULL DEFAULT '0',
  `invoice` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_currency` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `item`
--

INSERT INTO `item` (`item_id`, `biblio_id`, `call_number`, `coll_type_id`, `item_code`, `inventory_code`, `received_date`, `supplier_id`, `order_no`, `location_id`, `order_date`, `item_status_id`, `site`, `source`, `invoice`, `price`, `price_currency`, `invoice_date`, `input_date`, `last_update`, `uid`) VALUES
(1, 8, NULL, 1, 'B00001', 'INV/B00001', NULL, '0', '', 'SL', NULL, '0', '', 1, '', 500000, 'Rupiah', NULL, '2008-12-26 22:11:10', '2008-12-26 22:14:13', NULL),
(2, 6, NULL, 1, 'B00002', 'INV/B00002', NULL, '0', '', 'SL', NULL, '0', '', 1, '', 700000, 'Rupiah', NULL, '2008-12-26 22:11:45', '2008-12-26 22:13:45', NULL),
(3, 15, NULL, 1, 'B00003', 'INV/B00003', NULL, '0', '', 'SL', NULL, '0', '', 1, '', 300000, 'Rupiah', NULL, '2008-12-26 22:15:09', '2008-12-26 22:15:09', NULL),
(4, 14, NULL, 1, 'B00004', 'INV/B00004', NULL, '0', '', 'SL', NULL, '0', '', 1, '', 250000, 'Rupiah', NULL, '2008-12-26 22:15:49', '2008-12-26 22:15:49', NULL),
(5, 13, NULL, 1, 'B00005', 'INV/B00005', NULL, '0', '', 'SL', NULL, '0', '', 2, '', 0, NULL, NULL, '2008-12-26 22:17:04', '2008-12-26 22:17:04', NULL),
(6, 12, NULL, 1, 'B00006', 'INV/B00006', NULL, '0', '', 'SL', NULL, '0', '', 1, '', 350000, 'Rupiah', NULL, '2008-12-26 22:17:52', '2008-12-26 22:17:52', NULL),
(7, 4, NULL, 1, 'B00007', 'INV/B00007', NULL, '0', '', 'SL', NULL, '0', '', 1, '', 450000, 'Rupiah', NULL, '2008-12-26 22:18:29', '2008-12-26 22:18:29', NULL),
(8, 4, NULL, 1, 'B00008', 'INV/B00008', NULL, '0', '', 'SL', NULL, '0', '', 2, '', 0, NULL, NULL, '2008-12-26 22:18:51', '2008-12-26 22:18:51', NULL),
(9, 2, NULL, 1, 'B00009', 'INV/B00009', NULL, '0', '', 'SL', NULL, '0', '', 1, '', 630000, 'Rupiah', NULL, '2008-12-26 22:19:28', '2008-12-26 22:19:28', NULL),
(10, 2, NULL, 1, 'B00010', 'INV/B00010', NULL, '0', '', 'SL', NULL, '0', '', 1, '', 630000, 'Rupiah', NULL, '2008-12-26 22:19:57', '2008-12-26 22:19:57', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kardex`
--

CREATE TABLE `kardex` (
  `kardex_id` int(11) NOT NULL,
  `date_expected` date NOT NULL,
  `date_received` date DEFAULT NULL,
  `seq_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `serial_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loan`
--

CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_date` date NOT NULL,
  `due_date` date NOT NULL,
  `renewed` int(11) NOT NULL DEFAULT '0',
  `loan_rules_id` int(11) NOT NULL DEFAULT '0',
  `actual` date DEFAULT NULL,
  `is_lent` int(11) NOT NULL DEFAULT '0',
  `is_return` int(11) NOT NULL DEFAULT '0',
  `return_date` date DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loan`
--

INSERT INTO `loan` (`loan_id`, `item_code`, `member_id`, `loan_date`, `due_date`, `renewed`, `loan_rules_id`, `actual`, `is_lent`, `is_return`, `return_date`, `input_date`, `last_update`, `uid`) VALUES
(1, 'B00002', '221001782', '2024-04-26', '2024-08-04', 0, 0, NULL, 1, 0, NULL, '2024-04-26 16:11:39', '2024-04-26 16:11:39', 1);

--
-- Bẫy `loan`
--
DELIMITER $$
CREATE TRIGGER `delete_loan_history` AFTER DELETE ON `loan` FOR EACH ROW DELETE FROM `loan_history` WHERE loan_id=OLD.loan_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_loan_history` AFTER INSERT ON `loan` FOR EACH ROW INSERT INTO loan_history
     SET loan_id=NEW.loan_id,
     item_code=NEW.item_code,
     member_id=NEW.member_id,
     loan_date=NEW.loan_date,
     due_date=NEW.due_date,
     renewed=NEW.renewed,
     is_lent=NEW.is_lent,
     is_return=NEW.is_return,
     return_date=NEW.return_date,
     input_date=NEW.input_date,
     last_update=NEW.last_update,
     title=(SELECT b.title FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     biblio_id=(SELECT b.biblio_id FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     call_number=(SELECT IF(i.call_number IS NULL, b.call_number,i.call_number) FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     classification=(SELECT b.classification FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id WHERE i.item_code=NEW.item_code),
     gmd_name=(SELECT g.gmd_name FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id LEFT JOIN mst_gmd g ON g.gmd_id=b.gmd_id WHERE i.item_code=NEW.item_code),
     language_name=(SELECT l.language_name FROM biblio b LEFT JOIN item i ON i.biblio_id=b.biblio_id LEFT JOIN mst_language l ON b.language_id=l.language_id WHERE i.item_code=NEW.item_code),
     location_name=(SELECT ml.location_name FROM item i LEFT JOIN mst_location ml ON i.location_id=ml.location_id WHERE i.item_code=NEW.item_code),
     collection_type_name=(SELECT mct.coll_type_name FROM mst_coll_type mct LEFT JOIN item i ON i.coll_type_id=mct.coll_type_id WHERE i.item_code=NEW.item_code),
     member_name=(SELECT m.member_name FROM member m WHERE m.member_id=NEW.member_id),
     member_type_name=(SELECT mmt.member_type_name FROM mst_member_type mmt LEFT JOIN member m ON m.member_type_id=mmt.member_type_id WHERE m.member_id=NEW.member_id)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_loan_history` AFTER UPDATE ON `loan` FOR EACH ROW UPDATE loan_history 
    SET is_lent=NEW.is_lent,
    is_return=NEW.is_return,
    renewed=NEW.renewed,
    return_date=NEW.return_date
    WHERE loan_id=NEW.loan_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loan_history`
--

CREATE TABLE `loan_history` (
  `loan_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `biblio_id` int(11) NOT NULL,
  `title` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gmd_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `collection_type_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_type_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `renewed` int(11) NOT NULL DEFAULT '0',
  `is_lent` int(11) NOT NULL DEFAULT '0',
  `is_return` int(11) NOT NULL DEFAULT '0',
  `return_date` date DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loan_history`
--

INSERT INTO `loan_history` (`loan_id`, `item_code`, `biblio_id`, `title`, `call_number`, `classification`, `gmd_name`, `language_name`, `location_name`, `collection_type_name`, `member_id`, `member_name`, `member_type_name`, `loan_date`, `due_date`, `renewed`, `is_lent`, `is_return`, `return_date`, `input_date`, `last_update`) VALUES
(1, 'B00002', 6, 'PostgreSQL : a comprehensive guide to building, programming, and administering PostgreSQL databases', '005.75/85-22 Kor p', '005.75/85 22', 'Text', 'English', 'My Library', 'Reference', '221001782', 'Nguyễn Thị B', 'Giảng Viên', '2024-04-26', '2024-08-04', 0, 1, 0, NULL, '2024-04-26 16:11:39', '2024-04-26 16:11:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member`
--

CREATE TABLE `member` (
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `member_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(1) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `member_type_id` int(6) DEFAULT NULL,
  `member_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_mail_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inst_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_new` int(1) DEFAULT NULL,
  `member_image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_fax` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_since_date` date DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `expire_date` date NOT NULL,
  `member_notes` text COLLATE utf8_unicode_ci,
  `is_pending` smallint(1) NOT NULL DEFAULT '0',
  `mpasswd` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `member`
--

INSERT INTO `member` (`member_id`, `member_name`, `gender`, `birth_date`, `member_type_id`, `member_address`, `member_mail_address`, `member_email`, `postal_code`, `inst_name`, `is_new`, `member_image`, `pin`, `member_phone`, `member_fax`, `member_since_date`, `register_date`, `expire_date`, `member_notes`, `is_pending`, `mpasswd`, `last_login`, `last_login_ip`, `input_date`, `last_update`) VALUES
('987654', 'Alice Doe', 1, '1995-02-28', 2, '456 Elm Street', 'alice22017862.doe@example.com', 'alice.doe@example.com', '20002', 'Trường cao đẳng', 0, 'NULL', '654321', '+9876543210', '', '2024-05-08', '2023-05-12', '2023-05-12', '', 0, '$2y$10$2wkx8aTeZ/fp7ERTrRW2CeKaw0tcCkPm116mx3eflYPVrtVlkDUqS', NULL, NULL, '2024-05-08', '2024-05-08'),
('123456', 'Bob Smith', 1, '1988-07-15', 1, '789 Oak Street', 'bob22017862.smith@example.com', 'bob.smith@example.com', '30003', 'Công ty ABC', 1, 'NULL', 'abcdef', '+1234509876', '', '2024-05-08', '2022-09-15', '2022-09-15', '', 0, '$2y$10$JtMD3XmZHvfSKYd8O0MpnuUQYxjxnQvoiZSBkO/BZTGlk.kL10MoS', NULL, NULL, '2024-05-08', '2024-05-08'),
('789012', 'Eve Johnson', 0, '1992-04-10', 3, '101 Pine Street', 'eve22017862.johnson@example.com', 'eve.johnson@example.com', '40004', 'Trường Đại học XYZ', 0, 'NULL', 'qwerty', '+7890123456', '', '2024-05-08', '2021-11-30', '2021-11-30', '', 0, '$2y$10$NgXcRtHWWoOW7/Ake8Rgl.qa1vx0JZ1u9ih9BHiDv.rypNS2YtMsu', NULL, NULL, '2024-05-08', '2024-05-08'),
('246801', 'David Lee', 1, '1980-12-05', 1, '202 Maple Street', 'david22017862.lee@example.com', 'david.lee@example.com', '50005', 'Công ty XYZ', 1, 'NULL', 'password', '+2468013579', '', '2024-05-08', '2020-07-20', '2020-07-20', '', 0, '$2y$10$EY3dzVRTgpuDq54dlReQueE5fna4q/ouVDfLqib1hHJzRJAuCC0ia', NULL, NULL, '2024-05-08', '2024-05-08'),
('135792', 'Grace Wang', 0, '1998-10-20', 2, '303 Cedar Street', 'grace22017862.wang@example.com', 'grace.wang@example.com', '60006', 'Trường Cao đẳng ABC', 0, 'NULL', 'pass123', '+1357924680', '', '2024-05-08', '2019-03-10', '2019-03-10', '', 0, '$2y$10$MmNAsSLj9BXHURCM57iEvupnP9rter6Tqo/HTmW0O2nupwk7vcBm.', NULL, NULL, '2024-05-08', '2024-05-08'),
('1', 'TK Admin', 2, '0000-00-00', NULL, '', 'superadmin.heu@edusoft.vn', 'superadmin.heu@edusoft.vn', 'NULL', 'NULL', 0, 'NULL', 'NULL', 'NULL', 'NULL', '2024-05-08', '2024-05-08', '2028-05-08', '', 0, '$2y$10$lEQs0ixsaz4LRdVKjWh.CeHFltncsOFZqrij7QQZOF3QbCXgyXJUi', NULL, NULL, '2024-05-08', '2024-05-08'),
('38', 'Tài khoản quản trị', 2, '0000-00-00', NULL, '', 'admin@gmail.com', 'admin@gmail.com', 'NULL', 'NULL', 0, 'NULL', 'NULL', 'NULL', 'NULL', '2024-05-08', '2024-05-08', '2028-05-08', '', 0, '$2y$10$2sDnr9NJOtPleyPdqgcrT.xN2SXDo6.wiwImv4ZRNl1AfDstbX25G', NULL, NULL, '2024-05-08', '2024-05-08'),
('43', 'Trần Quang Trung', 2, '0000-00-00', NULL, '', 'quantrung.hpc@edusoft.vn', 'quantrung.hpc@edusoft.vn', 'NULL', 'NULL', 0, 'NULL', 'NULL', 'NULL', 'NULL', '2024-05-08', '2024-05-08', '2028-05-08', '', 0, '$2y$10$Vv5nLbeVDfBuQnzzuIALxeohV86odml42NZNtTqK2po8a4YjCiuMS', NULL, NULL, '2024-05-08', '2024-05-08'),
('44', 'Trần Thị Kim Phượng', 2, '0000-00-00', NULL, '', 'kimphuong.hpc@edusoft.vn', 'kimphuong.hpc@edusoft.vn', 'NULL', 'NULL', 0, 'NULL', 'NULL', 'NULL', 'NULL', '2024-05-08', '2024-05-08', '2028-05-08', '', 0, '$2y$10$vhGDmOngPyok8Z60DKTjuO2TMHpvJAxByQUth/jnAIVuw786eLeEu', NULL, NULL, '2024-05-08', '2024-05-08'),
('45', 'Lê Thu Phương', 2, '0000-00-00', NULL, '', 'thuphuong.hpc@edusoft.vn', 'thuphuong.hpc@edusoft.vn', 'NULL', 'NULL', 0, 'NULL', 'NULL', 'NULL', 'NULL', '2024-05-08', '2024-05-08', '2028-05-08', '', 0, '$2y$10$226aMSUSqMdPIccWoZmuK.sfxwHiEJmc4LL81kZuI1NvVTNUX.K.W', NULL, NULL, '2024-05-08', '2024-05-08'),
('46', 'Lê Tấn Minh', 2, '0000-00-00', NULL, 'Hà Nội', 'letanminh_hnc@edusoft.vn', 'letanminh_hnc@edusoft.vn', 'NULL', 'NULL', 0, 'NULL', 'NULL', 'NULL', 'NULL', '2024-05-08', '2024-05-08', '2028-05-08', '', 0, '$2y$10$/KXuuokVe4/4u3fX7vLqIOpW.PlUmpM.3chw5vXtkblKXZDoy/iJm', NULL, NULL, '2024-05-08', '2024-05-08'),
('47', 'Huỳnh Văn Lực', 2, '0000-00-00', NULL, '', 'huynhvanluc_hnc@edusoft.vn', 'huynhvanluc_hnc@edusoft.vn', 'NULL', 'NULL', 0, 'NULL', 'NULL', 'NULL', 'NULL', '2024-05-08', '2024-05-08', '2028-05-08', '', 0, '$2y$10$kIZ6h.CMQxvH47uzSu0wIez5KakfzjQwAddpzFYBkzItGC3nfvZuK', NULL, NULL, '2024-05-08', '2024-05-08'),
('48', 'Nguyễn Tiến Minh', 2, '0000-00-00', NULL, '', 'nguyentienminh_hnc@edusoft.vn', 'nguyentienminh_hnc@edusoft.vn', 'NULL', 'NULL', 0, 'NULL', 'NULL', 'NULL', 'NULL', '2024-05-08', '2024-05-08', '2028-05-08', '', 0, '$2y$10$TTWyjqpixAJUeMBI3aT7GeAKlOj1OBpXDlCLuwUJdMa6E/IX5BsXe', NULL, NULL, '2024-05-08', '2024-05-08'),
('49', 'Lê Thu Nga', 2, '0000-00-00', NULL, '', 'lethunga_hnc@edusoft.vn', 'lethunga_hnc@edusoft.vn', 'NULL', 'NULL', 0, 'NULL', 'NULL', 'NULL', 'NULL', '2024-05-08', '2024-05-08', '2028-05-08', '', 0, '$2y$10$QO.Gx373lvWnvrifvv5j.Oi6Iz6iX5oXCIeEy/Ixl3Ch3n8QS1HPq', NULL, NULL, '2024-05-08', '2024-05-08'),
('50', 'Lê Lan Anh', 2, '0000-00-00', NULL, '', 'lelananh_hnc@edusoft.vn', 'lelananh_hnc@edusoft.vn', 'NULL', 'NULL', 0, 'NULL', 'NULL', 'NULL', 'NULL', '2024-05-08', '2024-05-08', '2028-05-08', '', 0, '$2y$10$FW1Fsd3dp4m9iNaHbnyVe.1n5ykM9dJli4FRn2FcdUC.uOnXY0pM.', NULL, NULL, '2024-05-08', '2024-05-08'),
('51', 'Phạm Trọng Nghĩa', 2, '0000-00-00', NULL, '', 'phamtrongnghia_hnc@edusoft.vn', 'phamtrongnghia_hnc@edusoft.vn', 'NULL', 'NULL', 0, 'NULL', 'NULL', 'NULL', 'NULL', '2024-05-08', '2024-05-08', '2028-05-08', '', 0, '$2y$10$wqtOnl/HotjdJBTgzN6vR.Za2pZrGC/s5Cmas791SMlrAa8DOp6.K', NULL, NULL, '2024-05-08', '2024-05-08'),
('52', 'Trần Thị Huê', 2, '0000-00-00', NULL, '', 'tranthihue_hnc@edusoft.vn', 'tranthihue_hnc@edusoft.vn', 'NULL', 'NULL', 0, 'NULL', 'NULL', 'NULL', 'NULL', '2024-05-08', '2024-05-08', '2028-05-08', '', 0, '$2y$10$hHS6kA5n0nLEyUCsHcyEXOYtlaqXDNB/pZORowc4nAP8kGzPkfXjK', NULL, NULL, '2024-05-08', '2024-05-08'),
('53', 'Mai Huy Hoạt', 2, '0000-00-00', NULL, 'xóm 2- xã hải quâng- huyện Hải Hậu - tỉnh Nâm Định', 'hoatdfk2001@gmail.com', 'hoatdfk2001@gmail.com', 'NULL', 'NULL', 0, 'NULL', 'NULL', 'NULL', 'NULL', '2024-05-08', '2024-05-08', '2028-05-08', '', 0, '$2y$10$W9E5uaE1V.7bo/2tu0g1wOsCRMTALFzI.bSAhdjtR4Vrd6/DVAkR2', NULL, NULL, '2024-05-08', '2024-05-08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member_custom`
--

CREATE TABLE `member_custom` (
  `member_id` varchar(20) COLLATE utf8mb4_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='one to one relation with real member table';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_author`
--

CREATE TABLE `mst_author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `author_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authority_type` enum('p','o','c') COLLATE utf8_unicode_ci DEFAULT 'p',
  `auth_list` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mst_author`
--

INSERT INTO `mst_author` (`author_id`, `author_name`, `author_year`, `authority_type`, `auth_list`, `input_date`, `last_update`) VALUES
(1, 'Valade, Janet', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(2, 'Siever, Ellen', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(3, 'Love, Robert', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(4, 'Robbins, Arnold', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(5, 'Figgins, Stephen', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(6, 'Weber, Aaron', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(7, 'Kofler, Michael', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(8, 'Kramer, David', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(9, 'Raymond, Eric', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(10, 'Fogel, Karl', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(11, 'Douglas, Korry', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(12, 'Douglas, Susan', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(13, 'Shklar, Leon', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(14, 'Rosen, Richard', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(15, 'Woychowsky, Edmond', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(16, 'Taylor, Arlene G.', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(17, 'Stueart, Robert D.', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(18, 'Moran, Barbara B.', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(19, 'Morville, Peter', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(20, 'Rosenfeld, Louis', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(21, 'Robinson, Mark', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(22, 'Bracking, Sarah', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(23, 'Huffington, Arianna Stassinopoulos', NULL, 'p', NULL, '2007-11-29', '2007-11-29'),
(24, 'Hancock, Graham', NULL, 'p', NULL, '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_carrier_type`
--

CREATE TABLE `mst_carrier_type` (
  `id` int(11) NOT NULL,
  `carrier_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `code2` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mst_carrier_type`
--

INSERT INTO `mst_carrier_type` (`id`, `carrier_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'audio cartridge', 'sg', 'g', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(2, 'audio cylinder', 'se', 'e', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(3, 'audio disc', 'sd', 'd', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(4, 'sound track reel', 'si', 'i', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(5, 'audio roll', 'sq', 'q', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(6, 'audiocassette', 'ss', 's', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(7, 'audiotape reel', 'st', 't', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(8, 'other (audio)', 'sz', 'z', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(9, 'computer card', 'ck', 'k', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(10, 'computer chip cartridge', 'cb', 'b', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(11, 'computer disc', 'cd', 'd', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(12, 'computer disc cartridge', 'ce', 'e', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(13, 'computer tape cartridge', 'ca', 'a', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(14, 'computer tape cassette', 'cf', 'f', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(15, 'computer tape reel', 'ch', 'h', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(16, 'online resource', 'cr', 'r', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(17, 'other (computer)', 'cz', 'z', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(18, 'aperture card', 'ha', 'a', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(19, 'microfiche', 'he', 'e', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(20, 'microfiche cassette', 'hf', 'f', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(21, 'microfilm cartridge', 'hb', 'b', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(22, 'microfilm cassette', 'hc', 'c', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(23, 'microfilm reel', 'hd', 'd', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(24, 'microfilm roll', 'hj', 'j', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(25, 'microfilm slip', 'hh', 'h', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(26, 'microopaque', 'hg', 'g', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(27, 'other (microform)', 'hz', 'z', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(28, 'microscope slide', 'pp', 'p', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(29, 'other (microscope)', 'pz', 'z', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(30, 'film cartridge', 'mc', 'c', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(31, 'film cassette', 'mf', 'f', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(32, 'film reel', 'mr', 'r', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(33, 'film roll', 'mo', 'o', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(34, 'filmslip', 'gd', 'd', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(35, 'filmstrip', 'gf', 'f', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(36, 'filmstrip cartridge', 'gc', 'c', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(37, 'overhead transparency', 'gt', 't', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(38, 'slide', 'gs', 's', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(39, 'other (projected image)', 'mz', 'z', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(40, 'stereograph card', 'eh', 'h', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(41, 'stereograph disc', 'es', 's', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(42, 'other (stereographic)', 'ez', 'z', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(43, 'card', 'no', 'o', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(44, 'flipchart', 'nn', 'n', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(45, 'roll', 'na', 'a', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(46, 'sheet', 'nb', 'b', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(47, 'volume', 'nc', 'c', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(48, 'object', 'nr', 'r', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(49, 'other (unmediated)', 'nz', '', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(50, 'video cartridge', 'vc', '', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(51, 'videocassette', 'vf', '', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(52, 'videodisc', 'vd', '', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(53, 'videotape reel', 'vr', '', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(54, 'other (video)', 'vz', '', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(55, 'unspecified', 'zu', 'u', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(56, 'Thẻ sinh viên', 'ca', 'c', '2024-05-05 00:00:00', '2024-05-05 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_coll_type`
--

CREATE TABLE `mst_coll_type` (
  `coll_type_id` int(3) NOT NULL,
  `coll_type_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mst_coll_type`
--

INSERT INTO `mst_coll_type` (`coll_type_id`, `coll_type_name`, `input_date`, `last_update`) VALUES
(1, 'Reference', '2007-11-29', '2007-11-29'),
(2, 'Textbook', '2007-11-29', '2007-11-29'),
(3, 'Fiction', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_content_type`
--

CREATE TABLE `mst_content_type` (
  `id` int(11) NOT NULL,
  `content_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `code2` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mst_content_type`
--

INSERT INTO `mst_content_type` (`id`, `content_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'cartographic dataset', 'crd', 'e', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(2, 'cartographic image', 'cri', 'e', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(3, 'cartographic moving image', 'crm', 'e', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(4, 'cartographic tactile image', 'crt', 'e', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(5, 'cartographic tactile three-dimensional form', 'crn', 'e', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(6, 'cartographic three-dimensional form', 'crf', 'e', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(7, 'computer dataset', 'cod', 'm', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(8, 'computer program', 'cop', 'm', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(9, 'notated movement', 'ntv', 'a', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(10, 'notated music', 'ntm', 'c', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(11, 'performed music', 'prm', 'j', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(12, 'sounds', 'snd', 'i', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(13, 'spoken word', 'spw', 'i', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(14, 'still image', 'sti', 'k', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(15, 'tactile image', 'tci', 'k', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(16, 'tactile notated music', 'tcm', 'c', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(17, 'tactile notated movement', 'tcn', 'a', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(18, 'tactile text', 'tct', 'a', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(19, 'tactile three-dimensional form', 'tcf', 'r', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(20, 'text', 'txt', 'a', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(21, 'three-dimensional form', 'tdf', 'r', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(22, 'three-dimensional moving image', 'tdm', 'g', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(23, 'two-dimensional moving image', 'tdi', 'g', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(24, 'other', 'xxx', 'o', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(25, 'unspecified', 'zzz', '', '2024-04-25 12:35:06', '2024-04-25 12:35:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_custom_field`
--

CREATE TABLE `mst_custom_field` (
  `field_id` int(11) NOT NULL,
  `primary_table` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbfield` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('text','checklist','numeric','dropdown','longtext','choice','date') COLLATE utf8_unicode_ci NOT NULL,
  `default` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max` int(11) DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `indexed` tinyint(1) DEFAULT NULL,
  `class` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `width` int(5) DEFAULT '100',
  `note` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_frequency`
--

CREATE TABLE `mst_frequency` (
  `frequency_id` int(11) NOT NULL,
  `frequency` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `language_prefix` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_increment` smallint(6) DEFAULT NULL,
  `time_unit` enum('day','week','month','year') COLLATE utf8_unicode_ci DEFAULT 'day',
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mst_frequency`
--

INSERT INTO `mst_frequency` (`frequency_id`, `frequency`, `language_prefix`, `time_increment`, `time_unit`, `input_date`, `last_update`) VALUES
(1, 'Weekly', 'en', 1, 'week', '2009-05-23', '2009-05-23'),
(2, 'Bi-weekly', 'en', 2, 'week', '2009-05-23', '2009-05-23'),
(3, 'Fourth-Nightly', 'en', 14, 'day', '2009-05-23', '2009-05-23'),
(4, 'Monthly', 'en', 1, 'month', '2009-05-23', '2009-05-23'),
(5, 'Bi-Monthly', 'en', 2, 'month', '2009-05-23', '2009-05-23'),
(6, 'Quarterly', 'en', 3, 'month', '2009-05-23', '2009-05-23'),
(7, '3 Times a Year', 'en', 4, 'month', '2009-05-23', '2009-05-23'),
(8, 'Annualy', 'en', 1, 'year', '2009-05-23', '2009-05-23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_gmd`
--

CREATE TABLE `mst_gmd` (
  `gmd_id` int(11) NOT NULL,
  `gmd_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gmd_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mst_gmd`
--

INSERT INTO `mst_gmd` (`gmd_id`, `gmd_code`, `gmd_name`, `icon_image`, `input_date`, `last_update`) VALUES
(1, 'TE', 'Text', NULL, '2024-04-25', '2024-04-25'),
(2, 'AR', 'Art Original', NULL, '2024-04-25', '2024-04-25'),
(3, 'CH', 'Chart', NULL, '2024-04-25', '2024-04-25'),
(4, 'CO', 'Computer Software', NULL, '2024-04-25', '2024-04-25'),
(5, 'DI', 'Diorama', NULL, '2024-04-25', '2024-04-25'),
(6, 'FI', 'Filmstrip', NULL, '2024-04-25', '2024-04-25'),
(7, 'FL', 'Flash Card', NULL, '2024-04-25', '2024-04-25'),
(8, 'GA', 'Game', NULL, '2024-04-25', '2024-04-25'),
(9, 'GL', 'Globe', NULL, '2024-04-25', '2024-04-25'),
(10, 'KI', 'Kit', NULL, '2024-04-25', '2024-04-25'),
(11, 'MA', 'Map', NULL, '2024-04-25', '2024-04-25'),
(12, 'MI', 'Microform', NULL, '2024-04-25', '2024-04-25'),
(13, 'MN', 'Manuscript', NULL, '2024-04-25', '2024-04-25'),
(14, 'MO', 'Model', NULL, '2024-04-25', '2024-04-25'),
(15, 'MP', 'Motion Picture', NULL, '2024-04-25', '2024-04-25'),
(16, 'MS', 'Microscope Slide', NULL, '2024-04-25', '2024-04-25'),
(17, 'MU', 'Music', NULL, '2024-04-25', '2024-04-25'),
(18, 'PI', 'Picture', NULL, '2024-04-25', '2024-04-25'),
(19, 'RE', 'Realia', NULL, '2024-04-25', '2024-04-25'),
(20, 'SL', 'Slide', NULL, '2024-04-25', '2024-04-25'),
(21, 'SO', 'Sound Recording', NULL, '2024-04-25', '2024-04-25'),
(22, 'TD', 'Technical Drawing', NULL, '2024-04-25', '2024-04-25'),
(23, 'TR', 'Transparency', NULL, '2024-04-25', '2024-04-25'),
(24, 'VI', 'Video Recording', NULL, '2024-04-25', '2024-04-25'),
(25, 'EQ', 'Equipment', NULL, '2024-04-25', '2024-04-25'),
(26, 'CF', 'Computer File', NULL, '2024-04-25', '2024-04-25'),
(27, 'CA', 'Cartographic Material', NULL, '2024-04-25', '2024-04-25'),
(28, 'CD', 'CD-ROM', NULL, '2024-04-25', '2024-04-25'),
(29, 'MV', 'Multimedia', NULL, '2024-04-25', '2024-04-25'),
(30, 'ER', 'Electronic Resource', NULL, '2024-04-25', '2024-04-25'),
(31, 'DVD', 'Digital Versatile Disc', NULL, '2024-04-25', '2024-04-25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_item_status`
--

CREATE TABLE `mst_item_status` (
  `item_status_id` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `item_status_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rules` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_loan` smallint(1) NOT NULL DEFAULT '0',
  `skip_stock_take` smallint(1) NOT NULL DEFAULT '0',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mst_item_status`
--

INSERT INTO `mst_item_status` (`item_status_id`, `item_status_name`, `rules`, `no_loan`, `skip_stock_take`, `input_date`, `last_update`) VALUES
('R', 'Repair', 'a:1:{i:0;s:1:\"1\";}', 1, 1, '2024-04-25', '2024-04-25'),
('NL', 'No Loan', 'a:1:{i:0;s:1:\"1\";}', 1, 1, '2024-04-25', '2024-04-25'),
('MIS', 'Missing', NULL, 1, 1, '2024-04-25', '2024-04-25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_label`
--

CREATE TABLE `mst_label` (
  `label_id` int(11) NOT NULL,
  `label_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `label_desc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label_image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `mst_label`
--

INSERT INTO `mst_label` (`label_id`, `label_name`, `label_desc`, `label_image`, `input_date`, `last_update`) VALUES
(1, 'label-new', 'New Title', 'label-new.png', '2024-04-25', '2024-04-25'),
(2, 'label-favorite', 'Favorite Title', 'label-favorite.png', '2024-04-25', '2024-04-25'),
(3, 'label-multimedia', 'Multimedia', 'label-multimedia.png', '2024-04-25', '2024-04-25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_language`
--

CREATE TABLE `mst_language` (
  `language_id` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `language_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mst_language`
--

INSERT INTO `mst_language` (`language_id`, `language_name`, `input_date`, `last_update`) VALUES
('id', 'Indonesia', '2024-04-25', '2024-04-25'),
('en', 'English', '2024-04-25', '2024-04-25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_loan_rules`
--

CREATE TABLE `mst_loan_rules` (
  `loan_rules_id` int(11) NOT NULL,
  `member_type_id` int(11) NOT NULL DEFAULT '0',
  `coll_type_id` int(11) DEFAULT '0',
  `gmd_id` int(11) DEFAULT '0',
  `loan_limit` int(3) DEFAULT '0',
  `loan_periode` int(3) DEFAULT '0',
  `reborrow_limit` int(3) DEFAULT '0',
  `fine_each_day` int(3) DEFAULT '0',
  `grace_periode` int(2) DEFAULT '0',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_location`
--

CREATE TABLE `mst_location` (
  `location_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `location_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mst_location`
--

INSERT INTO `mst_location` (`location_id`, `location_name`, `input_date`, `last_update`) VALUES
('SL', 'My Library', '2024-04-25', '2024-04-25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_media_type`
--

CREATE TABLE `mst_media_type` (
  `id` int(11) NOT NULL,
  `media_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `code2` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mst_media_type`
--

INSERT INTO `mst_media_type` (`id`, `media_type`, `code`, `code2`, `input_date`, `last_update`) VALUES
(1, 'audio', 's', 's', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(2, 'computer', 'c', 'c', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(3, 'microform', 'h', 'h', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(4, 'microscopic', 'p', '', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(5, 'projected', 'g', 'g', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(6, 'stereographic', 'e', '', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(7, 'unmediated', 'n', 't', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(8, 'video', 'v', 'v', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(9, 'other', 'x', 'z', '2024-04-25 12:35:06', '2024-04-25 12:35:06'),
(10, 'unspecified', 'z', 'z', '2024-04-25 12:35:06', '2024-04-25 12:35:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_member_type`
--

CREATE TABLE `mst_member_type` (
  `member_type_id` int(11) NOT NULL,
  `member_type_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `loan_limit` int(11) NOT NULL,
  `loan_periode` int(11) NOT NULL,
  `enable_reserve` int(1) NOT NULL DEFAULT '0',
  `reserve_limit` int(11) NOT NULL DEFAULT '0',
  `member_periode` int(11) NOT NULL,
  `reborrow_limit` int(11) NOT NULL,
  `fine_each_day` int(11) NOT NULL,
  `grace_periode` int(2) DEFAULT '0',
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mst_member_type`
--

INSERT INTO `mst_member_type` (`member_type_id`, `member_type_name`, `loan_limit`, `loan_periode`, `enable_reserve`, `reserve_limit`, `member_periode`, `reborrow_limit`, `fine_each_day`, `grace_periode`, `input_date`, `last_update`) VALUES
(1, 'Standard', 2, 7, 1, 2, 365, 1, 0, 0, '2024-04-25', '2024-04-25'),
(2, 'Sinh viên', 20, 30, 1, 2, 300, 2, 10000, 3, '2024-04-26', '2024-04-26'),
(3, 'Giảng Viên', 50, 100, 1, 5, 700, 10, 2000, 50, '2024-04-26', '2024-04-26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_module`
--

CREATE TABLE `mst_module` (
  `module_id` int(3) NOT NULL,
  `module_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `module_path` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `mst_module`
--

INSERT INTO `mst_module` (`module_id`, `module_name`, `module_path`, `module_desc`) VALUES
(1, 'bibliography', 'bibliography', 'Manage your bibliographic/catalog and items/copies database'),
(2, 'circulation', 'circulation', 'Module for doing library items circulation such as loan and return'),
(3, 'membership', 'membership', 'Manage your library membership and membership type'),
(4, 'master_file', 'master_file', 'Manage your referential data that will be used by other modules'),
(5, 'stock_take', 'stock_take', 'Ease your pain in doing library stock opname process'),
(6, 'system', 'system', 'Configure system behaviour, user and backups'),
(7, 'reporting', 'reporting', 'Real time and dynamic report about library collections and circulation'),
(8, 'serial_control', 'serial_control', 'Serial publication management');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_place`
--

CREATE TABLE `mst_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mst_place`
--

INSERT INTO `mst_place` (`place_id`, `place_name`, `input_date`, `last_update`) VALUES
(1, 'Hoboken, NJ', '2007-11-29', '2007-11-29'),
(2, 'Sebastopol, CA', '2007-11-29', '2007-11-29'),
(3, 'Indianapolis', '2007-11-29', '2007-11-29'),
(4, 'Upper Saddle River, NJ', '2007-11-29', '2007-11-29'),
(5, 'Westport, Conn.', '2007-11-29', '2007-11-29'),
(6, 'Cambridge, Mass', '2007-11-29', '2007-11-29'),
(7, 'London', '2007-11-29', '2007-11-29'),
(8, 'New York', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_publisher`
--

CREATE TABLE `mst_publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mst_publisher`
--

INSERT INTO `mst_publisher` (`publisher_id`, `publisher_name`, `input_date`, `last_update`) VALUES
(1, 'Wiley', '2007-11-29', '2007-11-29'),
(2, 'OReilly', '2007-11-29', '2007-11-29'),
(3, 'Apress', '2007-11-29', '2007-11-29'),
(4, 'Sams', '2007-11-29', '2007-11-29'),
(5, 'John Wiley', '2007-11-29', '2007-11-29'),
(6, 'Prentice Hall', '2007-11-29', '2007-11-29'),
(7, 'Libraries Unlimited', '2007-11-29', '2007-11-29'),
(8, 'Taylor & Francis Inc.', '2007-11-29', '2007-11-29'),
(9, 'Palgrave Macmillan', '2007-11-29', '2007-11-29'),
(10, 'Crown publishers', '2007-11-29', '2007-11-29'),
(11, 'Atlantic Monthly Press', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_relation_term`
--

CREATE TABLE `mst_relation_term` (
  `ID` int(11) NOT NULL,
  `rt_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `rt_desc` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mst_relation_term`
--

INSERT INTO `mst_relation_term` (`ID`, `rt_id`, `rt_desc`) VALUES
(1, 'U', 'Use'),
(2, 'UF', 'Use For'),
(3, 'BT', 'Broader Term'),
(4, 'NT', 'Narrower Term'),
(5, 'RT', 'Related Term'),
(6, 'SA', 'See Also');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_servers`
--

CREATE TABLE `mst_servers` (
  `server_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uri` text COLLATE utf8_unicode_ci NOT NULL,
  `server_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 - p2p server; 2 - z3950; 3 - z3950  SRU',
  `input_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_supplier`
--

CREATE TABLE `mst_supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `e_mail` char(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_topic`
--

CREATE TABLE `mst_topic` (
  `topic_id` int(11) NOT NULL,
  `topic` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `topic_type` enum('t','g','n','tm','gr','oc') COLLATE utf8_unicode_ci NOT NULL,
  `auth_list` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Classification Code',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mst_topic`
--

INSERT INTO `mst_topic` (`topic_id`, `topic`, `topic_type`, `auth_list`, `classification`, `input_date`, `last_update`) VALUES
(1, 'Programming', 't', NULL, '', '2007-11-29', '2007-11-29'),
(2, 'Website', 't', NULL, '', '2007-11-29', '2007-11-29'),
(3, 'Operating System', 't', NULL, '', '2007-11-29', '2007-11-29'),
(4, 'Linux', 't', NULL, '', '2007-11-29', '2007-11-29'),
(5, 'Computer', 't', NULL, '', '2007-11-29', '2007-11-29'),
(6, 'Database', 't', NULL, '', '2007-11-29', '2007-11-29'),
(7, 'RDBMS', 't', NULL, '', '2007-11-29', '2007-11-29'),
(8, 'Open Source', 't', NULL, '', '2007-11-29', '2007-11-29'),
(9, 'Project', 't', NULL, '', '2007-11-29', '2007-11-29'),
(10, 'Design', 't', NULL, '', '2007-11-29', '2007-11-29'),
(11, 'Information', 't', NULL, '', '2007-11-29', '2007-11-29'),
(12, 'Organization', 't', NULL, '', '2007-11-29', '2007-11-29'),
(13, 'Metadata', 't', NULL, '', '2007-11-29', '2007-11-29'),
(14, 'Library', 't', NULL, '', '2007-11-29', '2007-11-29'),
(15, 'Corruption', 't', NULL, '', '2007-11-29', '2007-11-29'),
(16, 'Development', 't', NULL, '', '2007-11-29', '2007-11-29'),
(17, 'Poverty', 't', NULL, '', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_visitor_room`
--

CREATE TABLE `mst_visitor_room` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_code` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Code for identification each room',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_voc_ctrl`
--

CREATE TABLE `mst_voc_ctrl` (
  `vocabolary_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `rt_id` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `related_topic_id` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `scope` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `plugins`
--

CREATE TABLE `plugins` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` json DEFAULT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `uid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reserve`
--

CREATE TABLE `reserve` (
  `reserve_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `reserve_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `search_biblio`
--

CREATE TABLE `search_biblio` (
  `biblio_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `edition` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn_issn` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` text COLLATE utf8_unicode_ci,
  `topic` text COLLATE utf8_unicode_ci,
  `gmd` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_place` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spec_detail_info` text COLLATE utf8_unicode_ci,
  `carrier_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `media_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `location` text COLLATE utf8_unicode_ci,
  `publish_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `series_title` text COLLATE utf8_unicode_ci,
  `items` text COLLATE utf8_unicode_ci,
  `collection_types` text COLLATE utf8_unicode_ci,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opac_hide` smallint(1) NOT NULL DEFAULT '0',
  `promoted` smallint(1) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `collation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='index table for advance searching technique for SLiMS';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `serial`
--

CREATE TABLE `serial` (
  `serial_id` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `period` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `biblio_id` int(11) DEFAULT NULL,
  `gmd_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(3) NOT NULL,
  `setting_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_value`) VALUES
(1, 'library_name', 's:11:\"Library Edu\";'),
(2, 'library_subname', 's:49:\"Thư viện toàn diên, phát triển tri thức\";'),
(3, 'template', 'a:22:{s:5:\"theme\";s:7:\"edusoft\";s:3:\"css\";s:26:\"template/edusoft/style.css\";s:10:\"responsive\";s:1:\"1\";s:23:\"classic_library_subname\";s:1:\"0\";s:24:\"classic_slide_transition\";s:4:\"fade\";s:23:\"classic_slide_animation\";s:4:\"none\";s:19:\"classic_slide_delay\";s:4:\"5000\";s:26:\"classic_popular_collection\";s:1:\"1\";s:31:\"classic_popular_collection_item\";s:1:\"6\";s:22:\"classic_new_collection\";s:1:\"1\";s:27:\"classic_new_collection_item\";s:1:\"6\";s:18:\"classic_top_reader\";s:1:\"1\";s:18:\"classic_suggestion\";s:1:\"1\";s:11:\"classic_map\";s:1:\"0\";s:16:\"classic_map_link\";s:264:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.288723306273!2d106.80038831428296!3d-6.225610995493402!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f14efd9abf05%3A0x1659580cc6981749!2sPerpustakaan+Kemendikbud!5e0!3m2!1sid!2sid!4v1516601731218\";s:16:\"classic_map_desc\";s:238:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque et nunc mi. Donec vehicula turpis a quam venenatis posuere. Aliquam nibh lectus, gravida et leo sit amet, dignissim dapibus mauris.Telp. (021) 9172638Fax. (021) 9172638\";s:15:\"classic_fb_link\";s:45:\"https://www.facebook.com/groups/senayan.slims\";s:20:\"classic_twitter_link\";s:34:\"https://twitter.com/slims_official\";s:20:\"classic_youtube_link\";s:19:\"https://youtube.com\";s:22:\"classic_instagram_link\";s:31:\"https://instagram.com/slims.sdc\";s:23:\"classic_footer_about_us\";s:234:\"As a complete Library Management System, SLiMS (Senayan Library Management System) has many features that will help libraries and librarians to do their job easily and quickly. Follow this link to show some features provided by SLiMS.\";s:17:\"visitor_log_voice\";s:1:\"1\";}'),
(4, 'admin_template', 'a:2:{s:5:\"theme\";s:7:\"default\";s:3:\"css\";s:32:\"admin_template/default/style.css\";}'),
(5, 'default_lang', 's:5:\"vi_VN\";'),
(6, 'opac_result_num', 's:2:\"10\";'),
(7, 'enable_promote_titles', 'N;'),
(8, 'quick_return', 'b:1;'),
(9, 'allow_loan_date_change', 'b:0;'),
(10, 'loan_limit_override', 'b:0;'),
(11, 'enable_xml_detail', 'b:1;'),
(12, 'enable_xml_result', 'b:1;'),
(13, 'allow_file_download', 'b:1;'),
(14, 'session_timeout', 's:4:\"7200\";'),
(15, 'circulation_receipt', 'b:0;'),
(16, 'barcode_encoding', 's:7:\"code128\";'),
(17, 'ignore_holidays_fine_calc', 'b:0;'),
(18, 'barcode_print_settings', 'a:12:{s:19:\"barcode_page_margin\";d:0.200000000000000011102230246251565404236316680908203125;s:21:\"barcode_items_per_row\";i:3;s:20:\"barcode_items_margin\";d:0.1000000000000000055511151231257827021181583404541015625;s:17:\"barcode_box_width\";i:7;s:18:\"barcode_box_height\";i:5;s:27:\"barcode_include_header_text\";i:1;s:17:\"barcode_cut_title\";i:50;s:19:\"barcode_header_text\";s:0:\"\";s:13:\"barcode_fonts\";s:41:\"Arial, Verdana, Helvetica, \'Trebuchet MS\'\";s:17:\"barcode_font_size\";i:11;s:13:\"barcode_scale\";i:70;s:19:\"barcode_border_size\";i:1;}'),
(19, 'label_print_settings', 'a:10:{s:11:\"page_margin\";d:0.200000000000000011102230246251565404236316680908203125;s:13:\"items_per_row\";i:3;s:12:\"items_margin\";d:0.05000000000000000277555756156289135105907917022705078125;s:9:\"box_width\";i:8;s:10:\"box_height\";d:3.29999999999999982236431605997495353221893310546875;s:19:\"include_header_text\";i:1;s:11:\"header_text\";s:0:\"\";s:5:\"fonts\";s:41:\"Arial, Verdana, Helvetica, \'Trebuchet MS\'\";s:9:\"font_size\";i:11;s:11:\"border_size\";i:1;}'),
(20, 'membercard_print_settings', 'a:1:{s:5:\"print\";a:1:{s:10:\"membercard\";a:61:{s:11:\"card_factor\";s:12:\"37.795275591\";s:21:\"card_include_id_label\";i:1;s:23:\"card_include_name_label\";i:1;s:22:\"card_include_pin_label\";i:1;s:23:\"card_include_inst_label\";i:0;s:24:\"card_include_email_label\";i:0;s:26:\"card_include_address_label\";i:1;s:26:\"card_include_barcode_label\";i:1;s:26:\"card_include_expired_label\";i:1;s:14:\"card_box_width\";d:8.5999999999999996447286321199499070644378662109375;s:15:\"card_box_height\";d:5.4000000000000003552713678800500929355621337890625;s:9:\"card_logo\";s:8:\"logo.png\";s:21:\"card_front_logo_width\";s:0:\"\";s:22:\"card_front_logo_height\";s:0:\"\";s:20:\"card_front_logo_left\";s:0:\"\";s:19:\"card_front_logo_top\";s:0:\"\";s:20:\"card_back_logo_width\";s:0:\"\";s:21:\"card_back_logo_height\";s:0:\"\";s:19:\"card_back_logo_left\";s:0:\"\";s:18:\"card_back_logo_top\";s:0:\"\";s:15:\"card_photo_left\";s:0:\"\";s:14:\"card_photo_top\";s:0:\"\";s:16:\"card_photo_width\";d:1.5;s:17:\"card_photo_height\";d:1.8000000000000000444089209850062616169452667236328125;s:23:\"card_front_header1_text\";s:19:\"Library Member Card\";s:28:\"card_front_header1_font_size\";s:2:\"12\";s:23:\"card_front_header2_text\";s:10:\"My Library\";s:28:\"card_front_header2_font_size\";s:2:\"12\";s:22:\"card_back_header1_text\";s:10:\"My Library\";s:27:\"card_back_header1_font_size\";s:2:\"12\";s:22:\"card_back_header2_text\";s:35:\"My Library Full Address and Website\";s:27:\"card_back_header2_font_size\";s:1:\"5\";s:17:\"card_header_color\";s:7:\"#0066FF\";s:18:\"card_bio_font_size\";s:2:\"11\";s:20:\"card_bio_font_weight\";s:4:\"bold\";s:20:\"card_bio_label_width\";s:3:\"100\";s:9:\"card_city\";s:9:\"City Name\";s:10:\"card_title\";s:15:\"Library Manager\";s:14:\"card_officials\";s:14:\"Librarian Name\";s:17:\"card_officials_id\";s:12:\"Librarian ID\";s:15:\"card_stamp_file\";s:9:\"stamp.png\";s:19:\"card_signature_file\";s:13:\"signature.png\";s:15:\"card_stamp_left\";s:0:\"\";s:14:\"card_stamp_top\";s:0:\"\";s:16:\"card_stamp_width\";s:0:\"\";s:17:\"card_stamp_height\";s:0:\"\";s:13:\"card_exp_left\";s:0:\"\";s:12:\"card_exp_top\";s:0:\"\";s:14:\"card_exp_width\";s:0:\"\";s:15:\"card_exp_height\";s:0:\"\";s:18:\"card_barcode_scale\";i:100;s:17:\"card_barcode_left\";s:0:\"\";s:16:\"card_barcode_top\";s:0:\"\";s:18:\"card_barcode_width\";s:0:\"\";s:19:\"card_barcode_height\";s:0:\"\";s:10:\"card_rules\";s:120:\"<ul><li>This card is published by Library.</li><li>Please return this card to its owner if you found it.</li></ul>\";s:20:\"card_rules_font_size\";s:1:\"8\";s:12:\"card_address\";s:76:\"My Library<br />website: http://slims.web.id, email : librarian@slims.web.id\";s:22:\"card_address_font_size\";s:1:\"7\";s:17:\"card_address_left\";s:0:\"\";s:16:\"card_address_top\";s:0:\"\";}}}'),
(21, 'enable_visitor_limitation', 's:1:\"0\";'),
(22, 'time_visitor_limitation', 's:2:\"60\";'),
(23, 'logo_image', NULL),
(24, 'timezone', 's:12:\"Asia/Jakarta\";'),
(25, 'search_engine', 's:34:\"SLiMS\\\\SearchEngine\\\\DefaultEngine\";'),
(26, 'enable_counter_by_ip', 's:1:\"1\";'),
(27, 'allowed_counter_ip', 'a:1:{i:0;s:9:\"127.0.0.1\";}'),
(28, 'reserve_direct_database', 's:1:\"1\";'),
(29, 'reserve_on_loan_only', 's:1:\"0\";'),
(35, 'spellchecker_enabled', 'b:1;'),
(31, 'enable_chbox_confirm', 'i:1;'),
(32, 'http', 'a:2:{s:6:\"client\";a:2:{s:6:\"verify\";b:1;s:7:\"timeout\";i:60;}s:5:\"cache\";a:1:{s:8:\"lifetime\";i:300;}}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stock_take`
--

CREATE TABLE `stock_take` (
  `stock_take_id` int(11) NOT NULL,
  `stock_take_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `init_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `total_item_stock_taked` int(11) DEFAULT NULL,
  `total_item_lost` int(11) DEFAULT NULL,
  `total_item_exists` int(11) DEFAULT '0',
  `total_item_loan` int(11) DEFAULT NULL,
  `stock_take_users` mediumtext COLLATE utf8_unicode_ci,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `report_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stock_take_item`
--

CREATE TABLE `stock_take_item` (
  `stock_take_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gmd_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coll_type_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('e','m','u','l') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'm',
  `checked_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_log`
--

CREATE TABLE `system_log` (
  `log_id` int(11) NOT NULL,
  `log_type` enum('staff','member','system') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'staff',
  `id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sub_module` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_msg` text COLLATE utf8_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `system_log`
--

INSERT INTO `system_log` (`log_id`, `log_type`, `id`, `log_location`, `sub_module`, `action`, `log_msg`, `log_date`) VALUES
(1, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 14:54:11'),
(2, 'staff', '1', 'system', 'Global Config', 'Update', 'Admin change application global configuration', '2024-04-26 14:57:12'),
(3, 'staff', '1', 'system', 'User', 'Add', 'Admin add new user (Mai Huy Hoạt) with username (hoatmh)', '2024-04-26 14:59:35'),
(4, 'staff', '1', 'system/user', 'User image', 'Upload', 'Admin upload image file user_hoatmh.png', '2024-04-26 14:59:35'),
(5, 'staff', '1', 'system', 'User', 'Add', 'Admin add new user (Nguyễn Minh Huy) with username (huy)', '2024-04-26 15:00:39'),
(6, 'staff', '1', 'system/user', 'User image', 'Upload', 'Admin upload image file user_huy.png', '2024-04-26 15:00:39'),
(7, 'staff', '1', 'system', 'User', 'Add', 'Admin add new user (Hoàng Thuỳ Linh) with username (linh)', '2024-04-26 15:01:10'),
(8, 'staff', '1', 'system/user', 'User image', 'Upload', 'Admin upload image file user_linh.png', '2024-04-26 15:01:10'),
(9, 'staff', '1', 'system', 'User', 'Update', 'Admin update user data (Mai Huy Hoạt) with username (hoat)', '2024-04-26 15:01:38'),
(10, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-26 15:07:35'),
(11, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 15:07:43'),
(12, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 15:07:52'),
(13, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-26 15:08:26'),
(14, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 15:08:31'),
(15, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-26 15:08:36'),
(16, 'staff', 'hoat', 'Login', '', '', 'Login success for user hoat from address 127.0.0.1', '2024-04-26 15:08:41'),
(17, 'staff', '2', 'system', '', '', 'Mai Huy Hoạt Log Out from application from address 127.0.0.1', '2024-04-26 15:08:59'),
(18, 'staff', 'huy', 'Login', '', '', 'Login success for user huy from address 127.0.0.1', '2024-04-26 15:09:03'),
(19, 'staff', '3', 'system', '', '', 'Nguyễn Minh Huy Log Out from application from address 127.0.0.1', '2024-04-26 15:09:17'),
(20, 'staff', 'linh', 'Login', '', '', 'Login success for user linh from address 127.0.0.1', '2024-04-26 15:09:23'),
(21, 'member', 'hoat', 'Login', '', '', 'Login FAILED for member hoat from address 127.0.0.1', '2024-04-26 15:20:45'),
(22, 'staff', '4', 'system', '', '', 'Hoàng Thuỳ Linh Log Out from application from address 127.0.0.1', '2024-04-26 15:21:10'),
(23, 'staff', 'hoat', 'Login', '', '', 'Login success for user hoat from address 127.0.0.1', '2024-04-26 15:21:16'),
(24, 'staff', '2', 'system', '', '', 'Mai Huy Hoạt Log Out from application from address 127.0.0.1', '2024-04-26 15:21:25'),
(25, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 15:21:31'),
(26, 'staff', '1', 'membership', 'Add', 'OK', 'Admin add new member (Nguyễn Văn A) with ID (221001781)', '2024-04-26 15:35:45'),
(27, 'staff', '1', 'membership', 'Add', 'OK', 'Admin add new member (Nguyễn Thị B) with ID (221001782)', '2024-04-26 15:44:21'),
(28, 'member', '221001781', 'Login', '', '', 'Login success for member 221001781 from address 127.0.0.1', '2024-04-26 15:44:43'),
(29, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2024-04-26 15:48:47'),
(30, 'member', '221001782', 'Login', '', '', 'Login success for member 221001782 from address 127.0.0.1', '2024-04-26 15:49:09'),
(31, 'staff', 'linh', 'Login', '', '', 'Login success for user linh from address 127.0.0.1', '2024-04-26 15:49:35'),
(32, 'staff', '4', 'system', '', '', 'Hoàng Thuỳ Linh Log Out from application from address 127.0.0.1', '2024-04-26 15:49:58'),
(33, 'staff', '221001782', 'Login', '', '', 'Login FAILED for user 221001782 from address 127.0.0.1', '2024-04-26 15:50:09'),
(34, 'staff', '221001782', 'Login', '', '', 'Login FAILED for user 221001782 from address 127.0.0.1', '2024-04-26 15:50:16'),
(35, 'staff', '221001782', 'Login', '', '', 'Login FAILED for user 221001782 from address 127.0.0.1', '2024-04-26 15:50:24'),
(36, 'member', '221001782', 'Login', '', '', 'Login success for member 221001782 from address 127.0.0.1', '2024-04-26 15:50:36'),
(37, 'member', 'linh', 'Login', '', '', 'Login FAILED for member linh from address 127.0.0.1', '2024-04-26 15:52:24'),
(38, 'staff', 'linh', 'Login', '', '', 'Login success for user linh from address 127.0.0.1', '2024-04-26 15:53:01'),
(39, 'staff', '1', 'system', 'User group', 'Add', 'Admin add new group (Nhân viên thư viện)', '2024-04-26 16:00:28'),
(40, 'staff', '1', 'system', 'User', 'Update', 'Admin update user data (Hoàng Thuỳ Linh) with username (linh)', '2024-04-26 16:00:41'),
(41, 'staff', '4', 'system', '', '', 'Hoàng Thuỳ Linh Log Out from application from address 127.0.0.1', '2024-04-26 16:00:46'),
(42, 'staff', 'linh', 'Login', '', '', 'Login success for user linh from address 127.0.0.1', '2024-04-26 16:00:51'),
(43, 'staff', '1', 'system', 'User', 'Update', 'Admin update user data (Hoàng Thuỳ Linh) with username (linh)', '2024-04-26 16:01:33'),
(44, 'staff', '1', 'system', 'Global Config', 'Update', 'Admin change application global configuration', '2024-04-26 16:03:14'),
(45, 'staff', '1', 'system', 'User', 'Update', 'Admin update user data (Hoàng Thuỳ Linh) with username (linh)', '2024-04-26 16:04:21'),
(46, 'staff', '1', 'system', 'User', 'Update', 'Admin update user data (Hoàng Thuỳ Linh) with username (linh)', '2024-04-26 16:04:38'),
(47, 'staff', 'linh', 'Login', '', '', 'Login success for user linh from address 127.0.0.1', '2024-04-26 16:05:47'),
(48, 'staff', 'hoat', 'Login', '', '', 'Login success for user hoat from address 127.0.0.1', '2024-04-26 16:06:04'),
(49, 'staff', '1', 'system', 'User', 'Update', 'Admin update user data (Hoàng Thuỳ Linh) with username (linh)', '2024-04-26 16:06:29'),
(50, 'staff', 'linh', 'Login', '', '', 'Login success for user linh from address 127.0.0.1', '2024-04-26 16:06:46'),
(51, 'staff', '1', 'system', 'User', 'Update', 'Admin update user data (Hoàng Thuỳ Linh) with username (linh)', '2024-04-26 16:07:10'),
(52, 'staff', '1', 'system', 'User', 'Update', 'Admin update user data (Hoàng Thuỳ Linh) with username (linh)', '2024-04-26 16:07:26'),
(53, 'staff', 'linh', 'Login', '', '', 'Login success for user linh from address 127.0.0.1', '2024-04-26 16:07:42'),
(54, 'member', '', 'circulation', 'Loan', 'Started', 'Admin start transaction with member ()', '2024-04-26 16:08:28'),
(55, 'member', '221001782', 'circulation', 'Loan', 'Started', 'Admin start transaction with member (221001782)', '2024-04-26 16:08:38'),
(56, 'member', '221001782', 'circulation', 'Loan', 'Add', 'Admin insert new loan (B00002) for member (221001782)', '2024-04-26 16:10:14'),
(57, 'member', '221001782', 'circulation', 'Transaction', 'finished', 'Admin finish circulation transaction with member (221001782)', '2024-04-26 16:11:39'),
(58, 'member', '221001782', 'circulation', 'Loan', 'Started', 'Admin start transaction with member (221001782)', '2024-04-26 16:11:46'),
(59, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-26 16:14:56'),
(60, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 16:15:10'),
(61, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-26 16:17:50'),
(62, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 16:30:19'),
(63, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-26 16:30:32'),
(64, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 16:46:49'),
(65, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 16:47:04'),
(66, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-26 16:51:15'),
(67, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 16:55:32'),
(68, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-26 16:56:52'),
(69, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:42'),
(70, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:42'),
(71, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:43'),
(72, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:43'),
(73, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:43'),
(74, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:44'),
(75, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:44'),
(76, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:44'),
(77, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:44'),
(78, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:45'),
(79, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:45'),
(80, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:45'),
(81, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:46'),
(82, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:46'),
(83, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:46'),
(84, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:47'),
(85, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:47'),
(86, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:47'),
(87, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:48'),
(88, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:48'),
(89, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:48'),
(90, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:49'),
(91, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:49'),
(92, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:49'),
(93, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:50'),
(94, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:50'),
(95, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:50'),
(96, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:51'),
(97, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:51'),
(98, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:51'),
(99, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:52'),
(100, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:18:52'),
(101, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 17:21:20'),
(102, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-26 17:21:43'),
(103, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 17:21:44'),
(104, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-26 17:22:16'),
(105, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 17:23:24'),
(106, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-26 17:23:27'),
(107, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 17:23:27'),
(108, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-26 17:24:04'),
(109, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 17:24:05'),
(110, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-26 17:30:16'),
(111, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 17:30:18'),
(112, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-26 17:30:34'),
(113, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 17:41:21'),
(114, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-26 17:41:26'),
(115, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 17:41:26'),
(116, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-26 17:41:29'),
(117, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 17:41:29'),
(118, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-26 17:41:42'),
(119, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 17:41:52'),
(120, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-26 17:42:09'),
(121, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:10'),
(122, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:10'),
(123, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:10'),
(124, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:11'),
(125, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:11'),
(126, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:11'),
(127, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:12'),
(128, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:12'),
(129, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:12'),
(130, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:13'),
(131, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:13'),
(132, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:13'),
(133, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:14'),
(134, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:14'),
(135, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:14'),
(136, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:15'),
(137, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:15'),
(138, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:15'),
(139, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:16'),
(140, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:16'),
(141, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:17'),
(142, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:17'),
(143, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:17'),
(144, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:18'),
(145, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:18'),
(146, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:18'),
(147, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:19'),
(148, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:19'),
(149, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:19'),
(150, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:20'),
(151, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:20'),
(152, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:20'),
(153, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:21'),
(154, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-04-26 17:42:21'),
(155, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 17:45:47'),
(156, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-26 17:45:52'),
(157, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-26 17:51:34'),
(158, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-27 09:04:24'),
(159, 'staff', '1', 'system', 'User', 'Update', 'Admin update user data (Mai Huy Hoạt) with username (hoat)', '2024-04-27 09:04:54'),
(160, 'staff', 'john', 'Login', '', '', 'Login success for user john from address 127.0.0.1', '2024-04-27 09:59:44'),
(161, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-27 10:08:51'),
(162, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-27 10:08:55'),
(163, 'staff', '1', 'membership', 'Add', 'OK', 'Admin add new member (Nguyễn Thị B) with ID (221001782)', '2024-04-27 10:25:35'),
(164, 'member', '12345', 'Login', '', '', 'Login success for member 12345 from address 127.0.0.1', '2024-04-27 10:53:12'),
(165, 'staff', '1', 'membership', 'Update', 'OK', 'Admin update member data (John Doe) with ID (12345)', '2024-04-27 10:55:57'),
(166, 'staff', '1', 'membership', 'Update', 'OK', 'Admin update member data (John Doe 2) with ID (123456)', '2024-04-27 10:56:57'),
(167, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2024-04-27 11:05:43'),
(168, 'member', '123456', 'Login', '', '', 'Login FAILED for member 123456 from address 127.0.0.1', '2024-04-27 11:05:50'),
(169, 'member', '12345', 'Login', '', '', 'Login success for member 12345 from address 127.0.0.1', '2024-04-27 11:05:53'),
(170, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2024-04-27 11:08:24'),
(171, 'member', '12345', 'Login', '', '', 'Login success for member 12345 from address 127.0.0.1', '2024-04-27 11:08:27'),
(172, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-27 13:59:48'),
(173, 'member', '12345', 'Login', '', '', 'Login FAILED for member 12345 from address 127.0.0.1', '2024-04-27 14:33:22'),
(174, 'member', '123456', 'Login', '', '', 'Login success for member 123456 from address 127.0.0.1', '2024-04-27 14:33:28'),
(175, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-27 17:48:37'),
(176, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-30 16:59:35'),
(177, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-30 17:00:14'),
(178, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-30 17:09:29'),
(179, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-30 17:09:45'),
(180, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-30 17:22:16'),
(181, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-30 17:35:35'),
(182, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-30 18:16:19'),
(183, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-30 18:17:06'),
(184, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-30 18:18:43'),
(185, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-04-30 18:18:49'),
(186, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-04-30 18:18:57'),
(187, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 07:15:05'),
(188, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-01 07:15:37'),
(189, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 07:15:40'),
(190, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-01 07:16:06'),
(191, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 07:16:18'),
(192, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 07:17:58'),
(193, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-01 07:18:45'),
(194, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 07:18:49'),
(195, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-01 07:18:58'),
(196, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 07:19:03'),
(197, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-01 07:19:15'),
(198, 'member', '123456', 'Login', '', '', 'Login success for member 123456 from address 127.0.0.1', '2024-05-01 07:27:28'),
(199, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2024-05-01 07:28:28'),
(200, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 07:46:32'),
(201, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-01 07:46:48'),
(202, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 07:47:59'),
(203, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-01 07:53:23'),
(204, 'member', '123456', 'Login', '', '', 'Login success for member 123456 from address 127.0.0.1', '2024-05-01 07:53:34'),
(205, 'staff', '123456', 'Login', '', '', 'Login FAILED for user 123456 from address 127.0.0.1', '2024-05-01 07:57:09'),
(206, 'member', '123456', 'Login', '', '', 'Login success for member 123456 from address 127.0.0.1', '2024-05-01 07:57:40'),
(207, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2024-05-01 07:58:54'),
(208, 'member', '123456', 'Login', '', '', 'Login success for member 123456 from address 127.0.0.1', '2024-05-01 07:59:02'),
(209, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 07:59:42'),
(210, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 15:05:29'),
(211, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-01 15:05:54'),
(212, 'staff', '123456', 'Login', '', '', 'Login FAILED for user 123456 from address 127.0.0.1', '2024-05-01 15:06:03'),
(213, 'member', '123456', 'Login', '', '', 'Login success for member 123456 from address 127.0.0.1', '2024-05-01 15:06:17'),
(214, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 15:06:37'),
(215, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-01 15:23:48'),
(216, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 15:46:48'),
(217, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-01 15:53:49'),
(218, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 15:53:54'),
(219, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-01 15:53:56'),
(220, 'staff', 'ẻqdf', 'Login', '', '', 'Login FAILED for user ẻqdf from address 127.0.0.1', '2024-05-01 15:53:59'),
(221, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 16:12:44'),
(222, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-01 16:28:28'),
(223, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 16:28:49'),
(224, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-01 16:30:38'),
(225, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 16:42:00'),
(226, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 16:42:12'),
(227, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-01 16:44:55'),
(228, 'staff', 'f', 'Login', '', '', 'Login FAILED for user f from address 127.0.0.1', '2024-05-01 16:45:04'),
(229, 'staff', 'f', 'Login', '', '', 'Login FAILED for user f from address 127.0.0.1', '2024-05-01 16:45:08'),
(230, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-01 17:25:11'),
(231, 'staff', '', 'Login', '', '', 'Login FAILED for user  from address 127.0.0.1', '2024-05-01 20:28:04'),
(232, 'staff', '', 'Login', '', '', 'Login FAILED for user  from address 127.0.0.1', '2024-05-01 21:00:01'),
(233, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 21:03:12'),
(234, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-01 21:04:54'),
(235, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 21:04:56'),
(236, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-01 21:13:00'),
(237, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-01 21:14:12'),
(238, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-01 21:14:50'),
(239, 'member', '123456', 'Login', '', '', 'Login success for member 123456 from address 127.0.0.1', '2024-05-01 21:17:19'),
(240, 'member', '', 'Login', '', '', 'Log Out from address 127.0.0.1', '2024-05-01 21:17:34'),
(241, 'member', '123456', 'Login', '', '', 'Login success for member 123456 from address 127.0.0.1', '2024-05-01 21:17:41'),
(242, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-02 08:30:09'),
(243, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-02 08:40:27'),
(244, 'member', '123456', 'circulation', 'Loan', 'Started', 'Admin start transaction with member (123456)', '2024-05-02 08:58:12'),
(245, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-02 09:41:49'),
(246, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-02 09:56:36'),
(247, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-02 10:01:54'),
(248, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-02 10:02:10'),
(249, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-02 10:15:40'),
(250, 'staff', 'hoat', 'Login', '', '', 'Login success for user hoat from address 127.0.0.1', '2024-05-02 10:15:48'),
(251, 'staff', '2', 'system', '', '', 'Mai Huy Hoạt Log Out from application from address 127.0.0.1', '2024-05-02 10:16:29'),
(252, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-02 10:16:33'),
(253, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-02 10:34:09'),
(254, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-02 14:48:49'),
(255, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-03 08:56:08'),
(256, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-03 08:57:52'),
(257, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-05-03 08:58:06'),
(258, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-05-03 08:58:41'),
(259, 'staff', 'admin', 'Login', '', '', 'Login FAILED for user admin from address 127.0.0.1', '2024-05-03 08:59:06'),
(260, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-03 09:01:43'),
(261, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-03 15:00:17'),
(262, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-03 15:38:09'),
(263, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-05 07:32:12'),
(264, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-05 09:59:30'),
(265, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-05 10:07:18'),
(266, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-05 13:36:45'),
(267, 'staff', '1', 'system', 'Content', 'Update', 'update content data (Lisensi SLiMS) with contentname ()', '2024-05-05 13:58:48'),
(268, 'staff', '1', 'membership', 'Update', 'OK', 'Admin update member data (Eve Johnson) with ID (789012)', '2024-05-05 14:28:10'),
(269, 'member', '789012', 'Login', '', '', 'Login success for member 789012 from address 127.0.0.1', '2024-05-05 14:28:21'),
(270, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-05 21:59:30'),
(271, 'staff', '1', 'system', 'Global Config', 'Update', 'Admin change application global configuration', '2024-05-05 22:04:25'),
(272, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-05 22:19:00'),
(273, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-05 23:01:52'),
(274, 'staff', '1', 'system', 'Global Config', 'Update', 'Admin change application global configuration', '2024-05-05 23:08:06'),
(275, 'staff', '1', 'system', '', '', 'Admin Log Out from application from address 127.0.0.1', '2024-05-05 23:11:46'),
(276, 'staff', 'admin', 'Login', '', '', 'Login success for user admin from address 127.0.0.1', '2024-05-05 23:11:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `realname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passwd` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `2fa` text COLLATE utf8_unicode_ci,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` smallint(2) DEFAULT NULL,
  `user_image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_media` text COLLATE utf8_unicode_ci,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groups` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_template` text COLLATE utf8_unicode_ci,
  `forgot` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `username`, `realname`, `passwd`, `2fa`, `email`, `user_type`, `user_image`, `social_media`, `last_login`, `last_login_ip`, `groups`, `admin_template`, `forgot`, `input_date`, `last_update`) VALUES
(1, 'admin', 'Admin', '$2y$10$3QvNOzUhc73.t0HFMdQrwuQZIIolparBikiiDBGgFCjG8CAqY/CFG', NULL, NULL, NULL, NULL, NULL, '2024-05-05 23:11:50', '127.0.0.1', 'a:1:{i:0;s:1:\"1\";}', 'a:2:{s:5:\"theme\";s:7:\"edusoft\";s:3:\"css\";s:32:\"admin_template/edusoft/style.css\";}', NULL, '2024-04-25', '2024-04-25'),
(2, 'hoat', 'Mai Huy Hoạt', '$2y$10$GFVjQLvekrv9mRpS5.yrVO1RQmrZXiNOwUc7dwKNgqt2sauVl4/ke', NULL, 'hoatdfk2001@gmail.com', 3, 'user_hoatmh.png', NULL, '2024-05-02 10:15:48', '127.0.0.1', NULL, 'a:2:{s:5:\"theme\";s:6:\"akasia\";s:3:\"css\";s:31:\"admin_template/akasia/style.css\";}', NULL, '2024-04-26', '2024-04-27'),
(3, 'huy', 'Nguyễn Minh Huy', '$2y$10$rdRB3IT.TAN4zhsJWh1oEe0Sjb2PzHUCOlBIyux26t1QDVXpe4y9y', NULL, 'huyng@gmail.com', 2, 'user_huy.png', NULL, '2024-04-26 15:09:03', '127.0.0.1', NULL, NULL, NULL, '2024-04-26', '2024-04-26'),
(4, 'linh', 'Hoàng Thuỳ Linh', '$2y$10$u8Mr9yiHe.Fz.JIO49AlIuodJ73cOt.7xQTAuwlsJmBpTRkqK3p7a', NULL, 'linh@gmail.com', 1, 'user_linh.png', NULL, '2024-04-26 16:07:42', '127.0.0.1', 'a:1:{i:0;s:1:\"2\";}', 'a:2:{s:5:\"theme\";s:9:\"akasia-dz\";s:3:\"css\";s:34:\"admin_template/akasia-dz/style.css\";}', NULL, '2024-04-26', '2024-04-26'),
(8, 'john', 'John Doe', '$2y$10$/xq1WRqsIg5Oy3ATPVkZ6.7hlXuVatR1keu1TW8atvk0uVfXRslOe', NULL, 'john.doe@example.com', NULL, NULL, NULL, '2024-04-27 09:59:44', '127.0.0.1', NULL, NULL, NULL, '2024-04-27', '2024-04-27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_group`
--

CREATE TABLE `user_group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_group`
--

INSERT INTO `user_group` (`group_id`, `group_name`, `input_date`, `last_update`) VALUES
(1, 'Administrator', '2024-04-25', '2024-04-25'),
(2, 'Nhân viên thư viện', '2024-04-26', '2024-04-26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `visitor_count`
--

CREATE TABLE `visitor_count` (
  `visitor_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institution` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checkin_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `visitor_count`
--

INSERT INTO `visitor_count` (`visitor_id`, `member_id`, `member_name`, `institution`, `room_code`, `checkin_date`) VALUES
(1, '221001782', 'Nguyễn Thị B', 'Đại học', NULL, '2024-04-26 16:11:39');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `backup_log`
--
ALTER TABLE `backup_log`
  ADD PRIMARY KEY (`backup_log_id`);

--
-- Chỉ mục cho bảng `biblio`
--
ALTER TABLE `biblio`
  ADD PRIMARY KEY (`biblio_id`),
  ADD KEY `references_idx` (`gmd_id`,`publisher_id`,`language_id`,`publish_place_id`),
  ADD KEY `classification` (`classification`),
  ADD KEY `biblio_flag_idx` (`opac_hide`,`promoted`),
  ADD KEY `rda_idx` (`content_type_id`,`media_type_id`,`carrier_type_id`),
  ADD KEY `uid` (`uid`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `title_ft_idx` (`title`,`series_title`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `notes_ft_idx` (`notes`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Chỉ mục cho bảng `biblio_attachment`
--
ALTER TABLE `biblio_attachment`
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `biblio_id_2` (`biblio_id`,`file_id`);

--
-- Chỉ mục cho bảng `biblio_author`
--
ALTER TABLE `biblio_author`
  ADD PRIMARY KEY (`biblio_id`,`author_id`),
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Chỉ mục cho bảng `biblio_custom`
--
ALTER TABLE `biblio_custom`
  ADD PRIMARY KEY (`biblio_id`);

--
-- Chỉ mục cho bảng `biblio_log`
--
ALTER TABLE `biblio_log`
  ADD PRIMARY KEY (`biblio_log_id`),
  ADD KEY `realname` (`realname`),
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ip` (`ip`),
  ADD KEY `action` (`action`),
  ADD KEY `affectedrow` (`affectedrow`),
  ADD KEY `date` (`date`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `rawdata` (`rawdata`);
ALTER TABLE `biblio_log` ADD FULLTEXT KEY `additional_information` (`additional_information`);

--
-- Chỉ mục cho bảng `biblio_mark`
--
ALTER TABLE `biblio_mark`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `member_id_idx` (`member_id`),
  ADD KEY `biblio_id_idx` (`biblio_id`);

--
-- Chỉ mục cho bảng `biblio_relation`
--
ALTER TABLE `biblio_relation`
  ADD PRIMARY KEY (`biblio_id`,`rel_biblio_id`);

--
-- Chỉ mục cho bảng `biblio_topic`
--
ALTER TABLE `biblio_topic`
  ADD PRIMARY KEY (`biblio_id`,`topic_id`),
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`),
  ADD UNIQUE KEY `content_path` (`content_path`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_title` (`content_title`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_desc` (`content_desc`);

--
-- Chỉ mục cho bảng `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_name` (`file_name`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_dir` (`file_dir`);

--
-- Chỉ mục cho bảng `files_read`
--
ALTER TABLE `files_read`
  ADD PRIMARY KEY (`filelog_id`);

--
-- Chỉ mục cho bảng `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`fines_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Chỉ mục cho bảng `group_access`
--
ALTER TABLE `group_access`
  ADD PRIMARY KEY (`group_id`,`module_id`);

--
-- Chỉ mục cho bảng `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holiday_id`),
  ADD UNIQUE KEY `holiday_dayname` (`holiday_dayname`,`holiday_date`);

--
-- Chỉ mục cho bảng `index_documents`
--
ALTER TABLE `index_documents`
  ADD PRIMARY KEY (`document_id`,`word_id`,`location`),
  ADD KEY `document_id` (`document_id`),
  ADD KEY `word_id` (`word_id`),
  ADD KEY `location` (`location`);

--
-- Chỉ mục cho bảng `index_words`
--
ALTER TABLE `index_words`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `uid` (`uid`),
  ADD KEY `item_references_idx` (`coll_type_id`,`location_id`,`item_status_id`),
  ADD KEY `biblio_id_idx` (`biblio_id`);

--
-- Chỉ mục cho bảng `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`kardex_id`),
  ADD KEY `fk_serial` (`serial_id`);

--
-- Chỉ mục cho bảng `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `item_code` (`item_code`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `input_date` (`input_date`,`last_update`,`uid`);

--
-- Chỉ mục cho bảng `loan_history`
--
ALTER TABLE `loan_history`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `member_name` (`member_name`);

--
-- Chỉ mục cho bảng `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `member_name` (`member_name`),
  ADD KEY `member_type_id` (`member_type_id`);

--
-- Chỉ mục cho bảng `member_custom`
--
ALTER TABLE `member_custom`
  ADD PRIMARY KEY (`member_id`);

--
-- Chỉ mục cho bảng `mst_author`
--
ALTER TABLE `mst_author`
  ADD PRIMARY KEY (`author_id`),
  ADD UNIQUE KEY `author_name` (`author_name`,`authority_type`);

--
-- Chỉ mục cho bảng `mst_carrier_type`
--
ALTER TABLE `mst_carrier_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_type` (`carrier_type`),
  ADD KEY `code` (`code`);

--
-- Chỉ mục cho bảng `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  ADD PRIMARY KEY (`coll_type_id`),
  ADD UNIQUE KEY `coll_type_name` (`coll_type_name`);

--
-- Chỉ mục cho bảng `mst_content_type`
--
ALTER TABLE `mst_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_type` (`content_type`),
  ADD KEY `code` (`code`);

--
-- Chỉ mục cho bảng `mst_custom_field`
--
ALTER TABLE `mst_custom_field`
  ADD PRIMARY KEY (`dbfield`),
  ADD UNIQUE KEY `field_id` (`field_id`);

--
-- Chỉ mục cho bảng `mst_frequency`
--
ALTER TABLE `mst_frequency`
  ADD PRIMARY KEY (`frequency_id`);

--
-- Chỉ mục cho bảng `mst_gmd`
--
ALTER TABLE `mst_gmd`
  ADD PRIMARY KEY (`gmd_id`),
  ADD UNIQUE KEY `gmd_name` (`gmd_name`),
  ADD UNIQUE KEY `gmd_code` (`gmd_code`);

--
-- Chỉ mục cho bảng `mst_item_status`
--
ALTER TABLE `mst_item_status`
  ADD PRIMARY KEY (`item_status_id`),
  ADD UNIQUE KEY `item_status_name` (`item_status_name`);

--
-- Chỉ mục cho bảng `mst_label`
--
ALTER TABLE `mst_label`
  ADD PRIMARY KEY (`label_id`),
  ADD UNIQUE KEY `label_name` (`label_name`);

--
-- Chỉ mục cho bảng `mst_language`
--
ALTER TABLE `mst_language`
  ADD PRIMARY KEY (`language_id`),
  ADD UNIQUE KEY `language_name` (`language_name`);

--
-- Chỉ mục cho bảng `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  ADD PRIMARY KEY (`loan_rules_id`);

--
-- Chỉ mục cho bảng `mst_location`
--
ALTER TABLE `mst_location`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_name` (`location_name`);

--
-- Chỉ mục cho bảng `mst_media_type`
--
ALTER TABLE `mst_media_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_type` (`media_type`),
  ADD KEY `code` (`code`);

--
-- Chỉ mục cho bảng `mst_member_type`
--
ALTER TABLE `mst_member_type`
  ADD PRIMARY KEY (`member_type_id`),
  ADD UNIQUE KEY `member_type_name` (`member_type_name`);

--
-- Chỉ mục cho bảng `mst_module`
--
ALTER TABLE `mst_module`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `module_name` (`module_name`,`module_path`);

--
-- Chỉ mục cho bảng `mst_place`
--
ALTER TABLE `mst_place`
  ADD PRIMARY KEY (`place_id`),
  ADD UNIQUE KEY `place_name` (`place_name`);

--
-- Chỉ mục cho bảng `mst_publisher`
--
ALTER TABLE `mst_publisher`
  ADD PRIMARY KEY (`publisher_id`),
  ADD UNIQUE KEY `publisher_name` (`publisher_name`);

--
-- Chỉ mục cho bảng `mst_relation_term`
--
ALTER TABLE `mst_relation_term`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `mst_servers`
--
ALTER TABLE `mst_servers`
  ADD PRIMARY KEY (`server_id`);

--
-- Chỉ mục cho bảng `mst_supplier`
--
ALTER TABLE `mst_supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `supplier_name` (`supplier_name`);

--
-- Chỉ mục cho bảng `mst_topic`
--
ALTER TABLE `mst_topic`
  ADD PRIMARY KEY (`topic_id`),
  ADD UNIQUE KEY `topic` (`topic`,`topic_type`);

--
-- Chỉ mục cho bảng `mst_visitor_room`
--
ALTER TABLE `mst_visitor_room`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_code_unq` (`unique_code`),
  ADD KEY `unique_code_idx` (`unique_code`);

--
-- Chỉ mục cho bảng `mst_voc_ctrl`
--
ALTER TABLE `mst_voc_ctrl`
  ADD PRIMARY KEY (`vocabolary_id`);

--
-- Chỉ mục cho bảng `plugins`
--
ALTER TABLE `plugins`
  ADD UNIQUE KEY `id` (`id`);

--
-- Chỉ mục cho bảng `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`reserve_id`),
  ADD KEY `references_idx` (`member_id`,`biblio_id`),
  ADD KEY `item_code_idx` (`item_code`);

--
-- Chỉ mục cho bảng `search_biblio`
--
ALTER TABLE `search_biblio`
  ADD UNIQUE KEY `biblio_id` (`biblio_id`),
  ADD KEY `add_indexes` (`gmd`,`publisher`,`publish_place`,`language`,`classification`,`publish_year`,`call_number`),
  ADD KEY `add_indexes2` (`opac_hide`,`promoted`),
  ADD KEY `rda_indexes` (`carrier_type`,`media_type`,`content_type`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `title` (`title`,`series_title`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `author` (`author`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `topic` (`topic`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `location` (`location`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `items` (`items`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `collection_types` (`collection_types`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Chỉ mục cho bảng `serial`
--
ALTER TABLE `serial`
  ADD PRIMARY KEY (`serial_id`),
  ADD KEY `fk_serial_biblio` (`biblio_id`),
  ADD KEY `fk_serial_gmd` (`gmd_id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`),
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Chỉ mục cho bảng `stock_take`
--
ALTER TABLE `stock_take`
  ADD PRIMARY KEY (`stock_take_id`);

--
-- Chỉ mục cho bảng `stock_take_item`
--
ALTER TABLE `stock_take_item`
  ADD PRIMARY KEY (`stock_take_id`,`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `status` (`status`),
  ADD KEY `item_properties_idx` (`gmd_name`,`classification`,`coll_type_name`,`location`);

--
-- Chỉ mục cho bảng `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `realname` (`realname`);

--
-- Chỉ mục cho bảng `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `group_name` (`group_name`);

--
-- Chỉ mục cho bảng `visitor_count`
--
ALTER TABLE `visitor_count`
  ADD PRIMARY KEY (`visitor_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `room_code` (`room_code`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `backup_log`
--
ALTER TABLE `backup_log`
  MODIFY `backup_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `biblio`
--
ALTER TABLE `biblio`
  MODIFY `biblio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `biblio_log`
--
ALTER TABLE `biblio_log`
  MODIFY `biblio_log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `files_read`
--
ALTER TABLE `files_read`
  MODIFY `filelog_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `fines`
--
ALTER TABLE `fines`
  MODIFY `fines_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `index_words`
--
ALTER TABLE `index_words`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `kardex`
--
ALTER TABLE `kardex`
  MODIFY `kardex_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `mst_author`
--
ALTER TABLE `mst_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `mst_carrier_type`
--
ALTER TABLE `mst_carrier_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  MODIFY `coll_type_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `mst_content_type`
--
ALTER TABLE `mst_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `mst_custom_field`
--
ALTER TABLE `mst_custom_field`
  MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `mst_frequency`
--
ALTER TABLE `mst_frequency`
  MODIFY `frequency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `mst_gmd`
--
ALTER TABLE `mst_gmd`
  MODIFY `gmd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `mst_label`
--
ALTER TABLE `mst_label`
  MODIFY `label_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  MODIFY `loan_rules_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `mst_media_type`
--
ALTER TABLE `mst_media_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `mst_member_type`
--
ALTER TABLE `mst_member_type`
  MODIFY `member_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `mst_module`
--
ALTER TABLE `mst_module`
  MODIFY `module_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `mst_place`
--
ALTER TABLE `mst_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `mst_publisher`
--
ALTER TABLE `mst_publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `mst_relation_term`
--
ALTER TABLE `mst_relation_term`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `mst_servers`
--
ALTER TABLE `mst_servers`
  MODIFY `server_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `mst_supplier`
--
ALTER TABLE `mst_supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `mst_topic`
--
ALTER TABLE `mst_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `mst_visitor_room`
--
ALTER TABLE `mst_visitor_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `mst_voc_ctrl`
--
ALTER TABLE `mst_voc_ctrl`
  MODIFY `vocabolary_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `reserve`
--
ALTER TABLE `reserve`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `serial`
--
ALTER TABLE `serial`
  MODIFY `serial_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `stock_take`
--
ALTER TABLE `stock_take`
  MODIFY `stock_take_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `system_log`
--
ALTER TABLE `system_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `user_group`
--
ALTER TABLE `user_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `visitor_count`
--
ALTER TABLE `visitor_count`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
