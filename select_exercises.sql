USE codeup_test_db;
SELECT 'Album' AS 'All Pink Floyd Albums', name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'Year' AS 'The year Sgt. Pepper''s Lonely Hearts Club Band was released'
     , release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'Genre' AS 'Nevermind Album Genre', genre FROM albums WHERE name = 'Nevermind';

SELECT 'Album' AS 'Albums released in the 90s', name, release_date FROM albums WHERE release_date BETWEEN '1990' AND
'1999';

SELECT 'Album' AS 'Albums with less than 20 million sales', name, sales FROM albums WHERE sales < '20.0';

SELECT 'Album' AS 'Albums with genre of "Rock"', name, artist, genre FROM albums WHERE genre = 'Rock';