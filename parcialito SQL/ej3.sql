SELECT nombre
FROM materias m
WHERE EXISTS (SELECT 1
              FROM notas n
              WHERE n.nota >=4
              AND n.padron = 71000
              AND n.codigo = m.codigo
              AND n.numero = m.numero)
AND EXISTS  (SELECT 1
              FROM notas n
              WHERE n.nota >=4
              AND n.padron = 73000
              AND n.codigo = m.codigo
              AND n.numero = m.numero);
