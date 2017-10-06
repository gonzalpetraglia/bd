DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes
(
cuit bigint,
nombre character varying, 
saldo float,
localidad character varying,
CONSTRAINT pk_clientes_cuit_anio_mes PRIMARY KEY (cuit)
);
INSERT INTO public.clientes(cuit,nombre,saldo,localidad) VALUES 
	(10, 'juan', 15, null),
	(20, 'pablo', 15, null),
	(30, 'ana', null, 'Mar del Plata');
	
	