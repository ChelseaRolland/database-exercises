USE codeup_test_db;

SELECT '--------------------' AS 'All Albums';
SELECT * FROM albums WHERE release_date > 1900;

UPDATE albums
SET sales = sales * 10
WHERE release_date > 1900;

SELECT '--------------------' AS 'All Albums - UPDATED';
SELECT * FROM albums WHERE release_date > 1900;


SELECT '--------------------' AS 'Albums before 1980';
SELECT * FROM albums WHERE release_date < 1980;

UPDATE albums
SET release_date = 1813
WHERE release_date < 1980;

SELECT '--------------------' AS 'Albums before 1980 - UPDATED';
SELECT * FROM albums WHERE release_date < 1980;


SELECT '--------------------' AS 'Michael Jackson Albums';
SELECT * FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT '--------------------' AS 'Michael Jackson Albums - UPDATED';
SELECT * FROM albums WHERE artist = 'Peter Jackson';
