SELECT alumnos.padron
FROM alumnos, notas
WHERE alumnos.padron = notas.padron
AND notas.codigo = 75
AND notas.nota = (SELECT MAX(nota)
	FROM notas
	WHERE notas.codigo = 75);