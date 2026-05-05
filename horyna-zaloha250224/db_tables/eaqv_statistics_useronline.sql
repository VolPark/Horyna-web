/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `eaqv_statistics_useronline`; */
/* PRE_TABLE_NAME: `1708882270_eaqv_statistics_useronline`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_eaqv_statistics_useronline` ( `ID` bigint(20) NOT NULL AUTO_INCREMENT, `ip` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL, `created` int(11) DEFAULT NULL, `timestamp` int(10) NOT NULL, `date` datetime NOT NULL, `referred` text CHARACTER SET utf8 NOT NULL, `agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL, `platform` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL, `version` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL, `location` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL, `user_id` bigint(48) NOT NULL, `page_id` bigint(48) NOT NULL, `type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL, PRIMARY KEY (`ID`), KEY `ip` (`ip`)) ENGINE=InnoDB AUTO_INCREMENT=1065 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
