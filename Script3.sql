drop table if exists estudiantes;
create table estudiantes (
	cedula char(10) not null Primary Key,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null
);

select * from estudiantes;