-- CREATE THE practica22 DATABASE
CREATE DATABASE practica24;

-- USE THE NEWLY CREATED DATABASE
USE practica24;

-- CREATE TABLE FOR productos
CREATE TABLE productos (
    producto_id INTEGER PRIMARY KEY NOT NULL,
    nombre VARCHAR(50),
    marca_id INT,
    precio DECIMAL(10,2),
    LOAD_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UPDATE_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (marca_id) REFERENCES marcas(marca_id)
);

-- CREATE TABLE FOR marcas
CREATE TABLE marcas (
    marca_id INTEGER PRIMARY KEY NOT NULL,
    nombre VARCHAR(50),
    LOAD_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UPDATE_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);

SELECT * FROM marcas

--PRIMERO INSERTAMOS LAS TABLAS QUE NO TIENEN LLAVES FORANEAS, PORQUE LUEGO MARCA ERROR AL TRATAR DE INSERTAR TABLAS CON LLAVES FORANEAS

INSERT INTO marcas (marca_id, nombre)
VALUES ('1', 'Dell')

INSERT INTO marcas (marca_id, nombre)
VALUES ('2', 'Apple');

INSERT INTO marcas (marca_id, nombre)
VALUES ('3', 'Samsung');

SELECT * FROM productos

INSERT INTO productos (producto_id, nombre, marca_id, precio)
VALUES ('1', 'Laptop', '1', '1200.00');

INSERT INTO productos (producto_id, nombre, marca_id, precio)
VALUES ('2', 'Smartphone', '2', '800.00');

INSERT INTO productos (producto_id, nombre, marca_id, precio)
VALUES ('3', 'Tablet', '1', '400.00');

--AHORA SI LO VISTO EN LA CLASE

SELECT *
FROM productos
INNER JOIN marcas ON productos.marca_id = marcas.marca_id

SELECT p.producto_id, p.nombre, m.marca_id, m.nombre
FROM productos AS p
INNER JOIN marcas AS m ON p.marca_id = m.marca_id

SELECT p.producto_id, p.nombre, m.marca_id, m.nombre
FROM productos AS p
RIGHT JOIN marcas AS m ON p.marca_id = m.marca_id

--FULL OUTER NO SE PUEDE EN MYSQL

SELECT p.producto_id, p.nombre, m.marca_id, m.nombre
FROM productos AS p
FULL OUTER marcas AS m ON p.marca_id = m.marca_id 

--ESTO ES UN FULL OUTER JOIN, LA UNION DE UN LEFT Y UN RIGHT

SELECT p.producto_id, p.nombre, m.marca_id, m.nombre
FROM productos AS p
LEFT JOIN marcas AS m ON p.marca_id = m.marca_id
UNION
SELECT p.producto_id, p.nombre, m.marca_id, m.nombre
FROM productos AS p
RIGHT JOIN marcas AS m ON p.marca_id = m.marca_id

-- CROSS JOIN

SELECT p.producto_id, p.nombre, m.nombre
FROM productos AS p
CROSS JOIN marcas AS m