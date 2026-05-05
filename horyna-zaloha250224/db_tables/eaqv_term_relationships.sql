/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `eaqv_term_relationships`; */
/* PRE_TABLE_NAME: `1708882270_eaqv_term_relationships`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_eaqv_term_relationships` ( `object_id` bigint(20) unsigned NOT NULL DEFAULT 0, `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0, `term_order` int(11) NOT NULL DEFAULT 0, PRIMARY KEY (`object_id`,`term_taxonomy_id`), KEY `term_taxonomy_id` (`term_taxonomy_id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
INSERT INTO `1708882270_eaqv_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES (1,1,0),(34,1,0),(35,1,0),(36,1,0),(37,1,0),(38,1,0),(39,1,0),(149,2,0),(150,2,0),(151,2,0),(152,2,0),(153,2,0),(155,2,0),(156,2,0),(157,2,0),(1043,3,0),(1044,3,0),(1045,3,0),(1046,3,0),(1047,3,0),(1048,3,0),(1049,3,0),(1050,3,0);
