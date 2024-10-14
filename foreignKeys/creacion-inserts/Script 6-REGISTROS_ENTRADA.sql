create table empleado(
	codigo_empleado int,
	nombre varchar(25),
	fecha date,
	hora time,
	constraint empleado_pk primary key(codigo_empleado)
);
alter table registros_entrada
add column codigo_empleado int;
alter table add constraint registro_fk foreign key(codigo_empleado) references empleado (codigo_empleado)

INSERT INTO empleado (codigo_empleado, nombre)
VALUES
(2201, 'Juan'),
(2202, 'Ana'),
(2203, 'Luis'),
(2204, 'Maria'),
(2205, 'Carlos'),
(2206, 'Sofia'),
(2207, 'Jorge'),
(2208, 'Elena'),
(2209, 'Pedro'),
(2210, 'Valeria');

INSERT INTO registros_entrada (codigo_registro, codigo_empleado, cedula_empleado, fecha, hora)
VALUES
(1, 2201, '0012345678', '2023-08-05', '08:00:00'), 
(2, 2202, '0012345679', '2023-09-10', '09:00:00'),
(3, 2203, '0012345680', '2023-10-15', '10:30:00'),
(4, 2204, '0012345681', '2023-11-20', '08:45:00'),
(5, 2205, '0012345682', '2023-12-01', '12:00:00'),
(6, 2206, '0012345683', '2023-08-21', '08:15:00'),
(7, 2207, '0012345684', '2023-09-22', '11:00:00'),
(8, 2208, '0012345685', '2023-10-05', '12:30:00'),
(9, 2209, '0012345686', '2023-12-08', '08:45:00'),
(10, 2210, '0012345687', '2023-08-30', '09:30:00');

select * from empleado;
select * from registros_entrada;