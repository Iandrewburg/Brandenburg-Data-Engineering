use birdstrikes;

-- EXERCISE 1
-- If speed is NULL or speed < 100 create a “LOW SPEED” category, 
-- otherwise, mark as “HIGH SPEED”. Use IF instead of CASE!
SELECT aircraft, airline, speed, 
    CASE 
        WHEN speed  = 0 or speed < 100 or speed IS NULL
            THEN 'LOW SPEED'
        ELSE 
            'HIGH SPEED'
    END
    AS speed_category   
FROM  birdstrikes
ORDER BY speed;

-- EXERCISE 2
-- How many distinct ‘aircraft’ we have in the database?
SELECT COUNT(DISTINCT aircraft) FROM birdstrikes;

-- EXERCISE 3
-- What was the lowest speed of aircrafts starting with H?
SELECT speed FROM birdstrikes WHERE aircraft LIKE 'H%' ORDER BY speed;

-- EXERCISE 4
-- Which phase of flight has the least of incidents?
SELECT phase_of_flight, COUNT(ID)
	AS count FROM birdstrikes 
	WHERE phase_of_flight != '' 
	GROUP BY phase_of_flight
	ORDER BY count;
    
-- EXERCISE 5
-- What is the rounded highest average cost by phase_of_flights?
SELECT phase_of_flight, ROUND(avg(cost))
	AS avg FROM birdstrikes 
	WHERE phase_of_flight != '' 
	GROUP BY phase_of_flight
	ORDER BY avg DESC;
    
-- EXERCISE 6
-- What the highest AVG speed of the states with names less than 5 characters?
SELECT state, avg(speed)
	AS avg FROM birdstrikes 
	WHERE LENGTH(state) < 5
	GROUP BY state
	ORDER BY avg DESC
	LIMIT 1;