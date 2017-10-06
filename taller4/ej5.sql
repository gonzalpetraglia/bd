SELECT COUNT (1)
FROM alumnos 
WHERE  7 <= ANY (SELECT nota
		FROM notas 
		WHERE notas.padron = alumnos.padron
		);