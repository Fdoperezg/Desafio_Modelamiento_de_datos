--CREAR BASE DE DATOS
CREATE DATABASE caso1;

--CREAR TABLAS (ENTIDADES Y SUS ATRIBUTOS)

CREATE TABLE Trabajadores(
    id INT,
    rut VARCHAR,
    nombre VARCHAR,
    direccion VARCHAR,
    id_departamento INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_departamento) REFERENCES Departamentos (id)
);

CREATE TABLE Departamentos(
    id INT, 
    nombre VARCHAR,
    PRIMARY KEY (id)
;)

CREATE TABLE Liquidaciones(
    id INT,
    fecha DATE,
    direccion_guardada VARCHAR,
    PRIMARY KEY (id)
);

CREATE TABLE Liquidaciones_Trabajadores(
    id INT,
    id_trabajador INT,
    id_liquidaciones INT,
    PRIMARY KEY (id),
    FOREIGN KEY (id_trabajador) REFERENCES 
    Trabajadores (id),
    FOREIGN KEY (id_liquidaciones) REFERENCES
    Liquidaciones (id)
);