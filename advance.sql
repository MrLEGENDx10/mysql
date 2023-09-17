-- Active: 1694119625501@@127.0.0.1@3306@movies_db_pw
SELECT * FROM actor;
DROP Table actor;
SHOW TABLES ;

 CREATE Table IF NOT EXISTS actors (
firstName VARCHAR (100) ,
lastName VARCHAR(100),
gender VARCHAR(10),
netWorth INT,
id INT AUTO_INCREMENT PRIMARY KEY);

desc  actors;

INSERT INTO actors (firstName,lastName,gender,netWorth,id)
VALUES
("johnny", "depp","male",450,1)

INSERT INTO actors (firstName,lastName,gender,netWorth)
VALUES
("chris", "evans", "male",450)

use movies_db_pw;
SELECT * FROM actors;

SHOW TABLES;
use lco_films;
SHOW TABLES;
desc city;
SELECT * FROM city;
SELECT * FROM address;
SELECT * FROM address LIMIT 4,5;
DESCRIBE address;
DESCRIBE city;
show tables a;

SELECT address,district,city from address RIGHT OUTER JOIN city ON address.city_id=city.city_id ORDER BY address limit 10;

DESCRIBE actor;
DESCRIBE city;
DESCRIBE address;

SELECT first_name as first,last_name as last, address as home_town, city  FROM actor JOIN address on  actor.address_id=address.address_id JOIN city on city.city_id=address.address_id ORDER BY first_name;