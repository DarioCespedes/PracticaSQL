SELECT *
FROM datos.alumnos
WHERE tutor_id >=1
		AND tutor_id <=10;
		

SELECT *
FROM datos.alumnos
WHERE tutor_id BETWEEN 1 AND 10;

SELECT int4range(1,20) @>3;

SELECT numrange(11.1,22.2) && numrange(20.0,30.0);

SELECT UPPER (int8range(15,25));

SELECT int4range(10,20) * int4range(15,25);

SELECT *
FROM datos.alumnos
WHERE int4range(10,20) @> tutor_id;
