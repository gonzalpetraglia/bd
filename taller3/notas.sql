SELECT padron, codigo, numero, fecha, (nota*10) as "Nota"
FROM public.notas
ORDER BY padron
LIMIT 5 OFFSET 15;
