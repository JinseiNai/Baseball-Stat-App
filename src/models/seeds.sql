USE heroku_5b7f1128ceb9750;

INSERT INTO teams ( team_name )
VALUES ( "Renegades" );
INSERT INTO teams ( team_name )
VALUES ( "TNT" );

INSERT INTO players ( team_id, first_name, last_name, jersey_number, AB, H, `1B`, `2B`, `3B`, HR, BB, RBI, R, average, OBP, SLG, K )
VALUES ( 1, "Andrew", "Tom", 2, 27, 14, 9, 5, 0, 1, 6, 11, 14, 0.519, 0.606, 0.852, 6 );
INSERT INTO players ( team_id, first_name, last_name, jersey_number, AB, H, `1B`, `2B`, `3B`, HR, BB, RBI, R, average, OBP, SLG, K )
VALUES ( 1, "Calvin", "Wang", 25, 29, 11, 9, 2, 0, 0, 10, 6, 8, 0.379, 0.538, 0.448, 10 );
INSERT INTO players ( team_id, first_name, last_name, jersey_number, AB, H, `1B`, `2B`, `3B`, HR, BB, RBI, R, average, OBP, SLG, K )
VALUES ( 1, "Ryan", "Tate", 13, 29, 10, 9, 1, 0, 0, 8, 8, 6, 0.344, 0.486, 0.344, 7 );
INSERT INTO players ( team_id, first_name, last_name, jersey_number, AB, H, `1B`, `2B`, `3B`, HR, BB, RBI, R, average, OBP, SLG, K )
VALUES ( 11, "Kevin", "Tsung", 27, 39, 25, 18, 6, 1, 0, 8, 17, 24, 0.641, 0.702, 0.846, 4 );

SELECT * FROM teams;
SELECT * FROM players;
SELECT * FROM players WHERE team_id = "11";
SELECT first_name FROM players WHERE team_id = "1";


