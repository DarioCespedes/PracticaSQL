SELECT lpad('sql','15','*');

SELECT lpad('*',id,'*')
FROM datos.alumnos
WHERE id<10;

SELECT lpad('*',id,'*')
FROM datos.alumnos
WHERE id<10
ORDER BY carrera_id;

SELECT lpad('*',CAST(row_id AS int), '*'),*
FROM (
	SELECT ROW_NUMBER() OVER (ORDER BY carrera_id) AS row_id,*
	FROM datos.alumnos
) AS alumnos_row
WHERE row_id <= 5
ORDER BY carrera_id;

