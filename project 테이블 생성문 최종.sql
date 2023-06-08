
CREATE TABLE `campsite` (
  `cno` int NOT NULL AUTO_INCREMENT,
  `faclt_nm` varchar(300) NOT NULL,
  `line_intro` varchar(500) NOT NULL,
  `intro` varchar(5000) NOT NULL,
  `first_image_url` varchar(200) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `induty` varchar(200) DEFAULT NULL,
  `addr` varchar(500) DEFAULT NULL,
  `homepage` varchar(200) DEFAULT NULL,
  `map_x` decimal(10,7) DEFAULT NULL,
  `map_y` decimal(10,7) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB AUTO_INCREMENT=3468 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `users` (
  `user_id` varchar(50) NOT NULL,
  `user_pw` varchar(100) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_phone` varchar(50) DEFAULT NULL,
  `user_email1` varchar(50) DEFAULT NULL,
  `user_email2` varchar(50) DEFAULT NULL,
  `addr_basic` varchar(300) DEFAULT NULL,
  `addr_detail` varchar(300) DEFAULT NULL,
  `addr_zip_num` varchar(50) DEFAULT NULL,
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_phone` (`user_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `board` (
  `bno` int NOT NULL AUTO_INCREMENT,
  `writer` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `cls` varchar(5) NOT NULL,
  `reg_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `content` varchar(2000) DEFAULT NULL,
  `hit` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=1202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `reply` (
  `rno` int NOT NULL AUTO_INCREMENT,
  `bno` int DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `reply` varchar(1000) DEFAULT NULL,
  `reply_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`rno`),
  KEY `bno` (`bno`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`bno`) REFERENCES `board` (`bno`) ON DELETE CASCADE,
  CONSTRAINT `reply_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `forecast` (
  `addr_name` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `payment` (
  `pay_num` varchar(45) DEFAULT NULL,
  `partner_user_id` varchar(50) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `pay_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cno` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `item_name` varchar(45) DEFAULT NULL,
  `tid` varchar(45) DEFAULT NULL,
  `daterange` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE campsite;

DROP TABLE users;

DROP TABLE board;

DROP TABLE reply;

DROP TABLE forecast;

DROP TABLE payment;
