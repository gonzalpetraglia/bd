DROP TABLE clientes;
CREATE TABLE clientes
(
cuit character varying,
anio int,
cuota int, 
rubro character varying, 
descripcion_rubro character varying,
importe money
);
-- money segun stack overflow no es recomendable usarlo, es preferible usar float o double
