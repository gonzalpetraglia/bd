SELECT a.padron, n.nota
FROM alumnos a LEFT OUTER JOIN notas n
ON a.padron = n.padron
AND n.numero = 14
AND n.codigo = 71; 