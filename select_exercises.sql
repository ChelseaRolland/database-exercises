USE codeup_test_db;

SELECT '--------------------' AS 'Pink Floyd Albums';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT '--------------------' AS 'Sgt. Pepper''s Release Date';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT '--------------------' AS 'Nevermind';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT '--------------------' AS '1990s Albums';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT '--------------------' AS '1990s Albums';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT '--------------------' AS 'Less than 20mil Sales';
SELECT * FROM albums WHERE sales < 20.00;

SELECT '--------------------' AS 'Less than 20mil Sales';
SELECT name FROM albums WHERE sales < 20;

SELECT '--------------------' AS 'Rock Albums';
SELECT * FROM albums WHERE genre = 'Rock';

SELECT '--------------------' AS 'Rock Albums';
SELECT name FROM albums WHERE genre = 'Rock';

SELECT '--------------------' AS 'All Rock Albums';
SELECT *  FROM albums WHERE genre LIKE '%Rock%';

SELECT '--------------------' AS 'All Rock Albums';
SELECT name FROM albums WHERE genre LIKE '%Rock%';