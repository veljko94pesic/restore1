CREATE TABLE IF NOT EXISTS `<<table-prefix>>icl_mo_files_domains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_path` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `file_path_md5` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `domain` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'not_imported',
  `num_of_strings` int(11) NOT NULL DEFAULT '0',
  `last_modified` int(11) NOT NULL,
  `component_type` enum('plugin','theme','other') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'other',
  `component_id` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `file_path_md5_UNIQUE` (`file_path_md5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci