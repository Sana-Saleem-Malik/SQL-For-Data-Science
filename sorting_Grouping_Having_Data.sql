
-- Dataset used - https://drive.google.com/file/d/17TXqIYnNmZYg9fd-raO3jIjFmXrYFH1z/view
-- SORTING DATA
SELECT name,(gross - budget) AS profit FROM movies ORDER BY profit DESC LIMIT 5
SELECT * FROM movies ORDER BY genre, name DESC

-- GROUPING DATA
SELECT star, COUNT(*) AS num_movies FROM movies GROUP BY star ORDER BY num_movies DESC LIMIT 5 
SELECT genre, SUM(gross - budget) AS profit FROM movies GROUP BY genre ORDER BY profit DESC LIMIT 5
SELECT director, AVG(gross - budget) AS avg_profit FROM movies GROUP BY director ORDER BY avg_profit DESC LIMIT 5
SELECT name, MAX(budget) AS max_budget FROM movies GROUP BY name ORDER BY max_budget DESC LIMIT 5;
SELECT CONCAT(director,", ", star) AS director_star, SUM(gross - budget) AS profit FROM movies GROUP BY director_star ORDER BY profit DESC LIMIT 5;
SELECT star,director, SUM(gross - budget) AS profit FROM movies GROUP BY star, director ORDER BY profit DESC LIMIT 5
SELECT star,genre, SUM(gross - budget) AS profit FROM movies GROUP BY star, genre ORDER BY profit DESC LIMIT 5
SELECT star, SUM(gross - budget) AS profit FROM movies GROUP BY star ORDER BY profit DESC LIMIT 5

-- HAVING: filter output of group by just like where filter output of select
SELECT star, AVG(votes) AS opening from movies group by star having opening > 1000 ORDER BY opening DESC