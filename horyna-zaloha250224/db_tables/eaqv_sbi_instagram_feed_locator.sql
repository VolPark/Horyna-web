/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `eaqv_sbi_instagram_feed_locator`; */
/* PRE_TABLE_NAME: `1708882270_eaqv_sbi_instagram_feed_locator`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_eaqv_sbi_instagram_feed_locator` ( `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `feed_id` varchar(50) COLLATE utf8_czech_ci NOT NULL DEFAULT '', `post_id` bigint(20) unsigned NOT NULL, `html_location` varchar(50) COLLATE utf8_czech_ci NOT NULL DEFAULT 'unknown', `shortcode_atts` longtext COLLATE utf8_czech_ci NOT NULL, `last_update` datetime DEFAULT NULL, PRIMARY KEY (`id`), KEY `feed_id` (`feed_id`), KEY `post_id` (`post_id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;
