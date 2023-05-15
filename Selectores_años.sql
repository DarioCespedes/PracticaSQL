SELECT *
FROM datos.alumnos
WHERE (EXTRACT(YEAR FROM fecha_incorporacion)) = 2018;

SELECT *
FROM datos.alumnos
WHERE (DATE_PART('YEAR', fecha_incorporacion))=2019;

SELECT *
FROM(
	SELECT *, 
		DATE_PART('YEAR',fecha_incorporacion) AS year_incorporacion,
		DATE_PART('MONTH',fecha_incorporacion) AS mes_incorporacion
	FROM datos.alumnos
) AS alumnos_with_year
WHERE year_incorporacion = 2020
AND mes_incorporacion = 5;
