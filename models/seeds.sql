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

SELECT * FROM teams;
SELECT * FROM players;

