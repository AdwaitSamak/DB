DROP DATABASE IF EXISTS badminton;
CREATE DATABASE badminton;
USE badminton;

CREATE TABLE players (
    player_id SMALLINT(5) NOT NULL DEFAULT 0,
    player_name CHAR(128) DEFAULT NULL,
    country CHAR(128) DEFAULT NULL,
    gender CHAR(128) DEFAULT NULL,
    PRIMARY KEY (player_id)
) ;

CREATE TABLE racquet (
    player_id SMALLINT(5) NOT NULL DEFAULT 0,
    racquet_id SMALLINT(4) NOT NULL DEFAULT 0,
    racquet_name CHAR(128) DEFAULT NULL,
    manufacturer CHAR(128) DEFAULT NULL,
    PRIMARY KEY (player_id, racquet_id),
    FOREIGN KEY (player_id) REFERENCES players(player_id)
) ;

CREATE TABLE strings (
    player_id SMALLINT(5) NOT NULL DEFAULT 0,
    racquet_id SMALLINT(4) NOT NULL DEFAULT 0,
    tension_value SMALLINT(5) NOT NULL DEFAULT 0,
    string_name CHAR(128) DEFAULT NULL,
    PRIMARY KEY (player_id, racquet_id, tension_value),
    FOREIGN KEY (player_id)			 REFERENCES players(player_id),
    FOREIGN KEY (player_id, racquet_id) REFERENCES racquet(player_id, racquet_id)
) ;


INSERT INTO players VALUES (1, "Lin Dan","China","Male");
INSERT INTO players VALUES (2, "Lee Chong Wei","Malaysia","Male");
INSERT INTO players VALUES (3, "Viktor Axelsen","Denmark","Male");
INSERT INTO players VALUES (4, "Chou Tien Chen","Chinese Taipei","Male");
INSERT INTO players VALUES (5, "Kento Momota","Japan","Male");
INSERT INTO players VALUES (6, "P.V. Sindhu","India","Female");
INSERT INTO players VALUES (7, "Carolina Marin","Spain","Female");


INSERT INTO racquet VALUES (1, 1, "Yonex Voltric LD Force","Yonex");
INSERT INTO racquet VALUES (1, 2, "Yonex Voltric Z Force 2","Yonex");
INSERT INTO racquet VALUES (2, 1, "Yonex Duora 10","Yonex");
INSERT INTO racquet VALUES (3, 1, "Yonex Astrox 100zz","Yonex");
INSERT INTO racquet VALUES (4, 1, "Yonex Duora Z Strike","Yonex");
INSERT INTO racquet VALUES (4, 2, "Yonex Nanoflare","Yonex");
INSERT INTO racquet VALUES (5, 1, "Yonex Astrox 99","Yonex");
INSERT INTO racquet VALUES (5, 2, "Yonex Astrox 88D","Yonex");
INSERT INTO racquet VALUES (6, 1, "LiNing 9","Lining");
INSERT INTO racquet VALUES (6, 2, "LiNing 4","Lining");
INSERT INTO racquet VALUES (7, 1, "Yonex Ultimax","Yonex");


INSERT INTO strings VALUES (1,2,27,"BG 80 Power");
INSERT INTO strings VALUES (2,1,28,"BG 65 Ti");
INSERT INTO strings VALUES (3,1,22,"BG 80");
INSERT INTO strings VALUES (4,1,24,"BG 80");
INSERT INTO strings VALUES (4,2,25,"Nanogy 99");
INSERT INTO strings VALUES (5,1,30,"Aerobite");
INSERT INTO strings VALUES (5,2,29,"Exbolt65");
INSERT INTO strings VALUES (6,1,29,"BG 65");
INSERT INTO strings VALUES (6,2,31,"Lining Y");
INSERT INTO strings VALUES (7,1,20,"Nanogy 3");