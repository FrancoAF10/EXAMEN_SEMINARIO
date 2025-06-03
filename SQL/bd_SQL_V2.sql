CREATE DATABASE SistemaCalificacion2;
USE SistemaCalificacion2;


CREATE TABLE CATEGORIA (
    idCategoria INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL
) ENGINE=INNODB;

CREATE TABLE ADMINISTRADORES (
idAdministrador    	INT PRIMARY KEY AUTO_INCREMENT,
nomUser				VARCHAR(50),
password			VARCHAR(50),
nivelAcceso			VARCHAR(100) 
)ENGINE=INNODB;

CREATE TABLE PERSONAS (
idPersona   		INT PRIMARY KEY AUTO_INCREMENT,
nombres				VARCHAR(50),
apellidos			VARCHAR(50),
dni				    CHAR(8),
telefono			VARCHAR(15),
email				VARCHAR(100) 
)ENGINE=INNODB;


CREATE TABLE EVALUACIONES (
idEvaluacion    	INT PRIMARY KEY AUTO_INCREMENT,
titulo              VARCHAR(100),
fechaCreacion		DATE NOT NULL,
fechaInicio         DATE NOT NULL,
fechaFin			DATE NOT NULL,
tiempoDuracion		INT,
idAdministrador     INT,
idCategoria         INT,
CONSTRAINT fk_admin_evaluacion FOREIGN KEY (idAdministrador) REFERENCES ADMINISTRADORES(idAdministrador),
CONSTRAINT fk_categoria_evaluacion FOREIGN KEY (idCategoria) REFERENCES CATEGORIA(idCategoria)
)ENGINE=INNODB;

CREATE TABLE INTERROGANTES (
idInterrogante    	INT PRIMARY KEY AUTO_INCREMENT,
interrogante		VARCHAR(200),
puntaje				INT NOT NULL,
rutaImagen          VARCHAR(200),
idEvaluacion		INT,
CONSTRAINT fk_interrogantes_evaluaciones FOREIGN KEY (idEvaluacion) REFERENCES EVALUACIONES(idEvaluacion)
)ENGINE=INNODB;

CREATE TABLE ALTERNATIVAS (
idAlternativa    	INT PRIMARY KEY AUTO_INCREMENT,
texto		    VARCHAR(200),
esCorrecta		BOOLEAN DEFAULT FALSE,
idInterrogante 	INT,
CONSTRAINT fk_alternativas_interrogantes FOREIGN KEY (idInterrogante) REFERENCES INTERROGANTES(idInterrogante)
)ENGINE=INNODB;

CREATE TABLE ASIGNACIONES (
idAsignacion    	INT PRIMARY KEY AUTO_INCREMENT,
idPersona			INT,
idEvaluacion		INT,
fechaInicio         DATE,
fechaFin            DATE,
CONSTRAINT fk_asignaciones_alumno FOREIGN KEY (idPersona) REFERENCES PERSONAS(idPersona),
CONSTRAINT fk_asignaciones_evaluacion FOREIGN KEY (idEvaluacion) REFERENCES EVALUACIONES(idEvaluacion)
)ENGINE=INNODB;

CREATE TABLE RESPUESTAS (
idRespuestas        INT PRIMARY KEY NOT NULL,
esCorrecta          BOOLEAN DEFAULT FALSE,
idAsignacion        INT,
idInterrogante      INT,
idAlternativa       INT,
CONSTRAINT fk_asignacion_respuestas FOREIGN KEY (idAsignacion) REFERENCES ASIGNACIONES(idAsignacion),
CONSTRAINT fk_Interrogante_respuestas FOREIGN KEY (idInterrogante) REFERENCES INTERROGANTES(idInterrogante),
CONSTRAINT fk_alternativa_respuestas FOREIGN KEY (idAlternativa) REFERENCES ALTERNATIVAS(idAlternativa)
)ENGINE=INNODB;




