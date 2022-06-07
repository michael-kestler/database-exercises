USE codeup_test_db;
DROP TABLE IF EXISTS album;
CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR (100) NOT NUll,
    release_date INT UNSIGNED,
    sales FLOAT,
    genre VARCHAR (100),
    PRIMARY KEY (id)
)