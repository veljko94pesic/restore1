CREATE TABLE IF NOT EXISTS `<<table-prefix>>icl_string_packages` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kind_slug` varchar(160) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `kind` varchar(160) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(160) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(160) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `edit_link` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `view_link` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `word_count` varchar(2000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci