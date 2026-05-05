/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `eaqv_wfblocks7`; */
/* PRE_TABLE_NAME: `1708882270_eaqv_wfblocks7`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_eaqv_wfblocks7` ( `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `type` int(10) unsigned NOT NULL DEFAULT 0, `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', `blockedTime` bigint(20) NOT NULL, `reason` varchar(255) NOT NULL, `lastAttempt` int(10) unsigned DEFAULT 0, `blockedHits` int(10) unsigned DEFAULT 0, `expiration` bigint(20) unsigned NOT NULL DEFAULT 0, `parameters` text DEFAULT NULL, PRIMARY KEY (`id`), KEY `type` (`type`), KEY `IP` (`IP`), KEY `expiration` (`expiration`)) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
