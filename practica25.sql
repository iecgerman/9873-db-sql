-- CREA LA BASE DE DATOS practica25

CREATE DATABASE practica25;

-- USAR LA NUEVA BASE DE DATOS CREADA

USE practica25;

-- CREA LA TABLA profes

CREATE TABLE cursos (
	curso_id INTEGER PRIMARY KEY NOT NULL,
    curso_nombre VARCHAR(100),
    profe_id INT
);

CREATE TABLE profes (
	profe_id INTEGER PRIMARY KEY NOT NULL,
    profe_nombre VARCHAR(50),
    curso_id INT,
    FOREIGN KEY (curso_id) REFERENCES cursos(curso_id)
);

INSERT INTO cursos (curso_id, curso_nombre, profe_id)
VALUES ('1', 'Fundamentos de Bases de Datos', '2');

INSERT INTO cursos (curso_id, curso_nombre, profe_id)
VALUES ('2', 'Curso de MySQL y MariaDB', '4');

INSERT INTO cursos (curso_id, curso_nombre, profe_id)
VALUES ('3', 'Curso de Data Science', '6');

INSERT INTO cursos (curso_id, curso_nombre, profe_id)
VALUES ('4', 'Curso de Firebase', '1');

INSERT INTO cursos (curso_id, curso_nombre, profe_id)
VALUES ('5', 'Curso de Python', '3');

INSERT INTO cursos (curso_id, curso_nombre, profe_id)
VALUES ('6', 'Curso de React.js', '5');

SELECT * FROM CURSOS

INSERT INTO profes (profe_id, profe_nombre, curso_id)
VALUES ('1', 'Israel', '4');

INSERT INTO profes (profe_id, profe_nombre, curso_id)
VALUES ('2', 'Carlos', '1');

INSERT INTO profes (profe_id, profe_nombre, curso_id)
VALUES ('3', 'Silvia', '5');

INSERT INTO profes (profe_id, profe_nombre, curso_id)
VALUES ('4', 'Leomaris', '2');

INSERT INTO profes (profe_id, profe_nombre, curso_id)
VALUES ('5', 'Nico', '6');

INSERT INTO profes (profe_id, profe_nombre, curso_id)
VALUES ('6', 'Juan', '3');

SELECT * FROM profes

SELECT *
FROM cursos
INNER JOIN profes ON cursos.profe_id = profes.profe_id

SELECT c.curso_id, c.curso_nombre, p.profe_id, p.profe_nombre
FROM cursos AS c
LEFT JOIN profes AS p ON c.profe_id = p.profe_id