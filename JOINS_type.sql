-- JOINS:
/*
1. Cartesian Product:
[1,2,3] [4,5]
[(1,4),(1,5),(2,4),(2,5),(3,4),(3,5),]*/

SELECT * FROM users CROSS JOIN organize
-- 2. Inner Join
SELECT * FROM membership m JOIN users u ON m.uid = u.id
-- 3. self Join
SELECT u1.name,u2.name JOIN users u1 JOIN users u2 ON u1.emergency_contact = u2.id 
-- 4. Outer Joins
-- LEFT OUTER JOIN
SELECT * FROM membership m LEFT OUTER JOIN users u ON m.uid = u.id
-- RIGHT OUTER JOIN
SELECT * FROM membership m RIGHT OUTER JOIN users u ON m.uid = u.id
-- FULL OUTER
SELECT * FROM membership m FULL OUTER JOIN users u ON m.uid = u.id

-- UNION:
SELECT id FROM users
UNION
SELECT gid FROM membership

SELECT id FROM users UNION ALL SELECT gid FROM membership

SELECT *
FROM membership m
LEFT OUTER JOIN users u ON m.uid = u.id
UNION
SELECT *
FROM membership m
RIGHT OUTER JOIN users u ON m.uid = u.id;

SELECT * FROM membership m
JOIN users u ON m.uid = u.id
JOIN organize g ON m.gid = g.gid
