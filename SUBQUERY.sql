-- Dataset used - https://drive.google.com/file/d/17TXqIYnNmZYg9fd-raO3jIjFmXrYFH1z/view
-- SUBQUERY:
-- 1. Independent Subquery:
-- Find movie with max budget
SELECT * FROM movies WHERE budget = (SELECT MAX(budget) FROM movies)
SELECT * FROM movies WHERE star IN (SELECT DISTINCT(star) FROM movies WHERE star LIKE 'A%')
-- Find movies of top actors
SELECT name FROM movies WHERE star IN (SELECT star from (SELECT star, SUM(gross - budget) AS profit FROM movies GROUP BY star ORDER BY profit DESC  LIMIT 5) A)

-- 2. Correlated Query:
-- Find top movie of each genre
SELECT name, genre,(gross - budget) AS profit FROM movies m1 WHERE (gross - budget) = (SELECT MAX(gross - budget) FROM movies m2 WHERE m2.genre = m1.genre)