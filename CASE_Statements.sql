-- CASE Statements: if else for databases
SELECT name,(gross - budget) profit,
CASE
	WHEN (gross - budget) > 1000000000 THEN "SUPER HIT"
    WHEN (gross - budget) > 250000000 AND (gross - budget) < 1000000000 THEN "HIT"
    WHEN (gross - budget) > 0 AND (gross - budget) < 250000000 THEN "AVERAGE"
    ELSE "FLOP"
END AS verdict
FROM movies