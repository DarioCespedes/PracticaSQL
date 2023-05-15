SELECT  CONCAT (a.nombre,' ',a.apellido) AS Alumno,
		CONCAT (t.nombre,' ',t.apellido)AS tutor
FROM datos.alumnos AS a
	INNER JOIN datos.alumnos AS t ON a.tutor_id = t.id;
	
	
--Cantidad de alumnos por tutor
SELECT CONCAT (t.nombre,' ',t.apellido)AS tutor,
	   COUNT (*) AS alumnos_por_tutor
FROM datos.alumnos AS a
	INNER JOIN datos.alumnos AS t ON a.tutor_id = t.id
GROUP BY tutor
ORDER BY alumnos_por_tutor DESC
LIMIT 10;




