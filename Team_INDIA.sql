DROP DATABASE IF EXISTS Team_INDIA;
CREATE DATABASE Team_INDIA;
USE Team_INDIA;

CREATE TABLE players_info (
    player_id INT(10) NOT NULL DEFAULT 0,
    player_name CHAR(128) DEFAULT NULL,
    debut_year DATE NOT NULL,
    PRIMARY KEY (player_id)
) ;

CREATE TABLE team (
    player_id INT(10) NOT NULL DEFAULT 0,
    jercy_no INT(100) NOT NULL DEFAULT 0,
    IPL_team CHAR(128) DEFAULT NULL,
    PRIMARY KEY (player_id, jercy_no),
    FOREIGN KEY (player_id) REFERENCES players_info(player_id)
) ;
select * from team;
select * from players_info;
CREATE TABLE performance (
    player_id INT(10) NOT NULL DEFAULT 0,
    jercy_no INT(100) NOT NULL DEFAULT 0,
    icc_ranking INT(100) NOT NULL DEFAULT 0,
    run BIGINT(100) NOT NULL DEFAULT 0,
    PRIMARY KEY (player_id, jercy_no,icc_ranking),
    FOREIGN KEY (player_id)	REFERENCES players_info(player_id),
    FOREIGN KEY (player_id, jercy_no) REFERENCES team(player_id, jercy_no)
) ;

INSERT INTO players_info VALUES (1, "Virat",2000);
INSERT INTO players_info VALUES (2, "Rohit",2005);
INSERT INTO players_info VALUES (3, "Dhoni",1998);

INSERT INTO team VALUES (1, 18,"Banglore");
INSERT INTO team VALUES (2, 45,"Mumbai");
INSERT INTO team VALUES (3, 7,"Chennai");

INSERT INTO performance VALUES (1,18,4, 928);
INSERT INTO performance VALUES (2,45,10, 984);
INSERT INTO performance VALUES (3,7,25, 876);

