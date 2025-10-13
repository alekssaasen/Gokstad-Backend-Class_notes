USE sauna;

INSERT INTO boat (location , seats)
VALUES ('Sandefjord', 4);

SELECT * from boat;

SELECT * from booking;

SHOW GRANTS FOR 'steve'@'%';

INSERT INTO booking (bookingTime, boatID)
VALUES ( '2026-06-12 10:00:00', 3);

CALL create_booking('2026-06-13 14:00:00', 1)
