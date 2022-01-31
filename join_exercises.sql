CREATE DATABASE IF NOT EXISTS join_test_db;
USE join_test_db;

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);

INSERT INTO users (name, email, role_id)
VALUES ('david', 'david@example.com', 2),
       ('bianca', 'bianca@example.com', 2),
       ('mark', 'mark@example.com', 2),
       ('ry', 'ry@example.com', null);


SELECT users.name AS user_name, roles.name AS role_name
FROM users
         JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;

SELECT roles.name AS 'Role', COUNT(u.role_id) AS 'Count'
FROM roles
         LEFT JOIN users u ON roles.id = u.role_id
GROUP BY roles.name;


# EMPLOYEES DB EXERCISES
USE employees;

SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
         JOIN departments AS d ON dm.dept_no = d.dept_no
WHERE dm.to_date > CURDATE()
ORDER BY d.dept_name;

SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
         JOIN departments AS d ON dm.dept_no = d.dept_no
WHERE dm.to_date > CURDATE()
  AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT t.title AS 'Title', COUNT(t.emp_no) AS 'Count'
FROM titles AS t
         JOIN dept_emp AS de ON t.emp_no = de.emp_no
         JOIN departments AS d ON de.dept_no = d.dept_no
WHERE t.to_date > CURDATE()
  AND d.dept_name = 'Customer Service'
  AND de.to_date > CURDATE()
GROUP BY t.title;

SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary                               AS 'Salary'
FROM employees AS e
         JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
         JOIN departments AS d ON dm.dept_no = d.dept_no
         JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE s.to_date > CURDATE()
  AND dm.to_date > CURDATE()
ORDER BY d.dept_name;


# BONUS -- HAS THE RIGHT NUMBER OF RECORDS AND THE RIGHT EMPLOYEES AND MANAGERS BUT ORDERING COULD BE ADJUSTED
SELECT CONCAT(e.first_name, ' ', e.last_name)   AS 'Employee',
       d.dept_name                              AS 'Department Name',
       CONCAT(e2.first_name, ' ', e2.last_name) AS 'Manager'
FROM employees AS e
         JOIN dept_emp de ON e.emp_no = de.emp_no
         JOIN departments d ON de.dept_no = d.dept_no
         JOIN dept_manager dm ON d.dept_no = dm.dept_no AND dm.to_date > CURDATE()
         JOIN employees e2 ON e2.emp_no = dm.emp_no
WHERE de.to_date > CURDATE()
ORDER BY d.dept_name;









