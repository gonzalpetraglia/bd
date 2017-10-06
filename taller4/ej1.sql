SELECT padron
FROM alumnos 
WHERE (SELECT COUNT(notas)
	FROM notas
	WHERE alumnos.padron = notas.padron) >=3;