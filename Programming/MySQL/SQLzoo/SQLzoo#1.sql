## 1.
SELECT name FROM world
  WHERE name LIKE 'Y%';
  
## 2.
SELECT name FROM world
  WHERE name LIKE '%y';

## 3.
SELECT name FROM world
  WHERE name LIKE '%x%';
  
## 4.
SELECT name FROM world
  WHERE name LIKE '%land';
  
## 5.
SELECT name FROM world
  WHERE name LIKE 'C%ia';

## 6.
SELECT name FROM world
  WHERE name LIKE '%oo%';
  
## 7. (Countries that have three or more a in the name)
SELECT name FROM world
  WHERE name LIKE '%a%a%a%';

##Other solution
# SELECT name FROM world
#   WHERE name REGEXP '(.*[a]){3,}';

## 8. (t as a second character)
SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name;

## 9. (Countries that have two "o" characters separated by two others.)
SELECT name FROM world
 WHERE name LIKE '%o__o%';
 
## 10. (Name with exactly 4 char)
SELECT name FROM world
 WHERE name LIKE '____';
 
 ## 11.
 SELECT name FROM world
   WHERE name LIKE "capital";
   
## 12.
SELECT name FROM world
WHERE capital = concat(name, ' City');

## Other Solution
# SELECT name FROM world
#   WHERE capital LIKE '%City';

## 13.
SELECT capital, name FROM world
  WHERE capital LIKE concat('%',name,'%'); 
  
## 14.
SELECT capital, name FROM world
  WHERE capital LIKE concat('%',name,'%')
  AND NOT capital = name; 
  
## 15.
SELECT name, REPLACE(capital,name,'') AS ext FROM world 
WHERE capital LIKE concat(name, '%')
AND NOT capital = name;