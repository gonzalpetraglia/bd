SELECT padron
FROM alumnos a
WHERE (SELECT COUNT(nota)
	FROM notas
	WHERE notas.nota >=4
	AND notas.padron = a.padron) =
	(SELECT MAX(materiasaprovadas)
	FROM 	(SELECT alumnos.padron, COUNT(notas) as materiasaprovadas
		FROM alumnos, notas
		WHERE notas.nota >=4
		AND notas.padron = alumnos.padron
		GROUP BY alumnos.padron)
		as mat);