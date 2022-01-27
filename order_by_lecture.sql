# SELECT column FROM table ORDER BY column_name [ASC|DESC];

SELECT first_name, last_name
FROM employees.employees
ORDER BY last_name;

SELECT first_name, last_name
FROM employees.employees
ORDER BY last_name DESC;

SELECT first_name, last_name, emp_no
FROM employees.employees
ORDER BY last_name DESC, first_name ASC, emp_no DESC;