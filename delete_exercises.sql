USE codeup_test_db;
DELETE 'Album' AS 'Albums released after 1991', name FROM albums WHERE release_date > '1991';
DELETE 'Album' AS 'Albums with genre disco', name FROM albums WHERE genre = 'disco';
DELETE 'Album' AS 'Albums by Whitney Houston', name FROM albums WHERE artist = 'Whitney Houston';