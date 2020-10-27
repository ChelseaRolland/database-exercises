USE codeup_test_db;

SELECT '--------------------' AS 'Pink Floyd Albums';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT '--------------------' AS 'Sgt. Pepper''s Release Date';
SELECT * FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT '--------------------' AS 'Nevermind';
SELECT * FROM albums WHERE name = 'Nevermind';

SELECT '--------------------' AS '1990s Albums';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT '--------------------' AS 'Less than 20mil Sales';
SELECT * FROM albums WHERE sales < 20.00;

SELECT '--------------------' AS 'Rock Albums';
SELECT * FROM albums WHERE genre = 'Rock';