--CREAR BASE DE DATOS
CREATE DATABASE caso2;

--CREAR TABLAS (ENTIDADES Y SUS ATRIBUTOS)

CREATE TABLE Cursos(
    id INT,
    nombre VARCHAR,
    PRIMARY KEY (id)
;)

CREATE TABLE Alumnos(
    id INT,
    rut VARCHAR,
    nombre VARCHAR,
    id_cursos INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_cursos) REFERENCES Cursos (id)
);

CREATE TABLE Departamentos(
    id INT, 
    nombre VARCHAR,
    PRIMARY KEY (id)
;)

CREATE TABLE Profesores(
    id INT,
    nombre VARCHAR,
    departamento_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (departamento_id) REFERENCES Departamentos (id)
);

CREATE TABLE Pruebas(
    id INT,
    id_alumno INT,
    id_profesor INT,
    calificacion INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_alumno) REFERENCES Alumnos (id),
    FOREIGN KEY (id_profesor) REFERENCES Profesores (id)
);