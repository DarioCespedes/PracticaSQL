SELECT EXTRACT (YEAR FROM fecha_incorporacion) AS year_incorporacion
FROM datos.alumnos;

SELECT DATE_PART('YEAR', fecha_incorporacion) AS year_incorporacion
FROM datos.alumnos;

SELECT DATE_PART('YEAR', fecha_incorporacion) AS year_incorporacion,
	   DATE_PART('MONTH', fecha_incorporacion) AS mes_incorporacion,
	   DATE_PART('DAY', fecha_incorporacion) AS dia_incorporacion
FROM datos.alumnos;

--Horas, minutos y segundos
SELECT DATE_PART('HOUR', fecha_incorporacion) AS hora_incorporacion,
	   DATE_PART('MINUTE', fecha_incorporacion) AS minutos_incorporacion,
	   DATE_PART('SECOND', fecha_incorporacion) AS segundos_incorporacion
FROM datos.alumnos;