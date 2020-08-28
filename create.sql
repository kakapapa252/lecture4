CREATE TABLE flights (
	id SERIAL PRIMARY KEY,
	origin VARCHAR NOT NULL,
	destination VARCHAR NOT NULL,
	duration INTEGER NOT NULL
);

INSERT INTO flights (origin,destination,duration) VALUES ('KOLKATA','NEW DELHI',320);
INSERT INTO flights (origin,destination,duration) VALUES ('NEW DELHI','BOMBAY',300);
INSERT INTO flights (origin,destination,duration) VALUES ('CHENNAI','BOMBAY',150);
INSERT INTO flights (origin,destination,duration) VALUES ('NEW DELHI','CHENNAI',430);
INSERT INTO flights (origin,destination,duration) VALUES ('PATNA','KOLKATA',90);
INSERT INTO flights (origin,destination,duration) VALUES ('KOLKATA','NEW DELHI',320);


SELECT * FROM flights;
SELECT origin,destination FROM flights;
SELECT * FROM flights where id = 3; 
SELECT * FROM flights where id > 3; 
SELECT * FROM flights where duration > 300 or origin = 'CHENNAI'; 


SELECT AVG(duration) from flights;
SELECT AVG(duration) from flights where origin = 'NEW DELHI';
SELECT COUNT(*) from flights where origin = 'NEW DELHI';

SELECT * from flights where origin LIKE '%A%';

UPDATE flights SET duration = 230 where origin = 'KOLKATA' and id = 1;
DELETE from flights where id = 6;

SELECT * FROM flights limit 2;
SELECT * FROM flights ORDER BY duration ASC;

SELECT origin,COUNT(*) FROM flights GROUP BY origin;

SELECT origin,COUNT(*) FROM flights GROUP BY origin,duration > 100;

SELECT origin,COUNT(*) FROM flights GROUP BY origin HAVING COUNT(*) > 1;

UPDATE flights SET duration = duration+20 where id=3;
