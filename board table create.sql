CREATE TABLE `board` (
  `bno` int NOT NULL AUTO_INCREMENT,
  `writer` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `cls` varchar(5) NOT NULL,
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(2000) DEFAULT NULL,
  `hit` int DEFAULT NULL,
  PRIMARY KEY (`bno`)
);

DROP TABLE board;
