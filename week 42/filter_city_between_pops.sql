use world;

DELIMITER ///

CREATE PROCEDURE filter_city_between_pops(
    IN min_pop INT,
    IN max_pop INT)
        BEGIN
            SELECT Name, CountryCode, Population
            FROM city
                WHERE Population > min_pop and Population < max_pop;
        END
///
DELIMITER ;