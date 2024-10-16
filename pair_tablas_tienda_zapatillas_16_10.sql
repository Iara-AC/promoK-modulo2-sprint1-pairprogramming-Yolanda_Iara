ALTER TABLE zapatillas
ADD COLUMN marca VARCHAR(45) NOT NULL,
ADD COLUMN talla INT NOT NULL;

ALTER TABLE empleados
MODIFY salario FLOAT;

ALTER TABLE clientes
DROP COLUMN pais;

ALTER TABLE facturas
ADD COLUMN total FLOAT;

INSERT INTO zapatillas (modelo, color, marca, talla)
VALUES ('XQYUN', 'Negro', 'Nike', 42),
('UOPMN', 'Rosas', 'Nike', 39),
('OPNYT', 'Verdes', 'Adidas', 35);

INSERT INTO empleados (nombre, tienda, salario, fecha_incorporacion)
VALUES ('Laura', 'ALcobendas', 25987,  '2010-09-03'),
('Maria', 'Sevilla', NULL, '2001-04-11'),
('Ester', 'Oviedo', 30165.98, '2000-11-29');

INSERT INTO clientes (nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
VALUES ('Moninca', 1234567289, 'monica@email.com', 'Calle Felicidad', 'Móstoles', 'Madrid', '28176'),
('Lorena', 289345678, 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', '12346'),
('Carmen', 298463759, 'carmen@email.com', 'Calle del Color', 'Vigo', 'Pontevedra', '23456');


INSERT INTO facturas (numero_factura, fecha, id_zapatilla, id_empleado, id_cliente, total)
VALUES ( '123', '2001-12-11', 1, 2, 1, 54.98),
('1234', '2005-05-23', 1, 1, 3, 89.91),
('12345', '2015-09-18', 2, 3, 3, 76.23);

UPDATE zapatillas
SET color = 'Amarillas'
WHERE id_zapatilla = 2;


UPDATE empleados
SET tienda = 'A Coruña'
WHERE nombre = 'Laura';

UPDATE clientes
SET numero_telefono = '123456728'
WHERE direccion = 'Calle Felicidad';


UPDATE facturas
SET total = 89.91
WHERE id_zapatilla = 2; 


INSERT INTO empleados (nombre, tienda, salario, fecha_incorporacion)
VALUES ('Iara', 'Barcelona', 25987.32,  '2022-09-03');

ALTER TABLE empleados
MODIFY COLUMN salario FLOAT;

INSERT INTO empleados (nombre, tienda, salario, fecha_incorporacion)
VALUES ('Iara', 'Barcelona', 25987.56,  '2022-09-03');


