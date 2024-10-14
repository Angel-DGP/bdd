create table prestamo(
	cedula char(10),
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	garante varchar(40),
	constraint prestamo_pk primary key (cedula)
);
alter table personas
add constraint personas_cedula_fk foreign key (cedula)
references prestamo(cedula);

INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES
('0012345678', 500, '2023-08-10', '10:00:00', 'Juan Perez'),
('0012345679', 300, '2023-09-15', '11:30:00', 'Ana Torres'),
('0012345680', 700, '2023-10-05', '12:15:00', 'Luis Garcia'),
('0012345681', 200, '2023-11-20', '09:45:00', 'Carlos Gomez'),
('0012345682', 800, '2023-08-01', '14:00:00', 'Sofia Martinez'),
('0012345683', 1000, '2023-09-25', '13:30:00', 'Jorge Santos'),
('0012345684', 450, '2023-10-10', '15:00:00', 'Elena Lopez'),
('0012345685', 600, '2023-11-08', '16:30:00', 'Pedro Ramos'),
('0012345686', 750, '2023-12-01', '08:45:00', 'Valeria Castillo'),
('0012345687', 900, '2023-08-20', '10:15:00', 'Sean Miller');

INSERT INTO personas (cedula, nombre, apellido, estado_civil_codigo)
VALUES
('0012345678', 'Juan', 'Perez', 'C'),
('0012345679', 'Ana', 'Torres', 'U'),
('0012345680', 'Luis', 'Garcia', 'S'),
('0012345681', 'Carlos', 'Gomez', 'C'),
('0012345682', 'Sofia', 'Martinez', 'U'),
('0012345683', 'Jorge', 'Santos', 'S'),
('0012345684', 'Elena', 'Lopez', 'C'),
('0012345685', 'Pedro', 'Ramos', 'S'),
('0012345686', 'Valeria', 'Castillo', 'U'),
('0012345687', 'Sean', 'Miller', 'S');
select * from personas;