##Weather Observation Station
##11.
SELECT DISTINCT city FROM station
WHERE city REGEXP '^[^aeiou]' 
OR city REGEXP '[^aeiou]$';

#Other Solution
#SELECT DISTINCT city FROM station
#WHERE city REGEXP '^[^aeiou]|[^aeiou]$';  // use | as OR

##12.
SELECT DISTINCT city FROM station
WHERE city REGEXP '^[^aeiou].*[^aeiou]$';

##13.
SELECT ROUND(SUM(LAT_N),4) FROM STATION  ## OR TRUNCATE rather than ROUND
WHERE LAT_N BETWEEN 38.7880 AND 137.2345;

##14.
SELECT TRUNCATE(MAX(LAT_N),4) FROM station
WHERE LAT_N < 137.2345;

##15.
SELECT ROUND(LONG_W,4) FROM (SELECT * FROM station WHERE LAT_N < 137.2345) st
ORDER BY LAT_N DESC
LIMIT 1;