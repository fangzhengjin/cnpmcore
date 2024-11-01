CREATE TABLE IF NOT EXISTS `proxy_caches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `gmt_create` datetime(3) NOT NULL COMMENT 'create time',
  `gmt_modified` datetime(3) NOT NULL COMMENT 'modify time',
  `fullname` varchar(214) NOT NULL DEFAULT '' COMMENT '@scope/package name',
  `version` varchar(214) COMMENT 'package version',
  `file_type` varchar(30) NOT NULL DEFAULT '' COMMENT 'file type',
  `file_path` varchar(512) NOT NULL DEFAULT '' COMMENT 'nfs file path',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_package_version_path_name` (`file_path`),
  UNIQUE KEY `ux_package_version_file_name` (`fullname`, `file_type`, `version`)
) ENGINE=InnoDB DEFAULT COLLATE utf8mb3_unicode_ci CHARSET=utf8mb3 COMMENT 'proxy mode cached files index';
