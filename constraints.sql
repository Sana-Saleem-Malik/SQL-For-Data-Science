/*Constraints
NOT NULL
UNIQUE
PRIMARY KEY
Foreign KEY
CHECK
DEFAULT
AUTO INCREMENT*/

-- EXAMPLE: (NOT NULL, UNIQUE) 
CREATE TABLE users
	(id integer NOT NULL,
    name varchar(255),
    email varchar(255),
    CONSTRAINT U_email UNIQUE(email)
	,PRIMARY KEY (id)
    )
select * from users	

-- EXAMPLE: (PRIMARY KEY, Foreign KEY) 	
CREATE TABLE IF NOT EXISTS orders(
order_id integer,
user_id integer,
time_of_order datetime,
PRIMARY KEY(order_id),
FOREIGN KEY (user_id) REFERENCES user(id)
) 
select * from orders

-- EXAMPLE: (CHECK) 
CREATE TABLE students(
	sid integer PRIMARY KEY,
    sname varchar(255) NOT NULL,
    email varchar(255) NOT NULL UNIQUE,
    age integer CHECK(age > 6 AND age < 25)
    )   
INSERT INTO students (sid, sname,email,age)
VALUES (1,"sana saleem","sanasaleem@gmail.com",8);
select * from students

-- EXAMPLE: (DEFAULT) 
CREATE TABLE passenger(
	pid integer PRIMARY KEY,
    pname varchar(255) NOT NULL,
    gender varchar(255) DEFAULT "others"
)
INSERT INTO passenger (pid, pname)
VALUES (1,"sana");
select * from passenger

-- EXAMPLE: (DEFAULT)
CREATE TABLE IF NOT EXISTS customer(
	id integer PRIMARY KEY,
    name varchar(255) NOT NULL,
    journey_date datetime DEFAULT CURRENT_TIMESTAMP
)
INSERT INTO customer (id, name)
VALUES (201,"sana rukaaiya");
select * from customer

-- EXAMPLE: (AUTO_INCREMENT)
CREATE TABLE teacher(
	id integer PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL
)
INSERT INTO teacher (name)
VALUES ("shaziya malik");
select * from teacher