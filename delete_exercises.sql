USE codeup_test_db;

SELECT 'Albums released after 1991' AS 'Info';
DELETE FROM albums WHERE release_date > 1991;
SELECT 'Albums with the genre ''disco''' AS 'Info';
DELETE FROM albums WHERE genre = 'disco';
SELECT 'Albums by Metallica' AS 'Info';
DELETE FROM albums WHERE artist = 'Metallica';