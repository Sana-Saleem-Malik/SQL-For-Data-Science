/*Alter table
add cols
delete cols
modify cols
add/remove constraints*/

-- EXAMPLE: add cols
ALTER TABLE students ADD COLUMN college varchar(255) NOT NULL

-- EXAMPLE: delete cols
ALTER TABLE students DROP COLUMN age

-- EXAMPLE: modify cols
ALTER TABLE students MODIFY COLUMN sname integer

-- EXAMPLE: add constraints
ALTER TABLE passenger ADD CONSTRAINT P_email UNIQUE(email)

-- EXAMPLE: remove constraints
ALTER TABLE passenger DROP CONSTRAINT P_email
