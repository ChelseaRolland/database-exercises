DROP DATABASE IF EXISTS codeup_test_db;
CREATE DATABASE IF NOT EXISTS codeup_test_db;
USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR (80) NOT NULL,
    name VARCHAR (80) NOT NULL DEFAULT 'Untitled',
    release_date INT UNSIGNED,
    genre VARCHAR (80),
    sales FLOAT UNSIGNED,
    PRIMARY KEY (id)
);