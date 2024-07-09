CREATE DATABASE practica27;


CREATE TABLE PERSONS (
    PERSON_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    LAST_NAME VARCHAR(50),
    FIRST_NAME VARCHAR(50),
    ADDRESS VARCHAR(100),
    CITY VARCHAR(50)
);

INSERT INTO PERSONS (PERSON_ID, LAST_NAME, FIRST_NAME, ADDRESS, CITY)
VALUES (1, 'Smith', 'John', '123 Main St.', 'Anytown');

INSERT INTO PERSONS (PERSON_ID, LAST_NAME, FIRST_NAME, ADDRESS, CITY)
VALUES (2, 'Doe', 'Jane', '456 Maple St.', 'Mexico');

INSERT INTO PERSONS (PERSON_ID, LAST_NAME, FIRST_NAME, ADDRESS, CITY)
VALUES (3, 'White', 'Jim', '789 Elm St.', 'Colombia');

INSERT INTO PERSONS (PERSON_ID, LAST_NAME, FIRST_NAME, ADDRESS, CITY)
VALUES (4, 'Black', 'Jack', '101 Park Ave.', 'Madrid');

INSERT INTO PERSONS (PERSON_ID, LAST_NAME, FIRST_NAME, ADDRESS, CITY)
VALUES (5, 'Green', 'Jill', '202 Forest Rd.', 'London');

INSERT INTO PERSONS (PERSON_ID, LAST_NAME, FIRST_NAME, ADDRESS, CITY)
VALUES (6, 'Blue', 'Mary', '303 Ocean Blvd.', 'Paris');

INSERT INTO PERSONS (PERSON_ID, LAST_NAME, FIRST_NAME, ADDRESS, CITY)
VALUES (7, 'Brown', 'Bob', '404 Country Rd.', 'Berlin');

INSERT INTO PERSONS (PERSON_ID, LAST_NAME, FIRST_NAME, ADDRESS, CITY)
VALUES (8, 'Pink', 'Bill', '505 Hill St.', 'Rome');

INSERT INTO PERSONS (PERSON_ID, LAST_NAME, FIRST_NAME, ADDRESS, CITY)
VALUES (9, 'Yellow', 'Sue', '606 Lake St.', 'Athens');

INSERT INTO PERSONS (PERSON_ID, LAST_NAME, FIRST_NAME, ADDRESS, CITY)
VALUES (10, 'Purple', 'Joe', '707 River St.', 'Prague');

SELECT * FROM PERSONS

-- PASO 1
CREATE VIEW v_madrid_customers AS
SELECT PERSON_ID, LAST_NAME, FIRST_NAME
FROM PERSONS
WHERE CITY = "Madrid";

-- PASO 2
SELECT * FROM v_madrid_customers

-- PASO 3 esto es lo que queria saber, como agregar columnas nuevas
ALTER TABLE persons
ADD COLUMN date_of_birth DATE;

SELECT * FROM PERSONS;

ALTER TABLE PERSONS
DROP COLUMN ADDRESS;

--  PASO 4
ALTER TABLE PERSONS
DROP COLUMN ADDRESS