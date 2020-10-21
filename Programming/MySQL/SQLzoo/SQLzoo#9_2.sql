##1.
SELECT name, DAY(whn),
 confirmed, deaths, recovered
 FROM covid
WHERE name = 'Spain'
AND MONTH(whn) = 3
ORDER BY whn;

##2.
SELECT name, DAY(whn), confirmed,
   LAG(confirmed, 1) OVER (PARTITION BY name ORDER BY whn)
 FROM covid
WHERE name = 'Italy'
AND MONTH(whn) = 3
ORDER BY whn;

##3.
SELECT name, DAY(whn), confirmed-LAG(confirmed, 1) OVER (PARTITION BY name ORDER BY whn)
 FROM covid
WHERE name = 'Italy'
AND MONTH(whn) = 3
ORDER BY whn;

##4.
SELECT name, DATE_FORMAT(whn,'%Y-%m-%d'), confirmed-LAG(confirmed, 1) OVER (PARTITION BY name ORDER BY whn)
 FROM covid
WHERE name = 'Italy'
AND WEEKDAY(whn) = 0
ORDER BY whn;

##5.
SELECT tw.name, DATE_FORMAT(tw.whn,'%Y-%m-%d'), 
 tw.confirmed-LAG(tw.confirmed, 1) OVER (PARTITION BY name ORDER BY tw.whn)
 FROM covid tw LEFT JOIN covid lw ON 
  DATE_ADD(lw.whn, INTERVAL 1 WEEK) = tw.whn
   AND tw.name=lw.name
WHERE tw.name = 'Italy'
AND WEEKDAY(tw.whn) = 0
ORDER BY tw.whn;

##6.
SELECT 
   name,
   confirmed,
   RANK() OVER (ORDER BY confirmed DESC) rc,
   deaths,
   RANK() OVER (ORDER BY deaths DESC) rd
  FROM covid
WHERE whn = '2020-04-20'
ORDER BY confirmed DESC;

##7.
SELECT 
   world.name,
   ROUND(100000*confirmed/population,0) AS rate,
   RANK() OVER (ORDER BY confirmed/population)
  FROM covid JOIN world ON covid.name=world.name
WHERE whn = '2020-04-20' AND population > 10000000
ORDER BY population DESC;

##8.
SELECT name, date, peak FROM
 (SELECT name, date, peak, RANK() OVER (PARTITION BY name ORDER BY peak DESC) as rank
  FROM 
   (SELECT name, DATE_FORMAT(whn,'%Y-%m-%d') AS date, 
    confirmed - (LAG(confirmed, 1) OVER (PARTITION BY name ORDER BY whn)) AS peak 
    FROM covid)  
  TAB WHERE peak >= 1000)
TAB WHERE rank = 1
ORDER BY date, peak, name;

