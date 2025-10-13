use world;

SET @ccode := 'NOR';

DELIMITER //

CREATE PROCEDURE find_city_by_ccode (IN country_code CHAR(3))
    BEGIN
        SELECT * FROM city
        WHERE city.CountryCode = country_code;
    END //
DELIMITER ;


CALL find_city_by_ccode('ZAF')
