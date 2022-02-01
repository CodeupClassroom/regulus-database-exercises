USE employees;

SELECT employees.first_name, employees.last_name
FROM employees
WHERE employees.hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE employees.emp_no = '101010'
);

SELECT titles.title
FROM titles
WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE first_name = 'Aamod'
    )
# UNIQUE TITLES
GROUP BY titles.title;

SELECT employees.first_name, employees.last_name
FROM employees
WHERE gender = 'F'
          AND emp_no IN (
          SELECT emp_no
          FROM dept_manager
              WHERE to_date > CURDATE()
      );

# BONUS

SELECT dept_name
FROM departments
WHERE dept_no IN (
        SELECT dept_no
        FROM dept_manager
        WHERE to_date > CURDATE()
        AND dept_manager.emp_no IN (
            SELECT employees.emp_no
            FROM employees
            WHERE gender = 'F'
        ));

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
        SELECT emp_no
        FROM salaries
        WHERE salary = (SELECT MAX(salary) FROM salaries)
    );