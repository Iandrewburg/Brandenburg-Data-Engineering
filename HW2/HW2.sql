USE birdstrikes;

# exercise 1
CREATE SCHEMA employee;
CREATE TABLE employee
(id INTEGER NOT NULL,
	employee_name VARCHAR (255) NOT NULL,
    PRIMARY KEY(id));

# exercise 2
SELECT state FROM birdstrikes LIMIT 144, 1;
# Tennessee

# exercise 3
SELECT flight_date FROM birdstrikes ORDER BY flight_date DESC LIMIT 0,1;
# 2000-04-18

# exercise 4
SELECT DISTINCT cost FROM birdstrikes ORDER BY cost DESC LIMIT 49,1;
# 5345

# exercise 5
SELECT state FROM birdstrikes WHERE state IS NOT NULL AND state !=''
	AND bird_size IS NOT NULL AND bird_size !='' LIMIT 1,1;
# Colorado

# exercise 6
SELECT DATEDIFF(NOW(), flight_date) FROM birdstrikes
	WHERE weekofyear(flight_date) = 52
    AND state = 'Colorado';
# 8678

