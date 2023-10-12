-- 01. Querying data
SELECT LastName FROM employees;
SELECT LastName, FirstName FROM employees;
SELECT * FROM employees;
SELECT FirstName AS 이름 FROM employees;
SELECT Name, Milliseconds/60000 AS "재생 시간(분)" FROM tracks;
-- 02. Sorting data
SELECT 
    FirstName
FROM
    employees
ORDER BY
    FirstName;

SELECT 
    FirstName
FROM
    employees
ORDER BY
    FirstName DESC;  


SELECT 
    Country, City
FROM 
    customers
ORDER BY 
    Country DESC,
    City ASC;

SELECT Name, Milliseconds/60000 AS "재생 시간(분)"
FROM tracks
ORDER BY Milliseconds DESC;
-- NULL 정렬 예시


-- 03. Filtering data
SELECT DISTINCT
    Country
FROM 
    customers
ORDER BY
    Country;

SELECT
    LastName, FirstName, City
FROM
    customers
WHERE
    City = "Prague";

SELECT
    LastName, FirstName, Company, Country
FROM
    customers
WHERE
    Company IS NULL 
    AND Country = 'USA';

SELECT
    Name, Bytes
FROM 
    tracks
WHERE
    Bytes BETWEEN 10000 AND 500000
ORDER BY
    Bytes;

SELECT
    LastName, FirstName, Country
FROM
    customers
WHERE
    Country = 'Canada'
    OR Country = 'Germany'
    OR Country = 'France';


SELECT
    LastName, FirstName
FROM 
    customers
WHERE
    LastName LIKE '%son';


SELECT
    LastName, FirstName
FROM 
    customers
WHERE
    FirstName LIKE '___a';


SELECT TrackId, Name, Bytes
FROM tracks
ORDER BY Bytes DESC
LIMIT 3, 7-3;

-- 04. Grouping data
SELECT Composer, AVG(Bytes) AS avgBytes
FROM tracks
GROUP BY Composer
ORDER BY avgBytes DESC;


SELECT Composer, AVG(Milliseconds/60000) AS avgMilliseconds
FROM tracks
GROUP BY Composer
HAVING avgMilliseconds < 10;
-- 에러


-- 에러 해결
