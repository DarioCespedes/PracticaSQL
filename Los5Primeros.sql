--5 Primeros 
SELECT *
FROM datos.alumnos
LIMIT 5

SELECT *
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM datos.alumnos
) AS datos_with_row_num
WHERE row_id <6;

SELECT *
FROM datos.alumnos
FETCH FIRST 5 ROWS ONLY;

SELECT * FROM (
  SELECT RANK() OVER (ORDER BY id ASC) AS rank, * FROM datos.alumnos
) subq
WHERE rank <= 5;