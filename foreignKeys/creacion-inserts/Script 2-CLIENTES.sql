drop table if exists clientes;
drop table if exists compras;

create table clientes(
	cedula char(10),
	nombre varchar(50),
	apellido varchar(50),
	constraint clientes_pk primary key(cedula)
);
create table compras(
	id_compra int,
	cedula char(10),
	fecha_compra date,
	monto decimal(10,2),
	constraint compras_pk primary key (id_compra)
);
alter table compras
add constraint cedula_compras_fk foreign key (cedula)
references clientes(cedula);

INSERT INTO clientes (cedula, nombre, apellido)
VALUES 
('0702030401', 'Mónica', 'Pérez'),
('0712345678', 'Carlos', 'Gómez'),
('0723456789', 'Ana', 'Martínez'),
('0734567890', 'Luis', 'Ramírez'),
('0745678901', 'María', 'Torres'),
('0756789012', 'Pedro', 'López'),
('0767890123', 'Sofía', 'Vargas'),
('0778901234', 'Andrés', 'Mendoza'),
('0789012345', 'Lucía', 'Castillo'),
('0790123456', 'Jorge', 'Hernández');
INSERT INTO compras (id_compra, cedula, fecha_compra, monto)
VALUES 
(1, '0702030401', '2023-01-15', 150.75),
(2, '0712345678', '2023-02-10', 250.00),
(3, '0723456789', '2023-03-05', 320.50),
(4, '0734567890', '2023-04-20', 500.00),
(5, '0745678901', '2023-05-15', 100.00),
(6, '0756789012', '2023-06-25', 450.75),
(7, '0767890123', '2023-07-10', 200.00),
(8, '0778901234', '2023-08-05', 350.25),
(9, '0789012345', '2023-09-01', 600.00),
(10, '0790123456', '2023-10-11', 120.50);

select * from clientes;
select * from compras;