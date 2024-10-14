drop table if exists productos;
drop table if exists ventas;

create table ventas(
	id_venta int,
	codigo_producto int,
	fecha_venta date,
	cantidad int,
	constraint ventas_pk primary key (id_venta)
);
alter table ventas
add constraint codigo_ventas_fk foreign key (codigo_producto)
references productos(codigo);

INSERT INTO productos (codigo, nombre, descripcion, precio, stock)
VALUES 
(1, 'Monitor Samsung', 'Monitor Full HD 27 pulgadas', 250.00, 15),
(2, 'Impresora Epson', 'Impresora multifuncional a color', 120.00, 10),
(3, 'Mouse Logitech', 'Ratón inalámbrico', 25.00, 50),
(4, 'Teclado HP', 'Teclado mecánico retroiluminado', 80.00, 20),
(5, 'Memoria USB', NULL, 15.00, 100),
(6, 'Tablet Xiaomi', 'Tablet con pantalla de 10 pulgadas', 300.00, 5),
(7, 'Smartphone Samsung', 'Teléfono inteligente con 5G', 500.00, 8),
(8, 'Audífonos Sony', 'Audífonos inalámbricos con cancelación de ruido', 200.00, 30),
(9, 'Cámara Canon', 'Cámara fotográfica profesional', 750.00, 3),
(10, 'Laptop Dell', 'Portátil con procesador Intel i7', 1000.00, 7);

INSERT INTO ventas (id_venta, codigo_producto, fecha_venta, cantidad)
VALUES 
(1, 1, '2023-01-15', 2),
(2, 2, '2023-01-16', 1),
(3, 3, '2023-01-17', 3),
(4, 4, '2023-01-18', 5), 
(5, 5, '2023-01-19', 4),
(6, 6, '2023-01-20', 2),
(7, 7, '2023-01-21', 1),
(8, 8, '2023-01-22', 3),
(9, 9, '2023-01-23', 6),
(10, 10, '2023-01-24', 2);


select * from productos;
select * from ventas;
