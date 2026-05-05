/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `eaqv_wfhoover`; */
/* PRE_TABLE_NAME: `1708882270_eaqv_wfhoover`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_eaqv_wfhoover` ( `id` int(10) unsigned NOT NULL AUTO_INCREMENT, `owner` text DEFAULT NULL, `host` text DEFAULT NULL, `path` text DEFAULT NULL, `hostKey` varbinary(124) DEFAULT NULL, PRIMARY KEY (`id`), KEY `k2` (`hostKey`)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
