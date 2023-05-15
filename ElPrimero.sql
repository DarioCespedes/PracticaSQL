-- El primero
SELECT *
FROM datos.alumnos
FETCH FIRST 1 ROWS ONLY;

SELECT *
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM datos.alumnos
) AS datos_with_row_num
WHERE row_id=1;

SELECT *
FROM datos.alumnos
LIMIT 1;
