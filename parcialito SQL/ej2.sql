SELECT codigo, numero, MAX(nota)
FROM notas
GROUP BY codigo, numero;