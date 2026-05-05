/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `eaqv_wfwaffailures`; */
/* PRE_TABLE_NAME: `1708882270_eaqv_wfwaffailures`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_eaqv_wfwaffailures` ( `id` int(10) unsigned NOT NULL AUTO_INCREMENT, `throwable` text NOT NULL, `rule_id` int(10) unsigned DEFAULT NULL, `timestamp` timestamp NOT NULL DEFAULT current_timestamp(), PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
