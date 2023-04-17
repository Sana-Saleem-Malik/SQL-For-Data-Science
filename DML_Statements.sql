/* DML(data manipulate language)  STATEMENTS 
insert, retrieve, update, delete*/

-- INSERT
INSERT INTO students (sid,sname,email,college) VALUES(2,"SANA","abc@gmail.com","HIT") 
INSERT INTO students VALUES (5,"iqra","def@gmail.com","MIT")
INSERT INTO students VALUES (4,"aqsa","ghi@gmail.com","IT"),(6,"saleem","jkl@gamil.com","HIT"),(7,"fahad","mno@gmail.com","GUI")

--Retrieve
-- All columns retrieve
SELECT * from tested

-- filter columns
SELECT Name,Sex,Survived FROM tested

-- Alias As
SELECT Name AS PassengerName, Sex AS Gender, Survived FROM tested

-- Expression
SELECT Name, SibSp + Parch AS family FROM tested
SELECT Name,Age +102 AS Currentage FROM tested 

-- Constant
SELECT Name, 100000 AS Compensation FROM tested

-- Distinct single col
SELECT DISTINCT Sex FROM tested
SELECT DISTINCT Embarked from tested
SELECT DISTINCT Pclass FROM tested
SELECT DISTINCT Pclass,Embarked FROM tested

-- Comparision Operator
SELECT * FROM tested WHERE Survived = 0
SELECT * FROM tested WHERE Pclass = 3
SELECT * FROM tested WHERE Age = 50

-- AND/OR/BETWEEN
SELECT * FROM tested WHERE Pclass = 3 AND Survived = 0
SELECT * FROM tested WHERE Age BETWEEN 10 AND  15

-- IN/NOT IN
SELECT * FROM bollywoodmoviedetail
SELECT * FROM bollywoodmoviedetail WHERE genre IN ('Comedy','Action','Drama')
SELECT * FROM bollywoodmoviedetail WHERE genre NOT IN ('Comedy','Action','Drama')

-- OR
SELECT * FROM bollywoodmoviedetail WHERE genre LIKE 'Comedy' OR genre LIKE 'Action'

-- Order of Query Execution  from->join->where->group by->having->select->distinct->order by

-- Wildcard:
-- %
SELECT * FROM bollywoodmoviedetail WHERE title LIKE 'Pyaar%';
SELECT * FROM bollywoodmoviedetail WHERE title LIKE '%Pyaar%';
SELECT * FROM bollywoodmoviedetail WHERE title LIKE '%Pyaar';
SELECT title ,actors FROM bollywoodmoviedetail WHERE actors LIKE "%Khan %" OR actors LIKE "%Kapoor%"

-- _
SELECT title FROM bollywoodmoviedetail WHERE title LIKE '_____'
SELECT title FROM bollywoodmoviedetail WHERE title LIKE 'A____'

-- UPDATE

SELECT * FROM passenger
UPDATE passenger SET pname = 'Rahul'
UPDATE passenger SET pname = 'Rahul'
UPDATE passenger SET pname = "Rohit" WHERE email LIKE '%gmail%' 
UPDATE passenger SET pname ="Ankit", email="abc@gmail.com" WHERE email LIKE "%yahoo%"

-- DELETE
DELETE FROM passenger WHERE pid = 1
DELETE FROM passenger WHERE pid>2 AND email LIKE "%yahoo%"
DELETE FROM passenger WHERE 1 -- Truncate The Table