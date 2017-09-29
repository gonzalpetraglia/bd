<center>
#   **PARCIALITO SQL**
# BASE DE DATOS
##Catedra Mariano Beiró
Gonzalo Leonel Petraglia - 97811
</center>


##Ejercicio 1

```SQL
SELECT a.padron, n.nota
FROM alumnos a LEFT OUTER JOIN notas n
ON a.padron = n.padron
AND n.numero = 14
AND n.codigo = 71;
```

##Ejercicio 2
```SQL
SELECT codigo, numero, MAX(nota)
FROM notas
GROUP BY codigo, numero;
```

##Ejercicio 3
```SQL
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
```

##Ejercicio 4
```SQL
SELECT apellido, padron
FROM alumnos a
WHERE NOT EXISTS 
  (SELECT 1
   FROM materias m
   WHERE NOT EXISTS 
      (SELECT 1
       FROM notas n
       WHERE n.numero = m.numero
       AND n.codigo = m.codigo
       AND n.padron = a.padron
       AND n.nota >= 4
       )
);
```

##Ejercicio 5
```SQL
SELECT padron, apellido, COUNT(1)
FROM alumnos a NATURAL JOIN notas n
GROUP BY padron, apellido
HAVING AVG(nota) > 5;
```
