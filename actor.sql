-- Active: 1694119625501@@127.0.0.1@3306@movies_db_pw
SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS movies_db_pw;
USE movies_db_pw;
CREATE Table if NOT exists actor(
    firstName VARCHAR(100) not NULL,
    LastName VARCHAR(100) not NULL,
    Gender VARCHAR(10) NOT NULL
);

DESCRIBE actor;

show TABLES;

TRUNCATE actor;

INSERT INTO actor(firstName,LastName,Gender)
VALUES
("johnny","Depp","male");

SELECT * FROM actor;

INSERT INTO actor VALUES
("scarlett","johnson","female",200),
("chris","Hemsworth","male",300);

ALTER TABLE actor
ADD  NetWorth INT NOT NULL;

UPDATE actor
SET NetWorth=100 WHERE Gender="male";
UPDATE actor
SET NeTWorth=200 WHERE Gender="female";
SELECT * from actor;

INSERT INTO actor VALUES
("chris", "evans","male",700),
("paul","Rudd","Male",150),
("Brie","larson","female",650);

SELECT * FROM actor where NetWorth>=500;
SELECT * FROM actor WHERE NetWorth>=500 OR NetWorth<200;

DESC actor;

SELECT * FROM actor where firstName="scarlett";
SELECT * FROM actor WHERE firstName LIKE "ch%";
SELECT * FROM actor WHERE LastName LIKE "%n";

SELECT * FROM actor WHERE LastName like "%o%";

SHOW DATABASES;
USE lco_films;

DESCRIBE actor;
DESCRIBE address;
DESCRIBE category;

SELECT * FROM actor ORDER BY NetWorth;
SELECT * FROM actor ORDER BY NetWorth DESC;
SELECT * FROM actor WHERE firstName LIKE "ch%" ORDER BY firstName;

SELECT * FROM actor WHERE firstName like "ch%" ORDER BY firstName , NetWorth DESC ;

-- order by

SELECT * FROM  actor  LIMIT 3 OFFSET 6;

SELECT firstName , LastName FROM actor LIMIT 3 OFFSET 6;
SELECT firstName as Firsts ,LastName as lasts FROM actor;

SELECT * FROM actor;
