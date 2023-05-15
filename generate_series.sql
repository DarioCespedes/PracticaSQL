SELECT *
FROM generate_series(5,1,-2);

--Dia actual + 7 dias
SELECT current_date + s.a AS datos
FROM generate_series(0,14,7) AS s(a);

SELECT *
FROM generate_series('2020-09-01 00:00:00'::timestamp,
					'2020-09-04 00:00:00', '10 hours');

SELECT a.id,
	   a.nombre,
	   a.apellido,
	   a.carrera_id,
	   s.a
FROM datos.alumnos AS a
	INNER JOIN generate_series(0,10) AS s(a)
	ON s.a = a.carrera_id
ORDER BY a.carrera_id;
	




