CREATE TABLE "meteorites_temp" (
    "name" TEXT,
    "id" INTEGER PRIMARY KEY ,
    "nametype" TEXT,
    "class" TEXT,
    "mass" INTEGER,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" INTEGER,
    "long" INTEGER
);

.mode csv
.import --skip 1 meteorites.csv meteorites_temp

UPDATE meteorites_temp
SET mass = ROUND(mass, 2), lat = ROUND(lat, 2), long = ROUND(long, 2), year = ROUND(year,0) ;

UPDATE meteorites_temp
SET mass = NULL
WHERE mass = 0;

UPDATE meteorites_temp
SET year = NULL
WHERE year = 0;

UPDATE meteorites_temp
SET lat = NULL
WHERE lat = 0;

UPDATE meteorites_temp
SET long = NULL
WHERE long = 0;

CREATE TABLE "meteorites" (
    "id" INTEGER PRIMARY KEY ,
    "name" TEXT,
    "class" TEXT,
    "mass" INTEGER,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" INTEGER,
    "long" INTEGER
);

INSERT INTO "meteorites" ("name","class","mass","discovery","year","lat","long")
SELECT "name","class","mass","discovery","year","lat","long" FROM "meteorites_temp"
WHERE "nametype" != "Relict"
ORDER BY "year" ASC, "name" ASC;

DROP TABLE meteorites_temp;
