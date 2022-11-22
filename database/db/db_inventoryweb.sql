/*
SQLyog Professional
MySQL - 10.4.22-MariaDB : Database - db_inventoryweb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_inventoryweb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_inventoryweb`;

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2019_08_19_000000_create_failed_jobs_table',1),
(2,'2019_12_14_000001_create_personal_access_tokens_table',1),
(3,'2022_10_31_061811_create_menu_table',1),
(4,'2022_11_01_041110_create_table_role',1),
(5,'2022_11_01_083314_create_table_user',1),
(6,'2022_11_03_023905_create_table_submenu',1),
(7,'2022_11_03_064417_create_tbl_akses',1),
(8,'2022_11_08_024215_create_tbl_web',1),
(9,'2022_11_15_131148_create_tbl_jenis',2),
(10,'2022_11_15_173700_create_tbl_satuan',3),
(11,'2022_11_15_180434_create_tbl_merk',4),
(12,'2022_11_16_120018_create_tbl_appreance',5);

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `tbl_akses` */

DROP TABLE IF EXISTS `tbl_akses`;

CREATE TABLE `tbl_akses` (
  `akses_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submenu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `othermenu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akses_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`akses_id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_akses` */

insert  into `tbl_akses`(`akses_id`,`menu_id`,`submenu_id`,`othermenu_id`,`role_id`,`akses_type`,`created_at`,`updated_at`) values 
(5,'1667444041',NULL,NULL,'2','view','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(6,'1667444041',NULL,NULL,'2','create','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(7,'1667444041',NULL,NULL,'2','update','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(8,'1667444041',NULL,NULL,'2','delete','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(9,'1667444041',NULL,NULL,'3','view','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(10,'1667444041',NULL,NULL,'3','create','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(11,'1667444041',NULL,NULL,'3','update','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(12,'1667444041',NULL,NULL,'3','delete','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(14,NULL,NULL,'1','2','view','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(19,NULL,NULL,'2','2','view','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(20,NULL,NULL,'2','2','create','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(21,NULL,NULL,'2','2','update','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(22,NULL,NULL,'2','2','delete','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(27,NULL,NULL,'3','2','view','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(28,NULL,NULL,'3','2','create','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(29,NULL,NULL,'3','2','update','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(30,NULL,NULL,'3','2','delete','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(35,NULL,NULL,'4','2','view','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(36,NULL,NULL,'4','2','create','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(37,NULL,NULL,'4','2','update','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(38,NULL,NULL,'4','2','delete','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(47,NULL,NULL,'6','2','view','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(48,NULL,NULL,'6','2','create','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(49,NULL,NULL,'6','2','update','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(50,NULL,NULL,'6','2','delete','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(152,'1667444041',NULL,NULL,'1','view','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(153,'1667444041',NULL,NULL,'1','create','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(154,'1667444041',NULL,NULL,'1','update','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(155,'1667444041',NULL,NULL,'1','delete','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(156,'1668509889',NULL,NULL,'1','view','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(157,'1668509889',NULL,NULL,'1','create','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(158,'1668509889',NULL,NULL,'1','update','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(159,'1668509889',NULL,NULL,'1','delete','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(160,'1668510437',NULL,NULL,'1','view','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(161,'1668510437',NULL,NULL,'1','create','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(162,'1668510437',NULL,NULL,'1','update','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(163,'1668510437',NULL,NULL,'1','delete','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(164,'1668510568',NULL,NULL,'1','view','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(165,'1668510568',NULL,NULL,'1','create','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(166,'1668510568',NULL,NULL,'1','update','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(167,'1668510568',NULL,NULL,'1','delete','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(168,NULL,'9',NULL,'1','view','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(169,NULL,'9',NULL,'1','create','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(170,NULL,'9',NULL,'1','update','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(171,NULL,'9',NULL,'1','delete','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(172,NULL,'11',NULL,'1','view','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(173,NULL,'11',NULL,'1','create','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(174,NULL,'11',NULL,'1','update','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(175,NULL,'11',NULL,'1','delete','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(176,NULL,'13',NULL,'1','view','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(177,NULL,'13',NULL,'1','create','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(178,NULL,'13',NULL,'1','update','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(179,NULL,'13',NULL,'1','delete','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(180,NULL,'10',NULL,'1','view','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(181,NULL,'10',NULL,'1','create','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(182,NULL,'10',NULL,'1','update','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(183,NULL,'10',NULL,'1','delete','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(184,NULL,'12',NULL,'1','view','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(185,NULL,'12',NULL,'1','create','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(186,NULL,'12',NULL,'1','update','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(187,NULL,'12',NULL,'1','delete','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(188,NULL,'14',NULL,'1','view','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(189,NULL,'14',NULL,'1','create','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(190,NULL,'14',NULL,'1','update','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(191,NULL,'14',NULL,'1','delete','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(192,NULL,'15',NULL,'1','view','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(193,NULL,'15',NULL,'1','create','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(194,NULL,'15',NULL,'1','update','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(195,NULL,'15',NULL,'1','delete','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(196,NULL,'16',NULL,'1','view','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(197,NULL,'16',NULL,'1','create','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(198,NULL,'16',NULL,'1','update','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(199,NULL,'16',NULL,'1','delete','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(200,NULL,NULL,'1','1','view','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(201,NULL,NULL,'2','1','view','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(202,NULL,NULL,'3','1','view','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(203,NULL,NULL,'4','1','view','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(204,NULL,NULL,'5','1','view','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(205,NULL,NULL,'6','1','view','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(206,NULL,NULL,'1','1','create','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(207,NULL,NULL,'2','1','create','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(208,NULL,NULL,'3','1','create','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(209,NULL,NULL,'4','1','create','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(210,NULL,NULL,'5','1','create','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(211,NULL,NULL,'6','1','create','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(212,NULL,NULL,'1','1','update','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(213,NULL,NULL,'2','1','update','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(214,NULL,NULL,'3','1','update','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(215,NULL,NULL,'4','1','update','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(216,NULL,NULL,'5','1','update','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(217,NULL,NULL,'6','1','update','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(218,NULL,NULL,'1','1','delete','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(219,NULL,NULL,'2','1','delete','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(220,NULL,NULL,'3','1','delete','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(221,NULL,NULL,'4','1','delete','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(222,NULL,NULL,'5','1','delete','2022-11-15 18:13:45','2022-11-15 18:13:45'),
(223,NULL,NULL,'6','1','delete','2022-11-15 18:13:45','2022-11-15 18:13:45');

/*Table structure for table `tbl_appreance` */

DROP TABLE IF EXISTS `tbl_appreance`;

CREATE TABLE `tbl_appreance` (
  `appreance_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appreance_layout` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_menu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_sidestyle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`appreance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_appreance` */

insert  into `tbl_appreance`(`appreance_id`,`user_id`,`appreance_layout`,`appreance_theme`,`appreance_menu`,`appreance_header`,`appreance_sidestyle`,`created_at`,`updated_at`) values 
(2,'1','sidebar-mini','light-mode','light-menu','header-light','default-menu','2022-11-22 09:45:47','2022-11-22 09:46:09');

/*Table structure for table `tbl_jenis` */

DROP TABLE IF EXISTS `tbl_jenis`;

CREATE TABLE `tbl_jenis` (
  `jenis_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jenis_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`jenis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_jenis` */

insert  into `tbl_jenis`(`jenis_id`,`jenis_nama`,`jenis_slug`,`jenis_keterangan`,`created_at`,`updated_at`) values 
(6,'Elektronik','elektronik',NULL,'2022-11-15 17:57:21','2022-11-15 17:57:21'),
(7,'Pakaian','pakaian',NULL,'2022-11-15 17:58:01','2022-11-15 17:58:48');

/*Table structure for table `tbl_menu` */

DROP TABLE IF EXISTS `tbl_menu`;

CREATE TABLE `tbl_menu` (
  `menu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_redirect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_sort` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1668510569 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_menu` */

insert  into `tbl_menu`(`menu_id`,`menu_judul`,`menu_slug`,`menu_icon`,`menu_redirect`,`menu_sort`,`menu_type`,`created_at`,`updated_at`) values 
(1667444041,'Dashboard','dashboard','home','/dashboard','1','1','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(1668509889,'Master Barang','master-barang','package','-','2','2','2022-11-15 10:58:09','2022-11-15 11:03:15'),
(1668510437,'Transaksi','transaksi','repeat','-','3','2','2022-11-15 11:07:17','2022-11-15 11:08:19'),
(1668510568,'Laporan','laporan','printer','-','4','2','2022-11-15 11:09:28','2022-11-15 11:09:28');

/*Table structure for table `tbl_merk` */

DROP TABLE IF EXISTS `tbl_merk`;

CREATE TABLE `tbl_merk` (
  `merk_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `merk_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`merk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_merk` */

insert  into `tbl_merk`(`merk_id`,`merk_nama`,`merk_slug`,`merk_keterangan`,`created_at`,`updated_at`) values 
(1,'Huawei','huawei',NULL,'2022-11-15 18:14:09','2022-11-15 18:14:09'),
(2,'Lenovo','lenovo',NULL,'2022-11-15 18:14:33','2022-11-15 18:14:45'),
(3,'UNIQLO','uniqlo',NULL,'2022-11-15 18:16:03','2022-11-15 18:16:03');

/*Table structure for table `tbl_role` */

DROP TABLE IF EXISTS `tbl_role`;

CREATE TABLE `tbl_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_role` */

insert  into `tbl_role`(`role_id`,`role_title`,`role_slug`,`role_desc`,`created_at`,`updated_at`) values 
(1,'Super Admin','super-admin','-','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(2,'Admin','admin','-','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(3,'Operator','operator','-','2022-11-15 10:51:04','2022-11-15 10:51:04');

/*Table structure for table `tbl_satuan` */

DROP TABLE IF EXISTS `tbl_satuan`;

CREATE TABLE `tbl_satuan` (
  `satuan_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `satuan_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan_keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`satuan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_satuan` */

insert  into `tbl_satuan`(`satuan_id`,`satuan_nama`,`satuan_slug`,`satuan_keterangan`,`created_at`,`updated_at`) values 
(1,'Kilogram','kilogram',NULL,'2022-11-15 17:50:38','2022-11-15 17:53:10'),
(3,'Pcs','pcs',NULL,'2022-11-15 17:54:53','2022-11-15 18:17:58');

/*Table structure for table `tbl_submenu` */

DROP TABLE IF EXISTS `tbl_submenu`;

CREATE TABLE `tbl_submenu` (
  `submenu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_redirect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_sort` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`submenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_submenu` */

insert  into `tbl_submenu`(`submenu_id`,`menu_id`,`submenu_judul`,`submenu_slug`,`submenu_redirect`,`submenu_sort`,`created_at`,`updated_at`) values 
(9,'1668510437','Barang Masuk','barang-masuk','/barang-masuk','1','2022-11-15 11:08:19','2022-11-15 11:08:19'),
(10,'1668510437','Barang Keluar','barang-keluar','/barang-keluar','2','2022-11-15 11:08:19','2022-11-15 11:08:19'),
(11,'1668510568','Lap Barang Masuk','lap-barang-masuk','/lap-barang-masuk','1','2022-11-15 11:09:28','2022-11-15 11:09:28'),
(12,'1668510568','Lap Barang Keluar','lap-barang-keluar','/lap-barang-keluar','2','2022-11-15 11:09:28','2022-11-15 11:09:28'),
(13,'1668509889','Jenis','jenis','/jenis','1','2022-11-15 18:13:17','2022-11-15 18:13:17'),
(14,'1668509889','Satuan','satuan','/satuan','2','2022-11-15 18:13:17','2022-11-15 18:13:17'),
(15,'1668509889','Merk','merk','/merk','3','2022-11-15 18:13:17','2022-11-15 18:13:17'),
(16,'1668509889','Barang','barang','/barang','4','2022-11-15 18:13:17','2022-11-15 18:13:17');

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_nmlengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`user_id`,`role_id`,`user_nmlengkap`,`user_nama`,`user_email`,`user_foto`,`user_password`,`created_at`,`updated_at`) values 
(1,'1','Super Administrator','superadmin','superadmin@gmail.com','undraw_profile.svg','25d55ad283aa400af464c76d713c07ad','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(2,'2','Administrator','admin','admin@gmail.com','undraw_profile.svg','25d55ad283aa400af464c76d713c07ad','2022-11-15 10:51:04','2022-11-15 10:51:04'),
(3,'3','Operator','operator','operator@gmail.com','undraw_profile.svg','25d55ad283aa400af464c76d713c07ad','2022-11-15 10:51:04','2022-11-15 10:51:04');

/*Table structure for table `tbl_web` */

DROP TABLE IF EXISTS `tbl_web`;

CREATE TABLE `tbl_web` (
  `web_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `web_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`web_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_web` */

insert  into `tbl_web`(`web_id`,`web_nama`,`web_logo`,`web_deskripsi`,`created_at`,`updated_at`) values 
(1,'Inventoryweb','default.png','Mengelola Data Barang Masuk & Barang Keluar','2022-11-15 10:51:04','2022-11-22 09:41:39');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
