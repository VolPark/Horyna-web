/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `eaqv_statistics_exclusions`; */
/* PRE_TABLE_NAME: `1708882270_eaqv_statistics_exclusions`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_eaqv_statistics_exclusions` ( `ID` bigint(20) NOT NULL AUTO_INCREMENT, `date` date NOT NULL, `reason` varchar(180) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL, `count` bigint(20) NOT NULL, PRIMARY KEY (`ID`), KEY `date` (`date`), KEY `reason` (`reason`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
