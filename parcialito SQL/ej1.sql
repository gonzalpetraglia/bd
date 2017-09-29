SELECT padron, nota
FROM alumnos LEFT OUTER JOIN notas
USING padron; /* Ver sintaxis */