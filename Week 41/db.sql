DROP DATABASE IF EXISTS sauna;
CREATE DATABASE sauna;

use sauna;

CREATE TABLE boat (
    boatID SERIAL,
    location VARCHAR(50),
    seats SMALLINT
);

CREATE TABLE booking (
    bookingID SERIAL,
    bookingTime DATETIME,
    boatID BIGINT UNSIGNED,

    FOREIGN KEY (boatID) REFERENCES boat(boatID)
);

CREATE USER 'manager'@'%' IDENTIFIED BY 'secret';
CREATE USER 'bookingagent'@'%' IDENTIFIED BY 'hello';

CREATE USER 'steve'@'%' IDENTIFIED BY 'hello';

GRANT CREATE, INSERT, UPDATE, SELECT ON sauna.* TO 'manager'@'%';

GRANT SELECT, INSERT, UPDATE ON sauna.booking TO 'bookingagent'@'%';
GRANT SELECT ON sauna.boat TO 'bookingagent'@'%';
GRANT EXECUTE ON PROCEDURE sauna.create_booking TO 'steve'@'%';

FLUSH PRIVILEGES;

