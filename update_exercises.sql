USE codeup_test_db;
SELECT 'All albums in the table: ', name FROM albums;
SELECT 'All albums released before 1980: ', name FROM albums WHERE release_date < '1980';
