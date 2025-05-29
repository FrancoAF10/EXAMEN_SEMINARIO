CREATE DATABASE SistemaCalificacion;
USE SistemaCalificacion;


INSERT INTO ALUMNOS (nombres, apellidos, genero, edad, numCel) VALUES
('Ana', 'González', 'F', 20, '5551234567'),
('Carlos', 'Ramírez', 'M', 22, '5559876543'),
('Luisa', 'Fernández', 'F', 19, '5554567890'),
('Jorge', 'Martínez', 'M', 21, '5556789012'),
('Sofía', 'López', 'F', 23, '5552345678'),
('Diego', 'Sánchez', 'M', 20, '5553456789'),
('María', 'Torres', 'F', 22, '5554561237'),
('Pedro', 'Vargas', 'M', 24, '5555678901'),
('Elena', 'Morales', 'F', 21, '5556782345'),
('Ricardo', 'Ortiz', 'M', 19, '5557890123');

INSERT INTO TIPOS_EVALUACION (nombre) VALUES ('Parcial'),('Final'),('Quiz'),('Examen Sorpresa'),('Proyecto');

INSERT INTO EVALUACIONES (numPreguntas, fechaInicio, fechaFin, tiempoDuracion, idTipo) VALUES
(5, '2025-06-01', '2025-06-02', 60, 1),
(5, '2025-06-10', '2025-06-11', 90, 2),
(5, '2025-06-15', '2025-06-16', 30, 3),
(5, '2025-06-20', '2025-06-21', 45, 4),
(5, '2025-06-25', '2025-06-26', 120, 5);

INSERT INTO INTERROGANTES (interrogante, puntaje, idEvaluacion) VALUES
('¿Cuál es la capital de Francia?', 4, 1),
('¿Cuánto es 2 + 2?', 4, 1),
('¿Qué planeta es conocido como el rojo?', 4, 1),
('¿En qué año llegó el hombre a la luna?', 4, 1),
('¿Cuál es el elemento químico con símbolo O?', 4, 1),
('¿Quién escribió "Cien años de soledad"?', 4, 2),
('¿Qué lengua se habla en Brasil?', 4, 2),
('¿Cuál es el río más largo del mundo?', 4, 2),
('¿Cuántos continentes hay?', 4, 2),
('¿Qué gas respiramos?', 4, 2),
('¿Cuál es la fórmula del agua?', 4, 3),
('¿Qué es la fotosíntesis?', 4, 3),
('¿Qué inventó Alexander Graham Bell?', 4, 3),
('¿Qué animal es conocido por su memoria?', 4, 3),
('¿Qué deporte usa un balón ovalado?', 4, 3),
('¿Qué autor escribió "Hamlet"?', 4, 4),
('¿Cuántos estados tiene EE.UU.?', 4, 4),
('¿Cuál es la moneda de Japón?', 4, 4),
('¿Qué instrumento mide la temperatura?', 4, 4),
('¿Qué océano está al oeste de América?', 4, 4),
('¿Qué continente es Australia?', 4, 5),
('¿Quién pintó la Mona Lisa?', 4, 5),
('¿Qué es la gravedad?', 4, 5),
('¿Cuál es el país más grande del mundo?', 4, 5),
('¿Cuántos colores tiene el arcoíris?', 4, 5);

INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('París', TRUE, 1),
('Londres', FALSE, 1),
('Roma', FALSE, 1),
('Berlín', FALSE, 1);

INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('3', FALSE, 2),
('4', TRUE, 2),
('5', FALSE, 2),
('6', FALSE, 2);

-- Evaluación 1 (idEvaluacion = 1)
-- Pregunta 1 (idInterrogante = 1)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('París', TRUE, 1),
('Londres', FALSE, 1),
('Roma', FALSE, 1),
('Berlín', FALSE, 1);

-- Pregunta 2 (idInterrogante = 2)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('3', FALSE, 2),
('4', TRUE, 2),
('5', FALSE, 2),
('6', FALSE, 2);

-- Pregunta 3 (idInterrogante = 3)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('Marte', TRUE, 3),
('Venus', FALSE, 3),
('Júpiter', FALSE, 3),
('Saturno', FALSE, 3);

-- Pregunta 4 (idInterrogante = 4)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('1969', TRUE, 4),
('1975', FALSE, 4),
('1959', FALSE, 4),
('1980', FALSE, 4);

