SELECT padron, apellido, COUNT(1)
FROM alumnos a NATURAL JOIN notas n
GROUP BY padron, apellido
HAVING AVG(nota) > 5;
