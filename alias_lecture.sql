USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 25;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
ORDER BY full_name
LIMIT 25;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
GROUP BY full_name, last_name
ORDER BY last_name, full_name
LIMIT 25;

SELECT hire_date, COUNT(*) AS number_hired
FROM employees
GROUP BY hire_date
ORDER BY COUNT(*) DESC
LIMIT 10;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees AS emp
GROUP BY full_name, last_name
ORDER BY last_name
LIMIT 25;

# NO
# SELECT birth_date, CONCAT(first_name, ' ', last_name) AS full_name, gender
# FROM employees
# WHERE hire_date='1985-01-01'
#   AND full_name='Arie Staelin';