-- Pregunta 5 (idInterrogante = 5)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('Oxígeno', TRUE, 5),
('Hidrógeno', FALSE, 5),
('Carbono', FALSE, 5),
('Nitrógeno', FALSE, 5);

-- Evaluación 2 (idEvaluacion = 2)
-- Pregunta 6 (idInterrogante = 6)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('Gabriel García Márquez', TRUE, 6),
('Pablo Neruda', FALSE, 6),
('Julio Cortázar', FALSE, 6),
('Mario Vargas Llosa', FALSE, 6);

-- Pregunta 7 (idInterrogante = 7)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('Portugués', TRUE, 7),
('Español', FALSE, 7),
('Inglés', FALSE, 7),
('Francés', FALSE, 7);

-- Pregunta 8 (idInterrogante = 8)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('Nilo', TRUE, 8),
('Amazonas', FALSE, 8),
('Yangtsé', FALSE, 8),
('Mississippi', FALSE, 8);

-- Pregunta 9 (idInterrogante = 9)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('7', TRUE, 9),
('5', FALSE, 9),
('6', FALSE, 9),
('8', FALSE, 9);

-- Pregunta 10 (idInterrogante = 10)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('Oxígeno', TRUE, 10),
('Dióxido de carbono', FALSE, 10),
('Nitrógeno', FALSE, 10),
('Hidrógeno', FALSE, 10);

-- Evaluación 3 (idEvaluacion = 3)
-- Pregunta 11 (idInterrogante = 11)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('H2O', TRUE, 11),
('CO2', FALSE, 11),
('O2', FALSE, 11),
('NaCl', FALSE, 11);

-- Pregunta 12 (idInterrogante = 12)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('Proceso por el cual las plantas producen su alimento', TRUE, 12),
('Proceso de respiración animal', FALSE, 12),
('Método de reproducción', FALSE, 12),
('Proceso de descomposición', FALSE, 12);

-- Pregunta 13 (idInterrogante = 13)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('Teléfono', TRUE, 13),
('Radio', FALSE, 13),
('Computadora', FALSE, 13),
('Televisión', FALSE, 13);

-- Pregunta 14 (idInterrogante = 14)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('Elefante', TRUE, 14),
('Perro', FALSE, 14),
('Delfín', FALSE, 14),
('Gato', FALSE, 14);

-- Pregunta 15 (idInterrogante = 15)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('Rugby', TRUE, 15),
('Fútbol', FALSE, 15),
('Baloncesto', FALSE, 15),
('Voleibol', FALSE, 15);

-- Evaluación 4 (idEvaluacion = 4)
-- Pregunta 16 (idInterrogante = 16)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('William Shakespeare', TRUE, 16),
('Miguel de Cervantes', FALSE, 16),
('Gabriel García Márquez', FALSE, 16),
('J.K. Rowling', FALSE, 16);

-- Pregunta 17 (idInterrogante = 17)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('50', FALSE, 17),
('51', TRUE, 17),
('52', FALSE, 17),
('49', FALSE, 17);

-- Pregunta 18 (idInterrogante = 18)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('Yen', TRUE, 18),
('Dólar', FALSE, 18),
('Euro', FALSE, 18),
('Peso', FALSE, 18);

-- Pregunta 19 (idInterrogante = 19)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('Termómetro', TRUE, 19),
('Barómetro', FALSE, 19),
('Higrómetro', FALSE, 19),
('Anemómetro', FALSE, 19);

-- Pregunta 20 (idInterrogante = 20)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('Pacífico', TRUE, 20),
('Atlántico', FALSE, 20),
('Índico', FALSE, 20),
('Ártico', FALSE, 20);

-- Evaluación 5 (idEvaluacion = 5)
-- Pregunta 21 (idInterrogante = 21)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('Oceania', TRUE, 21),
('Asia', FALSE, 21),
('Europa', FALSE, 21),
('África', FALSE, 21);

-- Pregunta 22 (idInterrogante = 22)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('Leonardo da Vinci', TRUE, 22),
('Pablo Picasso', FALSE, 22),
('Vincent van Gogh', FALSE, 22),
('Michelangelo', FALSE, 22);

-- Pregunta 23 (idInterrogante = 23)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('Fuerza que atrae los objetos hacia el centro de la Tierra', TRUE, 23),
('Fuerza que empuja los objetos hacia arriba', FALSE, 23),
('Fuerza que produce electricidad', FALSE, 23),
('Fuerza que genera movimiento', FALSE, 23);

