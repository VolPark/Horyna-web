/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `eaqv_statistics_historical`; */
/* PRE_TABLE_NAME: `1708882270_eaqv_statistics_historical`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_eaqv_statistics_historical` ( `ID` bigint(20) NOT NULL AUTO_INCREMENT, `category` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL, `page_id` bigint(20) NOT NULL, `uri` varchar(190) COLLATE utf8mb4_unicode_520_ci NOT NULL, `value` bigint(20) NOT NULL, PRIMARY KEY (`ID`), UNIQUE KEY `uri` (`uri`), KEY `category` (`category`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
