USE codeup_test_db;
SELECT 'Album Name' AS 'All albums in the table', name, release_date, sales FROM albums;
UPDATE albums
SET sales=sales*10;
SELECT 'Sales' AS 'Sales growth', sales FROM albums;
SELECT 'Album Name' AS 'All albums released before 1980', name, release_date FROM albums WHERE release_date < '1980';
UPDATE albums
SET release_date=release_date-100
WHERE release_date < 1980;
SELECT 'Album Name' AS 'All albums released before 1880', name, release_date FROM albums WHERE release_date < '1880';
SELECT 'Album Name' AS 'Albums by Michael Jackson', name FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist='Peter Jackson'
WHERE artist = 'Michael Jackson';