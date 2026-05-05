/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `eaqv_rank_math_redirections_cache`; */
/* PRE_TABLE_NAME: `1708882270_eaqv_rank_math_redirections_cache`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_eaqv_rank_math_redirections_cache` ( `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `from_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL, `redirection_id` bigint(20) unsigned NOT NULL, `object_id` bigint(20) unsigned NOT NULL DEFAULT 0, `object_type` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post', `is_redirected` tinyint(1) NOT NULL DEFAULT 0, PRIMARY KEY (`id`), KEY `redirection_id` (`redirection_id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
