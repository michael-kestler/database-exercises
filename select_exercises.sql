USE codeup_test_db;
SELECT 'The names of all albums by Pink Floyd: ', name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Pepper''s Lonely Hearts Club Band was released: '
     , release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre for Nevermind: ', genre FROM albums WHERE name = 'Nevermind';

SELECT 'Albums released in the 90s: ', name FROM albums WHERE release_date BETWEEN '1990' AND '1999';

SELECT 'Albums with less than 20 million sales: ', name FROM albums WHERE sales < '20.0';

SELECT 'All albums with genre of "Rock": ', name FROM albums WHERE genre = 'Rock';