DELIMITER //
CREATE PROCEDURE create_booking_getID(
    IN bookTime DATETIME ,
    IN boat BIGINT UNSIGNED,
    OUT bookingID BIGINT UNSIGNED)
    BEGIN
        INSERT INTO booking (bookingTime, boatID)
        VALUES ( bookTime, boat);
        SET bookingID = LAST_INSERT_ID();
    END//

DELIMITER ;



CALL create_booking_getID('2000-01-01 13:37:00',1, @bookingID);

SELECT @bookingID;
