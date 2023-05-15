SELECT carrera_id, MAX(fecha_incorporacion)
FROM datos.alumnos
GROUP BY carrera_id
ORDER BY carrera_id;


SELECT MIN(nombre)
FROM datos.alumnos;

SELECT tutor_id, MIN(nombre)
FROM datos.alumnos
GROUP BY tutor_id
ORDER BY tutor_id;