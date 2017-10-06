SELECT materias.codigo||'.'||materias.numero AS "codigo", materias.nombre
  FROM public.materias
  ORDER BY nombre desc;
