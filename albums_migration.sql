USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR (20) NOT NULL,
    name VARCHAR (30) NOT NULL,
    release_date DATE,
    sales DECIMAL(11,0),
    genre VARCHAR (15),
    PRIMARY KEY (id)
);