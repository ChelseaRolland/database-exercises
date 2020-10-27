USE codeup_test_db;

SELECT '------------------' AS 'Albums after 1991';
SELECT * FROM albums WHERE release_date > 1991;

DELETE FROM albums WHERE release_date > 1991;

SELECT '------------------' AS 'Albums after 1991 - ALBUMS REMOVED';
SELECT * FROM albums WHERE id > 0;


SELECT '------------------' AS 'DISCO Albums';
SELECT * FROM albums WHERE genre = 'Disco';

DELETE FROM albums WHERE genre = 'Disco';

SELECT '------------------' AS 'DISCO Albums - ALBUMS REMOVED';
SELECT * FROM albums WHERE id > 0;


SELECT '------------------' AS 'Eagles Albums';
SELECT * FROM albums WHERE artist = 'Eagles';

DELETE FROM albums WHERE artist = 'Eagles';

SELECT '------------------' AS 'Eagles - ALBUMS REMOVED';
SELECT * FROM albums WHERE id > 0;