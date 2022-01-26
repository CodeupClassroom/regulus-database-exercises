USE codeup_test_db;

# THIS USES AN ALIAS
# SELECT name AS 'Hit Records' FROM albums;

# SELECT 'All albums in your table' AS 'Info';
# SELECT name, sales FROM albums;
# UPDATE albums SET sales = (sales * 10);
# SELECT name, sales FROM albums;


# SELECT 'All albums released before 1980' AS '**NOTE**';
# SELECT * FROM albums WHERE release_date < 1980;
# UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;
# SELECT * FROM albums WHERE release_date < 1980;


SELECT 'ALL albums by Michael Jackson' AS 'Michael Jackson Albums';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'Peter Jackson';


