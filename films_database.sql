CREATE DATABASE IF NOT EXISTS films_database;
use  films_database;

CREATE TABLE IF NOT EXISTS movies(
    m_name VARCHAR(100)  not NULL,
    rating INTEGER not NULL
);
desc movies;

-- insert data in table 
INSERT INTO movies (rating , m_name)
VALUES
(4,"avenger");

INSERT INTO movies (rating , m_name)
VALUES
(3,"thor love and thunder"),
(3 , "thor the dark world"),
(5,"avenger infinity war"),
(4,"Iron man ");

SELECT * FROM movies;
DELETE FROM movies WHERE rating<=3;

DELETE FROM movies WHERE rating=4;

drop DATABASE if EXISTS films_database;