-- Pregunta 24 (idInterrogante = 24)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('Rusia', TRUE, 24),
('Canadá', FALSE, 24),
('China', FALSE, 24),
('Estados Unidos', FALSE, 24);

-- Pregunta 25 (idInterrogante = 25)
INSERT INTO RESPUESTAS (respuesta, esCorrecta, idInterrogante) VALUES
('7', TRUE, 25),
('5', FALSE, 25),
('6', FALSE, 25),
('8', FALSE, 25);

-- Alumnos 1-4 a evaluaciones 1,2,3
INSERT INTO ASIGNACIONES (idAlumno, idEvaluacion) VALUES
(1, 1), (1, 2), (1, 3),
(2, 1), (2, 2), (2, 3),
(3, 1), (3, 2), (3, 3),
(4, 1), (4, 2), (4, 3);

-- Alumnos 5-7 a evaluaciones 4,5
INSERT INTO ASIGNACIONES (idAlumno, idEvaluacion) VALUES
(5, 4), (5, 5),
(6, 4), (6, 5),
(7, 4), (7, 5);

-- Alumno 1: 3 evaluaciones, aprobados y desaprobados
INSERT INTO HISTORIAL (nota, fechaHoraInicio, fechaHoraFin, idAlumno, idEvaluacion) VALUES
(15, '2025-06-01 09:00:00', '2025-06-01 10:00:00', 1, 1),
(18, '2025-06-10 10:00:00', '2025-06-10 11:30:00', 1, 2),
(9,  '2025-06-15 08:00:00', '2025-06-15 08:30:00', 1, 3);

-- Alumno 2: 3 evaluaciones, todos aprobados
INSERT INTO HISTORIAL (nota, fechaHoraInicio, fechaHoraFin, idAlumno, idEvaluacion) VALUES
(16, '2025-06-01 09:15:00', '2025-06-01 10:15:00', 2, 1),
(17, '2025-06-10 10:10:00', '2025-06-10 11:40:00', 2, 2),
(13, '2025-06-15 08:05:00', '2025-06-15 08:35:00', 2, 3);

-- Alumno 3: 3 evaluaciones, 1 desaprobado
INSERT INTO HISTORIAL (nota, fechaHoraInicio, fechaHoraFin, idAlumno, idEvaluacion) VALUES
(10, '2025-06-01 09:20:00', '2025-06-01 10:20:00', 3, 1),
(12, '2025-06-10 10:20:00', '2025-06-10 11:50:00', 3, 2),
(8,  '2025-06-15 08:10:00', '2025-06-15 08:40:00', 3, 3);

-- Alumno 4: 3 evaluaciones, todos aprobados
INSERT INTO HISTORIAL (nota, fechaHoraInicio, fechaHoraFin, idAlumno, idEvaluacion) VALUES
(14, '2025-06-01 09:30:00', '2025-06-01 10:30:00', 4, 1),
(15, '2025-06-10 10:30:00', '2025-06-10 12:00:00', 4, 2),
(17, '2025-06-15 08:20:00', '2025-06-15 08:50:00', 4, 3);

-- Alumno 5: 2 evaluaciones, 1 desaprobado
INSERT INTO HISTORIAL (nota, fechaHoraInicio, fechaHoraFin, idAlumno, idEvaluacion) VALUES
(7,  '2025-06-20 09:00:00', '2025-06-20 09:45:00', 5, 4),
(14, '2025-06-25 10:00:00', '2025-06-25 12:00:00', 5, 5);

-- Alumno 6: 2 evaluaciones, ambos aprobados
INSERT INTO HISTORIAL (nota, fechaHoraInicio, fechaHoraFin, idAlumno, idEvaluacion) VALUES
(13, '2025-06-20 09:15:00', '2025-06-20 10:00:00', 6, 4),
(15, '2025-06-25 10:15:00', '2025-06-25 12:15:00', 6, 5);

-- Alumno 7: 2 evaluaciones, ambos aprobados
INSERT INTO HISTORIAL (nota, fechaHoraInicio, fechaHoraFin, idAlumno, idEvaluacion) VALUES
(12, '2025-06-20 09:30:00', '2025-06-20 10:15:00', 7, 4),
(16, '2025-06-25 10:30:00', '2025-06-25 12:30:00', 7, 5);

