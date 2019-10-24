USE heroku_5b7f1128ceb9750;

DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS players;

CREATE TABLE IF NOT EXISTS teams (team_id INT AUTO_INCREMENT PRIMARY KEY, team_name VARCHAR(50) NOT NULL );

CREATE TABLE IF NOT EXISTS players (
 player_id SERIAL PRIMARY KEY,
 team_id INT NOT NULL,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 jersey_number INT, 
 AB INT,
 H INT,
 `1B` INT,
 `2B` INT,
 `3B` INT,
 HR INT,
 BB INT,
 RBI INT,
 R INT,
 average DECIMAL(5,3),
 OBP DECIMAL(5,3),
 SLG DECIMAL(5,3),
 K INT,
 FOREIGN KEY (team_id) REFERENCES teams(team_id) );
 
 SELECT * FROM teams;
 SELECT * FROM players;

