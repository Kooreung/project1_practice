CREATE DATABASE prj;

USE prj;

CREATE TABLE restaurantBoard
(
    id              INT PRIMARY KEY AUTO_INCREMENT,
    member_id       INT,
    restaurant_name VARCHAR(100)  NOT NULL,
    food_name       VARCHAR(100)  NOT NULL,
    price           INT           NOT NULL,
    score           VARCHAR(10)   NOT NULL,
    content         VARCHAR(3000) NOT NULL,
    inserted        DATE          NOT NULL DEFAULT NOW()
);

SELECT *
FROM restaurantBoard;

DROP TABLE restaurantBoard;

CREATE TABLE member
(
    id        INT PRIMARY KEY AUTO_INCREMENT,
    email     VARCHAR(100) NOT NULL UNIQUE,
    password  VARCHAR(20)  NOT NULL,
    nick_name VARCHAR(30)  NOT NULL UNIQUE
);

SELECT *
FROM member;


