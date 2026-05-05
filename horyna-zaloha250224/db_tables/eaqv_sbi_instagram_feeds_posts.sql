/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `eaqv_sbi_instagram_feeds_posts`; */
/* PRE_TABLE_NAME: `1708882270_eaqv_sbi_instagram_feeds_posts`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1708882270_eaqv_sbi_instagram_feeds_posts` ( `record_id` int(11) unsigned NOT NULL AUTO_INCREMENT, `id` int(11) unsigned NOT NULL, `instagram_id` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '', `feed_id` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '', `hashtag` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '', PRIMARY KEY (`record_id`), KEY `hashtag` (`hashtag`(191)), KEY `feed_id` (`feed_id`(191))) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO `1708882270_eaqv_sbi_instagram_feeds_posts` (`record_id`, `id`, `instagram_id`, `feed_id`, `hashtag`) VALUES (1,1,17936646790994096,'*1',''),(2,2,18156004972239523,'*1',''),(3,3,18035438083327571,'*1',''),(4,4,17990432446447292,'*1',''),(5,5,17893965383923985,'*1','');
