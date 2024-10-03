CREATE DATABASE IF NOT EXISTS Universidad;
USE Universidad;

-- Tabla Estudiante
CREATE TABLE Estudiante (
    Estudiante_ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Estudiante VARCHAR(255) NOT NULL
);

-- Tabla Curso
CREATE TABLE Curso (
    Curso_ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Curso VARCHAR(255) NOT NULL
);

-- Tabla Docente
CREATE TABLE Docente (
    Docente_ID INT PRIMARY KEY AUTO_INCREMENT,
    Docente_Nombre VARCHAR(255) NOT NULL
);

-- Tabla Aula
CREATE TABLE Aula (
    Aula_ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Aula VARCHAR(255) NOT NULL
);

-- Tabla Dias
CREATE TABLE Dias (
    Dia_ID INT PRIMARY KEY AUTO_INCREMENT,
    Nombre_Dia VARCHAR(255) NOT NULL
);

-- Tabla Horario
CREATE TABLE Horario (
    Horario_ID INT PRIMARY KEY AUTO_INCREMENT,
    Dia_ID INT,
    Hora TIME NOT NULL,
    FOREIGN KEY (Dia_ID) REFERENCES Dias(Dia_ID)
);

-- Tabla Asignación
CREATE TABLE Asignacion (
    Asignacion_ID INT PRIMARY KEY AUTO_INCREMENT,
    Estudiante_ID INT,
    Curso_ID INT,
    Docente_ID INT,
    Aula_ID INT,
    Horario_ID INT,
    Dia_ID INT,
    FOREIGN KEY (Estudiante_ID) REFERENCES Estudiante(Estudiante_ID),
    FOREIGN KEY (Curso_ID) REFERENCES Curso(Curso_ID),
    FOREIGN KEY (Docente_ID) REFERENCES Docente(Docente_ID),
    FOREIGN KEY (Aula_ID) REFERENCES Aula(Aula_ID),
    FOREIGN KEY (Horario_ID) REFERENCES Horario(Horario_ID)
);

