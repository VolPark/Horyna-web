/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `kogw_postmeta`; */
/* PRE_TABLE_NAME: `1708882270_kogw_postmeta`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_kogw_postmeta` ( `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `post_id` bigint(20) unsigned NOT NULL DEFAULT 0, `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL, `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL, PRIMARY KEY (`meta_id`), KEY `post_id` (`post_id`), KEY `meta_key` (`meta_key`(191))) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO `1708882270_kogw_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default');
