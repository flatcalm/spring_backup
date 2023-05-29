CREATE DATABASE WeGoCamping;

CREATE USER 'camping'@'localhost' IDENTIFIED BY 'camp';

GRANT ALL PRIVILEGES ON WeGoCamping.* TO 'camping'@'localhost';