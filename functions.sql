SELECT * FROM movies
-- FUNCTIONS: --
-- ABS
SELECT name,(gross - budget) AS profit FROM movies
SELECT name,ABS((gross-budget)) AS profit FROM movies

-- ROUND
SELECT name, (runtime/60) AS runtime_hrs FROM movies
SELECT name, ROUND((runtime/60)) AS runtime_hrs FROM movies
SELECT name, ROUND((runtime/60),2) AS runtime_hrs FROM movies

-- CEIL
SELECT name, CEIL((runtime/60)) AS runtime_hrs FROM movies
SELECT name, FLOOR((runtime/60)) AS runtime_hrs FROM movies

-- UPPER/LOWER
SELECT UPPER(name) FROM movies
SELECT LOWER(name) FROM movies

-- CONCAT
SELECT name, CONCAT(star,", ",director) AS cre FROM movies

-- LENGTH
SELECT name, LENGTH(name) as length FROM movies

-- SUBSTR
SELECT name,SUBSTR(name,1,5) as short FROM movies

-- Aggregate Function:--
SELECT MAX(budget) FROM movies
SELECT MIN(gross) FROM movies
SELECT SUM(gross) FROM movies
SELECT AVG(gross) FROM movies
SELECT COUNT(*) FROM movies
SELECT COUNT(DISTINCT(star)) AS movie_count FROM movies