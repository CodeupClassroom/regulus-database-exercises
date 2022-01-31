DROP DATABASE IF EXISTS regulus_db;
CREATE DATABASE IF NOT EXISTS regulus_db;
USE regulus_db;

CREATE TABLE IF NOT EXISTS teams
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    city VARCHAR(50),
    name VARCHAR(50) UNIQUE,
    PRIMARY KEY (id)
);

INSERT INTO teams(city, name)
VALUES ('Cincinnati', 'Bengals'),
       ('San Francisco', '49ers'),
       ('Kansas City', 'Chiefs'),
       ('Los Angeles', 'Rams');


CREATE TABLE IF NOT EXISTS players
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(100),
    team_id INT UNSIGNED,
    FOREIGN KEY (team_id) REFERENCES teams(id)
);

CREATE TABLE IF NOT EXISTS positions
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) UNIQUE,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS player_position
(
    player_id INT UNSIGNED NOT NULL,
    position_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (player_id) REFERENCES players(id),
    FOREIGN KEY (position_id) REFERENCES positions(id)
);

INSERT INTO positions (name)
VALUES ('QB'),
       ('DB'),
       ('DE'),
       ('WR');

INSERT INTO players (first_name, last_name, team_id)
VALUES ('Deion', 'Sanders', NULL);

INSERT INTO player_position (player_id, position_id)
VALUES (8, 2),
       (8, 4);

INSERT INTO player_position (player_id, position_id)
VALUES (1, 1),
       (2, 1);


INSERT INTO players (first_name, last_name, team_id)
VALUES ('Joe', 'Burrow', 1),
       ('Patrick', 'Mahomes', 3),
       ('Matthew', 'Stafford', 4),
       ('Nick', 'Bosa', 2),
       ('David', 'Stephens', NULL),
       ('Bianca', 'Reusch', NULL),
       ('Ry', 'Sutton', NULL);


# RECORDS WITH THE PLAYERS FULL NAME AND THE TEAM THEY PLAY FOR
# INNER JOIN

# WHAT WE WANT
SELECT CONCAT(p.first_name, ' ', p.last_name) AS full_name,
       CONCAT(t.city, ' ', t.name) AS team_name
# FROM WHERE
FROM players AS p
# MAKE CONNECTION BETWEEN PK AND FK
JOIN teams AS t ON p.team_id = t.id;

# LEFT JOIN
SELECT CONCAT(p.first_name, ' ', p.last_name) AS full_name,
       CONCAT(t.city, ' ', t.name) AS team_name
FROM players AS p
         LEFT JOIN teams AS t ON p.team_id = t.id;

# RIGHT JOIN
SELECT CONCAT(p.first_name, ' ', p.last_name) AS full_name,
       CONCAT(t.city, ' ', t.name) AS team_name
FROM players AS p
         RIGHT JOIN teams AS t ON p.team_id = t.id;


# RECORDS WITH PLAYERS FULL NAME AND THEIR POSITION

# WHAT WE WANT
SELECT CONCAT(p.first_name, ' ', p.last_name) AS full_name,
       pos.name AS position
# FROM WHERE
FROM players AS p
#     MAKE CONNECTION BETWEEN PLAYER_POSITION AND PLAYERS
        JOIN player_position AS pp
        ON p.id = pp.player_id
#     MAKE CONNECTION BETWEEN PLAYER POSITION AND POSITIONS
        JOIN positions AS pos
        ON pp.position_id = pos.id
WHERE p.first_name = 'Deion';


# USING EMPLOYEES DB
USE employees;
# WHAT WE WANT
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name,
       dep.dept_name AS department
# FROM WHERE
FROM employees AS e
#     MAKE CONNECTION BETWEEN PLAYER_POSITION AND PLAYERS
         JOIN dept_emp AS de
              ON e.emp_no = de.emp_no
#     MAKE CONNECTION BETWEEN PLAYER POSITION AND POSITIONS
         JOIN departments AS dep
              ON de.dept_no = dep.dept_no
WHERE dep.dept_name = 'Sales'




















