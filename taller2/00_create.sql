DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes
(
cuit bigint,
anio int,
cuota int, 
rubro character varying, 
descripcion_rubro character varying,
importe money,
CONSTRAINT pk_clientes_cuit_anio_mes PRIMARY KEY (cuit, anio, cuota),
CONSTRAINT fk_clientes_cuit FOREIGN KEY (cuit)
      REFERENCES public.padron (cuit) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION 
); -- ON DELETE {CASCADE | NO ACTION}
-- money segun stack overflow no es recomendable usarlo, es preferible usar float o double

DROP TABLE IF EXISTS padron CASCADE; --EL cascade es necesario porque clientes depende de padrom

CREATE TABLE padron
(
cuit bigint,
razon_social character varying,
CONSTRAINT pk_padron_cuit PRIMARY KEY (cuit)
);
