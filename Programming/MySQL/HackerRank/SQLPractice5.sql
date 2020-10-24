## Higher than 75 Marks
SELECT NAME FROM STUDENTS
WHERE MARKS > 75
ORDER BY SUBSTRING(NAME,-3), ID ASC;

## Employee Names
SELECT Name FROM Employee
ORDER BY Name;

## Employee Salaries
SELECT Name FROM Employee
WHERE Salary > 2000 AND months < 10
ORDER BY employee_id ASC;

## Type of Triangle
SELECT CASE WHEN A+B > C AND A+C > B AND B+C > A THEN
            CASE WHEN A = B AND B = C THEN 'Equilateral'
                 WHEN A = B OR B = C OR A = C THEN 'Isosceles'
                 ELSE 'Scalene' END
        ELSE 'Not A Triangle' END
        FROM Triangles;
        
## The PADS
SELECT CONCAT(NAME, '(', SUBSTRING(Occupation,1, 1), ')')
FROM Occupations ORDER BY NAME;
SELECT CONCAT('There are a total of ',COUNT(occupation),' ', LOWER(occupation),'s.')
FROM Occupations GROUP BY occupation ORDER BY COUNT(occupation) ASC, occupation;
