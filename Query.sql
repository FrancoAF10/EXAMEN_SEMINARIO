
-- PREGUNTAS RESPONDIDAS MEDIANTE SELECT



-- 1.¿Cuántos alumnos desaprobados tenemos en total? 

SELECT COUNT(DISTINCT idAlumno) AS total_alumnos_desaprobados
FROM HISTORIAL
WHERE nota <= 11;

-- 2.¿Cuántos alumnos aprobados en un determinado curso tenemos? 
SELECT 
    EC.idEvaluacion,
    TP.nombre AS tipoEvaluacion,
    EC.numPreguntas,
    EC.fechaInicio,
    EC.fechaFin,
    EC.tiempoDuracion,
    COUNT(DISTINCT HT.idAlumno) AS total_alumnos_aprobados
FROM EVALUACIONES EC
JOIN TIPOS_EVALUACION TP ON EC.idTipo = TP.idTipo
LEFT JOIN HISTORIAL HT ON EC.idEvaluacion = HT.idEvaluacion AND HT.nota >= 11
WHERE EC.idEvaluacion = 5
GROUP BY EC.idEvaluacion, TP.nombre, EC.numPreguntas, EC.fechaInicio, EC.fechaFin, EC.tiempoDuracion;

-- 3. ¿A cuántos exámenes está inscrito un alumno y cuántos de ellos están resueltos y pendientes? 
SELECT 
    AL.idAlumno,
    CONCAT(AL.nombres, ' ', AL.apellidos) AS nombre_completo,
    COUNT(DISTINCT ASIG.idEvaluacion) AS total_inscritos,
    COUNT(DISTINCT H.idEvaluacion) AS total_resueltos,
    COUNT(DISTINCT ASIG.idEvaluacion) - COUNT(DISTINCT H.idEvaluacion) AS total_pendientes
FROM ALUMNOS AL
JOIN ASIGNACIONES ASIG ON AL.idAlumno = ASIG.idAlumno
LEFT JOIN HISTORIAL H ON ASIG.idAlumno = H.idAlumno AND ASIG.idEvaluacion = H.idEvaluacion
GROUP BY AL.idAlumno, AL.nombres, AL.apellidos
ORDER BY AL.idAlumno;

-- 4. ¿Cuál es la mejor y peor calificación de una determinada evaluación? 

SELECT 
    EC.idEvaluacion,
    TP.nombre AS tipoEvaluacion,
    MAX(H.nota) AS mejor_calificacion,
    MIN(H.nota) AS peor_calificacion
FROM EVALUACIONES EC
JOIN TIPOS_EVALUACION TP ON EC.idTipo = TP.idTipo
JOIN HISTORIAL H ON EC.idEvaluacion = H.idEvaluacion WHERE EC.idEvaluacion = 5
GROUP BY EC.idEvaluacion, TP.nombre;

-- 5.¿Cómo calcularíamos el promedio de calificaciones de un estudiante? 
SELECT 
    AL.idAlumno,
    CONCAT(AL.nombres, ' ', AL.apellidos) AS nombre_completo,
    AVG(H.nota) AS promedio_calificacion
FROM ALUMNOS AL
JOIN HISTORIAL H ON AL.idAlumno = H.idAlumno WHERE AL.idAlumno = 1
GROUP BY AL.idAlumno, AL.nombres, AL.apellidos;

