/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `eaqv_wffilechanges`; */
/* PRE_TABLE_NAME: `1708882270_eaqv_wffilechanges`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_eaqv_wffilechanges` ( `filenameHash` char(64) NOT NULL, `file` varchar(1000) NOT NULL, `md5` char(32) NOT NULL, PRIMARY KEY (`filenameHash`)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
