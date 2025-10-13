# Create Temporary Procedure

use world;

SET @min_pop = 450000;
SET @max_pop = 600000;

SELECT Name, CountryCode, Population
FROM city
WHERE Population BETWEEN @min_pop AND @max_pop;

CALL filter_city_between_pops(250000, 270000);

CREATE USER 'python'@'%' IDENTIFIED BY 'abc123';

GRANT EXECUTE ON PROCEDURE world.filter_city_between_pops TO 'python'@'%';

FLUSH PRIVILEGES;