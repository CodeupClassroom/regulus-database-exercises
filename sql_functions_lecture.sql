USE employees;

SELECT CONCAT('Hello ', 'Codeup', '!');

SELECT CONCAT(first_name, ' ', last_name) AS 'full_name' from employees;

SELECT first_name
FROM employees
WHERE first_name LIKE '%sus%';

SELECT first_name
FROM employees
WHERE first_name NOT LIKE '%sus%';

SELECT DAYOFMONTH('1990-05-03');
-- Will return 3

SELECT DAY('2017-03-25');
-- Will return 25

SELECT MONTH('2008-02-03');
-- Will return 2

SELECT YEAR('1987-01-01');
-- Will return 1987

SELECT *
FROM employees
WHERE year(birth_date) BETWEEN 1950 AND 1959
  AND month(birth_date) = 7
  AND day(birth_date) = 4
ORDER BY YEAR(birth_date);

SELECT NOW();

SELECT CURDATE();

SELECT CURTIME();

SELECT CONCAT(
               'Teaching people to code for ',
               UNIX_TIMESTAMP() - UNIX_TIMESTAMP('2014-02-04'),
               ' seconds'
           );







