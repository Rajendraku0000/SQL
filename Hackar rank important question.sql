-- 1.  Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
SELECT (count(CITY) - count(DISTINCT CITY)) as DIFFERENCE
FROM STATION;


-- 2. Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
-- Explanation: When ordered alphabetically, the CITY names are listed as ABC, DEF, PQRS, and WXY, with lengths 3, 3, 4 and 3. The longest name is PQRS, but there are 3 options for the shortest named city. Choose ABC, because it comes first alphabetically.

-- 1st method

-- (SELECT CITY, length(CITY) as len
-- FROM STATION
-- ORDER BY len, CITY 
-- LIMIT 1
-- )
-- UNION
-- (
-- SELECT CITY, length(CITY) as len
-- FROM STATION
-- ORDER BY len DESC, CITY 
-- LIMIT 1
-- ) 

-- 2 nd method 
-- SELECT CITY, length(CITY) as len FROM STATION ORDER BY len, CITY LIMIT 1;
-- SELECT CITY, length(CITY) as len FROM STATION ORDER BY len DESC, CITY LIMIT 1;
