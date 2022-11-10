/*
SQLyog Professional
MySQL - 10.4.22-MariaDB : Database - db_laravel9
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_laravel9` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_laravel9`;

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2019_08_19_000000_create_failed_jobs_table',1),
(3,'2022_10_31_061811_create_menu_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',2),
(5,'2022_11_01_041110_create_table_role',2),
(6,'2022_11_01_083314_create_table_user',3),
(7,'2022_11_03_023905_create_table_submenu',4),
(8,'2022_11_03_064417_create_tbl_akses',5),
(9,'2022_11_08_024215_create_tbl_web',6);

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
  `akses_id` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submenu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `othermenu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akses_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`akses_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1573 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_akses` */

insert  into `tbl_akses`(`akses_id`,`menu_id`,`submenu_id`,`othermenu_id`,`role_id`,`akses_type`,`created_at`,`updated_at`) values 
(1280,'1667444041',NULL,NULL,'5','view','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1281,'1667444041',NULL,NULL,'5','create','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1282,'1667444041',NULL,NULL,'5','update','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1283,'1667444041',NULL,NULL,'5','delete','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1284,'1667457114',NULL,NULL,'5','view','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1285,'1667457114',NULL,NULL,'5','create','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1286,'1667457114',NULL,NULL,'5','update','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1287,'1667457114',NULL,NULL,'5','delete','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1288,'1667457129',NULL,NULL,'5','view','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1289,'1667457129',NULL,NULL,'5','create','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1290,'1667457129',NULL,NULL,'5','update','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1291,'1667457129',NULL,NULL,'5','delete','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1292,'1667457172',NULL,NULL,'5','view','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1293,'1667457172',NULL,NULL,'5','create','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1294,'1667457172',NULL,NULL,'5','update','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1295,'1667457172',NULL,NULL,'5','delete','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1296,NULL,'17',NULL,'5','view','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1297,NULL,'17',NULL,'5','create','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1298,NULL,'17',NULL,'5','update','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1299,NULL,'17',NULL,'5','delete','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1300,NULL,'18',NULL,'5','view','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1301,NULL,'18',NULL,'5','create','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1302,NULL,'18',NULL,'5','update','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1303,NULL,'18',NULL,'5','delete','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1306,NULL,NULL,'3','5','view','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1307,NULL,NULL,'4','5','view','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1309,NULL,NULL,'6','5','view','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1310,NULL,NULL,'1','5','create','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1311,NULL,NULL,'2','5','create','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1312,NULL,NULL,'3','5','create','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1313,NULL,NULL,'4','5','create','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1315,NULL,NULL,'6','5','create','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1316,NULL,NULL,'1','5','update','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1317,NULL,NULL,'2','5','update','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1318,NULL,NULL,'3','5','update','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1319,NULL,NULL,'4','5','update','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1321,NULL,NULL,'6','5','update','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1322,NULL,NULL,'1','5','delete','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1323,NULL,NULL,'2','5','delete','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1324,NULL,NULL,'3','5','delete','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1325,NULL,NULL,'4','5','delete','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1327,NULL,NULL,'6','5','delete','2022-11-07 09:29:13','2022-11-07 09:29:13'),
(1376,'1667444041',NULL,NULL,'6','view','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1377,'1667444041',NULL,NULL,'6','create','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1378,'1667444041',NULL,NULL,'6','update','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1379,'1667444041',NULL,NULL,'6','delete','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1380,'1667457114',NULL,NULL,'6','view','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1381,'1667457114',NULL,NULL,'6','create','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1382,'1667457114',NULL,NULL,'6','update','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1383,'1667457114',NULL,NULL,'6','delete','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1384,'1667457129',NULL,NULL,'6','view','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1385,'1667457129',NULL,NULL,'6','create','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1386,'1667457129',NULL,NULL,'6','update','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1387,'1667457129',NULL,NULL,'6','delete','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1393,NULL,'17',NULL,'6','create','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1394,NULL,'17',NULL,'6','update','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1395,NULL,'17',NULL,'6','delete','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1396,NULL,'18',NULL,'6','view','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1397,NULL,'18',NULL,'6','create','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1398,NULL,'18',NULL,'6','update','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1399,NULL,'18',NULL,'6','delete','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1402,NULL,NULL,'3','6','view','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1403,NULL,NULL,'4','6','view','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1404,NULL,NULL,'5','6','view','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1405,NULL,NULL,'6','6','view','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1407,NULL,NULL,'2','6','create','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1408,NULL,NULL,'3','6','create','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1409,NULL,NULL,'4','6','create','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1410,NULL,NULL,'5','6','create','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1411,NULL,NULL,'6','6','create','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1413,NULL,NULL,'2','6','update','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1414,NULL,NULL,'3','6','update','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1415,NULL,NULL,'4','6','update','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1416,NULL,NULL,'5','6','update','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1417,NULL,NULL,'6','6','update','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1419,NULL,NULL,'2','6','delete','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1420,NULL,NULL,'3','6','delete','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1421,NULL,NULL,'4','6','delete','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1422,NULL,NULL,'5','6','delete','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1423,NULL,NULL,'6','6','delete','2022-11-07 09:34:50','2022-11-07 09:34:50'),
(1425,'1667457172',NULL,NULL,'6','view','2022-11-07 09:36:11','2022-11-07 09:36:11'),
(1426,NULL,'17',NULL,'6','view','2022-11-07 09:37:15','2022-11-07 09:37:15'),
(1443,NULL,NULL,'2','6','view','2022-11-08 09:16:30','2022-11-08 09:16:30'),
(1448,NULL,NULL,'5','5','create','2022-11-09 02:53:45','2022-11-09 02:53:45'),
(1449,NULL,NULL,'5','5','update','2022-11-09 02:53:46','2022-11-09 02:53:46'),
(1450,NULL,NULL,'5','5','delete','2022-11-09 02:53:46','2022-11-09 02:53:46'),
(1451,NULL,NULL,'1','5','view','2022-11-09 03:00:14','2022-11-09 03:00:14'),
(1510,'1667444041',NULL,NULL,'4','view','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1511,'1667444041',NULL,NULL,'4','create','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1512,'1667444041',NULL,NULL,'4','update','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1513,'1667444041',NULL,NULL,'4','delete','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1514,'1667457114',NULL,NULL,'4','view','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1515,'1667457114',NULL,NULL,'4','create','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1516,'1667457114',NULL,NULL,'4','update','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1517,'1667457114',NULL,NULL,'4','delete','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1518,'1667457129',NULL,NULL,'4','view','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1519,'1667457129',NULL,NULL,'4','create','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1520,'1667457129',NULL,NULL,'4','update','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1521,'1667457129',NULL,NULL,'4','delete','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1522,'1667457172',NULL,NULL,'4','view','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1523,'1667457172',NULL,NULL,'4','create','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1524,'1667457172',NULL,NULL,'4','update','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1525,'1667457172',NULL,NULL,'4','delete','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1530,NULL,'17',NULL,'4','view','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1531,NULL,'17',NULL,'4','create','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1532,NULL,'17',NULL,'4','update','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1533,NULL,'17',NULL,'4','delete','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1538,NULL,'18',NULL,'4','view','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1539,NULL,'18',NULL,'4','create','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1540,NULL,'18',NULL,'4','update','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1541,NULL,'18',NULL,'4','delete','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1546,NULL,NULL,'1','4','view','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1547,NULL,NULL,'2','4','view','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1548,NULL,NULL,'3','4','view','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1549,NULL,NULL,'4','4','view','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1550,NULL,NULL,'5','4','view','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1551,NULL,NULL,'6','4','view','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1552,NULL,NULL,'1','4','create','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1553,NULL,NULL,'2','4','create','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1554,NULL,NULL,'3','4','create','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1555,NULL,NULL,'4','4','create','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1556,NULL,NULL,'5','4','create','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1557,NULL,NULL,'6','4','create','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1558,NULL,NULL,'1','4','update','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1559,NULL,NULL,'2','4','update','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1560,NULL,NULL,'3','4','update','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1561,NULL,NULL,'4','4','update','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1562,NULL,NULL,'5','4','update','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1563,NULL,NULL,'6','4','update','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1564,NULL,NULL,'1','4','delete','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1565,NULL,NULL,'2','4','delete','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1566,NULL,NULL,'3','4','delete','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1567,NULL,NULL,'4','4','delete','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1568,NULL,NULL,'5','4','delete','2022-11-09 08:19:05','2022-11-09 08:19:05'),
(1569,NULL,NULL,'6','4','delete','2022-11-09 08:19:05','2022-11-09 08:19:05');

/*Table structure for table `tbl_menu` */

DROP TABLE IF EXISTS `tbl_menu`;

CREATE TABLE `tbl_menu` (
  `menu_id` int(255) unsigned NOT NULL,
  `menu_judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_redirect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_sort` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_menu` */

insert  into `tbl_menu`(`menu_id`,`menu_judul`,`menu_slug`,`menu_icon`,`menu_redirect`,`menu_sort`,`menu_type`,`created_at`,`updated_at`) values 
(1667444041,'Dashboard','dashboard','home','/dashboard','1','1','2022-11-09 15:24:33','2022-11-09 08:24:33'),
(1667457114,'Menu 1','menu-1','circle','/menu1','2','1','2022-11-09 15:24:33','2022-11-09 08:24:33'),
(1667457129,'Menu 2','menu-2','circle','/menu2','3','1','2022-11-09 15:24:33','2022-11-09 08:24:33'),
(1667457172,'Menu 3','menu-3','circle','-','4','2','2022-11-09 15:24:33','2022-11-09 08:24:33');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_role` */

insert  into `tbl_role`(`role_id`,`role_title`,`role_slug`,`role_desc`,`created_at`,`updated_at`) values 
(4,'Super Admin','super-admin','-','2022-11-01 08:54:23','2022-11-02 04:23:53'),
(5,'Admin','admin','-','2022-11-01 08:54:36','2022-11-02 04:05:00'),
(6,'Operator','operator','-','2022-11-01 08:54:45','2022-11-09 04:35:35');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_submenu` */

insert  into `tbl_submenu`(`submenu_id`,`menu_id`,`submenu_judul`,`submenu_slug`,`submenu_redirect`,`submenu_sort`,`created_at`,`updated_at`) values 
(17,'1667457172','Menu 3.1','menu-3-1','/menu3-1','1','2022-11-03 06:32:52','2022-11-03 06:32:52'),
(18,'1667457172','Menu 3.2','menu-3-2','/menu3-2','2','2022-11-03 06:32:52','2022-11-03 06:32:52');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`user_id`,`role_id`,`user_nmlengkap`,`user_nama`,`user_email`,`user_foto`,`user_password`,`created_at`,`updated_at`) values 
(5,'4','Super Administrator','superadmin','superadmin@gmail.com','undraw_profile.svg','25d55ad283aa400af464c76d713c07ad','2022-11-02 04:18:51','2022-11-09 07:40:19'),
(6,'5','Administrator','admin','admin@gmail.com','undraw_profile.svg','25d55ad283aa400af464c76d713c07ad','2022-11-02 04:19:29','2022-11-02 04:19:29'),
(7,'6','Operator','operator','operator@gmail.com','undraw_profile.svg','25d55ad283aa400af464c76d713c07ad','2022-11-02 04:20:16','2022-11-09 04:37:34');

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
(1,'Laravel 9','faad5IYbjeNaaD7cd7dqKjzcbdF7e9qfdRMgwUyV.svg',NULL,'2022-11-08 09:45:37','2022-11-08 03:27:28');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
