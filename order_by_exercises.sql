USE employees;

SELECT *
from employees
WHERE first_name
IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, emp_no DESC;

SELECT *
from employees
WHERE first_name
          IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT *
from employees
WHERE first_name
          IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;

SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;

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
