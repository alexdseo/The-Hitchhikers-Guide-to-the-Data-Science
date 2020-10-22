##Weather Observation Station
##6.
SELECT DISTINCT city FROM station
WHERE city REGEXP '^[aeiou]';    #^ : Sting's beginning

#Other solution
#SELECT city FROM station 
#WHERE city LIKE 'a%'
#OR city LIKE 'e%'
#OR city LIKE 'i%'
#OR city LIKE 'o%'
#OR city LIKE 'u%'

##7.
SELECT DISTINCT city FROM station
WHERE city REGEXP '[aeiou]$';   #$ : End of the String

##8.
SELECT DISTINCT city FROM station
WHERE city REGEXP '^[aeiou].*[aeiou]$';

#^			// start of string
#[aeiou]			// a single vowel
#.			// any characted...
#*			// ...repeated any number of times
#[aeiou]			// another vowel
#$			// end of string

##9.
SELECT DISTINCT city FROM station
WHERE city NOT REGEXP '^[aeiou]';

#Other Solution
#SELECT DISTINCT city FROM station
#WHERE city REGEXP '^[^aeiou]';     //^ inside the bracket = not

##10.
SELECT DISTINCT city FROM station
WHERE city NOT REGEXP '[aeiou]$';

#Other Solution
#SELECT DISTINCT city FROM station
#WHERE city REGEXP '[^aeiou]$';
