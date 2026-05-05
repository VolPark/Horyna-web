/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `eaqv_wflivetraffichuman`; */
/* PRE_TABLE_NAME: `1708882270_eaqv_wflivetraffichuman`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_eaqv_wflivetraffichuman` ( `IP` binary(16) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', `identifier` binary(32) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', `expiration` int(10) unsigned NOT NULL, PRIMARY KEY (`IP`,`identifier`), KEY `expiration` (`expiration`)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
