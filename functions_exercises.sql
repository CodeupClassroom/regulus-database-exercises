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

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%E';

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';

SELECT *
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25;

SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
AND year(hire_date) BETWEEN 1990 and 1999
ORDER BY birth_date, hire_date desc;

SELECT first_name, last_name, CONCAT(datediff(now(), hire_date), ' days')
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 and 1999
ORDER BY datediff(now(), hire_date) DESC;

SELECT CONCAT(first_name, ' ', last_name, ' has worked for the company for ', datediff(curdate(), hire_date),
          ' days.') AS 'Days in Company'
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND (birth_date LIKE '%-12-25')
ORDER By 'Days in Company';