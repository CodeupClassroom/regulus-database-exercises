USE regulus_db;

# GET ALL PLAYERS WHO PLAY FOR THE 49ers

# WHAT WE WANT
SELECT CONCAT(players.first_name, ' ', players.last_name) AS full_name
FROM players
# GETTING TEAM ID FROM THE TEAMS TABLE BASED ON WHERE
WHERE team_id IN (
    SELECT id
    FROM teams
    WHERE name = '49ers'
);

# GET TEAM FOR SPECIFIC PLAYER

SELECT CONCAT(teams.city, ' ', teams.name) AS Team
FROM teams
WHERE id IN (
    SELECT team_id
    FROM players
    WHERE first_name = 'Patrick'
);


# GET ALL QBS
SELECT CONCAT(players.first_name, ' ', players.last_name) AS QBs
FROM players
# GETTING ID FROM PLAYER_POSITION
WHERE id IN (
    SELECT player_id
    FROM player_position
#     GETTING POSITION ID FROM POSITIONS WITH WHERE DEFINING QBS
    WHERE position_id IN (
        SELECT id
        FROM positions
        WHERE name = 'QB'
    )
);

USE employees;

SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;

USE regulus_db;

INSERT INTO players (first_name, last_name, team_id)
VALUES ('Eva', 'Brechum',
        (SELECT id FROM teams WHERE name = 'Bengals'));

UPDATE players
SET team_id = (SELECT id FROM teams WHERE name = 'Rams')
WHERE last_name = 'Brechum';




