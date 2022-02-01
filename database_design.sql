# ONE TO MANY

# one team to many players
# players table (many side) holds the foreign key

# MANY TO MANY

# players to positions
# one player can play many positions
# one position could be played by many players

/*


FANTASY APP SPECS

-- USERS SIGN UP WITH USERNAME AND PASSWORD
-- USERS CAN CREATE LEAGUES THAT HAVE A NAME, START DATE, AND END DATE
-- EACH LEAGUE IS ASSOCIATED WITH THE USER WHO CREATED IT


-- USERS CAN JOIN MULTIPLE LEAGUES
-- EACH LEAGUE IS ASSOCIATED WITH THE USERS WHO HAVE JOINED IT


*/

CREATE DATABASE IF NOT EXISTS fantasy_db;
USE fantasy_db;

CREATE TABLE IF NOT EXISTS users
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE,
    password VARCHAR(255),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS leagues
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) UNIQUE,
    start_date DATETIME,
    end_date DATETIME,
    owner_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (owner_id) REFERENCES users(id),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS league_user
(
    user_id INT UNSIGNED NOT NULL,
    league_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (league_id) REFERENCES leagues(id)
);
