/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `eaqv_termmeta`; */
/* PRE_TABLE_NAME: `1708882270_eaqv_termmeta`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_eaqv_termmeta` ( `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `term_id` bigint(20) unsigned NOT NULL DEFAULT 0, `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL, `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL, PRIMARY KEY (`meta_id`), KEY `term_id` (`term_id`), KEY `meta_key` (`meta_key`(191))) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
