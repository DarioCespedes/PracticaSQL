SELECT DISTINCT colegiatura
FROM datos.alumnos AS a1
WHERE 2=(
	SELECT COUNT ( DISTINCT colegiatura)
	FROM datos.alumnos a2
	WHERE a1.colegiatura <= a2.colegiatura
)
SELECT DISTINCT colegiatura
FROM datos.alumnos AS a1
WHERE 2=(
	SELECT COUNT ( DISTINCT colegiatura)
	FROM datos.alumnos a2
	WHERE a1.colegiatura <= a2.colegiatura
)

SELECT DISTINCT colegiatura
FROM datos.alumnos
ORDER BY colegiatura DESC
LIMIT 1 OFFSET 1;

SELECT *
FROM datos.alumnos AS datos_alumnos
INNER JOIN(
	SELECT DISTINCT colegiatura
	FROM datos.alumnos
	WHERE tutor_id=20
	ORDER BY colegiatura DESC
	LIMIT 1 OFFSET 1
) AS segunda_mayor_colegiatura
ON datos_alumnos.colegiatura = segunda_mayor_colegiatura.colegiatura;

SELECT *
FROM datos.alumnos AS datos_alumnos
WHERE colegiatura =(
	SELECT DISTINCT colegiatura
	FROM datos.alumnos
	WHERE tutor_id=20
	ORDER BY colegiatura DESC
	LIMIT 1 OFFSET 1
);