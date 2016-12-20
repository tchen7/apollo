DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_email` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `hashed_password` varchar(1000) NOT NULL,
  `is_admin` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`user_email`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `environment`;
CREATE TABLE `environment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `geo_region` varchar(100) NOT NULL,
  `availability` varchar(100) NOT NULL,
  `kubernetes_master` varchar(1000) NOT NULL,
  `kubernetes_token` varchar(1000) NOT NULL,
   PRIMARY KEY (`id`),
   UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `service`;
CREATE TABLE `service` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,

   PRIMARY KEY (`id`),
   UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `deployable_version`;
CREATE TABLE `deployable_version` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `git_commit_sha` varchar(1000) NOT NULL,
  `github_repository_url` varchar(1000) NOT NULL,
  `related_service` int(11) unsigned NOT NULL,
   PRIMARY KEY (`id`),
   CONSTRAINT `deployable_version_service_fk` FOREIGN KEY (`related_service`) REFERENCES `service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

