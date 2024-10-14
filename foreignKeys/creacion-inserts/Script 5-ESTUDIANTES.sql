create table Profesores(
 codigo int,
 nombre varchar(50),
 constraint profesores_pk primary key (codigo)
);
alter table estudiantes
add column codigo_profesor int;
alter table estudiantes
add constraint estudiantes_fk foreign key (codigo_profesor)
references Profesores(codigo);


INSERT INTO Profesores (codigo, nombre)
VALUES 
(1, 'Francisco'),
(2, 'María'),
(3, 'José'),
(4, 'Ana'),
(5, 'Luis'),
(6, 'Carmen'),
(7, 'Daniel'),
(8, 'Elena'),
(9, 'Mario'),
(10, 'Sofia');

INSERT INTO estudiantes (cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES 
('0012345678', 'Carlos', 'Santana', 'carlos.santana@example.com', '2000-05-10', 1),  -- Contiene 'n'
('0012345679', 'Ana', 'Martinez', 'ana.martinez@example.com', '1999-08-15', 1),    -- Contiene 'n'
('0012345680', 'Luis', 'Pérez', 'luis.perez@example.com', '1998-02-20', 2),
('0012345681', 'Jorge', 'Gonzalez', 'jorge.gonzalez@example.com', '2001-01-30', 2), -- Contiene 'n'
('0012345682', 'Sofia', 'Vásquez', 'sofia.vasquez@example.com', '2002-03-22', 3),
('0012345683', 'María', 'Fernández', 'maria.fernandez@example.com', '2000-07-25', 3), -- Contiene 'n'
('0012345684', 'Fernando', 'Núñez', 'fernando.nunez@example.com', '1997-09-10', 4), -- Contiene 'n'
('0012345685', 'Pedro', 'Cruz', 'pedro.cruz@example.com', '1995-12-15', 4),
('0012345686', 'Valeria', 'Ramírez', 'valeria.ramirez@example.com', '1996-04-18', 5), 
('0012345687', 'Raúl', 'Cano', 'raul.cano@example.com', '1993-11-12', 5);



select * from estudiantes;
