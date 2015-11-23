CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `emailAddress` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emailAddress` (`emailAddress`)  
) ENGINE=InnoDB AUTO_INCREMENT=2027862 DEFAULT CHARSET=latin1;


