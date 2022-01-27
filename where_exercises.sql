USE employees;

SELECT * from employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT *
from employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

SELECT *
from employees
WHERE gender = 'M'
  AND (first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya');

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E';

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
   AND last_name LIKE '%E';

SELECT *
FROM employees
WHERE last_name LIKE 'E%E';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';
