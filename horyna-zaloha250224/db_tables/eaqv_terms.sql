/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `eaqv_terms`; */
/* PRE_TABLE_NAME: `1708882270_eaqv_terms`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_eaqv_terms` ( `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '', `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '', `term_group` bigint(10) NOT NULL DEFAULT 0, PRIMARY KEY (`term_id`), KEY `slug` (`slug`(191)), KEY `name` (`name`(191))) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `1708882270_eaqv_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES (1,'Uncategorized','uncategorized',0),(2,'Menu 1','menu-1',0),(3,'Hlavní','hlavni',0);
