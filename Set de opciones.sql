SELECT *
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id,*
	FROM datos.alumnos
) AS alumnos_row
WHERE row_id IN (1,5,10,15,20,25);

SELECT *
FROM datos.alumnos
WHERE id IN(
	SELECT id
	FROM datos.alumnos
	WHERE tutor_id=30
);