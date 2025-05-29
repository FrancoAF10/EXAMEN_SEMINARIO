CREATE DATABASE SistemaCalificacion;
USE SistemaCalificacion;


CREATE TABLE TIPOS_EVALUACION (
    idTipo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL
) ENGINE=INNODB;

CREATE TABLE ALUMNOS (
idAlumno    		INT PRIMARY KEY AUTO_INCREMENT,
nombres				VARCHAR(50),
apellidos			VARCHAR(50),
genero				CHAR(1),
edad				TINYINT,
numCel				VARCHAR(15) 
)ENGINE=INNODB;


CREATE TABLE EVALUACIONES (
idEvaluacion    	INT PRIMARY KEY AUTO_INCREMENT,
numPreguntas		TINYINT,
fechaInicio			DATE NOT NULL,
fechaFin			DATE NOT NULL,
tiempoDuracion		INT,
idTipo				INT,
CONSTRAINT fk_tipo_evaluacion FOREIGN KEY (idTipo) REFERENCES TIPOS_EVALUACION(idTipo)
)ENGINE=INNODB;

CREATE TABLE ASIGNACIONES (
idAsignacion    	INT PRIMARY KEY AUTO_INCREMENT,
idAlumno			INT,
idEvaluacion		INT,
CONSTRAINT fk_asignaciones_alumno FOREIGN KEY (idAlumno) REFERENCES ALUMNOS(idAlumno),
CONSTRAINT fk_asignaciones_evaluacion FOREIGN KEY (idEvaluacion) REFERENCES EVALUACIONES(idEvaluacion),
CONSTRAINT uc_asignacion UNIQUE (idAlumno, idEvaluacion)
)ENGINE=INNODB;

CREATE TABLE INTERROGANTES (
idInterrogante    	INT PRIMARY KEY AUTO_INCREMENT,
interrogante		VARCHAR(200),
puntaje				INT NOT NULL,
idEvaluacion		INT,
CONSTRAINT fk_interrogantes_evaluaciones FOREIGN KEY (idEvaluacion) REFERENCES EVALUACIONES(idEvaluacion)
)ENGINE=INNODB;

CREATE TABLE RESPUESTAS (
idRespuesta    	INT PRIMARY KEY AUTO_INCREMENT,
respuesta		ENUM('VERDADERO','FALSO'),
esCorrecta		BOOLEAN DEFAULT FALSE,
idInterrogante 	INT,
CONSTRAINT fk_respuestas_interrogantes FOREIGN KEY (idInterrogante) REFERENCES INTERROGANTES(idInterrogante)
)ENGINE=INNODB;

CREATE TABLE HISTORIAL (
idHistorial    		INT PRIMARY KEY AUTO_INCREMENT,
nota				INT CHECK (nota >= 0 AND nota <= 20),
fechaHoraInicio 	DATETIME NOT NULL,
fechaHoraFin 		DATETIME NOT NULL,
idAlumno			INT,
idEvaluacion		INT,
CONSTRAINT fk_historial_alumnos FOREIGN KEY (idAlumno) REFERENCES ALUMNOS(idAlumno),
CONSTRAINT fk_historial_evaluaciones FOREIGN KEY (idEvaluacion) REFERENCES EVALUACIONES(idEvaluacion),
CONSTRAINT uc_un_intento UNIQUE (idAlumno, idEvaluacion) 
)ENGINE=INNODB;

CREATE TABLE RESPUESTAS_HISTORIAL (
    idRespuestaHistorial INT PRIMARY KEY AUTO_INCREMENT,
    idHistorial INT NOT NULL,
    idInterrogante INT NOT NULL,
    idRespuesta INT NOT NULL,
    CONSTRAINT fk_rptaHistorial_historial FOREIGN KEY (idHistorial) REFERENCES HISTORIAL(idHistorial),
    CONSTRAINT fk_rptaHistorial_interrogante FOREIGN KEY (idInterrogante) REFERENCES INTERROGANTES(idInterrogante),
    CONSTRAINT fk_rptaHistorial_respuesta FOREIGN KEY (idRespuesta) REFERENCES RESPUESTAS(idRespuesta)
) ENGINE=INNODB;
