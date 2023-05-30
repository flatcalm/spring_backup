CREATE TABLE campsite(
	cno INT PRIMARY KEY AUTO_INCREMENT,
    faclt_nm VARCHAR(300) NOT NULL,
    line_intro VARCHAR(500) NOT NULL,
    intro VARCHAR(5000) NOT NULL,
    first_image_url VARCHAR(200),
    tel VARCHAR(20),
    induty VARCHAR(200),
    addr VARCHAR(500),
    homepage VARCHAR(200),
    map_x INT,
    map_y INT
);

SELECT * FROM campsite;

SELECT COUNT(*) FROM campsite;

TRUNCATE TABLE campsite;

DROP TABLE campsite;
