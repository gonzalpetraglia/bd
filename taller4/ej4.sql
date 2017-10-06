SELECT padron, apellido
FROM alumnos 
WHERE NOT EXISTS (SELECT 1
		FROM materias
		WHERE materias.codigo = 75
		AND NOT EXISTS (
			SELECT 1
			FROM notas
			WHERE notas.numero = materias.numero
			AND notas.codigo = materias.codigo
			AND alumnos.padron = notas.padron)
		);