/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `eaqv_statistics_events`; */
/* PRE_TABLE_NAME: `1708882270_eaqv_statistics_events`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_eaqv_statistics_events` ( `ID` bigint(20) NOT NULL AUTO_INCREMENT, `date` datetime NOT NULL, `page_id` bigint(20) DEFAULT NULL, `visitor_id` bigint(20) DEFAULT NULL, `event_name` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL, `event_data` text COLLATE utf8mb4_unicode_520_ci NOT NULL, PRIMARY KEY (`ID`), KEY `visitor_id` (`visitor_id`), KEY `page_id` (`page_id`), KEY `event_name` (`event_name`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
