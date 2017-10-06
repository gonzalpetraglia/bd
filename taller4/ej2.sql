SELECT padron 
FROM alumnos 
WHERE 4 <= SOME (SELECT nota
		FROM notas
		WHERE notas.padron = alumnos.padron AND notas.codigo = 71 AND notas.numero = 14)
AND 4 > ALL (SELECT nota
		FROM notas 
		WHERE notas.padron = alumnos.padron AND notas.codigo = 71 AND notas.numero = 15);
		