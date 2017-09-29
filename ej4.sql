SELECT apellido, padron
FROM alumnos a
WHERE NOT EXISTS (SELECT 1
                  FROM materias m
                  WHERE NOT EXISTS (SELECT 1
                                    FROM notas n
                                    WHERE n.numero = m.numero
                                    AND n.codigo = m.codigo
                                    AND n.padron = a.padron
                                    AND n.nota >= 4
                 );
