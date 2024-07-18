-- CLASE 31 PROCEDIMIENTOS ALMACENADOS
-- Usamos los mismos datos de la clase 27

-- sp significa stored procedure
-- creo que este es procedimiento correcto para mysql:
DELIMITER //
CREATE PROCEDURE spInsertPersons
(
	IN PERSON_ID INT,
	IN LAST_NAME VARCHAR(50),
    IN FIRST_NAME VARCHAR(50),
    IN CITY VARCHAR(50),
    IN date_of_birth DATE
)
BEGIN
	INSERT INTO persons (PERSON_ID, LAST_NAME, FIRST_NAME, CITY, date_of_birth)
	VALUES (PERSON_ID, LAST_NAME, FIRST_NAME, CITY, date_of_birth);
END //

CALL spInsertPersons ('11', 'TAMEZ', 'MINERVA', 'MONTERREY', '1995-03-11');

SELECT * FROM persons