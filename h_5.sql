USE seminar5;
CREATE TABLE CARS 
(       
	id int PRIMARY KEY, 
	name VARCHAR(45), 
	cost int
);

INSERT INTO CARS (id, name,	cost) 
VALUES (1,'AUDI', 52642),
       (2,'MERSEDES',57127),
       (3,'SKODA', 9000),
       (4,'VOLVO', 29000),
       (5,'BENTLEY', 350000),
       (6,'SITROEN', 21000),
       (7,'HUMMER', 41400),
       (8,'VOLKSWAGEN',21600);
SELECT * FROM CARS;

-- 1.	Создайте представление, в которое попадут автомобили стоимостью  до 25 000 долларов
CREATE VIEW CARSVIEW AS
SELECT * FROM CARS 
WHERE cost < 25000;

SELECT * FROM CARSVIEW;

-- 2.	Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW) 
ALTER VIEW CARSVIEW AS
SELECT * FROM CARS 
WHERE cost < 30000;

SELECT * FROM CARSVIEW;

-- 3. 	Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”
CREATE VIEW CARSVIEW2 AS
SELECT * FROM CARS 
WHERE name='SKODA' OR name='AUDI';

SELECT * FROM CARSVIEW2;
