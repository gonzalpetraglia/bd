INSERT INTO public.clientes(cuit,anio,cuota,rubro,descripcion_rubro,importe)
 VALUES --(32132819321, 2016,2, 'F','G', '$500'), Violacion de constrain de fk integridad de identidad
	(20389285758, 2017,3,'K','D', '$300'); 
	
INSERT INTO public.padron(cuit,razon_social)
 VALUES  (20389285758,'Gonzalo'),
	-- (20389285758,'Pepe'), Violacion de constraint pk integridad de unicidad
         (32114123747,'Pablo'),
         (43214321475,'Mati'),
         (32141234858,'Gonzalo2');