/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `eaqv_rank_math_internal_links`; */
/* PRE_TABLE_NAME: `1708882270_eaqv_rank_math_internal_links`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_eaqv_rank_math_internal_links` ( `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL, `post_id` bigint(20) unsigned NOT NULL, `target_post_id` bigint(20) unsigned NOT NULL, `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL, PRIMARY KEY (`id`), KEY `link_direction` (`post_id`,`type`)) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO `1708882270_eaqv_rank_math_internal_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES (1,'https://nabytekvyroba.com/wp-admin/',2,0,'internal');
