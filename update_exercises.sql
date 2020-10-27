USE codeup_test_db;

SELECT '--------------------' AS 'All Albums';
# Do not need the where statement since we are just selecting all of the entries and testing this now; you can leave off the where
# SELECT * FROM albums WHERE id > 0;
SELECT * FROM albums;

# Do not need the where statement since we are just selecting all of the entries and testing this now; you can leave off the where
# UPDATE albums SET sales = sales * 10 WHERE id > 0;
UPDATE albums SET sales = sales * 10;

SELECT '--------------------' AS 'All Albums - UPDATED';
# SELECT * FROM albums WHERE id > 0;
SELECT * FROM albums;


SELECT '--------------------' AS 'Albums before 1980';
SELECT * FROM albums WHERE release_date <= 1980;

UPDATE albums SET release_date = (release_date - 100) WHERE release_date <= 1980;

SELECT '--------------------' AS 'Albums before 1980 - UPDATED';
SELECT * FROM albums WHERE release_date <= 1980;

SELECT '--------------------' AS 'Albums after 1980 - NO CHANGES';
SELECT * FROM albums WHERE release_date > 1980;


SELECT '--------------------' AS 'Michael Jackson Albums';
SELECT * FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';

SELECT '--------------------' AS 'Michael/Peter Jackson Albums - UPDATED';
SELECT * FROM albums WHERE artist = 'Peter Jackson';
