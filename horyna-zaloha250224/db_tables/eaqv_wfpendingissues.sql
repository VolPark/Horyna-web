/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `eaqv_wfpendingissues`; */
/* PRE_TABLE_NAME: `1708882270_eaqv_wfpendingissues`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_eaqv_wfpendingissues` ( `id` int(10) unsigned NOT NULL AUTO_INCREMENT, `time` int(10) unsigned NOT NULL, `lastUpdated` int(10) unsigned NOT NULL, `status` varchar(10) NOT NULL, `type` varchar(20) NOT NULL, `severity` tinyint(3) unsigned NOT NULL, `ignoreP` char(32) NOT NULL, `ignoreC` char(32) NOT NULL, `shortMsg` varchar(255) NOT NULL, `longMsg` text DEFAULT NULL, `data` text DEFAULT NULL, PRIMARY KEY (`id`), KEY `lastUpdated` (`lastUpdated`), KEY `status` (`status`), KEY `ignoreP` (`ignoreP`), KEY `ignoreC` (`ignoreC`)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
