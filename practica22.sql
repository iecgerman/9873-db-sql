-- CREATE THE practica22 DATABASE
CREATE DATABASE practica22;

-- USE THE NEWLY CREATED DATABASE
USE practica22;

-- CREATE TABLE FOR courses
CREATE TABLE courses (
    id INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(100),
    n_reviews INT,
    teacher_id INT,
    LOAD_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UPDATE_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- CREATE TABLE FOR teachers
CREATE TABLE teachers (
    id INTEGER PRIMARY KEY NOT NULL,
    name VARCHAR(50),
    LOAD_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UPDATE_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);	

select * from courses

INSERT INTO courses (courses_id, name, n_reviews, teacher_id)
VALUES ('100', 'Fundamentos de Bases de Datos', '1400', '1');

INSERT INTO courses (courses_id, name, n_reviews)
VALUES ('200', 'Curso de MySQL y MariaDB', '400');

INSERT INTO courses (courses_id, name, n_reviews, teacher_id)
VALUES ('260', 'Curso de Data Science', '320', '8');

INSERT INTO courses (courses_id, name, n_reviews, teacher_id)
VALUES ('350', 'Curso de Firebase', '150', '1');

INSERT INTO courses (courses_id, name, n_reviews, teacher_id)
VALUES ('749', 'Curso de Python', '2300', '8');

INSERT INTO courses (courses_id, name, n_reviews, teacher_id)
VALUES ('750', 'Curso de React.js', '1500', '16');

select * from teachers

INSERT INTO teachers (teacher_id, name)
VALUES ('1', 'Israel');

INSERT INTO teachers (teacher_id, name)
VALUES ('8', 'Silvia');

INSERT INTO teachers (teacher_id, name)
VALUES ('16', 'Leomaris');

INSERT INTO teachers (teacher_id, name)
VALUES ('25', 'Juan');

SELECT
  teachers.name AS teacher,
  SUM(courses.n_reviews) AS total_reviews
FROM courses
LEFT JOIN
  teachers ON courses.teacher_id = teachers.teacher_id
WHERE
  courses.teacher_id IS NOT NULL
GROUP BY teachers.name
ORDER BY total_reviews DESC;