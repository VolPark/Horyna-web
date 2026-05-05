/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `kogw_terms`; */
/* PRE_TABLE_NAME: `1708882270_kogw_terms`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_kogw_terms` ( `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '', `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '', `term_group` bigint(10) NOT NULL DEFAULT 0, PRIMARY KEY (`term_id`), KEY `slug` (`slug`(191)), KEY `name` (`name`(191))) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO `1708882270_kogw_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES (1,'Uncategorized','uncategorized',0);
