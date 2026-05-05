/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `eaqv_rank_math_redirections`; */
/* PRE_TABLE_NAME: `1708882270_eaqv_rank_math_redirections`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_eaqv_rank_math_redirections` ( `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `sources` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL, `url_to` text COLLATE utf8mb4_unicode_520_ci NOT NULL, `header_code` smallint(4) unsigned NOT NULL, `hits` bigint(20) unsigned NOT NULL DEFAULT 0, `status` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active', `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00', `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00', `last_accessed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00', PRIMARY KEY (`id`), KEY `status` (`status`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
