/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `eaqv_wfls_2fa_secrets`; */
/* PRE_TABLE_NAME: `1708882270_eaqv_wfls_2fa_secrets`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_eaqv_wfls_2fa_secrets` ( `id` int(11) unsigned NOT NULL AUTO_INCREMENT, `user_id` bigint(20) unsigned NOT NULL, `secret` tinyblob NOT NULL, `recovery` blob NOT NULL, `ctime` int(10) unsigned NOT NULL, `vtime` int(10) unsigned NOT NULL, `mode` enum('authenticator') NOT NULL DEFAULT 'authenticator', PRIMARY KEY (`id`), KEY `user_id` (`user_id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
